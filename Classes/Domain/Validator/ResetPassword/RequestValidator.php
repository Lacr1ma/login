<?php
declare(strict_types = 1);

namespace LMS\Flogin\Domain\Validator\ResetPassword;

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

use LMS\Flogin\{Support\Redirection\UserRouter, Domain\Repository\ResetsRepository};

/**
 * @psalm-suppress PropertyNotSetInConstructor
 * @author         Sergey Borulko <borulkosergey@icloud.com>
 */
class RequestValidator extends \LMS\Flogin\Domain\Validator\DefaultValidator
{
    /**
     * Valid when reset link does exist in the system and it's not expired
     *
     * @psalm-suppress PossiblyNullReference
     * @psalm-suppress MoreSpecificImplementedParamType
     *
     * @param \LMS\Flogin\Domain\Model\Request\ResetPasswordRequest $resetRequest
     */
    protected function isValid($resetRequest): void
    {
        $resetToken = ResetsRepository::make()->find($resetRequest->getToken());

        if ($resetToken === null) {
            UserRouter::redirectToTokenNotFoundPage();
        }

        if ($resetToken->isExpired()) {
            UserRouter::redirectToTokenExpiredPage();
        }
    }
}
