<?php
declare(strict_types = 1);

namespace LMS\Flogin\Support\Controller\Backend;

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

use LMS\Facade\Extbase\Registry;
use LMS\Flogin\{Support\Helper\OneTimeAccount, Domain\Model\User, Guard\SessionGuard, Hash\Hash};

/**
 * @author Sergey Borulko <borulkosergey@icloud.com>
 */
trait CreatesOneTimeAccount
{
    /**
     * Create one time account based on TypoScript settings
     *
     * @psalm-suppress MoreSpecificReturnType
     *
     * @param string $hash
     *
     * @return \LMS\Flogin\Domain\Model\User
     */
    public function createTemporaryFrontendAccount(string $hash): User
    {
        Registry::remove('tx_flogin_hash', $hash);

        return User::create(
            OneTimeAccount::make()->getCombinedProperties($hash)
        );
    }

    /**
     * Login user
     *
     * @param \LMS\Flogin\Domain\Model\User $user
     * @param string                       $plainPassword
     */
    public function authorizeTemporaryUser(User $user, string $plainPassword): void
    {
        SessionGuard::make()->login($user, $plainPassword, false);
    }

    /**
     * @return string
     */
    protected function createOneTimeHash(): string
    {
        $value = Hash::randomString();

        Registry::set('tx_flogin_hash', $value, true);

        return $value;
    }
}
