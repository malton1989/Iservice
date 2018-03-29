-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2018 г., 12:46
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `iService`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_advancedmodules`
--

CREATE TABLE IF NOT EXISTS `cm5ji_advancedmodules` (
  `moduleid` int(11) unsigned NOT NULL DEFAULT '0',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mirror_id` int(10) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cm5ji_advancedmodules`
--

INSERT INTO `cm5ji_advancedmodules` (`moduleid`, `asset_id`, `mirror_id`, `params`) VALUES
(1, 39, 0, '{"assignto_menuitems_selection":[],"assignto_menuitems":0}'),
(17, 51, 0, '{"assignto_menuitems_selection":[],"assignto_menuitems":0}'),
(88, 69, 0, '{"assignto_menuitems_selection":[],"assignto_menuitems":0}'),
(89, 70, 0, '{"assignto_menuitems_selection":[],"assignto_menuitems":0}'),
(91, 77, 0, '{"assignto_menuitems_selection":[],"assignto_menuitems":0}'),
(92, 79, 0, '{"color":"none","hideempty":"0","mirror_module":"0","mirror_moduleid":"92","match_method":"and","show_assignments":"1","assignto_menuitems":"0","assignto_menuitems_inc_children":"0","assignto_menuitems_inc_noitemid":"0","assignto_homepage":"0","assignto_date":"0","assignto_date_publish_up":0,"assignto_date_publish_down":0,"assignto_date_recurring":"0","assignto_usergrouplevels":"0","assignto_usergrouplevels_inc_children":"0","assignto_languages":"0","assignto_templates":"0","assignto_urls":"0","assignto_urls_selection":"","assignto_urls_regex":"0","assignto_devices":"0","assignto_os":"0","assignto_browsers":"0","assignto_components":"0","assignto_tags":"0","assignto_tags_inc_children":"0","assignto_contentpagetypes":"0","assignto_cats":"0","assignto_cats_inc_children":"0","assignto_cats_inc":["inc_cats","inc_arts","x"],"assignto_articles":"0","assignto_articles_content_keywords":"","assignto_articles_keywords":""}'),
(93, 80, 0, '{"color":"none","hideempty":"0","mirror_module":"0","mirror_moduleid":"93","match_method":"and","show_assignments":"1","assignto_menuitems":"0","assignto_menuitems_inc_children":"0","assignto_menuitems_inc_noitemid":"0","assignto_homepage":"0","assignto_date":"0","assignto_date_publish_up":0,"assignto_date_publish_down":0,"assignto_date_recurring":"0","assignto_usergrouplevels":"0","assignto_usergrouplevels_inc_children":"0","assignto_languages":"0","assignto_templates":"0","assignto_urls":"0","assignto_urls_selection":"","assignto_urls_regex":"0","assignto_devices":"0","assignto_os":"0","assignto_browsers":"0","assignto_components":"0","assignto_tags":"0","assignto_tags_inc_children":"0","assignto_contentpagetypes":"0","assignto_cats":"0","assignto_cats_inc_children":"0","assignto_cats_inc":["inc_cats","inc_arts","x"],"assignto_articles":"0","assignto_articles_content_keywords":"","assignto_articles_keywords":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_alfcontact`
--

CREATE TABLE IF NOT EXISTS `cm5ji_alfcontact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `extra` text NOT NULL,
  `defsubject` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `access` tinyint(3) unsigned NOT NULL,
  `language` char(7) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cm5ji_alfcontact`
--

