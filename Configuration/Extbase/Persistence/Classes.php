<?php
declare(strict_types = 1);

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

return [
    \LMS\Login\Domain\Model\User::class => [
        'tableName' => 'fe_users',
        'properties' => [
            'tstamp' => [
                'fieldName' => 'tstamp'
            ],
            'endtime' => [
                'fieldName' => 'endtime'
            ]
        ]
    ],
    \LMS\Login\Domain\Model\Resets::class => [
        'crdate' => [
            'tstamp' => [
                'fieldName' => 'crdate'
            ]
        ]
    ],
    \LMS\Login\Domain\Model\UserGroup::class => [
        'tableName' => 'fe_groups'
    ]
];