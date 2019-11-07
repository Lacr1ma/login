<?php
declare(strict_types = 1);

namespace LMS\Login\Slot\Notification;

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

use LMS\Login\Domain\Model\User;

/**
 * @author Sergey Borulko <borulkosergey@icloud.com>
 */
class PasswordChangedNotification extends \LMS\Login\Notification\AbstractNotificationSender
{
    /**
     * Build the PasswordChanged Template and email the user
     *
     * @param \LMS\Login\Domain\Model\User $user
     */
    public function send(User $user): void
    {
        $receiver = [$user->getEmail() => $user->getUsername()];

        $this->sendViaMail($receiver, compact('user'));
    }

    /**
     * {@inheritDoc}
     */
    protected function getSubject(): string
    {
        return $this->translate(
            $this->getSettings()['passwordUpdated.']['subject']
        );
    }

    /**
     * {@inheritDoc}
     */
    protected function getTemplateSuffix(): string
    {
        return 'Email/Password/Changed';
    }
}
