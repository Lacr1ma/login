# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.40-MariaDB-1~bionic)
# Database: db
# Generation Time: 2019-11-03 23:00:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `rowDescription` text COLLATE utf8_unicode_ci,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_source` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci,
  `legacy_overlay_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT '0',
  `no_follow` smallint(6) NOT NULL DEFAULT '0',
  `og_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8_unicode_ci,
  `og_image` int(10) unsigned NOT NULL DEFAULT '0',
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8_unicode_ci,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT '0',
  `canonical_link` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_lms3access_conditions` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_styleguide_containsdemo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `fe_group`, `sorting`, `rowDescription`, `editlock`, `sys_language_uid`, `l10n_parent`, `l10n_source`, `l10n_state`, `t3_origuid`, `l10n_diffsource`, `t3ver_oid`, `t3ver_id`, `t3ver_label`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `perms_userid`, `perms_groupid`, `perms_user`, `perms_group`, `perms_everybody`, `title`, `slug`, `doktype`, `TSconfig`, `is_siteroot`, `php_tree_stop`, `url`, `shortcut`, `shortcut_mode`, `subtitle`, `layout`, `target`, `media`, `lastUpdated`, `keywords`, `cache_timeout`, `cache_tags`, `newUntil`, `description`, `no_search`, `SYS_LASTCHANGED`, `abstract`, `module`, `extendToSubpages`, `author`, `author_email`, `nav_title`, `nav_hide`, `content_from_pid`, `mount_pid`, `mount_pid_ol`, `alias`, `l18n_cfg`, `fe_login_mode`, `backend_layout`, `backend_layout_next_level`, `tsconfig_includes`, `legacy_overlay_uid`, `seo_title`, `no_index`, `no_follow`, `og_title`, `og_description`, `og_image`, `twitter_title`, `twitter_description`, `twitter_image`, `canonical_link`, `tx_lms3access_conditions`, `categories`, `tx_styleguide_containsdemo`)
VALUES
	(1,0,1571484811,1571483684,1,0,0,0,0,'',64,NULL,0,0,0,0,NULL,0,X'613A34383A7B733A373A22646F6B74797065223B4E3B733A353A227469746C65223B4E3B733A343A22736C7567223B4E3B733A393A226E61765F7469746C65223B4E3B733A383A227375627469746C65223B4E3B733A393A2273656F5F7469746C65223B4E3B733A383A226E6F5F696E646578223B4E3B733A393A226E6F5F666F6C6C6F77223B4E3B733A31343A2263616E6F6E6963616C5F6C696E6B223B4E3B733A383A226F675F7469746C65223B4E3B733A31343A226F675F6465736372697074696F6E223B4E3B733A383A226F675F696D616765223B4E3B733A31333A22747769747465725F7469746C65223B4E3B733A31393A22747769747465725F6465736372697074696F6E223B4E3B733A31333A22747769747465725F696D616765223B4E3B733A383A226162737472616374223B4E3B733A383A226B6579776F726473223B4E3B733A31313A226465736372697074696F6E223B4E3B733A363A22617574686F72223B4E3B733A31323A22617574686F725F656D61696C223B4E3B733A31313A226C61737455706461746564223B4E3B733A363A226C61796F7574223B4E3B733A383A226E6577556E74696C223B4E3B733A31343A226261636B656E645F6C61796F7574223B4E3B733A32353A226261636B656E645F6C61796F75745F6E6578745F6C6576656C223B4E3B733A31363A22636F6E74656E745F66726F6D5F706964223B4E3B733A363A22746172676574223B4E3B733A31333A2263616368655F74696D656F7574223B4E3B733A31303A2263616368655F74616773223B4E3B733A31313A2269735F73697465726F6F74223B4E3B733A393A226E6F5F736561726368223B4E3B733A31333A227068705F747265655F73746F70223B4E3B733A363A226D6F64756C65223B4E3B733A353A226D65646961223B4E3B733A31373A227473636F6E6669675F696E636C75646573223B4E3B733A383A225453636F6E666967223B4E3B733A383A226C31386E5F636667223B4E3B733A363A2268696464656E223B4E3B733A383A226E61765F68696465223B4E3B733A32343A2274785F6C6D73336163636573735F636F6E646974696F6E73223B4E3B733A393A22737461727474696D65223B4E3B733A373A22656E6474696D65223B4E3B733A31363A22657874656E64546F5375627061676573223B4E3B733A383A2266655F67726F7570223B4E3B733A31333A2266655F6C6F67696E5F6D6F6465223B4E3B733A383A22656469746C6F636B223B4E3B733A31303A2263617465676F72696573223B4E3B733A31343A22726F774465736372697074696F6E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Home','/',1,NULL,1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571484811,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__home_layout','pagets__home_layout','EXT:theme/Configuration/PageTS/config.txt',0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(2,1,1571483741,1571483736,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Login','/login',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571483741,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(3,1,1571483827,1571483780,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Data Storage','/1',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(4,3,1571483888,1571483836,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Users','/users',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(5,1,1571483911,1571483907,1,0,0,0,0,'0',384,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Catalog','/catalog',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571483911,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(6,2,1571484109,1571484106,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Reset','/login/reset',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(7,6,1571484481,1571484122,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,X'613A313A7B733A353A227469746C65223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Email sent','/login/reset/email-sent',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571484481,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(8,2,1571484233,1571484204,1,0,0,0,0,'0',128,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Error','/login/token',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(9,8,1571484262,1571484239,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Token expired','/login/token/token-expired',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571484262,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(10,8,1571484265,1571484250,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Token does not exist','/login/token-does-not-exist',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571484265,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(11,6,1571485980,1571484493,1,0,0,0,0,'',512,NULL,0,0,0,0,NULL,0,X'613A34383A7B733A373A22646F6B74797065223B4E3B733A353A227469746C65223B4E3B733A343A22736C7567223B4E3B733A393A226E61765F7469746C65223B4E3B733A383A227375627469746C65223B4E3B733A393A2273656F5F7469746C65223B4E3B733A383A226E6F5F696E646578223B4E3B733A393A226E6F5F666F6C6C6F77223B4E3B733A31343A2263616E6F6E6963616C5F6C696E6B223B4E3B733A383A226F675F7469746C65223B4E3B733A31343A226F675F6465736372697074696F6E223B4E3B733A383A226F675F696D616765223B4E3B733A31333A22747769747465725F7469746C65223B4E3B733A31393A22747769747465725F6465736372697074696F6E223B4E3B733A31333A22747769747465725F696D616765223B4E3B733A383A226162737472616374223B4E3B733A383A226B6579776F726473223B4E3B733A31313A226465736372697074696F6E223B4E3B733A363A22617574686F72223B4E3B733A31323A22617574686F725F656D61696C223B4E3B733A31313A226C61737455706461746564223B4E3B733A363A226C61796F7574223B4E3B733A383A226E6577556E74696C223B4E3B733A31343A226261636B656E645F6C61796F7574223B4E3B733A32353A226261636B656E645F6C61796F75745F6E6578745F6C6576656C223B4E3B733A31363A22636F6E74656E745F66726F6D5F706964223B4E3B733A363A22746172676574223B4E3B733A31333A2263616368655F74696D656F7574223B4E3B733A31303A2263616368655F74616773223B4E3B733A31313A2269735F73697465726F6F74223B4E3B733A393A226E6F5F736561726368223B4E3B733A31333A227068705F747265655F73746F70223B4E3B733A363A226D6F64756C65223B4E3B733A353A226D65646961223B4E3B733A31373A227473636F6E6669675F696E636C75646573223B4E3B733A383A225453636F6E666967223B4E3B733A383A226C31386E5F636667223B4E3B733A363A2268696464656E223B4E3B733A383A226E61765F68696465223B4E3B733A32343A2274785F6C6D73336163636573735F636F6E646974696F6E73223B4E3B733A393A22737461727474696D65223B4E3B733A373A22656E6474696D65223B4E3B733A31363A22657874656E64546F5375627061676573223B4E3B733A383A2266655F67726F7570223B4E3B733A31333A2266655F6C6F67696E5F6D6F6465223B4E3B733A383A22656469746C6F636B223B4E3B733A31303A2263617465676F72696573223B4E3B733A31343A22726F774465736372697074696F6E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Change password Form submited','/login/reset/change-password-form-submited',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571485980,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(12,1,1571486228,1571484626,1,0,0,0,0,'',320,NULL,0,0,0,0,NULL,0,X'613A34383A7B733A373A22646F6B74797065223B4E3B733A353A227469746C65223B4E3B733A343A22736C7567223B4E3B733A393A226E61765F7469746C65223B4E3B733A383A227375627469746C65223B4E3B733A393A2273656F5F7469746C65223B4E3B733A383A226E6F5F696E646578223B4E3B733A393A226E6F5F666F6C6C6F77223B4E3B733A31343A2263616E6F6E6963616C5F6C696E6B223B4E3B733A383A226F675F7469746C65223B4E3B733A31343A226F675F6465736372697074696F6E223B4E3B733A383A226F675F696D616765223B4E3B733A31333A22747769747465725F7469746C65223B4E3B733A31393A22747769747465725F6465736372697074696F6E223B4E3B733A31333A22747769747465725F696D616765223B4E3B733A383A226162737472616374223B4E3B733A383A226B6579776F726473223B4E3B733A31313A226465736372697074696F6E223B4E3B733A363A22617574686F72223B4E3B733A31323A22617574686F725F656D61696C223B4E3B733A31313A226C61737455706461746564223B4E3B733A363A226C61796F7574223B4E3B733A383A226E6577556E74696C223B4E3B733A31343A226261636B656E645F6C61796F7574223B4E3B733A32353A226261636B656E645F6C61796F75745F6E6578745F6C6576656C223B4E3B733A31363A22636F6E74656E745F66726F6D5F706964223B4E3B733A363A22746172676574223B4E3B733A31333A2263616368655F74696D656F7574223B4E3B733A31303A2263616368655F74616773223B4E3B733A31313A2269735F73697465726F6F74223B4E3B733A393A226E6F5F736561726368223B4E3B733A31333A227068705F747265655F73746F70223B4E3B733A363A226D6F64756C65223B4E3B733A353A226D65646961223B4E3B733A31373A227473636F6E6669675F696E636C75646573223B4E3B733A383A225453636F6E666967223B4E3B733A383A226C31386E5F636667223B4E3B733A363A2268696464656E223B4E3B733A383A226E61765F68696465223B4E3B733A32343A2274785F6C6D73336163636573735F636F6E646974696F6E73223B4E3B733A393A22737461727474696D65223B4E3B733A373A22656E6474696D65223B4E3B733A31363A22657874656E64546F5375627061676573223B4E3B733A383A2266655F67726F7570223B4E3B733A31333A2266655F6C6F67696E5F6D6F6465223B4E3B733A383A22656469746C6F636B223B4E3B733A31303A2263617465676F72696573223B4E3B733A31343A22726F774465736372697074696F6E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Logout','/logout',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1571486228,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(13,2,1572291114,1572291067,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Magic Link','/magic-link',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(14,13,1572291124,1572291121,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Email sent','/magic-link/email-sent',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1572291124,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(15,8,1572436699,1572436697,1,0,0,0,0,'0',768,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'User has been locked','/login/token/user-has-been-locked',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1572436699,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(16,2,1572437923,1572437920,1,0,0,0,0,'0',64,NULL,0,0,0,0,NULL,0,X'613A313A7B733A363A2268696464656E223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Unlocked','/login/unlocked',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1572437923,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,''),
	(425,2,1572786991,1572786849,1,0,0,0,0,'0',32,NULL,0,0,0,0,NULL,0,X'613A313A7B733A353A227469746C65223B4E3B7D',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Already Authenticated','/login/default-title',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1572786991,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,'');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_domain
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_domain`;

