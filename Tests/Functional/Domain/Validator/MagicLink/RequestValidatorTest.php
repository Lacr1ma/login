<?php
declare(strict_types = 1);

namespace LMS\Login\Tests\Functional\Domain\Validator\MagicLink;

/* * *************************************************************
 *
 *  Copyright notice
 *
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 * ************************************************************* */

use Carbon\Carbon;
use LMS\Login\Support\Redirection\UserRouter;
use LMS\Login\Domain\Validator\MagicLink\RequestValidator;
use LMS\Login\Domain\Model\{Link, Request\MagicLinkRequest};
use LMS\Login\Domain\Repository\{LinkRepository, UserRepository};

/**
 * @author Borulko Sergey <borulkosergey@icloud.com>
 */
class RequestValidatorTest extends \LMS\Login\Tests\Functional\BaseTest
{
    /**
     * @test
     */
    public function redirect_to_token_not_found(): void
    {
        $double = \Mockery::mock('overload:' . UserRouter::class);
        $double->shouldReceive('redirectToTokenNotFoundPage')->andThrow(\Exception::class);
        $double->shouldNotReceive('redirectToTokenExpiredPage');

        $request = new MagicLinkRequest(
            UserRepository::make()->retrieveByUsername('user')
        );

        $this->expectException(\Exception::class);

        (new RequestValidator())->validate($request);
    }

    /**
     * @test
     */
    public function redirect_to_token_expired(): void
    {
        $double = \Mockery::mock('overload:' . UserRouter::class);
        $double->shouldNotReceive('redirectToTokenNotFoundPage');
        $double->shouldReceive('redirectToTokenExpiredPage')->andThrow(\Exception::class);

        $request = new MagicLinkRequest(
            UserRepository::make()->retrieveByUsername('user')
        );

        Link::create([
            'pid' => 0,
            'token' => $request->getToken(),
            'user' => $request->getUser()->getUid(),
            'crdate' => Carbon::now()->subHour()->timestamp
        ]);

        $this->expectException(\Exception::class);

        (new RequestValidator())->validate($request);
    }

    /**
     * @test
     */
    public function link_deleted_when_request_is_valid(): void
    {
        $request = new MagicLinkRequest(
            UserRepository::make()->retrieveByUsername('user')
        );

        Link::create([
            'pid' => 0,
            'token' => $request->getToken(),
            'user' => $request->getUser()->getUid(),
            'crdate' => Carbon::now()->addHour()->timestamp
        ]);

        (new RequestValidator())->validate($request);

        $this->assertNull(
            LinkRepository::make()->find($request->getToken())
        );
    }
}