INSERT INTO `cm5ji_alfcontact` (`id`, `name`, `email`, `bcc`, `prefix`, `extra`, `defsubject`, `ordering`, `access`, `language`, `published`) VALUES
(1, 'Sales', 'sales@mysite.com', 'archive@mysite.com', '[Sales]', 'Client No:\nOrder No:\nItem No:', 'Order inquiry', 1, 1, 'en-GB', 1),
(2, 'Verkoop', 'verkoop@mijnsite.nl', 'archief@mijnsite.nl', '[Verkoop]', 'Klant Nr:\nOrder Nr:\nItem Nr:', 'Order navraag', 2, 1, 'nl-NL', 1),
(3, 'Webmaster', '', 'webmaster@mysite.com', '[Webmaster]', '', '', 3, 1, '*', 1),
(4, 'Support', '', 'support1@mysite.com\nsupport2@mysite.com\nsupport3@mysite.com', '[Support]', '', 'Question', 4, 2, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_assets`
--

CREATE TABLE IF NOT EXISTS `cm5ji_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_assets`
--

INSERT INTO `cm5ji_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 201, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(8, 1, 17, 60, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(9, 1, 61, 62, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 63, 64, 1, 'com_installer', 'com_installer', '{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 65, 68, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1}}'),
(12, 1, 69, 70, 1, 'com_login', 'com_login', '{}'),
(13, 1, 71, 72, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 73, 74, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 75, 76, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 77, 82, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1}}'),
(17, 1, 83, 84, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 85, 160, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1}}'),
(19, 1, 161, 164, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(20, 1, 165, 166, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1}}'),
(21, 1, 167, 168, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1}}'),
(22, 1, 169, 170, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 171, 172, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1}}'),
(24, 1, 173, 176, 1, 'com_users', 'com_users', '{"core.admin":{"7":1}}'),
(26, 1, 177, 178, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 162, 163, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 174, 175, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 179, 180, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 181, 182, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 183, 184, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 185, 186, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 187, 188, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 189, 190, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 86, 87, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 88, 89, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 90, 91, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 92, 93, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 94, 95, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 96, 97, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 98, 99, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 100, 101, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 102, 103, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 104, 105, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 106, 107, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 108, 109, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 110, 111, 2, 'com_modules.module.17', 'com_modules.module.17', '{}'),
(52, 18, 112, 113, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 114, 115, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 78, 79, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 116, 117, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 11, 66, 67, 2, 'com_languages.language.2', 'Русский (Россия)', '{}'),
(57, 8, 20, 39, 2, 'com_content.category.8', 'Услуги', '{}'),
(58, 8, 40, 59, 2, 'com_content.category.9', 'Компания', '{}'),
(59, 58, 41, 42, 3, 'com_content.article.1', 'Главная', '{}'),
(60, 58, 43, 44, 3, 'com_content.article.2', '  О нас ', '{}'),
(61, 58, 45, 46, 3, 'com_content.article.3', 'Что то', '{}'),
(62, 58, 49, 50, 3, 'com_content.article.4', 'График работы ', '{}'),
(63, 58, 47, 48, 3, 'com_content.article.5', 'аксессуары', '{}'),
(64, 57, 21, 22, 3, 'com_content.article.6', 'Iphone', '{}'),
(65, 57, 23, 24, 3, 'com_content.article.7', 'IMac', '{}'),
(66, 57, 25, 26, 3, 'com_content.article.8', 'Iразное', '{}'),
(67, 57, 27, 28, 3, 'com_content.article.9', 'Samsung', '{}'),
(68, 16, 80, 81, 2, 'com_menus.menu.2', 'Нижнее меню', '{}'),
(69, 18, 118, 119, 2, 'com_modules.module.88', 'com_modules.module.88', '{}'),
(70, 18, 120, 121, 2, 'com_modules.module.89', 'com_modules.module.89', '{}'),
(71, 58, 51, 52, 3, 'com_content.article.10', 'Номер телефона', '{}'),
(72, 58, 53, 54, 3, 'com_content.article.11', 'боковой раздел информации', '{}'),
(73, 57, 29, 30, 3, 'com_content.article.12', 'нижний раздел информации', '{}'),
(74, 58, 55, 56, 3, 'com_content.article.13', 'Подвал главной страницы ', '{}'),
(75, 58, 57, 58, 3, 'com_content.article.14', 'Карта', '{}'),
(76, 18, 122, 123, 2, 'com_modules.module.90', 'Карта', '{}'),
(77, 18, 124, 125, 2, 'com_modules.module.91', 'Слайдер', '{}'),
(78, 1, 191, 192, 1, 'com_advancedmodules', 'com_advancedmodules', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 18, 126, 127, 2, 'com_modules.module.92', 'Карта', '{}'),
(80, 18, 128, 129, 2, 'com_modules.module.93', 'Слайдер', '{}'),
(81, 18, 130, 131, 2, 'com_modules.module.94', 'Боковой раздел информации главной страницы', '{}'),
(82, 18, 132, 133, 2, 'com_modules.module.95', 'Подвал главной страницы ', '{}'),
(83, 18, 134, 135, 2, 'com_modules.module.96', 'Нижний раздел информации главной страницы', '{}'),
(84, 1, 193, 194, 1, 'com_fields', 'com_fields', '{}'),
(85, 1, 195, 196, 1, 'com_associations', 'com_associations', '{}'),
(86, 18, 136, 137, 2, 'com_modules.module.97', 'POWr Button', '{}'),
(87, 18, 138, 139, 2, 'com_modules.module.98', 'Кнопка 1', '{}'),
(88, 18, 140, 141, 2, 'com_modules.module.99', 'Кнопка 2', '{}'),
(89, 18, 142, 143, 2, 'com_modules.module.100', 'Кнопка 3', '{}'),
(90, 18, 144, 145, 2, 'com_modules.module.101', 'Кнопка 4', '{}'),
(91, 1, 197, 198, 1, 'com_alfcontact', 'COM_ALFCONTACT', '{}'),
(92, 18, 146, 147, 2, 'com_modules.module.102', 'Форма записи', '{}'),
(93, 18, 148, 149, 2, 'com_modules.module.103', 'Форма записи', '{}'),
(94, 18, 150, 151, 2, 'com_modules.module.104', 'qlmenu', '{}'),
(95, 18, 152, 153, 2, 'com_modules.module.105', 'mod_ninja_simple_icon_menu', '{}'),
(96, 18, 154, 155, 2, 'com_modules.module.106', 'Главное меню', '{}'),
(97, 57, 31, 32, 3, 'com_content.article.15', 'Mat 1', '{}'),
(98, 57, 33, 34, 3, 'com_content.article.16', 'Mat 2', '{}'),
(99, 57, 35, 36, 3, 'com_content.article.17', 'Mat 3', '{}'),
(100, 57, 37, 38, 3, 'com_content.article.18', 'Mat 4', '{}'),
(101, 18, 156, 157, 2, 'com_modules.module.107', 'JB DropDown Menu', '{}'),
(102, 1, 199, 200, 1, 'com_djimageslider', 'com_djimageslider', '{}'),
(103, 18, 158, 159, 2, 'com_modules.module.108', 'Слайдер', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_associations`
--

CREATE TABLE IF NOT EXISTS `cm5ji_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_banners`
--

CREATE TABLE IF NOT EXISTS `cm5ji_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_banner_clients`
--

CREATE TABLE IF NOT EXISTS `cm5ji_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `cm5ji_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_categories`
--

CREATE TABLE IF NOT EXISTS `cm5ji_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_categories`
--

INSERT INTO `cm5ji_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 90, '2018-03-11 17:17:26', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 90, '2018-03-11 17:17:26', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 90, '2018-03-11 17:17:26', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 90, '2018-03-11 17:17:26', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 90, '2018-03-11 17:17:26', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 90, '2018-03-11 17:17:26', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 57, 1, 11, 12, 1, 'uslugi', 'com_content', 'Услуги', 'uslugi', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 90, '2018-03-11 18:05:24', 0, '2018-03-11 18:05:24', 0, '*', 1),
(9, 58, 1, 13, 14, 1, 'kompaniya', 'com_content', 'Компания', 'kompaniya', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 90, '2018-03-11 18:05:40', 0, '2018-03-11 18:05:40', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_contact_details`
--

CREATE TABLE IF NOT EXISTS `cm5ji_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_content`
--

CREATE TABLE IF NOT EXISTS `cm5ji_content` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_content`
--

INSERT INTO `cm5ji_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 59, 'Главная', 'glavnaya', '<p>Это главная страница</p>', '', 1, 9, '2018-03-11 18:09:42', 90, '', '2018-03-11 18:09:42', 0, 90, '2018-03-16 11:27:09', '2018-03-11 18:09:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 60, '  О нас ', 'o-nas', '<p>Блок о компании</p>', '', 1, 9, '2018-03-11 18:12:11', 90, '', '2018-03-11 18:12:11', 0, 0, '0000-00-00 00:00:00', '2018-03-11 18:12:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 61, 'Что то', 'chto-to', '<p>Здесь будет что то</p>', '', 1, 9, '2018-03-11 18:18:36', 90, '', '2018-03-15 12:31:09', 90, 0, '0000-00-00 00:00:00', '2018-03-11 18:18:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 6, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 62, 'График работы ', 'grafik-raboty', '<p>График работы</p>', '', 1, 9, '2018-03-11 18:19:39', 90, '', '2018-03-11 18:21:13', 90, 90, '2018-03-16 14:02:08', '2018-03-11 18:19:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 63, 'аксессуары', 'aksessuary', '<p>акссесуары</p>', '', 1, 9, '2018-03-11 18:20:40', 90, '', '2018-03-11 18:20:40', 0, 0, '0000-00-00 00:00:00', '2018-03-11 18:20:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 64, 'Iphone', 'iphone', '<div class="container">\r\n<div class="row">\r\n<div class="col-md-6">\r\n<h2>Мы производим ремонт iPod всех поколений</h2>\r\n</div>\r\n<div class="col-md-6">Компания Apple предлагает широкую линейку плееров iPod. Как и любая другая продукция Apple, iPod отличаются высоким качеством сборки и надёжностью. Но что делать, если iPod сломался? Существует мнение, что iPod не ремонтируются или ремонт зачастую нецелесообразен. Спешим развеить этот миф! Ремонт iPod, несмотря на свою сложность, осуществим. Наши специалисты выполнят любой ремонт iPod в кратчайшие сроки.</div>\r\n</div>\r\n</div>\r\n<!--table-->\r\n<div class="container">\r\n<div class="row">\r\n<div class="section-4 text-center button-links">\r\n<table id="price_table" class="table table-hover" width="100%" cellspacing="0">\r\n<thead>\r\n<tr>\r\n<th class="text-center">Услуга</th>\r\n<th class="text-center">Стоимость</th>\r\n<th class="text-center">Время выполн. работ</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Tiger Nixon</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Cedric Kelly</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Sonya Frost</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Quinn Flynn</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Dai Rios</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Gavin Joyce</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Martena Mccray</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Jennifer Acosta</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Shad Decker</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="container">\r\n<div class="row ">\r\n<div class="col-md-3">\r\n<p>* В случае отказа от ремонта, диагностика оплачивается в размере 500 руб.</p>\r\n</div>\r\n<div class="col-md-3">\r\n<p>**Цены без учёта стоимости деталей. Точная стоимость ремонта согласовывается после диагностики.</p>\r\n</div>\r\n<div class="col-md-3">\r\n<p>Бесплатная доставка! Закажите прямо сейчас: +7 (495) 649 6886</p>\r\n</div>\r\n<div class="col-md-3">\r\n<div class="text-center button-links">\r\n<h2>{loadmodule mod_call_me_back_form}</h2>\r\n</div>\r\n<p>при отправке заявки с сайта - скидка 5% оплата парковки на время ремонта</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="container">\r\n<div class="row">\r\n<h3>Популярные виды ремонта iPod</h3>\r\n<p>Большинство всех ремонтов iPod происходят по причине механических повреждений, среди всех видов ремонтов связанных с падением плеера, лидирует замена экрана iPod (все модели iPod, кроме shuffle, оснащены экранами от 2" до 3,5"). Попадание влаги в iPod так же является частой причиной выхода плеера из строя.</p>\r\n<p>iPod photo, iPod video и iPod classic оснащены жесткими дисками, а это значит, что внутри спрятано много движущихся частей. Жесткие диски часто ломаются из-за падений, как правило помогает только замена жесткого диска iPod.</p>\r\n<p>При неаккуратном использовании iPod или иных обстоятельствах бывает необходима замена корпуса iPod. Самостоятельно сделать это практически невозможно, даже имея на руках новый корпус. Лучше доверить сборку и разборку iPod профессионалам.</p>\r\n<p>Наши специалисты имеют большой опыт ремонта всех видов iPod:</p>\r\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini</p>\r\n<p>Замена программного обеспечения, или перепрошивка iPod необходима, если Ваш плеер стал часто зависать, самопроизвольно перезагружаться, "глючить". Внимание! Не пытайтесь перепрошить iPod самостоятельно. В некоторых случаях это может привести к невозможности восстановления устройства.</p>\r\n</div>\r\n</div>', '', 1, 8, '2018-03-11 18:22:30', 90, '', '2018-03-17 13:29:38', 90, 90, '2018-03-29 08:45:13', '2018-03-11 18:22:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 7, '', '', 1, 76, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 65, 'IMac', 'imac', '<p>Ремонт IMac</p>', '', 1, 8, '2018-03-11 18:23:16', 90, '', '2018-03-11 18:23:16', 0, 0, '0000-00-00 00:00:00', '2018-03-11 18:23:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 66, 'Iразное', 'iraznoe', '<div class="container">\r\n<div class="row">\r\n<div class="col-md-6">\r\n<h2>Мы производим ремонт iPod всех поколений</h2>\r\n</div>\r\n<div class="col-md-6">Компания Apple предлагает широкую линейку плееров iPod. Как и любая другая продукция Apple, iPod отличаются высоким качеством сборки и надёжностью. Но что делать, если iPod сломался? Существует мнение, что iPod не ремонтируются или ремонт зачастую нецелесообразен. Спешим развеить этот миф! Ремонт iPod, несмотря на свою сложность, осуществим. Наши специалисты выполнят любой ремонт iPod в кратчайшие сроки.</div>\r\n</div>\r\n</div>\r\n<!--table-->\r\n<div class="container">\r\n<div class="row">\r\n<div class="section-4 text-center button-links">\r\n<table id="price_table" class="table table-hover" width="100%" cellspacing="0">\r\n<thead>\r\n<tr>\r\n<th class="text-center">Услуга</th>\r\n<th class="text-center">Стоимость</th>\r\n<th class="text-center">Время выполн. работ</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Tiger Nixon</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Cedric Kelly</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Sonya Frost</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Quinn Flynn</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Dai Rios</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Gavin Joyce</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Martena Mccray</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Jennifer Acosta</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Shad Decker</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="container">\r\n<div class="row ">\r\n<div class="col-md-3">\r\n<p>* В случае отказа от ремонта, диагностика оплачивается в размере 500 руб.</p>\r\n</div>\r\n<div class="col-md-3">\r\n<p>**Цены без учёта стоимости деталей. Точная стоимость ремонта согласовывается после диагностики.</p>\r\n</div>\r\n<div class="col-md-3">\r\n<p>Бесплатная доставка! Закажите прямо сейчас: +7 (495) 649 6886</p>\r\n</div>\r\n<div class="col-md-3">\r\n<div class="text-center button-links">\r\n<h2>{loadmodule mod_call_me_back_form}</h2>\r\n</div>\r\n<p>при отправке заявки с сайта - скидка 5% оплата парковки на время ремонта</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="container">\r\n<div class="row">\r\n<h3>Популярные виды ремонта iPod</h3>\r\n<p>Большинство всех ремонтов iPod происходят по причине механических повреждений, среди всех видов ремонтов связанных с падением плеера, лидирует замена экрана iPod (все модели iPod, кроме shuffle, оснащены экранами от 2" до 3,5"). Попадание влаги в iPod так же является частой причиной выхода плеера из строя.</p>\r\n<p>iPod photo, iPod video и iPod classic оснащены жесткими дисками, а это значит, что внутри спрятано много движущихся частей. Жесткие диски часто ломаются из-за падений, как правило помогает только замена жесткого диска iPod.</p>\r\n<p>При неаккуратном использовании iPod или иных обстоятельствах бывает необходима замена корпуса iPod. Самостоятельно сделать это практически невозможно, даже имея на руках новый корпус. Лучше доверить сборку и разборку iPod профессионалам.</p>\r\n<p>Наши специалисты имеют большой опыт ремонта всех видов iPod:</p>\r\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini</p>\r\n<p>Замена программного обеспечения, или перепрошивка iPod необходима, если Ваш плеер стал часто зависать, самопроизвольно перезагружаться, "глючить". Внимание! Не пытайтесь перепрошить iPod самостоятельно. В некоторых случаях это может привести к невозможности восстановления устройства.</p>\r\n</div>\r\n</div>', '', 1, 8, '2018-03-11 18:23:54', 90, '', '2018-03-22 17:28:18', 90, 0, '0000-00-00 00:00:00', '2018-03-11 18:23:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 5, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 67, 'Samsung', 'samsung', '<div class="container">\r\n<div class="row">\r\n<div class="col-md-6">\r\n<h2>Мы производим ремонт iPod всех поколений</h2>\r\n</div>\r\n<div class="col-md-6">Компания Apple предлагает широкую линейку плееров iPod. Как и любая другая продукция Apple, iPod отличаются высоким качеством сборки и надёжностью. Но что делать, если iPod сломался? Существует мнение, что iPod не ремонтируются или ремонт зачастую нецелесообразен. Спешим развеить этот миф! Ремонт iPod, несмотря на свою сложность, осуществим. Наши специалисты выполнят любой ремонт iPod в кратчайшие сроки.</div>\r\n</div>\r\n</div>\r\n<!--table-->\r\n<div class="container">\r\n<div class="row">\r\n<div class="section-4 text-center button-links">\r\n<table id="price_table" class="table table-hover" width="100%" cellspacing="0">\r\n<thead>\r\n<tr>\r\n<th class="text-center">Услуга</th>\r\n<th class="text-center">Стоимость</th>\r\n<th class="text-center">Время выполн. работ</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Tiger Nixon</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Cedric Kelly</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Sonya Frost</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Quinn Flynn</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Dai Rios</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Gavin Joyce</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Martena Mccray</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Jennifer Acosta</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Shad Decker</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="container">\r\n<div class="row ">\r\n<div class="col-md-3">\r\n<p>* В случае отказа от ремонта, диагностика оплачивается в размере 500 руб.</p>\r\n</div>\r\n<div class="col-md-3">\r\n<p>**Цены без учёта стоимости деталей. Точная стоимость ремонта согласовывается после диагностики.</p>\r\n</div>\r\n<div class="col-md-3">\r\n<p>Бесплатная доставка! Закажите прямо сейчас: +7 (495) 649 6886</p>\r\n</div>\r\n<div class="col-md-3">\r\n<div class="text-center button-links">\r\n<h2>{loadmodule mod_call_me_back_form}</h2>\r\n</div>\r\n<p>при отправке заявки с сайта - скидка 5% оплата парковки на время ремонта</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="container">\r\n<div class="row">\r\n<h3>Популярные виды ремонта iPod</h3>\r\n<p>Большинство всех ремонтов iPod происходят по причине механических повреждений, среди всех видов ремонтов связанных с падением плеера, лидирует замена экрана iPod (все модели iPod, кроме shuffle, оснащены экранами от 2" до 3,5"). Попадание влаги в iPod так же является частой причиной выхода плеера из строя.</p>\r\n<p>iPod photo, iPod video и iPod classic оснащены жесткими дисками, а это значит, что внутри спрятано много движущихся частей. Жесткие диски часто ломаются из-за падений, как правило помогает только замена жесткого диска iPod.</p>\r\n<p>При неаккуратном использовании iPod или иных обстоятельствах бывает необходима замена корпуса iPod. Самостоятельно сделать это практически невозможно, даже имея на руках новый корпус. Лучше доверить сборку и разборку iPod профессионалам.</p>\r\n<p>Наши специалисты имеют большой опыт ремонта всех видов iPod:</p>\r\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini</p>\r\n<p>Замена программного обеспечения, или перепрошивка iPod необходима, если Ваш плеер стал часто зависать, самопроизвольно перезагружаться, "глючить". Внимание! Не пытайтесь перепрошить iPod самостоятельно. В некоторых случаях это может привести к невозможности восстановления устройства.</p>\r\n</div>\r\n</div>', '', 1, 8, '2018-03-11 18:24:25', 90, '', '2018-03-22 17:29:53', 90, 0, '0000-00-00 00:00:00', '2018-03-11 18:24:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 4, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 71, 'Номер телефона', 'nomer-telefona', '<p>+7(987)654-32-10</p>', '', -2, 9, '2018-03-14 10:14:59', 90, '', '2018-03-14 10:14:59', 0, 0, '0000-00-00 00:00:00', '2018-03-14 10:14:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 72, 'боковой раздел информации', 'bokovoj-razdel-informatsii', '<p>Разного рода информация о компании </p>\r\n<p>Адрес</p>\r\n<p>телефон</p>\r\n<p>всякое</p>\r\n<p>всякое</p>\r\n<p>всякое</p>', '', -2, 9, '2018-03-14 10:16:52', 90, '', '2018-03-14 10:16:52', 0, 0, '0000-00-00 00:00:00', '2018-03-14 10:16:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 73, 'нижний раздел информации', 'nizhnij-razdel-informatsii', '<p>Всякая информация компании. Преимущества компании.история компании. всякая всячина </p>', '', -2, 8, '2018-03-14 10:19:16', 90, '', '2018-03-14 10:19:16', 0, 0, '0000-00-00 00:00:00', '2018-03-14 10:19:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 74, 'Подвал главной страницы ', 'podval-glavnoj-stranitsy', '<p><br /> &lt;h2&gt;Причины выбрать нас&lt;/h2&gt;</p>\r\n<p>&lt;table class="table table-striped"&gt;</p>\r\n<p>&lt;tbody&gt;</p>\r\n<p>&lt;tr&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;/tr&gt;</p>\r\n<p>&lt;tr&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;/tr&gt;</p>\r\n<p>&lt;tr&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;/tr&gt;</p>\r\n<p>&lt;tr&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;/tr&gt;</p>\r\n<p>&lt;tr&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;td&gt;Причина&lt;/td&gt;</p>\r\n<p>&lt;/tr&gt;</p>\r\n<p>&lt;/tbody&gt;</p>\r\n<p>&lt;/table&gt;</p>', '', -2, 9, '2018-03-14 10:20:05', 90, '', '2018-03-14 10:33:02', 90, 0, '0000-00-00 00:00:00', '2018-03-14 10:20:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 75, 'Карта', 'karta', '<p>&lt;script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=WbtksM5-mJTBWlrvxS8Uh-QoAE6XXMlP&amp;amp;width=auto&amp;amp;height=450&amp;amp;lang=ru_RU&amp;amp;sourceType=constructor&amp;amp;scroll=true"&gt;&lt;/script&gt;</p>', '', -2, 9, '2018-03-14 10:44:06', 90, '', '2018-03-16 13:49:12', 90, 0, '0000-00-00 00:00:00', '2018-03-14 10:44:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 97, 'Mat 1', 'mat-1', '<div class="container">\r\n<div class="row">\r\n<div class="col-md-6">\r\n<h2>Мы производим ремонт iPod всех поколений</h2>\r\n</div>\r\n<div class="col-md-6">Компания Apple предлагает широкую линейку плееров iPod. Как и любая другая продукция Apple, iPod отличаются высоким качеством сборки и надёжностью. Но что делать, если iPod сломался? Существует мнение, что iPod не ремонтируются или ремонт зачастую нецелесообразен. Спешим развеить этот миф! Ремонт iPod, несмотря на свою сложность, осуществим. Наши специалисты выполнят любой ремонт iPod в кратчайшие сроки.</div>\r\n</div>\r\n</div>\r\n<!--table-->\r\n<div class="container">\r\n<div class="row">\r\n<div class="section-4 text-center button-links">\r\n<table id="price_table" class="table table-hover" width="100%" cellspacing="0">\r\n<thead>\r\n<tr>\r\n<th class="text-center">Услуга</th>\r\n<th class="text-center">Стоимость</th>\r\n<th class="text-center">Время выполн. работ</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Tiger Nixon</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Cedric Kelly</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Sonya Frost</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Quinn Flynn</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Dai Rios</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Gavin Joyce</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Martena Mccray</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Jennifer Acosta</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n<tr>\r\n<td>Shad Decker</td>\r\n<td>5000 руб.</td>\r\n<td>90 минут</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="container">\r\n<div class="row ">\r\n<div class="col-md-3">\r\n<p>* В случае отказа от ремонта, диагностика оплачивается в размере 500 руб.</p>\r\n</div>\r\n<div class="col-md-3">\r\n<p>**Цены без учёта стоимости деталей. Точная стоимость ремонта согласовывается после диагностики.</p>\r\n</div>\r\n<div class="col-md-3">\r\n<p>Бесплатная доставка! Закажите прямо сейчас: +7 (495) 649 6886</p>\r\n</div>\r\n<div class="col-md-3">\r\n<div class="text-center button-links">\r\n<h2>{loadmodule mod_call_me_back_form}</h2>\r\n</div>\r\n<p>при отправке заявки с сайта - скидка 5% оплата парковки на время ремонта</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="container">\r\n<div class="row">\r\n<h3>Популярные виды ремонта iPod</h3>\r\n<p>Большинство всех ремонтов iPod происходят по причине механических повреждений, среди всех видов ремонтов связанных с падением плеера, лидирует замена экрана iPod (все модели iPod, кроме shuffle, оснащены экранами от 2" до 3,5"). Попадание влаги в iPod так же является частой причиной выхода плеера из строя.</p>\r\n<p>iPod photo, iPod video и iPod classic оснащены жесткими дисками, а это значит, что внутри спрятано много движущихся частей. Жесткие диски часто ломаются из-за падений, как правило помогает только замена жесткого диска iPod.</p>\r\n<p>При неаккуратном использовании iPod или иных обстоятельствах бывает необходима замена корпуса iPod. Самостоятельно сделать это практически невозможно, даже имея на руках новый корпус. Лучше доверить сборку и разборку iPod профессионалам.</p>\r\n<p>Наши специалисты имеют большой опыт ремонта всех видов iPod:</p>\r\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini</p>\r\n<p>Замена программного обеспечения, или перепрошивка iPod необходима, если Ваш плеер стал часто зависать, самопроизвольно перезагружаться, "глючить". Внимание! Не пытайтесь перепрошить iPod самостоятельно. В некоторых случаях это может привести к невозможности восстановления устройства.</p>\r\n</div>\r\n</div>', '', 1, 8, '2018-03-18 13:42:15', 90, '', '2018-03-28 09:38:29', 90, 90, '2018-03-28 09:38:29', '2018-03-18 13:42:15', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 3, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 98, 'Mat 2', 'mat-2', '<p>sgs gsdg ks</p>\r\n<p>[g ksp[gksf''gs f'' gk ''srg''k rs''g ra</p>\r\n<p>g g</p>\r\n<p>sfgs</p>\r\n<p>gsg</p>', '', 1, 8, '2018-03-18 13:42:42', 90, '', '2018-03-18 13:42:42', 0, 0, '0000-00-00 00:00:00', '2018-03-18 13:42:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 99, 'Mat 3', 'mat-3', '<p>Zzsd gsdgk sz </p>\r\n<p>g''k''kr ''''x;gk''sgk ''ogjkz''org z''gjs </p>\r\n<p>g xfgjxj r</p>', '', 1, 8, '2018-03-18 13:43:00', 90, '', '2018-03-27 17:34:25', 90, 0, '0000-00-00 00:00:00', '2018-03-18 13:43:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 100, 'Mat 4', 'mat-4', '<p>Z FgEgF {SKS<br />g szg</p>\r\n<p> g </p>\r\n<p>f g</p>\r\n<p>g</p>\r\n<p>fxg</p>', '', 1, 8, '2018-03-18 13:43:15', 90, '', '2018-03-28 09:34:23', 90, 90, '2018-03-28 09:34:23', '2018-03-18 13:43:15', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `cm5ji_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `cm5ji_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_content_rating`
--

CREATE TABLE IF NOT EXISTS `cm5ji_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_content_types`
--

CREATE TABLE IF NOT EXISTS `cm5ji_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_content_types`
--

INSERT INTO `cm5ji_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `cm5ji_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_djimageslider`
--

CREATE TABLE IF NOT EXISTS `cm5ji_djimageslider` (
  `id` int(10) unsigned NOT NULL,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cm5ji_djimageslider`
--

INSERT INTO `cm5ji_djimageslider` (`id`, `catid`, `title`, `alias`, `image`, `description`, `published`, `publish_up`, `publish_down`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(1, 0, '1', '1', 'images/1.jpg', '<p>iPHONE lopata </p>\r\n<p>slide 1</p>', 1, '2018-03-29 09:41:36', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":"","link_rel":"","alt_attr":"","title_attr":""}'),
(2, 0, '3', '3', 'images/3.jpg', '<p>lorem ipsum max clor</p>\r\n<p>slide 3</p>', 1, '2018-03-29 09:42:30', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":"","link_rel":"","alt_attr":"","title_attr":""}'),
(3, 0, '2', '2', 'images/2.jpg', '<p>lorem ipsum \\</p>\r\n<p>slide 2</p>', 1, '2018-03-29 09:43:43', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":"","link_rel":"","alt_attr":"","title_attr":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_extensions`
--

CREATE TABLE IF NOT EXISTS `cm5ji_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10028 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_extensions`
--

INSERT INTO `cm5ji_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_tags":"1","show_info":"1","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_image":"1","show_misc":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_user_custom_fields":["-1"],"show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"0","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"show_jed_info":"1","cachetimeout":"6","minimum_stability":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,sass","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","info_block_show_title":"0","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_associations":"0","flags":"1","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"1","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","captcha":"","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"enabled":"0","show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_autosuggest":"1","show_suggested_query":"1","show_explained_query":"1","show_advanced":"1","show_advanced_tips":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"snowball","enable_logging":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"default","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"ccef0201ee0a39e7c00cb4a2bba30b81"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{"name":"mod_sampledata","type":"module","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"MOD_SAMPLEDATA_XML_DESCRIPTION","group":"","filename":"mod_sampledata"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.34.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `cm5ji_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2017","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.8","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"configuration":{"toolbars":{"2":{"toolbar1":["bold","underline","strikethrough","|","undo","redo","|","bullist","numlist","|","pastetext"]},"1":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","formatselect","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","code","|","hr","table","|","subscript","superscript","|","charmap","pastetext","preview"]},"0":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","styleselect","|","formatselect","fontselect","fontsizeselect","|","searchreplace","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","image","|","code","|","forecolor","backcolor","|","fullscreen","|","table","|","subscript","superscript","|","charmap","emoticons","media","hr","ltr","rtl","|","cut","copy","paste","pastetext","|","visualchars","visualblocks","nonbreaking","blockquote","template","|","print","preview","codesample","insertdatetime","removeformat"]}},"setoptions":{"2":{"access":["1"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"1":{"access":["6","2"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"0":{"access":["7","4","8"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""}}},"sets_amount":3,"html_height":"550","html_width":"750"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1522312144}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":"","unique_id":"501d74e703278bb22c2c03717b342d097a3f051c","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{"name":"plg_sampledata_blog","type":"plugin","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION","group":"","filename":"blog"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"March 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"March 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"March 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 10002, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2017-11-07","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.8.2.1","description":"Russian language pack (site) for Joomla! 3.8.2","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 10002, 'ru-RU', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (ru-RU)","type":"language","creationDate":"2017-11-07","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.8.2.1","description":"Russian language pack (administrator) for Joomla! 3.8.2","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'Russian (ru-RU) Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian (ru-RU) Language Pack","type":"package","creationDate":"2017-11-07","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.8.2.1","description":"Joomla 3.8 Russian Language Package","group":"","filename":"pkg_ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'Mod JT LidForm', 'module', 'mod_jt_lidform', '', 0, 0, 0, 0, '{"name":"Mod JT LidForm","type":"module","creationDate":"December 2015","author":"Oleg Kasyanov","copyright":"","authorEmail":"support@kasyanov.info","authorUrl":"http:\\/\\/kasyanov.info","version":"3.0.0","description":"MOD_JT_LIDFORM_XML_DESCRIPTION","group":"","filename":"mod_jt_lidform"}', '{"form_id":"","subject_message":"","mailfrom":"","title":"","name_placeholder":"","phone_placeholder":"","date_text":"","date_placeholder":"","email_placeholder":"","textarea_placeholder":"","button_text":"","bottom_message":"","success_message":"","error_message":"Ups! Error!","ya_counter":"","ya_goal":"","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'Service lab', 'template', 'servicelab', '', 0, 1, 1, 0, '{"name":"Service lab","type":"template","creationDate":"12 March 2018","author":"Anton Malyamov","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"tosha.malyamov@yandex.ru","authorUrl":"http:\\/\\/vk.com\\/saliam_maliam","version":"1.0","description":"Template for CMS Joomla 3","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'Vinaora Nivo Slider', 'module', 'mod_vt_nivo_slider', '', 0, 1, 0, 0, '{"name":"Vinaora Nivo Slider","type":"module","creationDate":"Oct 2014","author":"VINAORA","copyright":"Copyright (C) 2011-2014 VINAORA. All rights reserved.","authorEmail":"info@vinaora.com","authorUrl":"http:\\/\\/vinaora.com","version":"3.3.0","description":"MOD_VT_NIVO_SLIDER_XML_DESCRIPTION","group":"","filename":"mod_vt_nivo_slider"}', '{"demo":"-1","theme":"default","slide_width":"auto","slide_height":"auto","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"fold","slices":"15","boxCols":"8","boxRows":"4","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"1","controlNav":"1","pauseOnHover":"1","manualAdvance":"1","prevText":"Prev","nextText":"Next","ribbon":"1","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"all","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","slide_bgcolor":"","slide_bdcolor":"","slide_bdwidth":"0","slide_bdrounded":"0","slide_bdshadow":"0","cache":"1","cache_time":"900","cachemode":"static","controlNavThumbs":"false"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'Regular Labs Library', 'library', 'regularlabs', '', 0, 1, 1, 0, '{"name":"Regular Labs Library","type":"library","creationDate":"November 2016","author":"Regular Labs (Peter van Westen)","copyright":"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved","authorEmail":"info@regularlabs.com","authorUrl":"https:\\/\\/www.regularlabs.com","version":"16.11.15265","description":"","group":"","filename":"regularlabs"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'plg_system_regularlabs', 'plugin', 'regularlabs', 'system', 0, 0, 1, 0, '{"name":"plg_system_regularlabs","type":"plugin","creationDate":"November 2016","author":"Regular Labs (Peter van Westen)","copyright":"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved","authorEmail":"info@regularlabs.com","authorUrl":"https:\\/\\/www.regularlabs.com","version":"16.11.15265","description":"PLG_SYSTEM_REGULARLABS_DESC","group":"","filename":"regularlabs"}', '{"combine_admin_menu":"0","show_help_menu":"1","max_list_count":"2500"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'com_advancedmodules', 'component', 'com_advancedmodules', '', 1, 1, 0, 0, '{"name":"com_advancedmodules","type":"component","creationDate":"November 2016","author":"Regular Labs (Peter van Westen)","copyright":"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved","authorEmail":"info@regularlabs.com","authorUrl":"https:\\/\\/www.regularlabs.com","version":"6.2.10","description":"COM_ADVANCEDMODULES_DESC","group":"","filename":"advancedmodules"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'plg_system_advancedmodules', 'plugin', 'advancedmodules', 'system', 0, 0, 1, 0, '{"name":"plg_system_advancedmodules","type":"plugin","creationDate":"November 2016","author":"Regular Labs (Peter van Westen)","copyright":"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved","authorEmail":"info@regularlabs.com","authorUrl":"https:\\/\\/www.regularlabs.com","version":"6.2.10","description":"PLG_SYSTEM_ADVANCEDMODULES_DESC","group":"","filename":"advancedmodules"}', '[]', '', '', 0, '0000-00-00 00:00:00', -1, 0),
(10011, 0, 'Mod JT Code', 'module', 'mod_jt_code', '', 0, 1, 0, 0, '{"name":"Mod JT Code","type":"module","creationDate":"December 2016","author":"Oleg Kasyanov","copyright":"","authorEmail":"support@kasyanov.info","authorUrl":"http:\\/\\/kasyanov.info","version":"1.0","description":"MOD_JT_CODE_XML_DESCRIPTION","group":"","filename":"mod_jt_code"}', '{"class":"code_box","jtcode":"","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'EXT Simple Slide', 'module', 'mod_ext_simple_slide', '', 0, 1, 0, 0, '{"name":"EXT Simple Slide","type":"module","creationDate":"24\\/11\\/2013","author":"Ext-Joom.com","copyright":"Copyright (C) 2011-2013 Ext-Joom.com. All Rights Reserved.","authorEmail":"extjoom@gmail.com","authorUrl":"","version":"1.0","description":"The module displays a slideshow of images (jQuery) ","group":"","filename":"mod_ext_simple_slide"}', '{"ext_load_jquery":"1","ext_jquery_ver":"1.8.3","width":"600","height":"300","ext_speed":"7000","color_background":"#222222","ext_bottom":"40","ext_border_radius_block":"5px 0 0 5px","ext_left_or_right":"right","ext_left_or_right_val":"0","ext_border_radius_button":"3px","color_button":"#FFFFFF","color_background_button":"#222222","color_background_button_active":"#DC143C","color_button_active":"#FFFFFF","img1":"","alt1":"","url1":"","target1":"_self","img2":"","alt2":"","url2":"","target2":"_self","img3":"","alt3":"","url3":"","target3":"_self","img4":"","alt4":"","url4":"","target4":"_self","img5":"","alt5":"","url5":"","target5":"_self","img6":"","alt6":"","url6":"","target6":"_self","img7":"","alt7":"","url7":"","target7":"_self","img8":"","alt8":"","url8":"","target8":"_self","img9":"","alt9":"","url9":"","target9":"_self","img10":"","alt10":"","url10":"","target10":"_self","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 10016, 'POWr Button', 'module', 'mod_powrbutton', '', 0, 1, 0, 0, '{"name":"POWr Button","type":"module","creationDate":"Jul 2017","author":"POWr.io","copyright":"Copyright (\\u00a9) 2017 POWr. All rights reserved.","authorEmail":"info@powr.io","authorUrl":"https:\\/\\/powr.io","version":"3.0","description":"MOD_BUTTON_DESCRIPTION","group":"","filename":"mod_powrbutton"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 10016, 'POWr Shortcodes', 'plugin', 'powrshortcodes', 'content', 0, 0, 1, 0, '{"name":"POWr Shortcodes","type":"plugin","creationDate":"Aug 2014","author":"POWr.io","copyright":"Copyright (\\u00a9) 2016 POWr. All rights reserved.","authorEmail":"info@powr.io","authorUrl":"https:\\/\\/powr.io","version":"3.0","description":"PLG_CONTENT_POWRSHORTCODES_DESCRIPTION","group":"","filename":"powrshortcodes"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 10016, 'POWr Icon', 'plugin', 'powricon', 'editors-xtd', 0, 1, 1, 0, '{"name":"POWr Icon","type":"plugin","creationDate":"Aug 2015","author":"POWr.io","copyright":"Copyright (\\u00a9) 2016 POWr. All rights reserved.","authorEmail":"info@powr.io","authorUrl":"https:\\/\\/www.powr.io","version":"1.0","description":"Adds an icon to easly add POWr Plugins to any Page or Post right from the Joomla text editor.","group":"","filename":"powricon"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 0, 'POWr Button', 'package', 'pkg_POWrButton', '', 0, 1, 1, 0, '{"name":"POWr Button","type":"package","creationDate":"Jul 2017","author":"POWr.io","copyright":"","authorEmail":"info@powr.io","authorUrl":"https:\\/\\/www.powr.io","version":"4.0","description":"Custom buttons for links, downloads, promotions, or social accounts.","group":"","filename":"pkg_powrbutton"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `cm5ji_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10017, 0, 'MOD_AJO_BUTTON', 'module', 'mod_ajo_button', '', 0, 1, 0, 0, '{"name":"MOD_AJO_BUTTON","type":"module","creationDate":"Juni 2016","author":"Danny Buytaert","copyright":"Copyright (C) 2016 Danny Buytaert. All rights reserved.\\n\\t","authorEmail":"danny@freakout.be","authorUrl":"www.freakout.be","version":"1.0.0","description":"MOD_AJO_BUTTON_XML_DESCRIPTION","group":"","filename":"mod_ajo_button"}', '{"bootstrapVersion":"3","contentPosition":"text-center","linkMenu":"","linkUrl":"","onClick":"","buttonStyle":"","buttonSize":"","buttonBlock":"","buttonClass":"","iconClass":"","iconPosition":"button","loadIconfont":"0","preTitle":"","preText":"","afterTitle":"","afterText":"","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 0, 'COM_ALFCONTACT', 'component', 'com_alfcontact', '', 1, 0, 0, 0, '{"name":"COM_ALFCONTACT","type":"component","creationDate":"April 2017","author":"Alfred Vink","copyright":"Copyright \\u00a9 2017 - All rights reserved.","authorEmail":"alfred@alfsoft.com","authorUrl":"http:\\/\\/www.alfsoft.com","version":"3.2.6","description":"","group":"","filename":"alfcontact"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 0, 'JE Quick Contact', 'module', 'mod_je_quickcontact', '', 0, 1, 0, 0, '{"name":"JE Quick Contact","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.4","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Quick Contact<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/jquery-ajax-quick-contact-module\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_quickcontact"}', '{"jQuery":"0","popUp":"0","popUpButton":"Quick Contact","name":"Name","email":"Email","message":"Message","captcha_label":"1","captcha":"Captcha","submit":"Send","recipient":"","subject":"JE Quick Contact","buttonBg":"#E60000","buttonBgH":"#333333","buttonText":"#ffffff","input_bg":"#F5F5F5","input_brd":"#dddddd","input_text":"#333333"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 0, 'Call Me Back Form', 'module', 'mod_call_me_back_form', '', 0, 1, 0, 0, '{"name":"Call Me Back Form","type":"module","creationDate":"11\\/10\\/2015","author":"Standard Company","copyright":"Copyright (C) 2015 standardcompany.ru. All Rights Reserved.","authorEmail":"info@standardcompany.ru","authorUrl":"","version":"1.0","description":"Call Me Back Form - Copyright (C) 2015 standardcompany.ru. All Rights Reserved.","group":"","filename":"mod_call_me_back_form"}', '{"subject_mail":"CALL_ME_BACK_FORM_SUBJECT_DEFAULT","use_as":"button","button_name":"CALL_ME_BACK_FORM_NAME_BUTTON_DEFAULT","form_title":"CALL_ME_BACK_FORM_TITLE_DEFAULT","form_description":"CALL_ME_BACK_FORM_DESCRIPTION_DEFAULT","form_thanks":"CALL_ME_BACK_FORM_AFTER_SENDING_DEFAULT","input_name":"CALL_ME_BACK_FORM_INPUT_NAME_DEFAULT","input_phone":"CALL_ME_BACK_FORM_INPUT_PHONE_DEFAULT","phone_mask":"+7 (999) 999-99-99","send_button":"CALL_ME_BACK_FORM_SEND_BUTTON_DEFAULT","send_button_after":"CALL_ME_BACK_FORM_SEND_BUTTON_AFTER_DEFAULT","input_name_required":"CALL_ME_BACK_FORM_INPUT_NAME_REQUIRED_DEFAULT","input_phone_required":"CALL_ME_BACK_FORM_INPUT_PHONE_REQUIRED_DEFAULT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 0, 'mod_qlmenu', 'module', 'mod_qlmenu', '', 0, 1, 0, 0, '{"name":"mod_qlmenu","type":"module","creationDate":"June 2014","author":"Mareike Riegel","copyright":"ql.de","authorEmail":"mareike.riegel@ql.de","authorUrl":"www.ql.de","version":"2.4","description":"MOD_QLMENU_XML_DESCRIPTION","group":"","filename":"mod_qlmenu"}', '{"startLevel":"1","endLevel":"0","adjustToMenuState":"1","showAllChildren":"0","debug":"0","bloglimit":"3","ordering":"created","orderingDirection":"DESC","disEnableItems":"0","worktitles":"0","worktitleslength":"50","worktitlesunit":"1","worktitlesplaceholder":"article","worktitlesreadmoredisplay":"0","worktitlesreadmore":" ...","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 0, 'mod_ninja_simple_icon_menu', 'module', 'mod_ninja_simple_icon_menu', '', 0, 1, 0, 0, '{"name":"mod_ninja_simple_icon_menu","type":"module","creationDate":"September, 2010","author":"Richie Mortimer","copyright":"(C) Richie Mortimer, ninjaforge.com","authorEmail":"support@ninjaforge.com","authorUrl":"http:\\/\\/ninjaforge.com","version":"1.9.0","description":"NINJASIMPLEICONS","group":"","filename":"mod_ninja_simple_icon_menu"}', '{"moduleclass_sfx":"","icon_container_margin_top":"0px","icon_titles":"1","icon_title_color":"","icon_title_fontsize":"","icon_orientation":"0","incCSS":"1","icon_height":"64","icon_width":"64","spacer":"","icon1_status":"1","icon1_img":"icons.png","icon1_target":"_self","spacer2":"","icon2_status":"1","icon2_img":"community.png","icon2_target":"_self","spacer3":"","icon3_status":"1","icon3_img":"photos.png","icon3_target":"_self","spacer4":"","icon4_status":"1","icon4_img":"speaker.png","icon4_target":"_self","spacer5":"","icon5_status":"1","icon5_img":"support.png","icon5_target":"_self","spacer6":"","icon6_status":"0","icon6_img":"image6.png","icon6_target":"_self","spacer7":"","icon7_status":"0","icon7_img":"image7.png","icon7_target":"_self","spacer8":"","icon8_status":"0","icon8_img":"image8.png","icon8_target":"_self","spacer9":"","icon9_status":"0","icon9_img":"image9.png","icon9_target":"_self","spacer10":"","icon10_status":"0","icon10_img":"image10.png","icon10_target":"_self","spacer11":"","icon11_status":"0","icon11_img":"image11.png","icon11_target":"_self","spacer12":"","icon12_status":"0","icon12_img":"image12.png","icon12_target":"_self","spacer13":"","icon13_status":"0","icon13_img":"image13.png","icon13_target":"_self","spacer14":"","icon14_status":"0","icon14_img":"image14.png","icon14_target":"_self","spacer15":"","icon15_status":"0","icon15_img":"image15.png","icon15_target":"_self","spacer16":"","icon16_status":"0","icon16_img":"image16.png","icon16_target":"_self","spacer17":"","icon17_status":"0","icon17_img":"image17.png","icon17_target":"_self","spacer18":"","icon18_status":"0","icon18_img":"image18.png","icon18_target":"_self","spacer19":"","icon19_status":"0","icon19_img":"image19.png","icon19_target":"_self","spacer20":"","icon20_status":"0","icon20_img":"image20.png","icon20_target":"_self"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 0, 'TheGrue Menu', 'module', 'mod_gruemenu', '', 0, 1, 0, 0, '{"name":"TheGrue Menu","type":"module","creationDate":"January, 2015","author":"TheGrue.org","copyright":"Copyright 2014 - TheGrue.org","authorEmail":"support@TheGrue.org","authorUrl":"http:\\/\\/TheGrue.org","version":"2.0.4","description":"\\n\\t<h1 class=\\"sub-heading\\">Responsive Navigation Menu - by TheGrue.org<\\/h1>\\t\\n\\t<div class=\\"description\\">This module was developed by  <a href=\\"http:\\/\\/thegrue.org\\" target=\\"_blank\\">TheGrue.org<\\/a> and can be downloaded and used for free under <a href=\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\">GNU\\/GPL2<\\/a> license. <br\\/> If you have any question or have found a bug, please <a href=\\"http:\\/\\/thegrue.org\\/responsive-menu-module-joomla\\/\\" target=\\"_blank\\">click here to visit the support page<\\/a>.<br\\/>\\n\\t<strong>Updated: January 19, 2017<\\/strong><br\\/>\\n\\t<small>Thanks to <a href=\\"http:\\/\\/www.berriart.com\\/sidr\\/\\" target=\\"_blank\\">berriart<\\/a><\\/small>\\n\\t<\\/div>\\n\\t","group":"","filename":"mod_gruemenu"}', '{"jQuery":"0","touchWipe":"1","Fixed":"0","Mobile":"1","MenuDirection":"0","startLevel":"1","endLevel":"0","menuFontSize":"13px","menubg":"#192F4D","menulink":"#d1e3fb","submenuFontSize":"11px","submenubg":"#192F4D","submenulink":"#d1e3fb","menubghover":"#11243d","menulinkhover":"#ffffff","menuradius":"3","fontStyle":"Open+Sans","screenMax":"720","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 0, 'JB DropDown Menu', 'module', 'mod_jbmenu', '', 0, 1, 0, 0, '{"name":"JB DropDown Menu","type":"module","creationDate":"March 10, 2012","author":"Extly.com","copyright":"Copyright (C) 2007 - 2016 Prieco, S.A. All rights reserved.","authorEmail":"support@extly.com","authorUrl":"http:\\/\\/www.extly.com","version":"3.0.0","description":"\\n\\t\\t<p>This module displays a menu on the frontend, based on Bootstrap, Subnav, Nav Nav-pills, with Dropdown Menu.<\\/p>\\n\\t\\t<p>NOTE: Boostrap Tabs and dropdowns must be supported by your template.<\\/p>\\n\\t\\t<h3>Ready for more? Check out <a href=''https:\\/\\/www.extly.com\\/utilities\\/jb-dropdown-menu.html'' target=''_blank''>XT Menu - Nav Tabs with dropdowns<\\/a>, A multi-level dropdown menu on Bootstrap 2 and 3.<\\/h3>\\n\\t","group":"","filename":"mod_jbmenu"}', '{"startLevel":"1","endLevel":"1","showAllChildren":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 10027, 'com_djimageslider', 'component', 'com_djimageslider', '', 1, 1, 0, 0, '{"name":"com_djimageslider","type":"component","creationDate":"August 2017","author":"DJ-Extensions.com","copyright":"Copyright (C) 2017 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.2.3","description":"DJ-ImageSlider component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 10027, 'DJ-ImageSlider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{"name":"DJ-ImageSlider","type":"module","creationDate":"August 2017","author":"DJ-Extensions.com","copyright":"Copyright (C) 2017 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.2.3","description":"DJ-ImageSlider Module","group":"","filename":"mod_djimageslider"}', '{"slider_source":"0","slider_type":"0","theme":"default","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","full_width":"0","image_width":"240","image_height":"180","fit_to":"0","image_centering":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","css3":"1","autoplay":"1","looponce":"0","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","wcag":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 0, 'DJ-ImageSlider Package', 'package', 'pkg_dj-imageslider', '', 0, 1, 1, 0, '{"name":"DJ-ImageSlider Package","type":"package","creationDate":"August 2017","author":"DJ-Extensions.com","copyright":"Copyright (C) 2017 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.2.3","description":"\\n\\t\\t<style type=\\"text\\/css\\">\\n\\t\\t\\t.djex-info { padding: 20px 30px 10px; margin: 0 0 20px 0; background: #ac00d4; color: #fff; border: 1px solid #81009f; font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-weight: normal; -webkit-border-radius: 4px; border-radius: 4px; }\\n\\t\\t\\t.djex-title { text-transform: uppercase; font-weight: bold; font-size: 14px; }\\n\\t\\t\\t.djex-info a:link, .djex-info a:visited, .djex-info a:hover { color:#fff; text-decoration:underline; font-weight: 600; }\\t\\n\\t\\t\\t.djex-info img { float: left; margin: 0 30px 10px 0; }\\n\\t\\t<\\/style>\\n\\t\\t<div class=\\"djex-info\\">\\n\\t\\t\\t<a href=\\"index.php?option=com_djimageslider\\"><img src=\\"components\\/com_djimageslider\\/assets\\/ex_slider.png\\" \\/><\\/a>\\n\\t\\t\\t<p class=\\"djex-title\\">Thank you for installing DJ-ImageSlider!<\\/p>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display slideshows containing slides with title and short description linked to any menu item, article or custom url address. \\n\\t\\t\\tIf you want to learn how to use DJ-ImageSlider please read <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/documentation\\">Documentation<\\/a> and <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/faq\\">FAQ section<\\/a><\\/p>\\n\\t\\t\\t<p>Check out our other extensions at <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t\\t<div style=\\"clear:both\\"><\\/div>\\n\\t\\t<\\/div>\\n\\t\\t","group":"","filename":"pkg_dj-imageslider"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_fields`
--

CREATE TABLE IF NOT EXISTS `cm5ji_fields` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_fields_categories`
--

CREATE TABLE IF NOT EXISTS `cm5ji_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_fields_groups`
--

CREATE TABLE IF NOT EXISTS `cm5ji_fields_groups` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_fields_values`
--

CREATE TABLE IF NOT EXISTS `cm5ji_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_filters`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cm5ji_finder_taxonomy`
--

INSERT INTO `cm5ji_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_terms`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cm5ji_finder_terms_common`
--

INSERT INTO `cm5ji_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_finder_types`
--

CREATE TABLE IF NOT EXISTS `cm5ji_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_languages`
--

CREATE TABLE IF NOT EXISTS `cm5ji_languages` (
  `lang_id` int(11) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_languages`
--

INSERT INTO `cm5ji_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 56, 'ru-RU', 'Русский (Россия)', 'Russian (Russia)', 'ru', 'ru_ru', '', '', '', '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_menu`
--

CREATE TABLE IF NOT EXISTS `cm5ji_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_menu`
--

INSERT INTO `cm5ji_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 75, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 90, '2018-03-16 14:02:34', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(102, 'mainmenu', 'Iphone', 'iphone', '', 'iphone', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 52, 0, '*', 0),
(103, 'mainmenu', 'IMac', 'imac', '', 'imac', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(104, 'mainmenu', 'Iразное', 'iraznoe', '', 'iraznoe', 'index.php?option=com_content&view=article&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(105, 'mainmenu', 'Samsung', 'samsung', '', 'samsung', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(106, 'nizhnee-menyu', 'Что то', 'chto-to', '', 'chto-to', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(107, 'nizhnee-menyu', 'График работы ', 'grafik-raboty', '', 'grafik-raboty', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(108, 'nizhnee-menyu', 'О компании', 'o-kompanii', '', 'o-kompanii', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(109, 'nizhnee-menyu', 'Аксессуары', 'aksessuary', '', 'aksessuary', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(110, 'main', 'COM_ALFCONTACT_MENU', 'com-alfcontact-menu', '', 'com-alfcontact-menu', 'index.php?option=com_alfcontact', 'component', 1, 1, 1, 10018, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_alfcontact/images/alfcontact-16.png', 0, '{}', 67, 68, 0, '', 1),
(111, 'mainmenu', 'Mat 1', 'mat-1', '', 'iphone/mat-1', 'index.php?option=com_content&view=article&id=15', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 44, 45, 0, '*', 0),
(112, 'mainmenu', 'Mat 2', 'mat-2', '', 'iphone/mat-2', 'index.php?option=com_content&view=article&id=16', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 47, 0, '*', 0),
(113, 'mainmenu', 'Mat 3', 'mat-3', '', 'iphone/mat-3', 'index.php?option=com_content&view=article&id=17', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 48, 49, 0, '*', 0),
(114, 'mainmenu', 'Mat 4', 'mat-4', '', 'iphone/mat-4', 'index.php?option=com_content&view=article&id=18', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(115, 'main', 'COM_DJIMAGESLIDER', 'com-djimageslider', '', 'com-djimageslider', 'index.php?option=com_djimageslider', 'component', 1, 1, 1, 10025, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-djimageslider.png', 0, '{}', 69, 74, 0, '', 1),
(116, 'main', 'COM_DJIMAGESLIDER_SLIDES', 'com-djimageslider-slides', '', 'com-djimageslider/com-djimageslider-slides', 'index.php?option=com_djimageslider&view=items', 'component', 1, 115, 2, 10025, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-menu-slides.png', 0, '{}', 70, 71, 0, '', 1),
(117, 'main', 'COM_DJIMAGESLIDER_CATEGORIES', 'com-djimageslider-categories', '', 'com-djimageslider/com-djimageslider-categories', 'index.php?option=com_categories&extension=com_djimageslider', 'component', 1, 115, 2, 10025, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '{}', 72, 73, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_menu_types`
--

CREATE TABLE IF NOT EXISTS `cm5ji_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_menu_types`
--

INSERT INTO `cm5ji_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 68, 'nizhnee-menyu', 'Нижнее меню', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_messages`
--

CREATE TABLE IF NOT EXISTS `cm5ji_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `cm5ji_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_modules`
--

CREATE TABLE IF NOT EXISTS `cm5ji_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_modules`
--

INSERT INTO `cm5ji_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'menu', 90, '2018-03-28 19:06:49', '2018-03-16 11:12:04', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" navbar-nav","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '2018-03-12 08:01:50', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '2018-03-15 14:33:53', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 69, 'Нижнее меню', '', '', 1, 'position-8', 0, '0000-00-00 00:00:00', '2018-03-15 14:41:01', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"nizhnee-menyu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 70, 'Mod JT LidForm', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2018-03-15 07:35:11', '0000-00-00 00:00:00', -2, 'mod_jt_lidform', 1, 1, '{"form_id":"one","email":"tosha.malyamov@yandex.ru","subject_message":"\\u041d\\u043e\\u0432\\u0430\\u044f \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 \\u0421\\u0435\\u0440\\u0432\\u0438\\u0441 \\u043b\\u0430\\u0431","mailfrom":"","title":"\\u041e\\u043d\\u043b\\u0430\\u0439\\u043d \\u0437\\u0430\\u043f\\u0438\\u0441\\u044c","name_placeholder":"\\u0412\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f","show_phone":"1","phone_placeholder":"\\u0412\\u0430\\u0448 \\u043d\\u043e\\u043c\\u0435\\u0440 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430","show_date":"1","date_text":"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0435\\u0442\\u0435 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c","date_placeholder":"\\u0416\\u0435\\u043b\\u0430\\u0435\\u043c\\u0430\\u044f \\u0434\\u0430\\u0442\\u0430","show_email":"1","email_placeholder":"\\u0412\\u0430\\u0448 Email","show_textarea":"1","textarea_placeholder":"\\u0423\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u043e\\u0431\\u043b\\u0435\\u043c\\u0443","button_text":"\\u0417\\u0430\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c\\u0441\\u044f","bottom_message":"","success_message":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043f\\u0440\\u0438\\u043d\\u044f\\u0442\\u0430. ","error_message":" Error!","ya_counter":"","ya_goal":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 76, 'Карта', '', '<p>&lt;script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=WbtksM5-mJTBWlrvxS8Uh-QoAE6XXMlP&amp;amp;width=auto&amp;amp;height=450&amp;amp;lang=ru_RU&amp;amp;sourceType=constructor&amp;amp;scroll=true"&gt;&lt;/script&gt;</p>', 1, 'karta', 0, '0000-00-00 00:00:00', '2018-03-15 07:31:50', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 77, 'Слайдер', '', '', 1, 'Slider', 0, '0000-00-00 00:00:00', '2018-03-28 16:28:20', '0000-00-00 00:00:00', -2, 'mod_vt_nivo_slider', 1, 1, '{"demo":"-1","theme":"default","slide_width":"auto","slide_height":"auto","item_dir":"","item_path":"images\\/1.jpg\\r\\nimages\\/2.jpg\\r\\nimages\\/3.jpg","item_title":"iiphon1 lopata\\r\\niphone2 looooopata\\r\\niphone 3 vashe","item_description":"word\\r\\nwordword\\r\\nwordwordword","item_url":"","item_target":"_blank","effect":"fold","slices":"15","boxCols":"8","boxRows":"4","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"1","controlNav":"1","pauseOnHover":"1","manualAdvance":"1","prevText":"Prev","nextText":"Next","ribbon":"1","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"topleft","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","slide_bgcolor":"","slide_bdcolor":"","slide_bdwidth":"0","slide_bdrounded":"0","slide_bdshadow":"0","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","controlNavThumbs":"false","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 79, 'Карта', '', '', 1, 'karta', 90, '2018-03-16 14:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jt_code', 1, 1, '{"class":"code_box","jtcode":"<script type=\\"text\\/javascript\\" charset=\\"utf-8\\" async src=\\"https:\\/\\/api-maps.yandex.ru\\/services\\/constructor\\/1.0\\/js\\/?sid=WbtksM5-mJTBWlrvxS8Uh-QoAE6XXMlP&amp;width=auto&amp;height=450&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true\\"><\\/script>\\r\\n\\r\\n","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 80, 'Слайдер', '', '', 1, 'Slider', 0, '0000-00-00 00:00:00', '2018-03-16 10:30:50', '0000-00-00 00:00:00', -2, 'mod_ext_simple_slide', 1, 1, '{"ext_load_jquery":"1","ext_jquery_ver":"1.8.3","width":"600","height":"300","ext_speed":"3000","color_background":"#222222","ext_bottom":"40","ext_border_radius_block":"5px 0 0 5px","ext_left_or_right":"right","ext_left_or_right_val":"0","ext_border_radius_button":"3px","color_button":"#ffffff","color_background_button":"#222222","color_background_button_active":"#dc143c","color_button_active":"#ffffff","img1":"images\\/1.jpg","alt1":"iphone 7 lopata","url1":"","target1":"_self","img2":"images\\/2.jpg","alt2":"iphone lopata","url2":"","target2":"_self","img3":"images\\/3.jpg","alt3":"telephone","url3":"","target3":"_self","img4":"","alt4":"","url4":"","target4":"_self","img5":"","alt5":"","url5":"","target5":"_self","img6":"","alt6":"","url6":"","target6":"_self","img7":"","alt7":"","url7":"","target7":"_self","img8":"","alt8":"","url8":"","target8":"_self","img9":"","alt9":"","url9":"","target9":"_self","img10":"","alt10":"","url10":"","target10":"_self","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 81, 'Боковой раздел информации главной страницы', '', '<p>телефон</p>\r\n<p>адрес</p>\r\n<p>другая всякая фигня для связи</p>', 1, 'sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 82, 'Подвал главной страницы ', '', '<div class="table-responsive">\r\n<h2>Причины выбрать нас</h2>\r\n<table class="table table-striped">\r\n<tbody>\r\n<tr>\r\n<td>Причина</td>\r\n<td>Причина</td>\r\n</tr>\r\n<tr>\r\n<td>Причина</td>\r\n<td>Причина</td>\r\n</tr>\r\n<tr>\r\n<td>Причина</td>\r\n<td>Причина</td>\r\n</tr>\r\n<tr>\r\n<td>Причина</td>\r\n<td>Причина</td>\r\n</tr>\r\n<tr>\r\n<td>Причина</td>\r\n<td>Причина</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 1, 'Footer', 90, '2018-03-16 14:03:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 83, 'Нижний раздел информации главной страницы', '', '<p>всякая информация о нас всякая информация о нас всякая информация о нас всякая информация о нас всякая информация о нас всякая информация о нас всякая информация о нас всякая информация о нас</p>\r\n<p>всякая информация о нас</p>\r\n<p>всякая информация о нас</p>', 1, 'Nijnii_blok_info', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 86, 'POWr Button', '', '', 0, '', 0, '0000-00-00 00:00:00', '2018-03-15 14:31:41', '0000-00-00 00:00:00', -2, 'mod_powrbutton', 1, 1, '', 0, '*'),
(98, 87, 'Кнопка 1', '', '', 1, 'button1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ajo_button', 1, 1, '{"bootstrapVersion":"3","contentPosition":"text-center","linkMenu":"106","linkUrl":"","onClick":"","buttonText":"\\u0427\\u0442\\u043e \\u0442\\u043e","buttonStyle":"btn-primary","buttonSize":"","buttonBlock":"btn-block","buttonClass":"","iconClass":"","loadIconfont":"0","preTitle":"","preText":"","afterTitle":"","afterText":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 88, 'Кнопка 2', '', '', 1, 'button2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ajo_button', 1, 1, '{"bootstrapVersion":"3","contentPosition":"text-center","linkMenu":"107","linkUrl":"","onClick":"","buttonText":"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b","buttonStyle":"btn-primary","buttonSize":"","buttonBlock":"btn-block","buttonClass":"","iconClass":"","loadIconfont":"0","preTitle":"","preText":"","afterTitle":"","afterText":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 89, 'Кнопка 3', '', '', 1, 'button3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ajo_button', 1, 1, '{"bootstrapVersion":"3","contentPosition":"text-center","linkMenu":"108","linkUrl":"","onClick":"","buttonText":"\\u041e \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438","buttonStyle":"btn-primary","buttonSize":"","buttonBlock":"btn-block","buttonClass":"","iconClass":"","loadIconfont":"0","preTitle":"","preText":"","afterTitle":"","afterText":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 90, 'Кнопка 4', '', '', 1, 'button4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ajo_button', 1, 1, '{"bootstrapVersion":"3","contentPosition":"text-center","linkMenu":"109","linkUrl":"","onClick":"","buttonText":"\\u0410\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440\\u044b","buttonStyle":"btn-primary","buttonSize":"","buttonBlock":"btn-block","buttonClass":"","iconClass":"","loadIconfont":"0","preTitle":"","preText":"","afterTitle":"","afterText":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 92, 'Форма записи', '', '', 1, 'forma', 0, '0000-00-00 00:00:00', '2018-03-16 10:31:05', '0000-00-00 00:00:00', -2, 'mod_je_quickcontact', 1, 1, '{"jQuery":"1","popUp":"0","popUpButton":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442","name":"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0438\\u043c\\u044f","email":"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 Email ","message":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435","captcha_label":"1","captcha":"Captcha","submit":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c","recipient":"tosha.malyamov@yandex.ru","subject":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 ","buttonBg":"#E60000","buttonBgH":"#333333","buttonText":"#FFFFFF","input_bg":"#F5F5F5","input_brd":"#DDDDDD","input_text":"#333333","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 93, 'Форма записи', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_call_me_back_form', 1, 0, '{"my_email":"tosha.malyamov@yandex.ru","subject_mail":"\\u041d\\u043e\\u0432\\u044b\\u0439 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441 \\u043d\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0432\\u043e\\u043d\\u043e\\u043a","use_as":"button","button_name":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442","form_title":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442","form_description":"\\u0443\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u043e\\u0431\\u043b\\u0435\\u043c\\u0443","form_thanks":"\\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e. \\u041c\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438 \\u0432\\u0430\\u0448 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441. \\u041c\\u044b \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f \\u0441 \\u0432\\u0430\\u043c\\u0438 \\u043a\\u0430\\u043a \\u043c\\u043e\\u0436\\u043d\\u043e \\u0441\\u043a\\u043e\\u0440\\u0435\\u0435.","input_name":"\\u0418\\u043c\\u044f","input_phone":"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","phone_mask":"+7 (999) 999-99-99","send_button":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c","send_button_after":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0430","input_name_required":"\\u041e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043f\\u043e\\u043b\\u0435","input_phone_required":"\\u041e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043f\\u043e\\u043b\\u0435","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 94, 'qlmenu', '', '', 0, '', 0, '0000-00-00 00:00:00', '2018-03-16 10:55:19', '0000-00-00 00:00:00', -2, 'mod_qlmenu', 1, 1, '', 0, '*'),
(105, 95, 'mod_ninja_simple_icon_menu', '', '', 0, '', 0, '0000-00-00 00:00:00', '2018-03-16 10:58:12', '0000-00-00 00:00:00', -2, 'mod_ninja_simple_icon_menu', 1, 1, '', 0, '*'),
(106, 96, 'Главное меню', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '2018-03-16 11:15:17', '0000-00-00 00:00:00', -2, 'mod_gruemenu', 1, 1, '{"menutype":"mainmenu","jQuery":"1","touchWipe":"1","Fixed":"0","Mobile":"1","MenuDirection":"0","startLevel":"1","endLevel":"0","menuFontSize":"13px","menubg":"#192F4D","menulink":"#D1E3FB","submenuFontSize":"11px","submenubg":"#192F4D","submenulink":"#D1E3FB","menubghover":"#11243D","menulinkhover":"#FFFFFF","menuradius":"3","fontStyle":"Open+Sans","screenMax":"1170","tag_id":"","class_sfx":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 101, 'JB DropDown Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '2018-03-22 17:31:14', '0000-00-00 00:00:00', -2, 'mod_jbmenu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"2","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:bootstrap-2","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 103, 'Слайдер', '', '', 1, 'Slider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_djimageslider', 1, 1, '{"slider_source":"1","slider_type":"0","theme":"default","link_image":"0","image_folder":"templates\\/servicelab\\/images\\/slides","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","full_width":"1","image_width":"240","image_height":"180","fit_to":"2","image_centering":"0","visible_images":"1","space_between_images":"10","max_images":"20","sort_by":"1","css3":"1","autoplay":"1","looponce":"0","show_buttons":"0","show_arrows":"1","show_custom_nav":"0","wcag":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_modules_menu`
--

CREATE TABLE IF NOT EXISTS `cm5ji_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_modules_menu`
--

INSERT INTO `cm5ji_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 101),
(92, 101),
(92, 106),
(92, 107),
(92, 108),
(92, 109),
(93, 101),
(93, 106),
(93, 107),
(93, 108),
(93, 109),
(94, 101),
(94, 106),
(94, 107),
(94, 108),
(94, 109),
(95, 101),
(95, 106),
(95, 107),
(95, 108),
(95, 109),
(96, 101),
(96, 106),
(96, 107),
(96, 108),
(96, 109),
(98, 101),
(98, 106),
(98, 107),
(98, 108),
(98, 109),
(99, 101),
(99, 106),
(99, 107),
(99, 108),
(99, 109),
(100, 101),
(100, 106),
(100, 107),
(100, 108),
(100, 109),
(101, 101),
(101, 106),
(101, 107),
(101, 108),
(101, 109),
(102, 101),
(103, 0),
(106, 0),
(107, 0),
(108, 101);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `cm5ji_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_overrider`
--

CREATE TABLE IF NOT EXISTS `cm5ji_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `cm5ji_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_postinstall_messages`
--

INSERT INTO `cm5ji_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 0),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_powr`
--

CREATE TABLE IF NOT EXISTS `cm5ji_powr` (
  `data_type` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cm5ji_powr`
--

INSERT INTO `cm5ji_powr` (`data_type`, `value`) VALUES
('powr_token', 'DK09KQLaOs1521124017');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_redirect_links`
--

CREATE TABLE IF NOT EXISTS `cm5ji_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_redirect_links`
--

INSERT INTO `cm5ji_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`, `header`) VALUES
(1, 'http://iservice/index.php/karta', NULL, '', '', 1, 0, '2018-03-16 14:05:03', '0000-00-00 00:00:00', 301),
(2, 'http://iservice/index.php/o-nas', NULL, '', '', 1, 0, '2018-03-16 14:05:10', '0000-00-00 00:00:00', 301);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_schemas`
--

CREATE TABLE IF NOT EXISTS `cm5ji_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_schemas`
--

INSERT INTO `cm5ji_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.6-2018-02-14'),
(10018, '3.2.6'),
(10025, '2.0');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_session`
--

CREATE TABLE IF NOT EXISTS `cm5ji_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_session`
--

INSERT INTO `cm5ji_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('31bfq6b6kjk838l0gafhnfdvp7', 0, 1, '1522229489', 'joomla|s:664:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToyO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjIyOTQ0NjtzOjQ6Imxhc3QiO2k6MTUyMjIyOTQ0NjtzOjM6Im5vdyI7aToxNTIyMjI5NDg5O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
('3q3pupd5v4sa04u3hd591tp1i3', 1, 1, '1522229849', 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjIyOTg0ODtzOjQ6Imxhc3QiO2k6MTUyMjIyOTg0ODtzOjM6Im5vdyI7aToxNTIyMjI5ODQ4O31zOjU6InRva2VuIjtzOjMyOiJaVXJtR01ScXhLaHhtRmYwOTdycjgzSzJmSUxmMTNVMiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('45p1j01mvdvtdqmcuaiinojkd1', 1, 0, '1522230014', 'joomla|s:1124:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MjIyMjk4NDk7czo0OiJsYXN0IjtpOjE1MjIyMjk5MzY7czozOiJub3ciO2k6MTUyMjIzMDAxMTt9czo1OiJ0b2tlbiI7czozMjoiNmJwc21ZaG55NGpZdzR1RHhhVGcxMllsWjNoVm9aa2UiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjE6e2k6MDtpOjE1O31zOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MjoiOTAiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 90, 'admin'),
('5pm8rts6774naqth2sl8llm6r2', 0, 1, '1522316688', 'joomla|s:664:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToyO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjMxNjY4ODtzOjQ6Imxhc3QiO2k6MTUyMjMxNjY4ODtzOjM6Im5vdyI7aToxNTIyMzE2Njg4O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
('8brmbqm3uk0g665cochhi171k1', 1, 0, '1522229668', 'joomla|s:1124:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo5O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjIyOTQ5OTtzOjQ6Imxhc3QiO2k6MTUyMjIyOTY2MjtzOjM6Im5vdyI7aToxNTIyMjI5NjY1O31zOjU6InRva2VuIjtzOjMyOiJIZHRqY0psODRENFpwQ29uUzk1WFYwQjFaVE9qVGtWVCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6MTg7fXM6NDoiZGF0YSI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czoyOiI5MCI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 90, 'admin'),
('ag5v1hn9gnhbvlra1dtpcbls31', 1, 1, '1522263974', 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjI2Mzk3MztzOjQ6Imxhc3QiO2k6MTUyMjI2Mzk3MztzOjM6Im5vdyI7aToxNTIyMjYzOTczO31zOjU6InRva2VuIjtzOjMyOiJjYjYzcU5WdHpFSUs1a1ZyUWhDZExxdHdodUJYSFNERCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('e9emdt7ut7jqv7n835m5h6lph1', 1, 0, '1522265695', 'joomla|s:1048:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MjIyNjM5NzQ7czo0OiJsYXN0IjtpOjE1MjIyNjQ4NTU7czozOiJub3ciO2k6MTUyMjI2NTY5NTt9czo1OiJ0b2tlbiI7czozMjoidkY1T01OMGpNNGlHeEVyOEhpMTZXWFlFS29DZ2dnVmkiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6MTt9czo0OiJkYXRhIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjI6IjkwIjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 90, 'admin'),
('etkq6fd0s8v62ni97n7t9he6d3', 1, 0, '1522316681', 'joomla|s:1528:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozMjtzOjU6InRva2VuIjtzOjMyOiJuVnN5SnhBZzZoYll3WTZrUmhjZFZ6cGRBZFQwNTZ3MyI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTIyMzE2MjE2O3M6NDoibGFzdCI7aToxNTIyMzE2Njc5O3M6Mzoibm93IjtpOjE1MjIzMTY2ODE7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxNzoiY29tX2RqaW1hZ2VzbGlkZXIiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX19czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjI6IjkwIjt9czo5OiJjb21fbWVkaWEiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6InJldHVybl91cmwiO3M6MTEzOiJpbmRleC5waHA/b3B0aW9uPWNvbV9tZWRpYSZ2aWV3PWltYWdlcyZ0bXBsPWNvbXBvbmVudCZmaWVsZGlkPWpmb3JtX2ltYWdlJmVfbmFtZT0mYXNzZXQ9Y29tX2RqaW1hZ2VzbGlkZXImYXV0aG9yPSI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 90, 'admin'),
('j2sg5kr5b7qnk3soot422ri9u5', 1, 1, '1522229502', 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjIyOTQ5OTtzOjQ6Imxhc3QiO2k6MTUyMjIyOTQ5OTtzOjM6Im5vdyI7aToxNTIyMjI5NDk5O31zOjU6InRva2VuIjtzOjMyOiJlSGdVMTlNSXB2a2Q2blk1ZXVGUXBYalRYUXNFSnFUSiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('j6t947019tvbedooj0li4i6qm4', 0, 1, '1522229821', 'joomla|s:664:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjIyOTgyMTtzOjQ6Imxhc3QiO2k6MTUyMjIyOTgyMTtzOjM6Im5vdyI7aToxNTIyMjI5ODIxO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
('lvu6740j21cdarrq6u2dv24pm0', 0, 1, '1522264544', 'joomla|s:668:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxODtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MjIyNjI1MTE7czo0OiJsYXN0IjtpOjE1MjIyNjQ1Mzk7czozOiJub3ciO2k6MTUyMjI2NDU0NDt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('o5th3s95jhhmrirnsjqofd4rn0', 0, 1, '1522255438', 'joomla|s:664:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTo3O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjI1NDkwMjtzOjQ6Imxhc3QiO2k6MTUyMjI1NTM0NjtzOjM6Im5vdyI7aToxNTIyMjU1NDM3O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
('q814djpoqdg7nig0fb0smc9on1', 1, 0, '1522255427', 'joomla|s:1272:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozNztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MjIyNTQ0MjA7czo0OiJsYXN0IjtpOjE1MjIyNTU0MjQ7czozOiJub3ciO2k6MTUyMjI1NTQyNjt9czo1OiJ0b2tlbiI7czozMjoiemNlZ2lGZXZodjVWdnd6Z0dYRW1aeXZmRHhkb1dHcEciO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjtzOjEyOiJyZWRpcmVjdF91cmwiO047fXM6MTE6ImNvbV9tb2R1bGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czoyOiI5MCI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 90, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_tags`
--

CREATE TABLE IF NOT EXISTS `cm5ji_tags` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_tags`
--

INSERT INTO `cm5ji_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 90, '2018-03-11 17:17:26', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_template_styles`
--

CREATE TABLE IF NOT EXISTS `cm5ji_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_template_styles`
--

INSERT INTO `cm5ji_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'servicelab', 0, '1', 'Service lab - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_ucm_base`
--

CREATE TABLE IF NOT EXISTS `cm5ji_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_ucm_content`
--

CREATE TABLE IF NOT EXISTS `cm5ji_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_ucm_history`
--

CREATE TABLE IF NOT EXISTS `cm5ji_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_ucm_history`
--

INSERT INTO `cm5ji_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2018-03-11 18:05:24', 90, 578, 'eadcd17eb62cd43e6169c56169e9f7643a19fd98', '{"id":8,"asset_id":57,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0438","alias":"uslugi","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"90","created_time":"2018-03-11 18:05:24","modified_user_id":null,"modified_time":"2018-03-11 18:05:24","hits":"0","language":"*","version":null}', 0),
(2, 9, 5, '', '2018-03-11 18:05:40', 90, 593, '00aa42c66cc38fc958c15c41635581ab930d0fc7', '{"id":9,"asset_id":58,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f","alias":"kompaniya","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"90","created_time":"2018-03-11 18:05:40","modified_user_id":null,"modified_time":"2018-03-11 18:05:40","hits":"0","language":"*","version":null}', 0),
(3, 1, 1, '', '2018-03-11 18:09:42', 90, 1893, '837cbdccf909a3c7e421321dcd71d897779d0891', '{"id":1,"asset_id":59,"title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","introtext":"<p>\\u042d\\u0442\\u043e \\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-11 18:09:42","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:09:42","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-11 18:09:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 2, 1, '', '2018-03-11 18:12:11', 90, 1846, 'eb24b0d0b96a10898985bc8bb84d5b1e95dabf87', '{"id":2,"asset_id":60,"title":"  \\u041e \\u043d\\u0430\\u0441 ","alias":"o-nas","introtext":"<p>\\u0411\\u043b\\u043e\\u043a \\u043e \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-11 18:12:11","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:12:11","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-11 18:12:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 3, 1, '', '2018-03-11 18:18:36', 90, 1864, '4573808721550ede5131e475a97383fcb845b6a8', '{"id":3,"asset_id":61,"title":"\\u0427\\u0442\\u043e \\u0442\\u043e","alias":"chto-to","introtext":"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0447\\u0442\\u043e \\u0442\\u043e<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-11 18:18:36","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:18:36","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-11 18:18:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 4, 1, '', '2018-03-11 18:19:39', 90, 1893, '3000dd8bc2ce5f9f9a586b638f72358ee85f549b', '{"id":4,"asset_id":62,"title":"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b ","alias":"grafik-raboty","introtext":"<p>\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:19:39","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:19:39","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-11 18:19:39","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 5, 1, '', '2018-03-11 18:20:40', 90, 1863, '1414c63a001b1090003cf2352b577c4ddc2cd5c6', '{"id":5,"asset_id":63,"title":"\\u0430\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440\\u044b","alias":"aksessuary","introtext":"<p>\\u0430\\u043a\\u0441\\u0441\\u0435\\u0441\\u0443\\u0430\\u0440\\u044b<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-11 18:20:40","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:20:40","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-11 18:20:40","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 4, 1, '', '2018-03-11 18:21:13', 90, 1910, '7f272c5733aff9ad783dc918dfd3c207e2c7296e', '{"id":4,"asset_id":"62","title":"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b ","alias":"grafik-raboty","introtext":"<p>\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-11 18:19:39","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:21:13","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-11 18:21:03","publish_up":"2018-03-11 18:19:39","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 6, 1, '', '2018-03-11 18:22:30', 90, 1812, '0b0938c4447b9985ee15fb3e2ea676653e962a04', '{"id":6,"asset_id":64,"title":"Iphone","alias":"iphone","introtext":"<p>\\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0430\\u0439\\u0444\\u043e\\u043d<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:22:30","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:22:30","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-11 18:22:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 7, 1, '', '2018-03-11 18:23:16', 90, 1782, '59cee57e5a7e7cc3b211503a4010d8eccc170b57', '{"id":7,"asset_id":65,"title":"IMac","alias":"imac","introtext":"<p>\\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 IMac<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:23:16","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:23:16","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-11 18:23:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 8, 1, '', '2018-03-11 18:23:54', 90, 1856, 'fcbfc324d99b84c3a1dd295f15032e750176b8c5', '{"id":8,"asset_id":66,"title":"I\\u0440\\u0430\\u0437\\u043d\\u043e\\u0435","alias":"iraznoe","introtext":"<p>\\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0440\\u0430\\u0437\\u043d\\u043e\\u0433\\u043e<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:23:54","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:23:54","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-11 18:23:54","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 9, 1, '', '2018-03-11 18:24:25', 90, 1791, 'a5282ac8f924887a7481aea2b527ad041232ee80', '{"id":9,"asset_id":67,"title":"Samsung","alias":"samsung","introtext":"<p>\\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 Samsung<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:24:25","created_by":"90","created_by_alias":"","modified":"2018-03-11 18:24:25","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-11 18:24:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 6, 1, '', '2018-03-11 19:39:24', 90, 9717, '4e11edba58d73037a9258c6eb67f931b28ada057', '{"id":6,"asset_id":"64","title":"Iphone","alias":"iphone","introtext":"<div class=\\"col-md-6\\">\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-6\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.<\\/div>\\r\\n<div class=\\"col-md-6\\">\\u00a0<\\/div>\\r\\n<div class=\\"col-md-6\\">\\r\\n<h3>\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod<\\/h3>\\r\\n<p>\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.<\\/p>\\r\\n<p>iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:<\\/p>\\r\\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini<\\/p>\\r\\n<p>\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:22:30","created_by":"90","created_by_alias":"","modified":"2018-03-11 19:39:24","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-11 19:36:52","publish_up":"2018-03-11 18:22:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 10, 1, '', '2018-03-14 10:14:59', 90, 1843, '64a19be2568b9437ec4761977cf051bcc3f76029', '{"id":10,"asset_id":71,"title":"\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430","alias":"nomer-telefona","introtext":"<p>+7(987)654-32-10<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-14 10:14:59","created_by":"90","created_by_alias":"","modified":"2018-03-14 10:14:59","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-14 10:14:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 11, 1, '', '2018-03-14 10:16:52', 90, 2330, '8f5677780494faabe92ade3f5fb0776710ea644a', '{"id":11,"asset_id":72,"title":"\\u0431\\u043e\\u043a\\u043e\\u0432\\u043e\\u0439 \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u0438","alias":"bokovoj-razdel-informatsii","introtext":"<p>\\u0420\\u0430\\u0437\\u043d\\u043e\\u0433\\u043e \\u0440\\u043e\\u0434\\u0430 \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\\u00a0<\\/p>\\r\\n<p>\\u0410\\u0434\\u0440\\u0435\\u0441<\\/p>\\r\\n<p>\\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d<\\/p>\\r\\n<p>\\u0432\\u0441\\u044f\\u043a\\u043e\\u0435<\\/p>\\r\\n<p>\\u0432\\u0441\\u044f\\u043a\\u043e\\u0435<\\/p>\\r\\n<p>\\u0432\\u0441\\u044f\\u043a\\u043e\\u0435<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-14 10:16:52","created_by":"90","created_by_alias":"","modified":"2018-03-14 10:16:52","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-14 10:16:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 12, 1, '', '2018-03-14 10:19:16', 90, 2342, '898631df6806319bd3cad18ffd103c5fdddc74da', '{"id":12,"asset_id":73,"title":"\\u043d\\u0438\\u0436\\u043d\\u0438\\u0439 \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u0438","alias":"nizhnij-razdel-informatsii","introtext":"<p>\\u0412\\u0441\\u044f\\u043a\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438. \\u041f\\u0440\\u0435\\u0438\\u043c\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438.\\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438. \\u0432\\u0441\\u044f\\u043a\\u0430\\u044f \\u0432\\u0441\\u044f\\u0447\\u0438\\u043d\\u0430\\u00a0<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-14 10:19:16","created_by":"90","created_by_alias":"","modified":"2018-03-14 10:19:16","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-14 10:19:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 13, 1, '', '2018-03-14 10:20:05', 90, 1998, 'db0f3f26089fee8ef4af447fc629fad988e60e02', '{"id":13,"asset_id":74,"title":"\\u041f\\u043e\\u0434\\u0432\\u0430\\u043b \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b ","alias":"podval-glavnoj-stranitsy","introtext":"<p>\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u044b \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u043d\\u0430\\u0441.\\u00a0<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-14 10:20:05","created_by":"90","created_by_alias":"","modified":"2018-03-14 10:20:05","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-14 10:20:05","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 13, 1, '', '2018-03-14 10:33:02', 90, 3162, '1367f40c134083e74014e348bbf6251863a8cc93', '{"id":13,"asset_id":"74","title":"\\u041f\\u043e\\u0434\\u0432\\u0430\\u043b \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b ","alias":"podval-glavnoj-stranitsy","introtext":"<p><br \\/> &lt;h2&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u044b \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u043d\\u0430\\u0441&lt;\\/h2&gt;<\\/p>\\r\\n<p>&lt;table class=\\"table table-striped\\"&gt;<\\/p>\\r\\n<p>&lt;tbody&gt;<\\/p>\\r\\n<p>&lt;tr&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;\\/tr&gt;<\\/p>\\r\\n<p>&lt;tr&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;\\/tr&gt;<\\/p>\\r\\n<p>&lt;tr&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;\\/tr&gt;<\\/p>\\r\\n<p>&lt;tr&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;\\/tr&gt;<\\/p>\\r\\n<p>&lt;tr&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;td&gt;\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430&lt;\\/td&gt;<\\/p>\\r\\n<p>&lt;\\/tr&gt;<\\/p>\\r\\n<p>&lt;\\/tbody&gt;<\\/p>\\r\\n<p>&lt;\\/table&gt;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-14 10:20:05","created_by":"90","created_by_alias":"","modified":"2018-03-14 10:33:02","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-14 10:20:05","publish_up":"2018-03-14 10:20:05","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `cm5ji_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(19, 14, 1, '', '2018-03-14 10:44:06', 90, 1761, 'db6342e8d9563eaac8564d4ba7a7e1df7c6e074f', '{"id":14,"asset_id":75,"title":"\\u041a\\u0430\\u0440\\u0442\\u0430","alias":"karta","introtext":"","fulltext":"","state":1,"catid":"9","created":"2018-03-14 10:44:06","created_by":"90","created_by_alias":"","modified":"2018-03-14 10:44:06","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-14 10:44:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 14, 1, '', '2018-03-14 10:49:12', 90, 2082, 'abae64edae68ff8c5c49c5c6000fa4973efbe06e', '{"id":14,"asset_id":"75","title":"\\u041a\\u0430\\u0440\\u0442\\u0430","alias":"karta","introtext":"<p>&lt;script type=\\"text\\/javascript\\" charset=\\"utf-8\\" async src=\\"https:\\/\\/api-maps.yandex.ru\\/services\\/constructor\\/1.0\\/js\\/?sid=WbtksM5-mJTBWlrvxS8Uh-QoAE6XXMlP&amp;amp;width=auto&amp;amp;height=450&amp;amp;lang=ru_RU&amp;amp;sourceType=constructor&amp;amp;scroll=true\\"&gt;&lt;\\/script&gt;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-14 10:44:06","created_by":"90","created_by_alias":"","modified":"2018-03-14 10:49:12","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-14 10:48:47","publish_up":"2018-03-14 10:44:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 14, 1, '', '2018-03-14 11:00:14', 90, 2082, 'fd6c0674ccf5f009ab3ef5e4cb863bf27d05ff31', '{"id":14,"asset_id":"75","title":"\\u041a\\u0430\\u0440\\u0442\\u0430","alias":"karta","introtext":"<p>&lt;script type=\\"text\\/javascript\\" charset=\\"utf-8\\" async src=\\"https:\\/\\/api-maps.yandex.ru\\/services\\/constructor\\/1.0\\/js\\/?sid=WbtksM5-mJTBWlrvxS8Uh-QoAE6XXMlP&amp;amp;width=auto&amp;amp;height=450&amp;amp;lang=ru_RU&amp;amp;sourceType=constructor&amp;amp;scroll=true\\"&gt;&lt;\\/script&gt;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-14 10:44:06","created_by":"90","created_by_alias":"","modified":"2018-03-14 11:00:14","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-14 10:58:40","publish_up":"2018-03-14 10:44:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(22, 3, 1, '', '2018-03-15 12:31:09', 90, 1881, 'd84791b0e03d6520711050dd358730b1988fb890', '{"id":3,"asset_id":"61","title":"\\u0427\\u0442\\u043e \\u0442\\u043e","alias":"chto-to","introtext":"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0447\\u0442\\u043e \\u0442\\u043e<\\/p>","fulltext":"","state":1,"catid":"9","created":"2018-03-11 18:18:36","created_by":"90","created_by_alias":"","modified":"2018-03-15 12:31:09","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-15 12:30:34","publish_up":"2018-03-11 18:18:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 9, 1, '', '2018-03-15 13:07:54', 90, 1808, 'fb696a984ebbcb5644c2b0a74486b784417c9e42', '{"id":9,"asset_id":"67","title":"Samsung","alias":"samsung","introtext":"<p>\\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 Samsung<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:24:25","created_by":"90","created_by_alias":"","modified":"2018-03-15 13:07:54","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-15 13:07:44","publish_up":"2018-03-11 18:24:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(24, 6, 1, '', '2018-03-15 14:37:21', 90, 13491, 'de9c3d71d663fe0cc406c4437f2f48a4dad2dceb', '{"id":6,"asset_id":"64","title":"Iphone","alias":"iphone","introtext":"<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-md-6\\">\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-6\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--table-->\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"section-4 text-center button-links\\">\\r\\n<table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\"text-center\\">\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430<\\/th>\\r\\n<th class=\\"text-center\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c<\\/th>\\r\\n<th class=\\"text-center\\">\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Tiger Nixon<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Cedric Kelly<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Sonya Frost<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Quinn Flynn<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Dai Rios<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Gavin Joyce<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Martena Mccray<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Jennifer Acosta<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Shad Decker<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row \\">\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<div class=\\"section-4 text-center button-links\\"><a class=\\"btn btn-primary\\" href=\\"#\\">\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442<\\/a><\\/div>\\r\\n<p>\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<h3>\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod<\\/h3>\\r\\n<p>\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.<\\/p>\\r\\n<p>iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:<\\/p>\\r\\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini<\\/p>\\r\\n<p>\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:22:30","created_by":"90","created_by_alias":"","modified":"2018-03-15 14:37:21","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-15 14:36:41","publish_up":"2018-03-11 18:22:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 6, 1, '', '2018-03-16 10:43:05', 90, 13480, 'f811e8e273bc727696bf32b06941327b2c927dec', '{"id":6,"asset_id":"64","title":"Iphone","alias":"iphone","introtext":"<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-md-6\\">\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-6\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--table-->\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"section-4 text-center button-links\\">\\r\\n<table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\"text-center\\">\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430<\\/th>\\r\\n<th class=\\"text-center\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c<\\/th>\\r\\n<th class=\\"text-center\\">\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Tiger Nixon<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Cedric Kelly<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Sonya Frost<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Quinn Flynn<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Dai Rios<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Gavin Joyce<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Martena Mccray<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Jennifer Acosta<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Shad Decker<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row \\">\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<div class=\\"section-4 text-center button-links\\">\\r\\n<h2>{loadmodule mod_call_me_back_form,\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0437\\u0430\\u043f\\u0438\\u0441\\u0438}<\\/h2>\\r\\n<\\/div>\\r\\n<p>\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<h3>\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod<\\/h3>\\r\\n<p>\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.<\\/p>\\r\\n<p>iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:<\\/p>\\r\\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini<\\/p>\\r\\n<p>\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:22:30","created_by":"90","created_by_alias":"","modified":"2018-03-16 10:43:05","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-16 10:42:03","publish_up":"2018-03-11 18:22:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `cm5ji_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(26, 6, 1, '', '2018-03-16 10:43:49', 90, 13413, 'b93b22367e2cec34ffc4f203251df22d98a92619', '{"id":6,"asset_id":"64","title":"Iphone","alias":"iphone","introtext":"<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-md-6\\">\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-6\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--table-->\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"section-4 text-center button-links\\">\\r\\n<table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\"text-center\\">\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430<\\/th>\\r\\n<th class=\\"text-center\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c<\\/th>\\r\\n<th class=\\"text-center\\">\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Tiger Nixon<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Cedric Kelly<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Sonya Frost<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Quinn Flynn<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Dai Rios<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Gavin Joyce<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Martena Mccray<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Jennifer Acosta<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Shad Decker<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row \\">\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<div class=\\"section-4 text-center button-links\\">\\r\\n<h2>{loadmodule mod_call_me_back_form}<\\/h2>\\r\\n<\\/div>\\r\\n<p>\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<h3>\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod<\\/h3>\\r\\n<p>\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.<\\/p>\\r\\n<p>iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:<\\/p>\\r\\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini<\\/p>\\r\\n<p>\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:22:30","created_by":"90","created_by_alias":"","modified":"2018-03-16 10:43:49","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-16 10:43:31","publish_up":"2018-03-11 18:22:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(27, 6, 1, '', '2018-03-17 13:29:38', 90, 13403, '19c88d3ef8cb557d5fb6e204a5f770853f6ce2f7', '{"id":6,"asset_id":"64","title":"Iphone","alias":"iphone","introtext":"<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-md-6\\">\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-6\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--table-->\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"section-4 text-center button-links\\">\\r\\n<table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\"text-center\\">\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430<\\/th>\\r\\n<th class=\\"text-center\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c<\\/th>\\r\\n<th class=\\"text-center\\">\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Tiger Nixon<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Cedric Kelly<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Sonya Frost<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Quinn Flynn<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Dai Rios<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Gavin Joyce<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Martena Mccray<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Jennifer Acosta<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Shad Decker<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row \\">\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<div class=\\"text-center button-links\\">\\r\\n<h2>{loadmodule mod_call_me_back_form}<\\/h2>\\r\\n<\\/div>\\r\\n<p>\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<h3>\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod<\\/h3>\\r\\n<p>\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.<\\/p>\\r\\n<p>iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:<\\/p>\\r\\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini<\\/p>\\r\\n<p>\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:22:30","created_by":"90","created_by_alias":"","modified":"2018-03-17 13:29:38","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-17 13:28:57","publish_up":"2018-03-11 18:22:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"36","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(28, 15, 1, '', '2018-03-18 13:42:15', 90, 1795, '6ff4adfd0c43a20064a5d1db3a8549765e8b88b7', '{"id":15,"asset_id":97,"title":"Mat 1","alias":"mat-1","introtext":"<p>sadlg;sadg;sdjgsa;gj; s gs;adlaksd;glksda;gjsd;lgga<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-18 13:42:15","created_by":"90","created_by_alias":"","modified":"2018-03-18 13:42:15","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-18 13:42:15","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(29, 16, 1, '', '2018-03-18 13:42:42', 90, 1848, '2990996fd03710a47cb8c08aecc41d3bd7645aca', '{"id":16,"asset_id":98,"title":"Mat 2","alias":"mat-2","introtext":"<p>sgs gsdg ks<\\/p>\\r\\n<p>[g ksp[gksf''gs f'' gk ''srg''k rs''g ra<\\/p>\\r\\n<p>g g<\\/p>\\r\\n<p>sfgs<\\/p>\\r\\n<p>gsg<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-18 13:42:42","created_by":"90","created_by_alias":"","modified":"2018-03-18 13:42:42","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-18 13:42:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 17, 1, '', '2018-03-18 13:43:00', 90, 1837, '498a7e54a7a4e23fb3e7a7d191f41dbcc7bd1f16', '{"id":17,"asset_id":99,"title":"Mat 3","alias":"mat-3","introtext":"<p>Zzsd gsdgk sz\\u00a0<\\/p>\\r\\n<p>g''k''kr ''''x;gk''sgk ''ogjkz''org z''gjs\\u00a0<\\/p>\\r\\n<p>g xfgjxj r<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-18 13:43:00","created_by":"90","created_by_alias":"","modified":"2018-03-18 13:43:00","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-18 13:43:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(31, 18, 1, '', '2018-03-18 13:43:15', 90, 1837, '7e5ae5884329f8fe5f3c289605df6866a9d320e3', '{"id":18,"asset_id":100,"title":"Mat 4","alias":"mat-4","introtext":"<p>Z FgEgF {SKS<br \\/>g szg<\\/p>\\r\\n<p>\\u00a0g\\u00a0<\\/p>\\r\\n<p>f g<\\/p>\\r\\n<p>g<\\/p>\\r\\n<p>fxg<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-18 13:43:15","created_by":"90","created_by_alias":"","modified":"2018-03-18 13:43:15","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-18 13:43:15","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `cm5ji_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(32, 15, 1, '', '2018-03-22 17:26:15', 90, 14579, 'e2bfe313e15c0b7be36828b2811bfdb56dd9b253', '{"id":15,"asset_id":"97","title":"Mat 1","alias":"mat-1","introtext":"<p>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row\\"&gt;<br \\/>&lt;div class=\\"col-md-6\\"&gt;<br \\/>&lt;h2&gt;\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439&lt;\\/h2&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-6\\"&gt;\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;!--table--&gt;<br \\/>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row\\"&gt;<br \\/>&lt;div class=\\"section-4 text-center button-links\\"&gt;<br \\/>&lt;table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\"&gt;<br \\/>&lt;thead&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;th class=\\"text-center\\"&gt;\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430&lt;\\/th&gt;<br \\/>&lt;th class=\\"text-center\\"&gt;\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c&lt;\\/th&gt;<br \\/>&lt;th class=\\"text-center\\"&gt;\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442&lt;\\/th&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;\\/thead&gt;<br \\/>&lt;tbody&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Tiger Nixon&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Cedric Kelly&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Sonya Frost&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Quinn Flynn&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Dai Rios&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Gavin Joyce&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Martena Mccray&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Jennifer Acosta&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Shad Decker&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;\\/tbody&gt;<br \\/>&lt;\\/table&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row \\"&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;p&gt;* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;p&gt;**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;p&gt;\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;div class=\\"text-center button-links\\"&gt;<br \\/>&lt;h2&gt;{loadmodule mod_call_me_back_form}&lt;\\/h2&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;p&gt;\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row\\"&gt;<br \\/>&lt;h3&gt;\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod&lt;\\/h3&gt;<br \\/>&lt;p&gt;\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.&lt;\\/p&gt;<br \\/>&lt;p&gt;iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.&lt;\\/p&gt;<br \\/>&lt;p&gt;\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.&lt;\\/p&gt;<br \\/>&lt;p&gt;\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:&lt;\\/p&gt;<br \\/>&lt;p&gt;iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini&lt;\\/p&gt;<br \\/>&lt;p&gt;\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-18 13:42:15","created_by":"90","created_by_alias":"","modified":"2018-03-22 17:26:15","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-22 17:26:00","publish_up":"2018-03-18 13:42:15","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(33, 8, 1, '', '2018-03-22 17:26:33', 90, 14612, '14c959747701ae1f44d70f8738e550e16ea63630', '{"id":8,"asset_id":"66","title":"I\\u0440\\u0430\\u0437\\u043d\\u043e\\u0435","alias":"iraznoe","introtext":"<p>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row\\"&gt;<br \\/>&lt;div class=\\"col-md-6\\"&gt;<br \\/>&lt;h2&gt;\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439&lt;\\/h2&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-6\\"&gt;\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;!--table--&gt;<br \\/>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row\\"&gt;<br \\/>&lt;div class=\\"section-4 text-center button-links\\"&gt;<br \\/>&lt;table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\"&gt;<br \\/>&lt;thead&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;th class=\\"text-center\\"&gt;\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430&lt;\\/th&gt;<br \\/>&lt;th class=\\"text-center\\"&gt;\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c&lt;\\/th&gt;<br \\/>&lt;th class=\\"text-center\\"&gt;\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442&lt;\\/th&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;\\/thead&gt;<br \\/>&lt;tbody&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Tiger Nixon&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Cedric Kelly&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Sonya Frost&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Quinn Flynn&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Dai Rios&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Gavin Joyce&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Martena Mccray&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Jennifer Acosta&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Shad Decker&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;\\/tbody&gt;<br \\/>&lt;\\/table&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row \\"&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;p&gt;* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;p&gt;**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;p&gt;\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;div class=\\"text-center button-links\\"&gt;<br \\/>&lt;h2&gt;{loadmodule mod_call_me_back_form}&lt;\\/h2&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;p&gt;\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row\\"&gt;<br \\/>&lt;h3&gt;\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod&lt;\\/h3&gt;<br \\/>&lt;p&gt;\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.&lt;\\/p&gt;<br \\/>&lt;p&gt;iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.&lt;\\/p&gt;<br \\/>&lt;p&gt;\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.&lt;\\/p&gt;<br \\/>&lt;p&gt;\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:&lt;\\/p&gt;<br \\/>&lt;p&gt;iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini&lt;\\/p&gt;<br \\/>&lt;p&gt;\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:23:54","created_by":"90","created_by_alias":"","modified":"2018-03-22 17:26:33","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-22 17:26:22","publish_up":"2018-03-11 18:23:54","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `cm5ji_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(34, 9, 1, '', '2018-03-22 17:26:50', 90, 14583, '9dbde0a53086d3fac1ee99dc3832d48f422de5a7', '{"id":9,"asset_id":"67","title":"Samsung","alias":"samsung","introtext":"<p>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row\\"&gt;<br \\/>&lt;div class=\\"col-md-6\\"&gt;<br \\/>&lt;h2&gt;\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439&lt;\\/h2&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-6\\"&gt;\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;!--table--&gt;<br \\/>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row\\"&gt;<br \\/>&lt;div class=\\"section-4 text-center button-links\\"&gt;<br \\/>&lt;table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\"&gt;<br \\/>&lt;thead&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;th class=\\"text-center\\"&gt;\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430&lt;\\/th&gt;<br \\/>&lt;th class=\\"text-center\\"&gt;\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c&lt;\\/th&gt;<br \\/>&lt;th class=\\"text-center\\"&gt;\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442&lt;\\/th&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;\\/thead&gt;<br \\/>&lt;tbody&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Tiger Nixon&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Cedric Kelly&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Sonya Frost&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Quinn Flynn&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Dai Rios&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Gavin Joyce&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Martena Mccray&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Jennifer Acosta&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;tr&gt;<br \\/>&lt;td&gt;Shad Decker&lt;\\/td&gt;<br \\/>&lt;td&gt;5000 \\u0440\\u0443\\u0431.&lt;\\/td&gt;<br \\/>&lt;td&gt;90 \\u043c\\u0438\\u043d\\u0443\\u0442&lt;\\/td&gt;<br \\/>&lt;\\/tr&gt;<br \\/>&lt;\\/tbody&gt;<br \\/>&lt;\\/table&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row \\"&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;p&gt;* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;p&gt;**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;p&gt;\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"col-md-3\\"&gt;<br \\/>&lt;div class=\\"text-center button-links\\"&gt;<br \\/>&lt;h2&gt;{loadmodule mod_call_me_back_form}&lt;\\/h2&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;p&gt;\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div class=\\"container\\"&gt;<br \\/>&lt;div class=\\"row\\"&gt;<br \\/>&lt;h3&gt;\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod&lt;\\/h3&gt;<br \\/>&lt;p&gt;\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.&lt;\\/p&gt;<br \\/>&lt;p&gt;iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.&lt;\\/p&gt;<br \\/>&lt;p&gt;\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.&lt;\\/p&gt;<br \\/>&lt;p&gt;\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:&lt;\\/p&gt;<br \\/>&lt;p&gt;iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini&lt;\\/p&gt;<br \\/>&lt;p&gt;\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:24:25","created_by":"90","created_by_alias":"","modified":"2018-03-22 17:26:50","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-22 17:26:40","publish_up":"2018-03-11 18:24:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 8, 1, '', '2018-03-22 17:28:18', 90, 13434, '940896ba0779b64bfd911ab745a27de74e14fcac', '{"id":8,"asset_id":"66","title":"I\\u0440\\u0430\\u0437\\u043d\\u043e\\u0435","alias":"iraznoe","introtext":"<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-md-6\\">\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-6\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--table-->\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"section-4 text-center button-links\\">\\r\\n<table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\"text-center\\">\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430<\\/th>\\r\\n<th class=\\"text-center\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c<\\/th>\\r\\n<th class=\\"text-center\\">\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Tiger Nixon<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Cedric Kelly<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Sonya Frost<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Quinn Flynn<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Dai Rios<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Gavin Joyce<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Martena Mccray<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Jennifer Acosta<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Shad Decker<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row \\">\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<div class=\\"text-center button-links\\">\\r\\n<h2>{loadmodule mod_call_me_back_form}<\\/h2>\\r\\n<\\/div>\\r\\n<p>\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<h3>\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod<\\/h3>\\r\\n<p>\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.<\\/p>\\r\\n<p>iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:<\\/p>\\r\\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini<\\/p>\\r\\n<p>\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:23:54","created_by":"90","created_by_alias":"","modified":"2018-03-22 17:28:18","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-22 17:27:25","publish_up":"2018-03-11 18:23:54","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(36, 15, 1, '', '2018-03-22 17:29:04', 90, 13401, 'ad87c576c52b6bcb15bd50b553361cef3ea1f4c9', '{"id":15,"asset_id":"97","title":"Mat 1","alias":"mat-1","introtext":"<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-md-6\\">\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-6\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--table-->\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"section-4 text-center button-links\\">\\r\\n<table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\"text-center\\">\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430<\\/th>\\r\\n<th class=\\"text-center\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c<\\/th>\\r\\n<th class=\\"text-center\\">\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Tiger Nixon<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Cedric Kelly<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Sonya Frost<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Quinn Flynn<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Dai Rios<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Gavin Joyce<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Martena Mccray<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Jennifer Acosta<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Shad Decker<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row \\">\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<div class=\\"text-center button-links\\">\\r\\n<h2>{loadmodule mod_call_me_back_form}<\\/h2>\\r\\n<\\/div>\\r\\n<p>\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<h3>\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod<\\/h3>\\r\\n<p>\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.<\\/p>\\r\\n<p>iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:<\\/p>\\r\\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini<\\/p>\\r\\n<p>\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"8","created":"2018-03-18 13:42:15","created_by":"90","created_by_alias":"","modified":"2018-03-22 17:29:04","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-22 17:28:24","publish_up":"2018-03-18 13:42:15","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `cm5ji_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(37, 9, 1, '', '2018-03-22 17:29:53', 90, 13405, '1a3df44d58c21fdfbd6c69dd843e66c1c2c80428', '{"id":9,"asset_id":"67","title":"Samsung","alias":"samsung","introtext":"<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-md-6\\">\\r\\n<h2>\\u041c\\u044b \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u043c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432\\u0441\\u0435\\u0445 \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u0439<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-6\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f Apple \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0443\\u044e \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u043f\\u043b\\u0435\\u0435\\u0440\\u043e\\u0432 iPod. \\u041a\\u0430\\u043a \\u0438 \\u043b\\u044e\\u0431\\u0430\\u044f \\u0434\\u0440\\u0443\\u0433\\u0430\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f Apple, iPod \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u043c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0438 \\u0438 \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041d\\u043e \\u0447\\u0442\\u043e \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0435\\u0441\\u043b\\u0438 iPod \\u0441\\u043b\\u043e\\u043c\\u0430\\u043b\\u0441\\u044f? \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043c\\u043d\\u0435\\u043d\\u0438\\u0435, \\u0447\\u0442\\u043e iPod \\u043d\\u0435 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0438\\u0440\\u0443\\u044e\\u0442\\u0441\\u044f \\u0438\\u043b\\u0438 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 \\u0437\\u0430\\u0447\\u0430\\u0441\\u0442\\u0443\\u044e \\u043d\\u0435\\u0446\\u0435\\u043b\\u0435\\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0435\\u043d. \\u0421\\u043f\\u0435\\u0448\\u0438\\u043c \\u0440\\u0430\\u0437\\u0432\\u0435\\u0438\\u0442\\u044c \\u044d\\u0442\\u043e\\u0442 \\u043c\\u0438\\u0444! \\u0420\\u0435\\u043c\\u043e\\u043d\\u0442 iPod, \\u043d\\u0435\\u0441\\u043c\\u043e\\u0442\\u0440\\u044f \\u043d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0438\\u043c. \\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442 iPod \\u0432 \\u043a\\u0440\\u0430\\u0442\\u0447\\u0430\\u0439\\u0448\\u0438\\u0435 \\u0441\\u0440\\u043e\\u043a\\u0438.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--table-->\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"section-4 text-center button-links\\">\\r\\n<table id=\\"price_table\\" class=\\"table table-hover\\" width=\\"100%\\" cellspacing=\\"0\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\"text-center\\">\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430<\\/th>\\r\\n<th class=\\"text-center\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c<\\/th>\\r\\n<th class=\\"text-center\\">\\u0412\\u0440\\u0435\\u043c\\u044f \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d. \\u0440\\u0430\\u0431\\u043e\\u0442<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>Tiger Nixon<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Cedric Kelly<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Sonya Frost<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Quinn Flynn<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Dai Rios<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Gavin Joyce<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Martena Mccray<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Jennifer Acosta<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>Shad Decker<\\/td>\\r\\n<td>5000 \\u0440\\u0443\\u0431.<\\/td>\\r\\n<td>90 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row \\">\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>* \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043e\\u0442\\u043a\\u0430\\u0437\\u0430 \\u043e\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430, \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0435 500 \\u0440\\u0443\\u0431.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>**\\u0426\\u0435\\u043d\\u044b \\u0431\\u0435\\u0437 \\u0443\\u0447\\u0451\\u0442\\u0430 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439. \\u0422\\u043e\\u0447\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043e\\u0432\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<p>\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430! \\u0417\\u0430\\u043a\\u0430\\u0436\\u0438\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441: +7 (495) 649 6886<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-3\\">\\r\\n<div class=\\"text-center button-links\\">\\r\\n<h2>{loadmodule mod_call_me_back_form}<\\/h2>\\r\\n<\\/div>\\r\\n<p>\\u043f\\u0440\\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0441 \\u0441\\u0430\\u0439\\u0442\\u0430 - \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 5% \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0430\\u0440\\u043a\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"row\\">\\r\\n<h3>\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 iPod<\\/h3>\\r\\n<p>\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 iPod \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043f\\u043e \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0435 \\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043f\\u043e\\u0432\\u0440\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0439, \\u0441\\u0440\\u0435\\u0434\\u0438 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u043e\\u0432 \\u0441\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0435\\u043c \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430, \\u043b\\u0438\\u0434\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430 iPod (\\u0432\\u0441\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 iPod, \\u043a\\u0440\\u043e\\u043c\\u0435 shuffle, \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u044d\\u043a\\u0440\\u0430\\u043d\\u0430\\u043c\\u0438 \\u043e\\u0442 2\\" \\u0434\\u043e 3,5\\"). \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438 \\u0432 iPod \\u0442\\u0430\\u043a \\u0436\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u043e\\u0439 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0430 \\u043f\\u043b\\u0435\\u0435\\u0440\\u0430 \\u0438\\u0437 \\u0441\\u0442\\u0440\\u043e\\u044f.<\\/p>\\r\\n<p>iPod photo, iPod video \\u0438 iPod classic \\u043e\\u0441\\u043d\\u0430\\u0449\\u0435\\u043d\\u044b \\u0436\\u0435\\u0441\\u0442\\u043a\\u0438\\u043c\\u0438 \\u0434\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438, \\u0430 \\u044d\\u0442\\u043e \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0441\\u043f\\u0440\\u044f\\u0442\\u0430\\u043d\\u043e \\u043c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0438\\u0445\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u0435\\u0439. \\u0416\\u0435\\u0441\\u0442\\u043a\\u0438\\u0435 \\u0434\\u0438\\u0441\\u043a\\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043b\\u043e\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438\\u0437-\\u0437\\u0430 \\u043f\\u0430\\u0434\\u0435\\u043d\\u0438\\u0439, \\u043a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0436\\u0435\\u0441\\u0442\\u043a\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u043a\\u0430 iPod.<\\/p>\\r\\n<p>\\u041f\\u0440\\u0438 \\u043d\\u0435\\u0430\\u043a\\u043a\\u0443\\u0440\\u0430\\u0442\\u043d\\u043e\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 iPod \\u0438\\u043b\\u0438 \\u0438\\u043d\\u044b\\u0445 \\u043e\\u0431\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430 iPod. \\u0421\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e, \\u0434\\u0430\\u0436\\u0435 \\u0438\\u043c\\u0435\\u044f \\u043d\\u0430 \\u0440\\u0443\\u043a\\u0430\\u0445 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441. \\u041b\\u0443\\u0447\\u0448\\u0435 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0438\\u0442\\u044c \\u0441\\u0431\\u043e\\u0440\\u043a\\u0443 \\u0438 \\u0440\\u0430\\u0437\\u0431\\u043e\\u0440\\u043a\\u0443 iPod \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u0430\\u043c.<\\/p>\\r\\n<p>\\u041d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0438\\u043c\\u0435\\u044e\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430 \\u0432\\u0441\\u0435\\u0445 \\u0432\\u0438\\u0434\\u043e\\u0432 iPod:<\\/p>\\r\\n<p>iPod shuffle iPod nano iPod classic iPod photo iPod video iPod touch iPod mini<\\/p>\\r\\n<p>\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f, \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 iPod \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0412\\u0430\\u0448 \\u043f\\u043b\\u0435\\u0435\\u0440 \\u0441\\u0442\\u0430\\u043b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0430\\u0442\\u044c, \\u0441\\u0430\\u043c\\u043e\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f, \\"\\u0433\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\\". \\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u0435! \\u041d\\u0435 \\u043f\\u044b\\u0442\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u043f\\u0435\\u0440\\u0435\\u043f\\u0440\\u043e\\u0448\\u0438\\u0442\\u044c iPod \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e. \\u0412 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u044d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0432\\u0435\\u0441\\u0442\\u0438 \\u043a \\u043d\\u0435\\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"8","created":"2018-03-11 18:24:25","created_by":"90","created_by_alias":"","modified":"2018-03-22 17:29:53","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-22 17:29:18","publish_up":"2018-03-11 18:24:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(38, 17, 1, '', '2018-03-27 17:32:29', 90, 1854, 'ee357df998ef31502e525c714fadb4c3fde6e0b9', '{"id":17,"asset_id":"99","title":"Mat 3","alias":"mat-3","introtext":"<p>Zzsd gsdgk sz\\u00a0<\\/p>\\r\\n<p>g''k''kr ''''x;gk''sgk ''ogjkz''org z''gjs\\u00a0<\\/p>\\r\\n<p>g xfgjxj r<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-18 13:43:00","created_by":"90","created_by_alias":"","modified":"2018-03-27 17:32:29","modified_by":"90","checked_out":"90","checked_out_time":"2018-03-27 17:32:13","publish_up":"2018-03-18 13:43:00","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_updates`
--

CREATE TABLE IF NOT EXISTS `cm5ji_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Дамп данных таблицы `cm5ji_updates`
--

INSERT INTO `cm5ji_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 5, 10009, 'Regular Labs - Advanced Module Manager', '', 'com_advancedmodules', 'component', '', 1, '7.5.1FREE', '', 'http://download.regularlabs.com/updates.xml?e=advancedmodulemanager&type=.xml', 'https://www.regularlabs.com/extensions/advancedmodulemanager#download', ''),
(2, 6, 0, 'POWr Button', 'Custom buttons for links, downloads, promotions, or social accounts.', 'POWr Button', 'package', '', 1, '4.0', '', 'https://www.powr.io/joomla/update_powrbutton.xml', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_update_sites`
--

CREATE TABLE IF NOT EXISTS `cm5ji_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Дамп данных таблицы `cm5ji_update_sites`
--

INSERT INTO `cm5ji_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1522313100, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(4, 'Vinaora Update Server', 'extension', 'http://update.vinaora.com/joomla3x/mod_vt_nivo_slider.xml', 1, 1522313100, ''),
(5, 'Regular Labs - Advanced Module Manager', 'extension', 'http://download.regularlabs.com/updates.xml?e=advancedmodulemanager&type=.xml', 1, 1522313101, ''),
(6, 'POWr Button Updates', 'extension', 'https://www.powr.io/joomla/update_powrbutton.xml', 1, 1522313101, ''),
(7, 'mod_ajo_button', 'extension', 'http://www.joomlafreak.be/updates/mod_ajo_button.xml', 1, 1522313103, ''),
(8, 'ALFContact Updates', 'extension', 'http://updates.alfsoft.com/alfcontact.xml', 1, 1522313103, ''),
(9, 'Call Me Back Form', 'extension', 'http://standardcompany.ru/dwn/user-update-call-me-form.xml', 1, 1522313103, ''),
(10, 'JB DropDown Menu Update Site', 'extension', 'http://cdn.extly.com/download/utilities/jbmenu_version.xml', 1, 1522313104, ''),
(11, 'DJ-ImageSlider Package', 'extension', 'http://dj-extensions.com/updates/djimageslider.xml', 1, 1522313104, '');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `cm5ji_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `cm5ji_update_sites_extensions`
--

INSERT INTO `cm5ji_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(2, 10002),
(3, 28),
(4, 10005),
(5, 10009),
(5, 10010),
(6, 10016),
(7, 10017),
(8, 10018),
(9, 10020),
(10, 10024),
(11, 10027);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_usergroups`
--

CREATE TABLE IF NOT EXISTS `cm5ji_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_usergroups`
--

INSERT INTO `cm5ji_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_users`
--

CREATE TABLE IF NOT EXISTS `cm5ji_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_users`
--

INSERT INTO `cm5ji_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(90, 'Super User', 'admin', 'tosha.malyamov@yandex.ru', '$2y$10$lSWvs77ytqjOwInvIPk1memLRIX4cVXzrPz34H8ErlWyqUpqamUeS', 0, 1, '2018-03-11 17:17:27', '2018-03-29 09:36:57', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_user_keys`
--

CREATE TABLE IF NOT EXISTS `cm5ji_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_user_notes`
--

CREATE TABLE IF NOT EXISTS `cm5ji_user_notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_user_profiles`
--

CREATE TABLE IF NOT EXISTS `cm5ji_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `cm5ji_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_user_usergroup_map`
--

INSERT INTO `cm5ji_user_usergroup_map` (`user_id`, `group_id`) VALUES
(90, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `cm5ji_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_utf8_conversion`
--

INSERT INTO `cm5ji_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Структура таблицы `cm5ji_viewlevels`
--

CREATE TABLE IF NOT EXISTS `cm5ji_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cm5ji_viewlevels`
--

INSERT INTO `cm5ji_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cm5ji_advancedmodules`
--
ALTER TABLE `cm5ji_advancedmodules`
  ADD PRIMARY KEY (`moduleid`);

--
-- Индексы таблицы `cm5ji_alfcontact`
--
ALTER TABLE `cm5ji_alfcontact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cm5ji_assets`
--
ALTER TABLE `cm5ji_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `cm5ji_associations`
--
ALTER TABLE `cm5ji_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `cm5ji_banners`
--
ALTER TABLE `cm5ji_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `cm5ji_banner_clients`
--
ALTER TABLE `cm5ji_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Индексы таблицы `cm5ji_banner_tracks`
--
ALTER TABLE `cm5ji_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `cm5ji_categories`
--
ALTER TABLE `cm5ji_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `cm5ji_contact_details`
--
ALTER TABLE `cm5ji_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `cm5ji_content`
--
ALTER TABLE `cm5ji_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Индексы таблицы `cm5ji_contentitem_tag_map`
--
ALTER TABLE `cm5ji_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `cm5ji_content_frontpage`
--
ALTER TABLE `cm5ji_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `cm5ji_content_rating`
--
ALTER TABLE `cm5ji_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `cm5ji_content_types`
--
ALTER TABLE `cm5ji_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Индексы таблицы `cm5ji_djimageslider`
--
ALTER TABLE `cm5ji_djimageslider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`published`);

--
-- Индексы таблицы `cm5ji_extensions`
--
ALTER TABLE `cm5ji_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `cm5ji_fields`
--
ALTER TABLE `cm5ji_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `cm5ji_fields_categories`
--
ALTER TABLE `cm5ji_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Индексы таблицы `cm5ji_fields_groups`
--
ALTER TABLE `cm5ji_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `cm5ji_fields_values`
--
ALTER TABLE `cm5ji_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Индексы таблицы `cm5ji_finder_filters`
--
ALTER TABLE `cm5ji_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `cm5ji_finder_links`
--
ALTER TABLE `cm5ji_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `cm5ji_finder_links_terms0`
--
ALTER TABLE `cm5ji_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_terms1`
--
ALTER TABLE `cm5ji_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_terms2`
--
ALTER TABLE `cm5ji_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_terms3`
--
ALTER TABLE `cm5ji_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_terms4`
--
ALTER TABLE `cm5ji_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_terms5`
--
ALTER TABLE `cm5ji_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_terms6`
--
ALTER TABLE `cm5ji_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_terms7`
--
ALTER TABLE `cm5ji_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_terms8`
--
ALTER TABLE `cm5ji_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_terms9`
--
ALTER TABLE `cm5ji_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_termsa`
--
ALTER TABLE `cm5ji_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_termsb`
--
ALTER TABLE `cm5ji_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_termsc`
--
ALTER TABLE `cm5ji_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_termsd`
--
ALTER TABLE `cm5ji_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_termse`
--
ALTER TABLE `cm5ji_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_links_termsf`
--
ALTER TABLE `cm5ji_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `cm5ji_finder_taxonomy`
--
ALTER TABLE `cm5ji_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `cm5ji_finder_taxonomy_map`
--
ALTER TABLE `cm5ji_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `cm5ji_finder_terms`
--
ALTER TABLE `cm5ji_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `cm5ji_finder_terms_common`
--
ALTER TABLE `cm5ji_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `cm5ji_finder_tokens`
--
ALTER TABLE `cm5ji_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `cm5ji_finder_tokens_aggregate`
--
ALTER TABLE `cm5ji_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `cm5ji_finder_types`
--
ALTER TABLE `cm5ji_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `cm5ji_languages`
--
ALTER TABLE `cm5ji_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `cm5ji_menu`
--
ALTER TABLE `cm5ji_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `cm5ji_menu_types`
--
ALTER TABLE `cm5ji_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `cm5ji_messages`
--
ALTER TABLE `cm5ji_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `cm5ji_messages_cfg`
--
ALTER TABLE `cm5ji_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `cm5ji_modules`
--
ALTER TABLE `cm5ji_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `cm5ji_modules_menu`
--
ALTER TABLE `cm5ji_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `cm5ji_newsfeeds`
--
ALTER TABLE `cm5ji_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `cm5ji_overrider`
--
ALTER TABLE `cm5ji_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cm5ji_postinstall_messages`
--
ALTER TABLE `cm5ji_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `cm5ji_powr`
--
ALTER TABLE `cm5ji_powr`
  ADD PRIMARY KEY (`data_type`);

--
-- Индексы таблицы `cm5ji_redirect_links`
--
ALTER TABLE `cm5ji_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `cm5ji_schemas`
--
ALTER TABLE `cm5ji_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `cm5ji_session`
--
ALTER TABLE `cm5ji_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `cm5ji_tags`
--
ALTER TABLE `cm5ji_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `cm5ji_template_styles`
--
ALTER TABLE `cm5ji_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `cm5ji_ucm_base`
--
ALTER TABLE `cm5ji_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `cm5ji_ucm_content`
--
ALTER TABLE `cm5ji_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `cm5ji_ucm_history`
--
ALTER TABLE `cm5ji_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `cm5ji_updates`
--
ALTER TABLE `cm5ji_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `cm5ji_update_sites`
--
ALTER TABLE `cm5ji_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `cm5ji_update_sites_extensions`
--
ALTER TABLE `cm5ji_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `cm5ji_usergroups`
--
ALTER TABLE `cm5ji_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `cm5ji_users`
--
ALTER TABLE `cm5ji_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `cm5ji_user_keys`
--
ALTER TABLE `cm5ji_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `cm5ji_user_notes`
--
ALTER TABLE `cm5ji_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `cm5ji_user_profiles`
--
ALTER TABLE `cm5ji_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `cm5ji_user_usergroup_map`
--
ALTER TABLE `cm5ji_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `cm5ji_viewlevels`
--
ALTER TABLE `cm5ji_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cm5ji_alfcontact`
--
ALTER TABLE `cm5ji_alfcontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `cm5ji_assets`
--
ALTER TABLE `cm5ji_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT для таблицы `cm5ji_banners`
--
ALTER TABLE `cm5ji_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_banner_clients`
--
ALTER TABLE `cm5ji_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_categories`
--
ALTER TABLE `cm5ji_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `cm5ji_contact_details`
--
ALTER TABLE `cm5ji_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_content`
--
ALTER TABLE `cm5ji_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `cm5ji_content_types`
--
ALTER TABLE `cm5ji_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `cm5ji_djimageslider`
--
ALTER TABLE `cm5ji_djimageslider`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `cm5ji_extensions`
--
ALTER TABLE `cm5ji_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10028;
--
-- AUTO_INCREMENT для таблицы `cm5ji_fields`
--
ALTER TABLE `cm5ji_fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_fields_groups`
--
ALTER TABLE `cm5ji_fields_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_finder_filters`
--
ALTER TABLE `cm5ji_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_finder_links`
--
ALTER TABLE `cm5ji_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_finder_taxonomy`
--
ALTER TABLE `cm5ji_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `cm5ji_finder_terms`
--
ALTER TABLE `cm5ji_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_finder_types`
--
ALTER TABLE `cm5ji_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_languages`
--
ALTER TABLE `cm5ji_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cm5ji_menu`
--
ALTER TABLE `cm5ji_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT для таблицы `cm5ji_menu_types`
--
ALTER TABLE `cm5ji_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cm5ji_messages`
--
ALTER TABLE `cm5ji_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_modules`
--
ALTER TABLE `cm5ji_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT для таблицы `cm5ji_newsfeeds`
--
ALTER TABLE `cm5ji_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_overrider`
--
ALTER TABLE `cm5ji_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT для таблицы `cm5ji_postinstall_messages`
--
ALTER TABLE `cm5ji_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `cm5ji_redirect_links`
--
ALTER TABLE `cm5ji_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cm5ji_tags`
--
ALTER TABLE `cm5ji_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `cm5ji_template_styles`
--
ALTER TABLE `cm5ji_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `cm5ji_ucm_content`
--
ALTER TABLE `cm5ji_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_ucm_history`
--
ALTER TABLE `cm5ji_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT для таблицы `cm5ji_updates`
--
ALTER TABLE `cm5ji_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cm5ji_update_sites`
--
ALTER TABLE `cm5ji_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `cm5ji_usergroups`
--
ALTER TABLE `cm5ji_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `cm5ji_users`
--
ALTER TABLE `cm5ji_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT для таблицы `cm5ji_user_keys`
--
ALTER TABLE `cm5ji_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_user_notes`
--
ALTER TABLE `cm5ji_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cm5ji_viewlevels`
--
ALTER TABLE `cm5ji_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