CREATE TABLE `sys_domain` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `domainName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `getSysDomain` (`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`(100)),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table tt_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tt_content`;

CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8_unicode_ci,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_source` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(10) unsigned NOT NULL DEFAULT '0',
  `image` int(10) unsigned NOT NULL DEFAULT '0',
  `imagewidth` int(10) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci,
  `pages` text COLLATE utf8_unicode_ci,
  `colPos` int(10) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(17) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_lms3access_conditions` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_mask_body` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_mask_body_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_mask_items` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_mask_size` tinytext COLLATE utf8_unicode_ci,
  `tx_mask_type` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `tx_mask_body` (`tx_mask_body_parent`,`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;

INSERT INTO `tt_content` (`uid`, `rowDescription`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `fe_group`, `sorting`, `editlock`, `sys_language_uid`, `l18n_parent`, `l10n_source`, `l10n_state`, `t3_origuid`, `l18n_diffsource`, `t3ver_oid`, `t3ver_id`, `t3ver_label`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `CType`, `header`, `header_position`, `bodytext`, `bullets_type`, `uploads_description`, `uploads_type`, `assets`, `image`, `imagewidth`, `imageorient`, `imagecols`, `imageborder`, `media`, `layout`, `frame_class`, `cols`, `spaceBefore`, `spaceAfter`, `space_before_class`, `space_after_class`, `records`, `pages`, `colPos`, `subheader`, `header_link`, `image_zoom`, `header_layout`, `list_type`, `sectionIndex`, `linkToTop`, `file_collections`, `filelink_size`, `filelink_sorting`, `filelink_sorting_direction`, `target`, `date`, `recursive`, `imageheight`, `pi_flexform`, `accessibility_title`, `accessibility_bypass`, `accessibility_bypass_text`, `selected_categories`, `category_field`, `table_class`, `table_caption`, `table_delimiter`, `table_enclosure`, `table_header_position`, `table_tfoot`, `tx_lms3access_conditions`, `categories`, `tx_mask_body`, `tx_mask_body_parent`, `tx_mask_items`, `tx_mask_size`, `tx_mask_type`)
VALUES
	(1,'',2,1572458168,1571483761,1,0,0,0,0,'',256,0,0,0,0,NULL,0,X'613A32363A7B733A353A224354797065223B4E3B733A363A22636F6C506F73223B4E3B733A363A22686561646572223B4E3B733A31333A226865616465725F6C61796F7574223B4E3B733A31353A226865616465725F706F736974696F6E223B4E3B733A343A2264617465223B4E3B733A31313A226865616465725F6C696E6B223B4E3B733A393A22737562686561646572223B4E3B733A393A226C6973745F74797065223B4E3B733A353A227061676573223B4E3B733A393A22726563757273697665223B4E3B733A363A226C61796F7574223B4E3B733A31313A226672616D655F636C617373223B4E3B733A31383A2273706163655F6265666F72655F636C617373223B4E3B733A31373A2273706163655F61667465725F636C617373223B4E3B733A31323A2273656374696F6E496E646578223B4E3B733A393A226C696E6B546F546F70223B4E3B733A31363A227379735F6C616E67756167655F756964223B4E3B733A363A2268696464656E223B4E3B733A32343A2274785F6C6D73336163636573735F636F6E646974696F6E73223B4E3B733A393A22737461727474696D65223B4E3B733A373A22656E6474696D65223B4E3B733A383A2266655F67726F7570223B4E3B733A383A22656469746C6F636B223B4E3B733A31303A2263617465676F72696573223B4E3B733A31343A22726F774465736372697074696F6E223B4E3B7D',0,0,'',0,0,0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,'',0,'','',0,'0','login_login',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL),
	(2,'',11,1571485954,1571485954,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'text','','','<p>The <strong>password</strong> has been updated!</p>\r\n<p>Please, try <a href=\"t3://page?uid=2\">login</a> with a new password.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL),
	(3,'',7,1571486053,1571486053,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'text','','','<p>Reset link has been sent to the user email address.</p>\r\n<p>Please check your email inbox.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL),
	(4,'',9,1571486147,1571486147,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'text','','','<p>Unfortunatelly provided token is expired and can\'t be used for reseting password anymore.</p>\r\n<p>Please, start the <a href=\"t3://page?uid=2\">reset password process</a> again.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL),
	(5,'',10,1571486186,1571486186,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'text','','','<p>Reset token<strong> does not exist </strong>in the system!</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL),
	(6,'',12,1572643569,1571486277,1,0,0,0,0,'',256,0,0,0,0,NULL,0,X'613A32343A7B733A353A224354797065223B4E3B733A363A22636F6C506F73223B4E3B733A363A22686561646572223B4E3B733A31333A226865616465725F6C61796F7574223B4E3B733A31353A226865616465725F706F736974696F6E223B4E3B733A343A2264617465223B4E3B733A31313A226865616465725F6C696E6B223B4E3B733A393A22737562686561646572223B4E3B733A383A22626F647974657874223B4E3B733A363A226C61796F7574223B4E3B733A31313A226672616D655F636C617373223B4E3B733A31383A2273706163655F6265666F72655F636C617373223B4E3B733A31373A2273706163655F61667465725F636C617373223B4E3B733A31323A2273656374696F6E496E646578223B4E3B733A393A226C696E6B546F546F70223B4E3B733A31363A227379735F6C616E67756167655F756964223B4E3B733A363A2268696464656E223B4E3B733A32343A2274785F6C6D73336163636573735F636F6E646974696F6E73223B4E3B733A393A22737461727474696D65223B4E3B733A373A22656E6474696D65223B4E3B733A383A2266655F67726F7570223B4E3B733A383A22656469746C6F636B223B4E3B733A31303A2263617465676F72696573223B4E3B733A31343A22726F774465736372697074696F6E223B4E3B7D',0,0,'',0,0,0,0,0,0,'text','','','<p>You have been successfully logged out.</p>\r\n<p><a href=\"t3://page?uid=1\">Home</a> | <a href=\"t3://page?uid=2\">Login</a></p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL),
	(7,'',5,1571486304,1571486304,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'text','','','<p>You should see that after<strong> login process</strong></p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL),
	(8,'',14,1572291169,1572291169,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'text','','','<p>Magic link has been sent to the user email address.</p>\r\n<p>Please check your email inbox.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL),
	(9,'',15,1572436737,1572436737,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'text','','','<p>Unfortunatelly user has been locked. Please try to login after some time.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL),
	(10,'',16,1572437958,1572437958,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'text','','','<p>User has been successfully unlocked!</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,NULL,NULL);

/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tx_scheduler_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tx_scheduler_task`;

CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text COLLATE utf8_unicode_ci,
  `lastexecution_context` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob,
  `serialized_executions` mediumblob,
  `task_group` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;

INSERT INTO `tx_scheduler_task` (`uid`, `crdate`, `disable`, `deleted`, `description`, `nextexecution`, `lastexecution_time`, `lastexecution_failure`, `lastexecution_context`, `serialized_task_object`, `serialized_executions`, `task_group`)
VALUES
	(1,1572265722,0,0,'Magic Link ',1572815279,1572814864,'','BE',X'4F3A35343A225459504F335C434D535C5363686564756C65725C5461736B5C457865637574655363686564756C61626C65436F6D6D616E645461736B223A31303A7B733A32303A22002A00636F6D6D616E644964656E746966696572223B733A32343A226C6F67696E3A6D616769632D6C696E6B5F67617262616765223B733A31323A22002A00617267756D656E7473223B613A303A7B7D733A31313A22002A0064656661756C7473223B613A303A7B7D733A31303A22002A007461736B556964223B693A313B733A31313A22002A0064697361626C6564223B623A303B733A31393A22002A0072756E4F6E4E65787443726F6E4A6F62223B623A303B733A31323A22002A00657865637574696F6E223B4F3A32393A225459504F335C434D535C5363686564756C65725C457865637574696F6E223A363A7B733A383A22002A007374617274223B693A313537323236353637393B733A363A22002A00656E64223B733A313A2230223B733A31313A22002A00696E74657276616C223B693A3630303B733A31313A22002A006D756C7469706C65223B733A313A2230223B733A31303A22002A0063726F6E436D64223B733A303A22223B733A32333A22002A0069734E657753696E676C65457865637574696F6E223B623A303B7D733A31363A22002A00657865637574696F6E54696D65223B693A313537323831353237393B733A31343A22002A006465736372697074696F6E223B733A31313A224D61676963204C696E6B20223B733A31323A22002A007461736B47726F7570223B693A303B7D','',0),
	(2,1572349602,0,0,'Clear Password Resets',1572791179,1572790879,'','CLI',X'4F3A35343A225459504F335C434D535C5363686564756C65725C5461736B5C457865637574655363686564756C61626C65436F6D6D616E645461736B223A31303A7B733A32303A22002A00636F6D6D616E644964656E746966696572223B733A32373A226C6F67696E3A70617373776F72642D6C696E6B5F67617262616765223B733A31323A22002A00617267756D656E7473223B613A303A7B7D733A31313A22002A0064656661756C7473223B613A303A7B7D733A31303A22002A007461736B556964223B693A323B733A31313A22002A0064697361626C6564223B623A303B733A31393A22002A0072756E4F6E4E65787443726F6E4A6F62223B623A303B733A31323A22002A00657865637574696F6E223B4F3A32393A225459504F335C434D535C5363686564756C65725C457865637574696F6E223A363A7B733A383A22002A007374617274223B693A313537323334393537393B733A363A22002A00656E64223B733A313A2230223B733A31313A22002A00696E74657276616C223B693A3630303B733A31313A22002A006D756C7469706C65223B733A313A2230223B733A31303A22002A0063726F6E436D64223B733A303A22223B733A32333A22002A0069734E657753696E676C65457865637574696F6E223B623A303B7D733A31363A22002A00657865637574696F6E54696D65223B693A313537323739313137393B733A31343A22002A006465736372697074696F6E223B733A32313A22436C6561722050617373776F726420526573657473223B733A31323A22002A007461736B47726F7570223B693A303B7D','',0),
	(3,1572430783,0,0,'',1572814768,1572814573,'','BE',X'4F3A35343A225459504F335C434D535C5363686564756C65725C5461736B5C457865637574655363686564756C61626C65436F6D6D616E645461736B223A31303A7B733A32303A22002A00636F6D6D616E644964656E746966696572223B733A31383A226C6F67696E3A756E6C6F636B5F7573657273223B733A31323A22002A00617267756D656E7473223B613A303A7B7D733A31313A22002A0064656661756C7473223B613A303A7B7D733A31303A22002A007461736B556964223B693A333B733A31313A22002A0064697361626C6564223B623A303B733A31393A22002A0072756E4F6E4E65787443726F6E4A6F62223B623A303B733A31323A22002A00657865637574696F6E223B4F3A32393A225459504F335C434D535C5363686564756C65725C457865637574696F6E223A363A7B733A383A22002A007374617274223B693A313537323433303736383B733A363A22002A00656E64223B733A303A22223B733A31313A22002A00696E74657276616C223B693A3630303B733A31313A22002A006D756C7469706C65223B733A313A2230223B733A31303A22002A0063726F6E436D64223B733A303A22223B733A32333A22002A0069734E657753696E676C65457865637574696F6E223B623A303B7D733A31363A22002A00657865637574696F6E54696D65223B693A313537323831343736383B733A31343A22002A006465736372697074696F6E223B733A303A22223B733A31323A22002A007461736B47726F7570223B693A303B7D','',0);

/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tx_scheduler_task_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tx_scheduler_task_group`;

CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `groupName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
