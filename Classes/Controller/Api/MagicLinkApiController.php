<?php
declare(strict_types = 1);

namespace LMS\Login\Controller\Api;

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

use LMS\Login\Support\Controller\MagicLink\SendsMagicLinkEmails;

/**
 * @psalm-suppress PropertyNotSetInConstructor
 * @author         Sergey Borulko <borulkosergey@icloud.com>
 */
class MagicLinkApiController extends \LMS\Login\Controller\Api\AbstractApiController
{
    use SendsMagicLinkEmails;

    /**
     * We check weather the submitted email really exists in the fe_users table
     * and send the email or redirect back with an error notification.
     *
     * @param string $email
     * @TYPO3\CMS\Extbase\Annotation\Validate("LMS\Login\Domain\Validator\EmailValidator", param="email")
     */
    public function sendMagicLinkEmailAction(string $email): void
    {
        $this->sendMagicLink($email);
    }
}