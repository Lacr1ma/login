<?php
declare(strict_types = 1);

namespace LMS\Flogin\Tests\Functional\Domain\Validator\MagicLink;

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

use LMS\Facade\Extbase\User\StateContext;
use LMS\Flogin\Domain\Repository\UserRepository;
use LMS\Flogin\Domain\Model\Request\MagicLinkRequest;
use LMS\Flogin\Domain\Validator\MagicLink\NotAuthenticatedValidator;

/**
 * @author Borulko Sergey <borulkosergey@icloud.com>
 */
class NotAuthenticatedValidatorTest extends \LMS\Flogin\Tests\Functional\BaseTest
{
    /**
     * @test
     */
    public function error_thrown_when_user_already_authenticated(): void
    {
        $double = \Mockery::mock('overload:' . StateContext::class);
        $double->shouldReceive('isNotLoggedIn')->andReturnUsing(function () {
            return false;
        });

        $user = UserRepository::make()->retrieveByUsername('user');

        $validator = new NotAuthenticatedValidator();

        $this->assertTrue($validator->validate(new MagicLinkRequest($user))->hasErrors());
    }

    /**
     * @test
     */
    public function pass_when_user_not_authenticated(): void
    {
        $user = UserRepository::make()->retrieveByUsername('user');

        $validator = new NotAuthenticatedValidator();

        $this->assertFalse($validator->validate(new MagicLinkRequest($user))->hasErrors());
    }
}
