<?php
declare(strict_types = 1);

namespace LMS\Login\Tests\Acceptance\Frontend\Anonymous\MagicLink;

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

use LMS\Login\Tests\Acceptance\Support\AcceptanceTester;

/**
 * @author Sergey Borulko <borulkosergey@icloud.com>
 */
class DeceiverMagicLinkCest
{
    /**
     * @param AcceptanceTester $I
     */
    public function magic_link_cant_be_used_twice(AcceptanceTester $I)
    {
        $I->wantTo('I wanna be redirected to the <tokenDoesNotExist> page when token has been already used.');

        $I->amRequestingMagicLinkNotification(
            'dummy@example.com'
        );

        $loginMagicLinkUrl = $I->extractLinkFromLastMail();

        $I->amOnUrl($loginMagicLinkUrl);
        $I->see('You should see that after login process');

        $I->amOnUrl($loginMagicLinkUrl);
        $I->see('Reset token does not exist in the system!');
    }

    /**
     * @param AcceptanceTester $I
     */
    public function already_authenticated_redirect(AcceptanceTester $I)
    {
        $I->wantTo('I am already logged in and I use the valid magic link. I want to be redirected to <alreadyAuthenticated> page.');

        $I->amRequestingMagicLinkNotification(
            'dummy@example.com'
        );

        $loginMagicLinkUrl = $I->extractLinkFromLastMail();

        $I->amLoggedInAs('dummy');

        $I->amOnUrl($loginMagicLinkUrl);
        $I->canSeeInTitle('Already Authenticated');
    }

    /**
     * @param AcceptanceTester $I
     */
    public function magic_link_form_shows_error_when_email_does_not_exist(AcceptanceTester $I)
    {
        $I->wantTo('I wanna see an error, when I try to submit <magic link form> with invalid email address.');

        $I->amOnMagicLinkPage();
        $I->fillField('tx_login_login[email]', 'dummy@domain.ltd');
        $I->click('#send-magic-link');

        $I->seeElement('.email-block > .is-invalid');
        $I->see('This email address is not connected to any user in our system.', '.email-is-invalid');
    }
}
