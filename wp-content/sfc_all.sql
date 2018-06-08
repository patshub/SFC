-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2018 at 08:59 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sfc`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-20 04:18:38', '2018-05-20 04:18:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_fields`
--

CREATE TABLE `wp_mf_custom_fields` (
  `id` int(19) NOT NULL,
  `name` varchar(150) NOT NULL,
  `label` varchar(150) NOT NULL,
  `description` text,
  `post_type` varchar(120) NOT NULL,
  `custom_group_id` int(19) NOT NULL,
  `type` varchar(100) NOT NULL,
  `required_field` tinyint(1) DEFAULT NULL,
  `display_order` mediumint(9) DEFAULT '0',
  `duplicated` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `options` text
) ;

--
-- Dumping data for table `wp_mf_custom_fields`
--

INSERT INTO `wp_mf_custom_fields` (`id`, `name`, `label`, `description`, `post_type`, `custom_group_id`, `type`, `required_field`, `display_order`, `duplicated`, `active`, `options`) VALUES
(1, 'video_url', 'URL', '', 'videos', 1, 'textbox', 0, 0, 0, 1, 'a:2:{s:9:\"evalueate\";s:1:\"1\";s:4:\"size\";s:3:\"255\";}'),
(2, 'video_file', 'File', '', 'videos', 1, 'file', 0, 0, 0, 1, 'a:0:{}'),
(3, 'song_artist_band', 'Song Artist / Band', '', 'crd_sheet_music', 2, 'textbox', 0, 0, 0, 1, 'a:2:{s:9:\"evalueate\";s:1:\"1\";s:4:\"size\";s:2:\"25\";}'),
(4, 'capo', 'Capo', '', 'crd_sheet_music', 2, 'textbox', 0, 0, 0, 1, 'a:2:{s:9:\"evalueate\";s:1:\"1\";s:4:\"size\";s:2:\"25\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_groups`
--

CREATE TABLE `wp_mf_custom_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `duplicated` tinyint(1) DEFAULT '0',
  `expanded` tinyint(1) DEFAULT '0'
) ;

--
-- Dumping data for table `wp_mf_custom_groups`
--

INSERT INTO `wp_mf_custom_groups` (`id`, `name`, `label`, `post_type`, `duplicated`, `expanded`) VALUES
(1, 'video', 'Video', 'videos', 0, 1),
(2, 'song_info', 'Song Information', 'crd_sheet_music', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_custom_taxonomy`
--

CREATE TABLE `wp_mf_custom_taxonomy` (
  `id` mediumint(9) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `arguments` text,
  `active` tinyint(1) DEFAULT '1'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_posttypes`
--

CREATE TABLE `wp_mf_posttypes` (
  `id` mediumint(9) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `arguments` text,
  `active` tinyint(1) DEFAULT '1'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mf_post_meta`
--

CREATE TABLE `wp_mf_post_meta` (
  `meta_id` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `field_count` int(11) NOT NULL,
  `group_count` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ;

--
-- Dumping data for table `wp_mf_post_meta`
--

INSERT INTO `wp_mf_post_meta` (`meta_id`, `field_name`, `field_count`, `group_count`, `post_id`) VALUES
(234, 'song_artist_band', 1, 1, 33),
(235, 'capo', 1, 1, 33),
(239, 'song_artist_band', 1, 1, 34),
(240, 'capo', 1, 1, 34),
(245, 'song_artist_band', 1, 1, 35),
(246, 'capo', 1, 1, 35),
(251, 'song_artist_band', 1, 1, 36),
(252, 'capo', 1, 1, 36),
(672, 'video_url', 1, 1, 91),
(673, 'video_file', 1, 1, 91),
(676, 'video_url', 1, 1, 32),
(677, 'video_file', 1, 1, 32),
(730, 'video_url', 1, 1, 99),
(731, 'video_file', 1, 1, 99);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/sfc', 'yes'),
(2, 'home', 'http://localhost:8888/sfc', 'yes'),
(3, 'blogname', 'SFC Southbay', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pmartindesigns@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '1', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:244:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"articles/?$\";s:28:\"index.php?post_type=articles\";s:41:\"articles/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articles&feed=$matches[1]\";s:36:\"articles/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articles&feed=$matches[1]\";s:28:\"articles/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=articles&paged=$matches[1]\";s:9:\"events/?$\";s:26:\"index.php?post_type=events\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=events&paged=$matches[1]\";s:9:\"photos/?$\";s:26:\"index.php?post_type=photos\";s:39:\"photos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=photos&feed=$matches[1]\";s:34:\"photos/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=photos&feed=$matches[1]\";s:26:\"photos/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=photos&paged=$matches[1]\";s:9:\"videos/?$\";s:26:\"index.php?post_type=videos\";s:39:\"videos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=videos&feed=$matches[1]\";s:34:\"videos/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=videos&feed=$matches[1]\";s:26:\"videos/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=videos&paged=$matches[1]\";s:8:\"music/?$\";s:35:\"index.php?post_type=crd_sheet_music\";s:38:\"music/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=crd_sheet_music&feed=$matches[1]\";s:33:\"music/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=crd_sheet_music&feed=$matches[1]\";s:25:\"music/page/([0-9]{1,})/?$\";s:53:\"index.php?post_type=crd_sheet_music&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:54:\"calendar_feed/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?calendar_feed=$matches[1]&feed=$matches[2]\";s:49:\"calendar_feed/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?calendar_feed=$matches[1]&feed=$matches[2]\";s:30:\"calendar_feed/([^/]+)/embed/?$\";s:46:\"index.php?calendar_feed=$matches[1]&embed=true\";s:42:\"calendar_feed/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?calendar_feed=$matches[1]&paged=$matches[2]\";s:24:\"calendar_feed/([^/]+)/?$\";s:35:\"index.php?calendar_feed=$matches[1]\";s:54:\"calendar_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?calendar_type=$matches[1]&feed=$matches[2]\";s:49:\"calendar_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?calendar_type=$matches[1]&feed=$matches[2]\";s:30:\"calendar_type/([^/]+)/embed/?$\";s:46:\"index.php?calendar_type=$matches[1]&embed=true\";s:42:\"calendar_type/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?calendar_type=$matches[1]&paged=$matches[2]\";s:24:\"calendar_type/([^/]+)/?$\";s:35:\"index.php?calendar_type=$matches[1]\";s:58:\"calendar_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?calendar_category=$matches[1]&feed=$matches[2]\";s:53:\"calendar_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?calendar_category=$matches[1]&feed=$matches[2]\";s:34:\"calendar_category/([^/]+)/embed/?$\";s:50:\"index.php?calendar_category=$matches[1]&embed=true\";s:46:\"calendar_category/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?calendar_category=$matches[1]&paged=$matches[2]\";s:28:\"calendar_category/([^/]+)/?$\";s:39:\"index.php?calendar_category=$matches[1]\";s:36:\"calendar/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"calendar/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"calendar/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"calendar/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"calendar/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"calendar/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"calendar/([^/]+)/embed/?$\";s:41:\"index.php?calendar=$matches[1]&embed=true\";s:29:\"calendar/([^/]+)/trackback/?$\";s:35:\"index.php?calendar=$matches[1]&tb=1\";s:37:\"calendar/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?calendar=$matches[1]&paged=$matches[2]\";s:44:\"calendar/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?calendar=$matches[1]&cpage=$matches[2]\";s:33:\"calendar/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?calendar=$matches[1]&page=$matches[2]\";s:25:\"calendar/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"calendar/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"calendar/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"calendar/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"calendar/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"calendar/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"gallery/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"gallery/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"gallery/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"gallery/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"gallery/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"gallery/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"gallery/(.+?)/embed/?$\";s:51:\"index.php?robo_gallery_table=$matches[1]&embed=true\";s:26:\"gallery/(.+?)/trackback/?$\";s:45:\"index.php?robo_gallery_table=$matches[1]&tb=1\";s:34:\"gallery/(.+?)/page/?([0-9]{1,})/?$\";s:58:\"index.php?robo_gallery_table=$matches[1]&paged=$matches[2]\";s:41:\"gallery/(.+?)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?robo_gallery_table=$matches[1]&cpage=$matches[2]\";s:30:\"gallery/(.+?)(?:/([0-9]+))?/?$\";s:57:\"index.php?robo_gallery_table=$matches[1]&page=$matches[2]\";s:36:\"articles/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"articles/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"articles/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"articles/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"articles/([^/]+)/embed/?$\";s:41:\"index.php?articles=$matches[1]&embed=true\";s:29:\"articles/([^/]+)/trackback/?$\";s:35:\"index.php?articles=$matches[1]&tb=1\";s:49:\"articles/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articles=$matches[1]&feed=$matches[2]\";s:44:\"articles/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articles=$matches[1]&feed=$matches[2]\";s:37:\"articles/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&paged=$matches[2]\";s:44:\"articles/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&cpage=$matches[2]\";s:33:\"articles/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?articles=$matches[1]&page=$matches[2]\";s:25:\"articles/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"articles/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"articles/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"articles/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"photos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"photos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"photos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"photos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"photos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"photos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"photos/([^/]+)/embed/?$\";s:39:\"index.php?photos=$matches[1]&embed=true\";s:27:\"photos/([^/]+)/trackback/?$\";s:33:\"index.php?photos=$matches[1]&tb=1\";s:47:\"photos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?photos=$matches[1]&feed=$matches[2]\";s:42:\"photos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?photos=$matches[1]&feed=$matches[2]\";s:35:\"photos/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?photos=$matches[1]&paged=$matches[2]\";s:42:\"photos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?photos=$matches[1]&cpage=$matches[2]\";s:31:\"photos/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?photos=$matches[1]&page=$matches[2]\";s:23:\"photos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"photos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"photos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"photos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"photos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"photos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"videos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"videos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"videos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"videos/([^/]+)/embed/?$\";s:39:\"index.php?videos=$matches[1]&embed=true\";s:27:\"videos/([^/]+)/trackback/?$\";s:33:\"index.php?videos=$matches[1]&tb=1\";s:47:\"videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?videos=$matches[1]&feed=$matches[2]\";s:42:\"videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?videos=$matches[1]&feed=$matches[2]\";s:35:\"videos/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?videos=$matches[1]&paged=$matches[2]\";s:42:\"videos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?videos=$matches[1]&cpage=$matches[2]\";s:31:\"videos/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?videos=$matches[1]&page=$matches[2]\";s:23:\"videos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"videos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"videos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"music/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"music/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"music/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"music/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"music/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"music/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"music/([^/]+)/embed/?$\";s:48:\"index.php?crd_sheet_music=$matches[1]&embed=true\";s:26:\"music/([^/]+)/trackback/?$\";s:42:\"index.php?crd_sheet_music=$matches[1]&tb=1\";s:46:\"music/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?crd_sheet_music=$matches[1]&feed=$matches[2]\";s:41:\"music/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?crd_sheet_music=$matches[1]&feed=$matches[2]\";s:34:\"music/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?crd_sheet_music=$matches[1]&paged=$matches[2]\";s:41:\"music/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?crd_sheet_music=$matches[1]&cpage=$matches[2]\";s:30:\"music/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?crd_sheet_music=$matches[1]&page=$matches[2]\";s:22:\"music/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"music/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"music/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"music/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"music/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"music/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:49:\"bible-verse-of-the-day/bible-verse-of-the-day.php\";i:2;s:19:\"chordwp/chordwp.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:21:\"flamingo/flamingo.php\";i:5;s:49:\"google-calendar-events/google-calendar-events.php\";i:6;s:65:\"post-type-archive-descriptions/post-type-archive-descriptions.php\";i:7;s:30:\"simple-post-gallery/plugin.php\";i:8;s:45:\"user-submitted-posts/user-submitted-posts.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'sfc', 'yes'),
(41, 'stylesheet', 'sfc', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1528485519;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1528517919;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1528517925;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1528519295;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1526790018;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1528482645;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1528482647;s:7:\"checked\";a:4:{s:3:\"sfc\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', '', 'yes'),
(139, 'theme_mods_sfc', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:4;s:16:\"breadcrumbs-menu\";i:5;}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(143, 'recently_activated', 'a:5:{s:49:\"gallery-lightbox-slider/gallery-lightbox-lite.php\";i:1527872353;s:28:\"robo-gallery/robogallery.php\";i:1527872013;s:43:\"responsive-lightbox/responsive-lightbox.php\";i:1527871419;s:31:\"easy-swipebox/easy-swipebox.php\";i:1527838908;s:31:\"Magic-Fields-2-2.3.3.1/main.php\";i:1527719093;}', 'yes'),
(144, 'usp_options', 'a:70:{s:11:\"usp_version\";i:20180511;s:8:\"usp_name\";s:4:\"hide\";s:9:\"usp_email\";s:4:\"show\";s:7:\"usp_url\";s:4:\"hide\";s:9:\"usp_title\";s:4:\"show\";s:8:\"usp_tags\";s:4:\"hide\";s:12:\"usp_category\";s:4:\"show\";s:11:\"usp_content\";s:4:\"show\";s:12:\"custom_field\";s:4:\"hide\";s:11:\"usp_captcha\";s:4:\"hide\";s:13:\"usp_recaptcha\";s:4:\"hide\";s:10:\"usp_images\";s:4:\"hide\";s:16:\"usp_form_version\";s:7:\"current\";s:14:\"usp_include_js\";i:1;s:15:\"usp_display_url\";s:0:\"\";s:13:\"usp_post_type\";s:4:\"post\";s:15:\"number-approved\";i:-1;s:12:\"redirect-url\";s:0:\"\";s:15:\"success-message\";s:39:\"Success! Thank you for your submission.\";s:13:\"error-message\";s:116:\"There was an error. Please ensure that you have added a title, some content, and that you have uploaded only images.\";s:16:\"usp_form_content\";s:0:\"\";s:20:\"custom_checkbox_name\";s:19:\"usp_custom_checkbox\";s:19:\"custom_checkbox_err\";s:24:\"Custom checkbox required\";s:20:\"custom_checkbox_text\";s:25:\"I agree the to the terms.\";s:10:\"categories\";a:2:{i:0;s:2:\"13\";i:1;s:2:\"12\";}s:14:\"usp_use_cat_id\";s:0:\"\";s:6:\"author\";s:1:\"1\";s:11:\"custom_name\";s:16:\"usp_custom_field\";s:12:\"custom_label\";s:12:\"Custom Field\";s:12:\"usp_question\";s:66:\"Would you prefer to make your prayer intentions PUBLIC or PRIVATE?\";s:12:\"usp_response\";s:6:\"Public\";s:16:\"recaptcha_public\";s:0:\"\";s:17:\"recaptcha_private\";s:0:\"\";s:16:\"usp_email_alerts\";i:1;s:17:\"usp_email_address\";s:24:\"pmartindesigns@gmail.com\";s:14:\"usp_email_from\";s:24:\"pmartindesigns@gmail.com\";s:19:\"email_alert_subject\";s:0:\"\";s:19:\"email_alert_message\";s:0:\"\";s:14:\"upload-message\";s:38:\"Please select your image(s) to upload.\";s:15:\"usp_add_another\";s:0:\"\";s:10:\"min-images\";i:0;s:10:\"max-images\";i:1;s:15:\"min-image-width\";i:0;s:16:\"min-image-height\";i:0;s:15:\"max-image-width\";i:1500;s:16:\"max-image-height\";i:1500;s:19:\"auto_display_images\";s:7:\"disable\";s:17:\"auto_image_markup\";s:130:\"<a href=\"%%full%%\"><img src=\"%%thumb%%\" width=\"%%width%%\" height=\"%%height%%\" alt=\"%%title%%\" style=\"display:inline-block\" /></a> \";s:18:\"auto_display_email\";s:7:\"disable\";s:17:\"auto_email_markup\";s:43:\"<p><a href=\"mailto:%%email%%\">Email</a></p>\";s:16:\"auto_display_url\";s:7:\"disable\";s:15:\"auto_url_markup\";s:32:\"<p><a href=\"%%url%%\">URL</a></p>\";s:19:\"auto_display_custom\";s:7:\"disable\";s:18:\"auto_custom_markup\";s:60:\"<p>%%custom_label%% : %%custom_name%% : %%custom_value%%</p>\";s:13:\"version_alert\";i:0;s:15:\"default_options\";i:0;s:10:\"usp_casing\";i:0;s:14:\"usp_email_html\";i:0;s:14:\"usp_use_author\";i:0;s:11:\"usp_use_url\";i:0;s:11:\"usp_use_cat\";i:0;s:19:\"usp_richtext_editor\";i:0;s:19:\"usp_featured_images\";i:0;s:16:\"disable_required\";i:0;s:13:\"titles_unique\";i:0;s:17:\"enable_shortcodes\";i:0;s:19:\"disable_ip_tracking\";i:0;s:15:\"logged_in_users\";i:0;s:14:\"disable_author\";i:0;s:15:\"custom_checkbox\";i:0;}', 'yes'),
(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(153, 'model_post_gallery', '{\"can_enqueue\":\"1\",\"types\":[\"photos\"],\"metabox_context\":\"advanced\",\"metabox_priority\":\"default\",\"ID\":\"post_gallery\"}', 'yes'),
(190, 'widget_gce_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'simple-calendar_version', '3.1.15', 'yes'),
(196, 'simple-calendar_settings_feeds', 'a:1:{s:6:\"google\";a:1:{s:7:\"api_key\";s:39:\"AIzaSyCgf3RlELP28ymO46Lra3Djhzt9FfnWK4E\";}}', 'yes'),
(199, 'simple-calendar_settings_calendars', 'a:1:{s:7:\"general\";a:1:{s:22:\"attach_calendars_posts\";a:1:{i:0;s:4:\"page\";}}}', 'yes'),
(202, 'calendar_feed_children', 'a:0:{}', 'yes'),
(203, 'calendar_type_children', 'a:0:{}', 'yes'),
(204, 'simple-calendar_admin_notices', 'a:0:{}', 'yes'),
(290, 'mf_db_version', '3', 'yes'),
(354, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1527667838;s:7:\"version\";s:5:\"5.0.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(391, 'topics_children', 'a:0:{}', 'yes'),
(392, 'widget_dailyverseswidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(393, 'widget_randombibleversewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(394, 'bibleVerseOfTheDay_LastAttempt_niv', '1528482646', 'yes'),
(395, 'bibleVerseOfTheDay_Date_niv', '2018-06-08', 'yes'),
(396, 'bibleVerseOfTheDay_Verse_niv', '<div class=\"dailyVerses bibleText\">I press on toward the goal to win the prize for which God has called me heavenward in Christ Jesus.</div><div class=\"dailyVerses bibleVerse\"><a href=\"https://dailyverses.net/2018/6/8\" rel=\"noopener\" target=\"_blank\">Philippians 3:14</a></div>', 'yes'),
(397, 'bibleVerseOfTheDay_LastAttempt_esv', '1527706391', 'yes'),
(398, 'bibleVerseOfTheDay_Date_esv', '2018-05-30', 'yes'),
(399, 'bibleVerseOfTheDay_Verse_esv', '<div class=\"dailyVerses bibleText\">Let marriage be held in honor among all&#44; and let the marriage bed be undefiled&#44; for God will judge the sexually immoral and adulterous.</div><div class=\"dailyVerses bibleVerse\"><a href=\"https://dailyverses.net/2018/5/30/esv\" rel=\"noopener\" target=\"_blank\">Hebrews 13:4</a></div>', 'yes'),
(401, 'flamingo_inbound_channel_children', 'a:1:{i:10;a:1:{i:0;i:11;}}', 'yes'),
(417, 'category_children', 'a:0:{}', 'yes'),
(441, 'ptad_descriptions', 'a:3:{i:0;b:0;i:1;s:0:\"\";s:8:\"articles\";s:26:\"<pre>Stay Up To Date</pre>\";}', 'yes'),
(444, 'acf_version', '4.4.12', 'yes'),
(496, 'easySwipeBox_advanced', 'a:2:{s:12:\"loadingPlace\";s:6:\"footer\";s:9:\"debugMode\";b:0;}', 'yes'),
(499, 'easySwipeBox_lightbox', 'a:9:{s:6:\"useCSS\";b:1;s:6:\"useSVG\";b:1;s:18:\"removeBarsOnMobile\";b:1;s:23:\"hideCloseButtonOnMobile\";b:0;s:13:\"hideBarsDelay\";i:3000;s:13:\"videoMaxWidth\";i:1140;s:10:\"vimeoColor\";s:7:\"#cccccc\";s:9:\"loopAtEnd\";b:1;s:14:\"autoplayVideos\";b:0;}', 'yes'),
(510, 'responsive_lightbox_settings', 'a:27:{s:4:\"tour\";b:1;s:6:\"script\";s:8:\"swipebox\";s:8:\"selector\";s:8:\"lightbox\";s:15:\"default_gallery\";s:9:\"basicgrid\";s:15:\"builder_gallery\";s:9:\"basicgrid\";s:27:\"default_woocommerce_gallery\";s:7:\"default\";s:9:\"galleries\";b:1;s:18:\"gallery_image_size\";s:4:\"full\";s:19:\"gallery_image_title\";s:7:\"default\";s:21:\"gallery_image_caption\";s:7:\"default\";s:20:\"force_custom_gallery\";b:0;s:28:\"woocommerce_gallery_lightbox\";b:0;s:6:\"videos\";b:1;s:7:\"widgets\";b:0;s:8:\"comments\";b:0;s:11:\"image_links\";b:1;s:11:\"image_title\";s:7:\"default\";s:13:\"image_caption\";s:7:\"default\";s:17:\"images_as_gallery\";b:1;s:19:\"deactivation_delete\";b:0;s:13:\"loading_place\";s:6:\"header\";s:19:\"conditional_loading\";b:0;s:20:\"enable_custom_events\";b:1;s:13:\"custom_events\";s:12:\"ajaxComplete\";s:14:\"update_version\";i:2;s:13:\"update_notice\";b:1;s:17:\"update_delay_date\";i:1529048569;}', 'no'),
(511, 'responsive_lightbox_configuration', 'a:8:{s:8:\"swipebox\";a:8:{s:9:\"animation\";s:3:\"css\";s:15:\"force_png_icons\";b:0;s:17:\"hide_close_mobile\";b:0;s:18:\"remove_bars_mobile\";b:0;s:9:\"hide_bars\";b:1;s:15:\"hide_bars_delay\";i:5000;s:15:\"video_max_width\";i:1080;s:11:\"loop_at_end\";b:0;}s:11:\"prettyphoto\";a:21:{s:15:\"animation_speed\";s:6:\"normal\";s:9:\"slideshow\";b:0;s:15:\"slideshow_delay\";i:5000;s:18:\"slideshow_autoplay\";b:0;s:7:\"opacity\";i:75;s:10:\"show_title\";b:1;s:12:\"allow_resize\";b:1;s:12:\"allow_expand\";b:1;s:5:\"width\";i:1080;s:6:\"height\";i:720;s:9:\"separator\";s:1:\"/\";s:5:\"theme\";s:10:\"pp_default\";s:18:\"horizontal_padding\";i:20;s:10:\"hide_flash\";b:0;s:5:\"wmode\";s:6:\"opaque\";s:14:\"video_autoplay\";b:0;s:5:\"modal\";b:0;s:11:\"deeplinking\";b:0;s:15:\"overlay_gallery\";b:1;s:18:\"keyboard_shortcuts\";b:1;s:6:\"social\";b:0;}s:8:\"fancybox\";a:25:{s:5:\"modal\";b:0;s:12:\"show_overlay\";b:1;s:17:\"show_close_button\";b:1;s:20:\"enable_escape_button\";b:1;s:21:\"hide_on_overlay_click\";b:1;s:21:\"hide_on_content_click\";b:0;s:6:\"cyclic\";b:0;s:15:\"show_nav_arrows\";b:1;s:10:\"auto_scale\";b:1;s:9:\"scrolling\";s:3:\"yes\";s:16:\"center_on_scroll\";b:1;s:7:\"opacity\";b:1;s:15:\"overlay_opacity\";i:70;s:13:\"overlay_color\";s:4:\"#666\";s:10:\"title_show\";b:1;s:14:\"title_position\";s:7:\"outside\";s:11:\"transitions\";s:4:\"fade\";s:7:\"easings\";s:5:\"swing\";s:6:\"speeds\";i:300;s:12:\"change_speed\";i:300;s:11:\"change_fade\";i:100;s:7:\"padding\";i:5;s:6:\"margin\";i:5;s:11:\"video_width\";i:1080;s:12:\"video_height\";i:720;}s:4:\"nivo\";a:4:{s:6:\"effect\";s:4:\"fade\";s:22:\"click_overlay_to_close\";b:1;s:12:\"keyboard_nav\";b:1;s:13:\"error_message\";s:63:\"The requested content cannot be loaded. Please try again later.\";}s:13:\"imagelightbox\";a:6:{s:15:\"animation_speed\";i:250;s:12:\"preload_next\";b:1;s:15:\"enable_keyboard\";b:1;s:11:\"quit_on_end\";b:0;s:19:\"quit_on_image_click\";b:0;s:22:\"quit_on_document_click\";b:1;}s:6:\"tosrus\";a:9:{s:6:\"effect\";s:5:\"slide\";s:8:\"infinite\";b:1;s:4:\"keys\";b:0;s:8:\"autoplay\";b:1;s:14:\"pause_on_hover\";b:0;s:7:\"timeout\";i:4000;s:10:\"pagination\";b:1;s:15:\"pagination_type\";s:10:\"thumbnails\";s:14:\"close_on_click\";b:0;}s:12:\"featherlight\";a:6:{s:10:\"open_speed\";i:250;s:11:\"close_speed\";i:250;s:14:\"close_on_click\";s:10:\"background\";s:12:\"close_on_esc\";b:1;s:15:\"gallery_fade_in\";i:100;s:16:\"gallery_fade_out\";i:300;}s:8:\"magnific\";a:12:{s:10:\"disable_on\";i:0;s:9:\"mid_click\";b:1;s:9:\"preloader\";b:1;s:22:\"close_on_content_click\";b:1;s:25:\"close_on_background_click\";b:1;s:19:\"close_button_inside\";b:1;s:17:\"show_close_button\";b:1;s:17:\"enable_escape_key\";b:1;s:9:\"align_top\";b:0;s:22:\"fixed_content_position\";s:4:\"auto\";s:25:\"fixed_background_position\";s:4:\"auto\";s:15:\"auto_focus_last\";b:1;}}', 'no'),
(512, 'responsive_lightbox_version', '2.0.4', 'no'),
(513, 'widget_responsive_lightbox_gallery_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(514, 'widget_responsive_lightbox_image_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(515, 'responsive_lightbox_activation_date', '1527838969', 'yes'),
(520, 'rl_category_children', 'a:0:{}', 'yes'),
(547, 'photonic_options', 'a:1:{s:14:\"disable_editor\";s:2:\"on\";}', 'yes'),
(549, 'widget_rbs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(550, 'RoboGalleryInstallDate', '1527871630', 'yes'),
(551, 'RoboGalleryInstallVersion', '2.7.11', 'yes'),
(552, 'rbs_gallery_db_version', '2.7.11', 'yes'),
(554, 'glg_gallery_active', 'active', 'yes'),
(555, 'glg_gallery_autoplay', 'false', 'yes'),
(556, 'ecf_slide_every', '3', 'yes'),
(557, 'glg_gallery_thumbnails', 'true', 'yes'),
(558, 'glg_gallery_show_captions', 'true', 'yes'),
(559, 'glg_gallery_fancy_caption', 'true', 'yes'),
(560, 'glg_gallery_overlay_color', '', 'yes'),
(654, '_site_transient_timeout_theme_roots', '1528484446', 'no'),
(655, '_site_transient_theme_roots', 'a:4:{s:3:\"sfc\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(656, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1528482687;s:7:\"checked\";a:10:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:49:\"bible-verse-of-the-day/bible-verse-of-the-day.php\";s:3:\"2.4\";s:19:\"chordwp/chordwp.php\";s:5:\"1.1.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.2\";s:21:\"flamingo/flamingo.php\";s:3:\"1.8\";s:31:\"Magic-Fields-2-2.3.3.1/main.php\";s:7:\"2.3.3.1\";s:30:\"simple-post-gallery/plugin.php\";s:5:\"2.2.3\";s:65:\"post-type-archive-descriptions/post-type-archive-descriptions.php\";s:5:\"1.1.2\";s:49:\"google-calendar-events/google-calendar-events.php\";s:6:\"3.1.15\";s:45:\"user-submitted-posts/user-submitted-posts.php\";s:8:\"20180511\";}s:8:\"response\";a:3:{s:30:\"simple-post-gallery/plugin.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/simple-post-gallery\";s:4:\"slug\";s:19:\"simple-post-gallery\";s:6:\"plugin\";s:30:\"simple-post-gallery/plugin.php\";s:11:\"new_version\";s:5:\"2.2.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/simple-post-gallery/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/simple-post-gallery.2.2.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/simple-post-gallery/assets/icon-256x256.png?rev=1847872\";s:2:\"1x\";s:64:\"https://ps.w.org/simple-post-gallery/assets/icon.svg?rev=1847872\";s:3:\"svg\";s:64:\"https://ps.w.org/simple-post-gallery/assets/icon.svg?rev=1847872\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/simple-post-gallery/assets/banner-1544x500.jpg?rev=1847872\";s:2:\"1x\";s:74:\"https://ps.w.org/simple-post-gallery/assets/banner-772x250.jpg?rev=1847872\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:65:\"post-type-archive-descriptions/post-type-archive-descriptions.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:44:\"w.org/plugins/post-type-archive-descriptions\";s:4:\"slug\";s:30:\"post-type-archive-descriptions\";s:6:\"plugin\";s:65:\"post-type-archive-descriptions/post-type-archive-descriptions.php\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/post-type-archive-descriptions/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/post-type-archive-descriptions.1.1.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:83:\"https://ps.w.org/post-type-archive-descriptions/assets/icon-256x256.png?rev=1165900\";s:2:\"1x\";s:75:\"https://ps.w.org/post-type-archive-descriptions/assets/icon.svg?rev=1165900\";s:3:\"svg\";s:75:\"https://ps.w.org/post-type-archive-descriptions/assets/icon.svg?rev=1165900\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/post-type-archive-descriptions/assets/banner-1544x500.png?rev=1165955\";s:2:\"1x\";s:85:\"https://ps.w.org/post-type-archive-descriptions/assets/banner-772x250.png?rev=1165955\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:49:\"google-calendar-events/google-calendar-events.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/google-calendar-events\";s:4:\"slug\";s:22:\"google-calendar-events\";s:6:\"plugin\";s:49:\"google-calendar-events/google-calendar-events.php\";s:11:\"new_version\";s:6:\"3.1.17\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/google-calendar-events/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/google-calendar-events.3.1.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/google-calendar-events/assets/icon-256x256.png?rev=1263960\";s:2:\"1x\";s:75:\"https://ps.w.org/google-calendar-events/assets/icon-128x128.png?rev=1263960\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/google-calendar-events/assets/banner-1544x500.png?rev=1263982\";s:2:\"1x\";s:77:\"https://ps.w.org/google-calendar-events/assets/banner-772x250.png?rev=1263982\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"bible-verse-of-the-day/bible-verse-of-the-day.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/bible-verse-of-the-day\";s:4:\"slug\";s:22:\"bible-verse-of-the-day\";s:6:\"plugin\";s:49:\"bible-verse-of-the-day/bible-verse-of-the-day.php\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/bible-verse-of-the-day/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/bible-verse-of-the-day.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/bible-verse-of-the-day/assets/icon-128x128.png?rev=985351\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/bible-verse-of-the-day/assets/banner-1544x500.png?rev=1726644\";s:2:\"1x\";s:77:\"https://ps.w.org/bible-verse-of-the-day/assets/banner-772x250.png?rev=1726644\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"flamingo/flamingo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/flamingo\";s:4:\"slug\";s:8:\"flamingo\";s:6:\"plugin\";s:21:\"flamingo/flamingo.php\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/flamingo/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/flamingo.1.8.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/flamingo/assets/icon-128x128.png?rev=1540977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/flamingo/assets/banner-772x250.png?rev=544829\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"user-submitted-posts/user-submitted-posts.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/user-submitted-posts\";s:4:\"slug\";s:20:\"user-submitted-posts\";s:6:\"plugin\";s:45:\"user-submitted-posts/user-submitted-posts.php\";s:11:\"new_version\";s:8:\"20180511\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/user-submitted-posts/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/user-submitted-posts.20180511.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/user-submitted-posts/assets/icon-256x256.png?rev=1475972\";s:2:\"1x\";s:73:\"https://ps.w.org/user-submitted-posts/assets/icon-128x128.png?rev=1475972\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/user-submitted-posts/assets/banner-1544x500.jpg?rev=1392443\";s:2:\"1x\";s:75:\"https://ps.w.org/user-submitted-posts/assets/banner-772x250.jpg?rev=1392443\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, 'is_submission', '1'),
(4, 5, 'usp-post-id', '5'),
(5, 5, 'user_submit_name', 'test'),
(6, 5, 'user_submit_url', 'http://test'),
(7, 5, 'user_submit_ip', '::1'),
(8, 5, '_edit_lock', '1526790656:1'),
(9, 7, 'is_submission', '1'),
(10, 7, 'usp-post-id', '7'),
(11, 7, 'user_submit_name', 'name'),
(12, 7, 'user_submit_url', 'http://url'),
(13, 7, 'user_submit_ip', '::1'),
(14, 7, '_edit_lock', '1526790691:1'),
(15, 9, '_edit_last', '1'),
(16, 9, '_edit_lock', '1527651563:1'),
(17, 2, '_edit_lock', '1526791183:1'),
(36, 13, '_menu_item_type', 'custom'),
(37, 13, '_menu_item_menu_item_parent', '0'),
(38, 13, '_menu_item_object_id', '13'),
(39, 13, '_menu_item_object', 'custom'),
(40, 13, '_menu_item_target', ''),
(41, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 13, '_menu_item_xfn', ''),
(43, 13, '_menu_item_url', '/sfc/articles'),
(45, 14, '_wp_attached_file', '2018/05/1.png'),
(46, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:700;s:4:\"file\";s:13:\"2018/05/1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x538.png\";s:5:\"width\";i:768;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 15, '_wp_attached_file', '2018/05/2.png'),
(48, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:700;s:4:\"file\";s:13:\"2018/05/2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x538.png\";s:5:\"width\";i:768;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 16, '_wp_attached_file', '2018/05/3.png'),
(50, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:700;s:4:\"file\";s:13:\"2018/05/3.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x538.png\";s:5:\"width\";i:768;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 17, '_wp_attached_file', '2018/05/4.png'),
(52, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:700;s:4:\"file\";s:13:\"2018/05/4.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x538.png\";s:5:\"width\";i:768;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 18, '_wp_attached_file', '2018/05/5.png'),
(54, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:700;s:4:\"file\";s:13:\"2018/05/5.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x538.png\";s:5:\"width\";i:768;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 9, '_thumbnail_id', '25'),
(65, 20, '_menu_item_type', 'custom'),
(66, 20, '_menu_item_menu_item_parent', '0'),
(67, 20, '_menu_item_object_id', '20'),
(68, 20, '_menu_item_object', 'custom'),
(69, 20, '_menu_item_target', ''),
(70, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 20, '_menu_item_xfn', ''),
(72, 20, '_menu_item_url', '/sfc/articles'),
(74, 21, '_edit_last', '1'),
(75, 21, '_edit_lock', '1527719233:1'),
(76, 23, '_edit_last', '1'),
(77, 23, '_edit_lock', '1526957512:1'),
(78, 23, '_gallery', 'a:5:{i:0;s:2:\"14\";i:1;s:2:\"18\";i:2;s:2:\"17\";i:3;s:2:\"16\";i:4;s:2:\"15\";}'),
(79, 23, '_gallery_format', 'default'),
(80, 23, '_gallery_format_data', 'a:1:{s:7:\"default\";a:0:{}}'),
(81, 23, '_thumbnail_id', '18'),
(82, 24, '_menu_item_type', 'post_type'),
(83, 24, '_menu_item_menu_item_parent', '0'),
(84, 24, '_menu_item_object_id', '21'),
(85, 24, '_menu_item_object', 'page'),
(86, 24, '_menu_item_target', ''),
(87, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 24, '_menu_item_xfn', ''),
(89, 24, '_menu_item_url', ''),
(90, 25, '_wp_attached_file', '2018/05/pexels-photo-697244.jpg'),
(91, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2250;s:6:\"height\";i:1500;s:4:\"file\";s:31:\"2018/05/pexels-photo-697244.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"pexels-photo-697244-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"pexels-photo-697244-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"pexels-photo-697244-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"pexels-photo-697244-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 26, '_edit_last', '1'),
(93, 26, '_edit_lock', '1527831438:1'),
(94, 26, '_calendar_view', 'a:1:{s:16:\"default-calendar\";s:4:\"list\";}'),
(95, 26, '_calendar_begins', 'today'),
(96, 26, '_calendar_begins_nth', '1'),
(97, 26, '_calendar_begins_custom_date', ''),
(98, 26, '_feed_earliest_event_date', 'months_before'),
(99, 26, '_feed_earliest_event_date_range', '1'),
(100, 26, '_feed_latest_event_date', 'years_after'),
(101, 26, '_feed_latest_event_date_range', '1'),
(102, 26, '_calendar_is_static', 'no'),
(103, 26, '_no_events_message', ''),
(104, 26, '_event_formatting', 'preserve_linebreaks'),
(105, 26, '_poweredby', 'no'),
(106, 26, '_feed_timezone_setting', 'use_site'),
(107, 26, '_feed_timezone', 'UTC'),
(108, 26, '_calendar_date_format_setting', 'use_site'),
(109, 26, '_calendar_date_format', 'l, d F Y'),
(110, 26, '_calendar_date_format_php', 'F j, Y'),
(111, 26, '_calendar_time_format_setting', 'use_site'),
(112, 26, '_calendar_time_format', 'G:i a'),
(113, 26, '_calendar_time_format_php', 'g:i a'),
(114, 26, '_calendar_datetime_separator', ''),
(115, 26, '_calendar_datetime_separator_spacing', ''),
(116, 26, '_calendar_week_starts_on_setting', 'use_site'),
(117, 26, '_calendar_week_starts_on', '0'),
(118, 26, '_feed_cache_user_amount', '2'),
(119, 26, '_feed_cache_user_unit', '3600'),
(120, 26, '_feed_cache', '7200'),
(121, 26, '_calendar_version', '3.1.14'),
(122, 26, '_google_calendar_id', 'cGF0cmlja21heG1hcnRpbkBnbWFpbC5jb20='),
(123, 26, '_google_events_search_query', ''),
(124, 26, '_google_events_recurring', 'show'),
(125, 26, '_google_events_max_results', '2500'),
(126, 26, '_grouped_calendars_source', 'ids'),
(127, 26, '_grouped_calendars_ids', ''),
(128, 26, '_grouped_calendars_category', ''),
(129, 26, '_default_calendar_style_theme', 'light'),
(130, 26, '_default_calendar_style_today', '#1e73be'),
(131, 26, '_default_calendar_style_days_events', '#000000'),
(132, 26, '_default_calendar_list_range_span', '12'),
(133, 26, '_default_calendar_list_range_type', 'monthly'),
(134, 26, '_default_calendar_list_header', 'yes'),
(135, 26, '_default_calendar_compact_list', 'no'),
(136, 26, '_default_calendar_limit_visible_events', 'no'),
(137, 26, '_default_calendar_visible_events', '3'),
(138, 26, '_default_calendar_event_bubble_trigger', 'hover'),
(139, 26, '_default_calendar_trim_titles', 'no'),
(140, 26, '_default_calendar_trim_titles_chars', '20'),
(141, 26, '_default_calendar_expand_multi_day_events', 'yes'),
(142, 21, '_simcal_attach_calendar_id', '0'),
(143, 21, '_simcal_attach_calendar_position', 'after'),
(144, 23, '_simcal_attach_calendar_id', '0'),
(145, 23, '_simcal_attach_calendar_position', 'after'),
(146, 29, '_edit_last', '1'),
(147, 29, '_edit_lock', '1527832006:1'),
(148, 29, '_simcal_attach_calendar_id', '0'),
(149, 29, '_simcal_attach_calendar_position', 'after'),
(150, 32, '_edit_last', '1'),
(151, 32, '_edit_lock', '1527720276:1'),
(184, 33, '_edit_last', '1'),
(185, 33, '_crd_song', '{columns: 2}\r\nHere I am to [E] worship, here I am to [B] bow down\r\nHere I am to [E] say that you\'re my God [A]\r\n\r\n{column_break}\r\n{soc}\r\n\r\nHere I am to [E] worship, here I am to [B] bow down\r\nHere I am to [E] say that you\'re my God [A]\r\n\r\n{eoc}'),
(186, 33, '_crd_song_location', 'top'),
(187, 33, '_edit_lock', '1526974982:1'),
(234, 33, 'song_artist_band', 'Hillsong'),
(235, 33, 'capo', '3'),
(236, 34, '_edit_last', '1'),
(239, 34, 'song_artist_band', ''),
(240, 34, 'capo', ''),
(241, 34, '_edit_lock', '1526974996:1'),
(242, 35, '_edit_last', '1'),
(245, 35, 'song_artist_band', ''),
(246, 35, 'capo', ''),
(247, 35, '_edit_lock', '1526975010:1'),
(248, 36, '_edit_last', '1'),
(251, 36, 'song_artist_band', ''),
(252, 36, 'capo', ''),
(253, 36, '_edit_lock', '1527832285:1'),
(254, 38, '_edit_last', '1'),
(255, 38, '_edit_lock', '1527649920:1'),
(256, 38, '_thumbnail_id', '18'),
(257, 39, '_edit_last', '1'),
(258, 39, '_edit_lock', '1527649945:1'),
(259, 39, '_thumbnail_id', '15'),
(260, 40, '_edit_last', '1'),
(261, 40, '_edit_lock', '1527651686:1'),
(262, 40, '_thumbnail_id', '16'),
(263, 41, '_edit_last', '1'),
(264, 41, '_edit_lock', '1527705753:1'),
(265, 41, '_thumbnail_id', '17'),
(266, 42, '_edit_last', '1'),
(267, 42, '_edit_lock', '1527919161:1'),
(268, 42, '_simcal_attach_calendar_id', '0'),
(269, 42, '_simcal_attach_calendar_position', 'after'),
(270, 44, '_edit_last', '1'),
(271, 44, '_edit_lock', '1527919151:1'),
(272, 44, '_simcal_attach_calendar_id', '0'),
(273, 44, '_simcal_attach_calendar_position', 'after'),
(274, 46, '_edit_last', '1'),
(275, 46, '_edit_lock', '1527919236:1'),
(276, 46, '_simcal_attach_calendar_id', '0'),
(277, 46, '_simcal_attach_calendar_position', 'after'),
(278, 48, '_menu_item_type', 'post_type'),
(279, 48, '_menu_item_menu_item_parent', '0'),
(280, 48, '_menu_item_object_id', '46'),
(281, 48, '_menu_item_object', 'page'),
(282, 48, '_menu_item_target', ''),
(283, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(284, 48, '_menu_item_xfn', ''),
(285, 48, '_menu_item_url', ''),
(287, 49, '_menu_item_type', 'post_type'),
(288, 49, '_menu_item_menu_item_parent', '0'),
(289, 49, '_menu_item_object_id', '44'),
(290, 49, '_menu_item_object', 'page'),
(291, 49, '_menu_item_target', ''),
(292, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(293, 49, '_menu_item_xfn', ''),
(294, 49, '_menu_item_url', ''),
(296, 50, '_menu_item_type', 'post_type'),
(297, 50, '_menu_item_menu_item_parent', '0'),
(298, 50, '_menu_item_object_id', '42'),
(299, 50, '_menu_item_object', 'page'),
(300, 50, '_menu_item_target', ''),
(301, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(302, 50, '_menu_item_xfn', ''),
(303, 50, '_menu_item_url', ''),
(305, 2, '_wp_trash_meta_status', 'publish'),
(306, 2, '_wp_trash_meta_time', '1527664714'),
(307, 2, '_wp_desired_post_slug', 'sample-page'),
(308, 3, '_wp_trash_meta_status', 'draft'),
(309, 3, '_wp_trash_meta_time', '1527664719'),
(310, 3, '_wp_desired_post_slug', 'privacy-policy'),
(311, 53, '_edit_last', '1'),
(312, 53, '_edit_lock', '1527977787:1'),
(313, 53, '_simcal_attach_calendar_id', '0'),
(314, 53, '_simcal_attach_calendar_position', 'after'),
(315, 55, '_edit_last', '1'),
(316, 55, '_edit_lock', '1527967265:1'),
(317, 55, '_simcal_attach_calendar_id', '0'),
(318, 55, '_simcal_attach_calendar_position', 'after'),
(328, 59, '_menu_item_type', 'post_type'),
(329, 59, '_menu_item_menu_item_parent', '0'),
(330, 59, '_menu_item_object_id', '53'),
(331, 59, '_menu_item_object', 'page'),
(332, 59, '_menu_item_target', ''),
(333, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(334, 59, '_menu_item_xfn', ''),
(335, 59, '_menu_item_url', ''),
(343, 61, '_form', '[text* your-subject placeholder \"Full Name\"]\n[text your-name placeholder \"Full Name\"]\n[tel* phone placeholder \"Phone Number\"]\n[email* your-email placeholder \"Email Address\"]\n[text* City placeholder \"City\"]\n[select* State \"State\" \"AL\" \"AK\" \"AZ\" \"AR\" \"CA\" \"CO\" \"CT\" \"DE\" \"FL\" \"GA\" \"HI\" \"ID\" \"IL\" \"IN\" \"IA\" \"KS\" \"KY\" \"LA\" \"ME\" \"MD\" \"MA\" \"MI\" \"MN\" \"MS\" \"MO\" \"MT\" \"NE\" \"NV\" \"NH\" \"NJ\" \"NM\" \"NY\" \"NC\" \"ND\" \"OH\" \"OK\" \"OR\" \"PA\" \"RI\" \"SC\" \"SD\" \"TN\" \"TX\" \"UT\" \"VT\" \"VA\" \"WA\" \"WV\" \"WI\" \"WY\"]\n[number* Zipcode placeholder \"Zipcode\"]\n[textarea Comments placeholder \"Questions / Comments\"]\n\n[submit \"Submit\"]'),
(344, 61, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:29:\"SFC Southbay \"[your-subject]\"\";s:6:\"sender\";s:29:\"[your-subject] <[your-email]>\";s:9:\"recipient\";s:24:\"pmartindesigns@gmail.com\";s:4:\"body\";s:177:\"From: [your-subject] <[your-email]>\nSubject: [your-email]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on SFC Southbay (http://localhost:8888/sfc)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(345, 61, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"SFC Southbay \"[your-subject]\"\";s:6:\"sender\";s:39:\"SFC Southbay <pmartindesigns@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:118:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on SFC Southbay (http://localhost:8888/sfc)\";s:18:\"additional_headers\";s:34:\"Reply-To: pmartindesigns@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(346, 61, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(347, 61, '_additional_settings', ''),
(348, 61, '_locale', 'en_US'),
(355, 62, 'is_submission', '1'),
(356, 62, 'usp-post-id', '62'),
(357, 62, 'user_submit_name', 'Patrick Martin'),
(358, 62, 'user_submit_email', 'pmartindesigns@gmail.com'),
(359, 62, 'user_submit_ip', '::1'),
(360, 62, '_edit_lock', '1527670615:1'),
(361, 64, 'is_submission', '1'),
(362, 64, 'usp-post-id', '64'),
(363, 64, 'user_submit_name', 'admin'),
(364, 64, 'user_submit_email', 'pmartindesigns@gmail.com'),
(365, 64, 'user_submit_ip', '::1'),
(366, 62, '_wp_trash_meta_status', 'pending'),
(367, 62, '_wp_trash_meta_time', '1527671212'),
(368, 62, '_wp_desired_post_slug', ''),
(369, 7, '_wp_trash_meta_status', 'pending'),
(370, 7, '_wp_trash_meta_time', '1527671215'),
(371, 7, '_wp_desired_post_slug', ''),
(372, 1, '_wp_trash_meta_status', 'publish'),
(373, 1, '_wp_trash_meta_time', '1527671217'),
(374, 1, '_wp_desired_post_slug', 'hello-world'),
(375, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(376, 5, '_wp_trash_meta_status', 'pending'),
(377, 5, '_wp_trash_meta_time', '1527671219'),
(378, 5, '_wp_desired_post_slug', ''),
(379, 64, '_edit_lock', '1527716888:1'),
(380, 64, '_edit_last', '1'),
(383, 67, 'is_submission', '1'),
(384, 67, 'usp-post-id', '67'),
(385, 67, 'user_submit_name', 'admin'),
(386, 67, 'user_submit_email', 'pmartindesigns@gmail.com'),
(387, 67, 'user_submit_ip', '::1'),
(388, 67, '_edit_lock', '1527716884:1'),
(389, 67, '_edit_last', '1'),
(394, 70, 'is_submission', '1'),
(395, 70, 'usp-post-id', '70'),
(396, 70, 'user_submit_name', 'admin'),
(397, 70, 'user_submit_email', 'pmartindesigns@gmail.com'),
(398, 70, 'user_submit_ip', '::1'),
(399, 72, 'is_submission', '1'),
(400, 72, 'usp-post-id', '72'),
(401, 72, 'user_submit_name', 'admin'),
(402, 72, 'user_submit_email', 'pmartindesigns@gmail.com'),
(403, 72, 'user_submit_ip', '::1'),
(404, 74, 'is_submission', '1'),
(405, 74, 'usp-post-id', '74'),
(406, 74, 'user_submit_name', 'admin'),
(407, 74, 'user_submit_email', 'pmartindesigns@gmail.com'),
(408, 74, 'user_submit_ip', '::1'),
(409, 74, '_edit_last', '1'),
(412, 74, '_edit_lock', '1527716879:1'),
(413, 72, '_edit_last', '1'),
(416, 72, '_edit_lock', '1527716874:1'),
(417, 70, '_edit_last', '1'),
(420, 70, '_edit_lock', '1527716929:1'),
(421, 76, '_email', 'pmartindesigns@gmail.com'),
(422, 76, '_name', 'admin'),
(423, 76, '_props', 'a:2:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";}'),
(424, 76, '_last_contacted', '2018-05-30 19:40:03'),
(425, 61, '_flamingo', 'a:1:{s:7:\"channel\";i:11;}'),
(426, 77, '_subject', '[your-subject]'),
(427, 77, '_from', '[your-name] <[your-email]>'),
(428, 77, '_from_name', '[your-name]'),
(429, 77, '_from_email', '[your-email]'),
(430, 77, '_field_first-name', 'Patrick'),
(431, 77, '_field_last-name', 'Martin'),
(432, 77, '_field_phone', '+1 562 810 4778'),
(433, 77, '_field_email', 'pmartindesigns@gmail.com'),
(434, 77, '_field_city', 'Cerritos'),
(435, 77, '_field_state', 'CA'),
(436, 77, '_field_zipcode', '90703'),
(437, 77, '_field_comments', ''),
(438, 77, '_fields', 'a:8:{s:10:\"first-name\";N;s:9:\"last-name\";N;s:5:\"phone\";N;s:5:\"email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(439, 77, '_meta', 'a:19:{s:13:\"serial_number\";i:1;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:15 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(440, 77, '_akismet', NULL),
(441, 77, '_consent', 'a:0:{}'),
(442, 78, '_subject', '[your-subject]'),
(443, 78, '_from', '[your-name] <[your-email]>'),
(444, 78, '_from_name', '[your-name]'),
(445, 78, '_from_email', '[your-email]'),
(446, 78, '_field_first-name', 'Patrick'),
(447, 78, '_field_last-name', 'Martin'),
(448, 78, '_field_phone', '+1 562 810 4778'),
(449, 78, '_field_email', 'pmartindesigns@gmail.com'),
(450, 78, '_field_city', 'Cerritos'),
(451, 78, '_field_state', 'CA'),
(452, 78, '_field_zipcode', '90703'),
(453, 78, '_field_comments', ''),
(454, 78, '_fields', 'a:8:{s:10:\"first-name\";N;s:9:\"last-name\";N;s:5:\"phone\";N;s:5:\"email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(455, 78, '_meta', 'a:19:{s:13:\"serial_number\";i:2;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:17 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(456, 78, '_akismet', NULL),
(457, 78, '_consent', 'a:0:{}'),
(458, 79, '_subject', '[your-subject]'),
(459, 79, '_from', '[your-name] <[your-email]>'),
(460, 79, '_from_name', '[your-name]'),
(461, 79, '_from_email', '[your-email]'),
(462, 79, '_field_first-name', 'Patrick'),
(463, 79, '_field_last-name', 'Martin'),
(464, 79, '_field_phone', '+1 562 810 4778'),
(465, 79, '_field_email', 'pmartindesigns@gmail.com'),
(466, 79, '_field_city', 'Cerritos'),
(467, 79, '_field_state', 'CA'),
(468, 79, '_field_zipcode', '90703'),
(469, 79, '_field_comments', ''),
(470, 79, '_fields', 'a:8:{s:10:\"first-name\";N;s:9:\"last-name\";N;s:5:\"phone\";N;s:5:\"email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(471, 79, '_meta', 'a:19:{s:13:\"serial_number\";i:3;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:18 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(472, 79, '_akismet', NULL),
(473, 79, '_consent', 'a:0:{}'),
(474, 79, '_wp_trash_meta_status', 'publish'),
(475, 79, '_wp_trash_meta_time', '1527707895'),
(476, 79, '_wp_desired_post_slug', 'your-subject-3'),
(477, 78, '_wp_trash_meta_status', 'publish'),
(478, 78, '_wp_trash_meta_time', '1527707895'),
(479, 78, '_wp_desired_post_slug', 'your-subject-2'),
(480, 77, '_wp_trash_meta_status', 'publish'),
(481, 77, '_wp_trash_meta_time', '1527707895'),
(482, 77, '_wp_desired_post_slug', 'your-subject'),
(483, 80, '_subject', 'Tester'),
(484, 80, '_from', '[your-name] <[your-email]>'),
(485, 80, '_from_name', '[your-name]'),
(486, 80, '_from_email', '[your-email]'),
(487, 80, '_field_your-subject', 'Tester'),
(488, 80, '_field_first-name', 'Patrick'),
(489, 80, '_field_last-name', 'Martin'),
(490, 80, '_field_phone', '+1 562 810 4778'),
(491, 80, '_field_email', 'pmartindesigns@gmail.com'),
(492, 80, '_field_city', 'Cerritos'),
(493, 80, '_field_state', 'CA'),
(494, 80, '_field_zipcode', '90703'),
(495, 80, '_field_comments', ''),
(496, 80, '_fields', 'a:9:{s:12:\"your-subject\";N;s:10:\"first-name\";N;s:9:\"last-name\";N;s:5:\"phone\";N;s:5:\"email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(497, 80, '_meta', 'a:19:{s:13:\"serial_number\";i:1;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:21 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(498, 80, '_akismet', NULL),
(499, 80, '_consent', 'a:0:{}'),
(501, 81, '_subject', 'Patrick Martin'),
(502, 81, '_from', '[your-name] <pmartindesigns@gmail.com>'),
(503, 81, '_from_name', '[your-name]'),
(504, 81, '_from_email', 'pmartindesigns@gmail.com'),
(505, 81, '_field_your-subject', 'Patrick Martin'),
(506, 81, '_field_phone', '+1 562 810 4778'),
(507, 81, '_field_your-email', 'pmartindesigns@gmail.com'),
(508, 81, '_field_city', 'Cerritos'),
(509, 81, '_field_state', 'CA'),
(510, 81, '_field_zipcode', '90703'),
(511, 81, '_field_comments', ''),
(512, 81, '_fields', 'a:7:{s:12:\"your-subject\";N;s:5:\"phone\";N;s:10:\"your-email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(513, 81, '_meta', 'a:19:{s:13:\"serial_number\";i:2;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:22 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(514, 81, '_akismet', NULL),
(515, 81, '_consent', 'a:0:{}'),
(516, 82, '_subject', 'Patrick Martin'),
(517, 82, '_from', '[your-name] <pmartindesigns@gmail.com>'),
(518, 82, '_from_name', '[your-name]'),
(519, 82, '_from_email', 'pmartindesigns@gmail.com'),
(520, 82, '_field_your-subject', 'Patrick Martin'),
(521, 82, '_field_phone', '+1 562 810 4778'),
(522, 82, '_field_your-email', 'pmartindesigns@gmail.com'),
(523, 82, '_field_city', 'Cerritos'),
(524, 82, '_field_state', 'CA'),
(525, 82, '_field_zipcode', '90703'),
(526, 82, '_field_comments', ''),
(527, 82, '_fields', 'a:7:{s:12:\"your-subject\";N;s:5:\"phone\";N;s:10:\"your-email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(528, 82, '_meta', 'a:19:{s:13:\"serial_number\";i:3;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:25 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(529, 82, '_akismet', NULL),
(530, 82, '_consent', 'a:0:{}'),
(531, 83, '_subject', 'Patrick Martin'),
(532, 83, '_from', '[your-name] <pmartindesigns@gmail.com>'),
(533, 83, '_from_name', '[your-name]'),
(534, 83, '_from_email', 'pmartindesigns@gmail.com'),
(535, 83, '_field_your-subject', 'Patrick Martin'),
(536, 83, '_field_phone', '+1 562 810 4778'),
(537, 83, '_field_your-email', 'pmartindesigns@gmail.com'),
(538, 83, '_field_city', 'Cerritos'),
(539, 83, '_field_state', 'CA'),
(540, 83, '_field_zipcode', '90703'),
(541, 83, '_field_comments', ''),
(542, 83, '_fields', 'a:7:{s:12:\"your-subject\";N;s:5:\"phone\";N;s:10:\"your-email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(543, 83, '_meta', 'a:19:{s:13:\"serial_number\";i:4;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:25 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(544, 83, '_akismet', NULL),
(545, 83, '_consent', 'a:0:{}'),
(546, 84, '_subject', 'Patrick Martinss'),
(547, 84, '_from', '[your-name] <pmartindesigns@gmail.com>'),
(548, 84, '_from_name', '[your-name]'),
(549, 84, '_from_email', 'pmartindesigns@gmail.com'),
(550, 84, '_field_your-subject', 'Patrick Martinss'),
(551, 84, '_field_phone', '+1 562 810 4778'),
(552, 84, '_field_your-email', 'pmartindesigns@gmail.com'),
(553, 84, '_field_city', 'Cerritos'),
(554, 84, '_field_state', 'CA'),
(555, 84, '_field_zipcode', '90703'),
(556, 84, '_field_comments', ''),
(557, 84, '_fields', 'a:7:{s:12:\"your-subject\";N;s:5:\"phone\";N;s:10:\"your-email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(558, 84, '_meta', 'a:19:{s:13:\"serial_number\";i:5;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:27 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(559, 84, '_akismet', NULL),
(560, 84, '_consent', 'a:0:{}'),
(561, 83, '_wp_trash_meta_status', 'publish'),
(562, 83, '_wp_trash_meta_time', '1527708481'),
(563, 83, '_wp_desired_post_slug', 'patrick-martin-3'),
(564, 82, '_wp_trash_meta_status', 'publish'),
(565, 82, '_wp_trash_meta_time', '1527708481'),
(566, 82, '_wp_desired_post_slug', 'patrick-martin-2'),
(567, 81, '_wp_trash_meta_status', 'publish'),
(568, 81, '_wp_trash_meta_time', '1527708481'),
(569, 81, '_wp_desired_post_slug', 'patrick-martin'),
(570, 80, '_wp_trash_meta_status', 'publish'),
(571, 80, '_wp_trash_meta_time', '1527708481'),
(572, 80, '_wp_desired_post_slug', 'tester'),
(575, 85, '_subject', 'I\'m Interested in learning2'),
(576, 85, '_from', 'Patrick Martin <pmartindesigns@gmail.com>'),
(577, 85, '_from_name', 'Patrick Martin'),
(578, 85, '_from_email', 'pmartindesigns@gmail.com'),
(579, 85, '_field_your-subject', 'I\'m Interested in learning2'),
(580, 85, '_field_your-name', 'Patrick Martin'),
(581, 85, '_field_phone', '+1 562 810 4778'),
(582, 85, '_field_your-email', 'pmartindesigns@gmail.com'),
(583, 85, '_field_city', 'Cerritos'),
(584, 85, '_field_state', 'CA'),
(585, 85, '_field_zipcode', '90703'),
(586, 85, '_field_comments', ''),
(587, 85, '_fields', 'a:8:{s:12:\"your-subject\";N;s:9:\"your-name\";N;s:5:\"phone\";N;s:10:\"your-email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(588, 85, '_meta', 'a:19:{s:13:\"serial_number\";i:2;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:33 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(589, 85, '_akismet', NULL),
(590, 85, '_consent', 'a:0:{}'),
(593, 86, '_subject', 'Patrick Martin'),
(594, 86, '_from', '<pmartindesigns@gmail.com>'),
(595, 86, '_from_name', ''),
(596, 86, '_from_email', 'pmartindesigns@gmail.com'),
(597, 86, '_field_your-subject', 'Patrick Martin'),
(598, 86, '_field_phone', '+1 562 810 4778'),
(599, 86, '_field_your-email', 'pmartindesigns@gmail.com'),
(600, 86, '_field_city', 'Cerritos'),
(601, 86, '_field_state', 'CA'),
(602, 86, '_field_zipcode', '90703'),
(603, 86, '_field_comments', ''),
(604, 86, '_field_your-name', ''),
(605, 86, '_fields', 'a:8:{s:12:\"your-subject\";N;s:5:\"phone\";N;s:10:\"your-email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;s:9:\"your-name\";N;}'),
(606, 86, '_meta', 'a:19:{s:13:\"serial_number\";i:3;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:34 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(607, 86, '_akismet', NULL),
(608, 86, '_consent', 'a:0:{}'),
(609, 85, '_wp_trash_meta_status', 'publish'),
(610, 85, '_wp_trash_meta_time', '1527709188'),
(611, 85, '_wp_desired_post_slug', 'im-interested-in-learning2'),
(612, 84, '_wp_trash_meta_status', 'publish'),
(613, 84, '_wp_trash_meta_time', '1527709188'),
(614, 84, '_wp_desired_post_slug', 'patrick-martinss'),
(615, 87, '_subject', 'Patrick Martin'),
(616, 87, '_from', '<pmartindesigns@gmail.com>'),
(617, 87, '_from_name', ''),
(618, 87, '_from_email', 'pmartindesigns@gmail.com'),
(619, 87, '_field_your-subject', 'Patrick Martin'),
(620, 87, '_field_phone', '+1 562 810 4778'),
(621, 87, '_field_your-email', 'pmartindesigns@gmail.com'),
(622, 87, '_field_city', 'Cerritos'),
(623, 87, '_field_state', 'CA'),
(624, 87, '_field_zipcode', '90703'),
(625, 87, '_field_comments', ''),
(626, 87, '_field_your-name', ''),
(627, 87, '_fields', 'a:8:{s:12:\"your-subject\";N;s:5:\"phone\";N;s:10:\"your-email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;s:9:\"your-name\";N;}'),
(628, 87, '_meta', 'a:19:{s:13:\"serial_number\";i:2;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:40 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(629, 87, '_akismet', NULL),
(630, 87, '_consent', 'a:0:{}'),
(631, 88, '_email', 'patrickmaxmartin@gmail.com'),
(632, 88, '_name', ''),
(633, 88, '_props', 'a:0:{}'),
(634, 88, '_last_contacted', '2018-05-30 19:40:34'),
(635, 89, '_subject', 'Patrick Martin'),
(636, 89, '_from', '<patrickmaxmartin@gmail.com>'),
(637, 89, '_from_name', ''),
(638, 89, '_from_email', 'patrickmaxmartin@gmail.com'),
(639, 89, '_field_your-subject', 'Patrick Martin'),
(640, 89, '_field_your-name', ''),
(641, 89, '_field_phone', '+1 562 810 4778'),
(642, 89, '_field_your-email', 'patrickmaxmartin@gmail.com'),
(643, 89, '_field_city', 'Cerritos'),
(644, 89, '_field_state', 'CA'),
(645, 89, '_field_zipcode', '90703'),
(646, 89, '_field_comments', ''),
(647, 89, '_fields', 'a:8:{s:12:\"your-subject\";N;s:9:\"your-name\";N;s:5:\"phone\";N;s:10:\"your-email\";N;s:4:\"City\";N;s:5:\"State\";N;s:7:\"Zipcode\";N;s:8:\"Comments\";N;}'),
(648, 89, '_meta', 'a:19:{s:13:\"serial_number\";i:3;s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:3:\"url\";s:30:\"http://localhost:8888/sfc/clp/\";s:4:\"date\";s:12:\"May 30, 2018\";s:4:\"time\";s:7:\"7:40 pm\";s:7:\"post_id\";s:2:\"42\";s:9:\"post_name\";s:3:\"clp\";s:10:\"post_title\";s:22:\"Christian Life Program\";s:8:\"post_url\";s:30:\"http://localhost:8888/sfc/clp/\";s:11:\"post_author\";s:5:\"admin\";s:17:\"post_author_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"site_title\";s:12:\"SFC Southbay\";s:16:\"site_description\";s:27:\"Just another WordPress site\";s:8:\"site_url\";s:25:\"http://localhost:8888/sfc\";s:16:\"site_admin_email\";s:24:\"pmartindesigns@gmail.com\";s:10:\"user_login\";s:5:\"admin\";s:10:\"user_email\";s:24:\"pmartindesigns@gmail.com\";s:17:\"user_display_name\";s:5:\"admin\";}'),
(649, 89, '_akismet', NULL),
(650, 89, '_consent', 'a:0:{}'),
(651, 87, '_wp_trash_meta_status', 'publish'),
(652, 87, '_wp_trash_meta_time', '1527709254'),
(653, 87, '_wp_desired_post_slug', 'patrick-martin-2'),
(654, 90, '_edit_last', '1'),
(655, 90, '_edit_lock', '1527969568:1'),
(656, 90, '_thumbnail_id', '14'),
(657, 90, '_gallery', 'a:10:{i:0;s:2:\"25\";i:1;s:2:\"18\";i:2;s:2:\"17\";i:3;s:2:\"16\";i:4;s:2:\"15\";i:5;s:2:\"14\";i:6;s:3:\"112\";i:7;s:3:\"119\";i:8;s:3:\"110\";i:9;s:3:\"108\";}'),
(658, 90, '_gallery_format', 'default'),
(659, 90, '_gallery_format_data', 'a:1:{s:7:\"default\";a:0:{}}'),
(664, 91, '_edit_last', '1'),
(665, 91, '_edit_lock', '1527720617:1'),
(672, 91, 'video_url', '1lyxU0Fhwuk'),
(673, 91, 'video_file', ''),
(676, 32, 'video_url', '7VYliXHBOZU'),
(677, 32, 'video_file', ''),
(678, 92, 'is_submission', '1'),
(679, 92, 'usp-post-id', '92'),
(680, 92, 'user_submit_name', 'admin'),
(681, 92, 'user_submit_email', 'patrickmaxmartin@gmail.com'),
(682, 92, 'user_submit_ip', '::1'),
(683, 92, '_edit_lock', '1527716900:1'),
(684, 92, '_edit_last', '1'),
(687, 94, 'is_submission', '1'),
(688, 94, 'usp-post-id', '94'),
(689, 94, 'user_submit_name', 'admin'),
(690, 94, 'user_submit_email', 'martinp0792@gmail.com'),
(691, 94, 'user_submit_ip', '::1'),
(704, 94, '_edit_last', '1'),
(705, 94, '_edit_lock', '1527717114:1'),
(718, 97, 'is_submission', '1'),
(719, 97, 'usp-post-id', '97'),
(720, 97, 'user_submit_name', 'admin'),
(721, 97, 'user_submit_email', 'sad@sl.com'),
(722, 97, 'user_submit_ip', '::1'),
(723, 97, '_edit_last', '1'),
(726, 97, '_edit_lock', '1527872106:1'),
(727, 99, '_edit_last', '1'),
(730, 99, 'video_url', '9z5BUE6J57s'),
(731, 99, 'video_file', ''),
(732, 99, '_edit_lock', '1527720238:1'),
(733, 100, '_edit_last', '1'),
(734, 100, 'field_5b0f22c7287f8', 'a:14:{s:3:\"key\";s:19:\"field_5b0f22c7287f8\";s:5:\"label\";s:8:\"Subtitle\";s:4:\"name\";s:8:\"subtitle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:54:\"This text shows up as a subtitle above the page title.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(735, 100, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(736, 100, 'position', 'normal'),
(737, 100, 'layout', 'no_box'),
(738, 100, 'hide_on_screen', ''),
(739, 100, '_edit_lock', '1527718887:1'),
(740, 101, 'subtitle', 'HELP US HELP OTHERS'),
(741, 101, '_subtitle', 'field_5b0f22c7287f8'),
(742, 44, 'subtitle', 'Help the Poor'),
(743, 44, '_subtitle', 'field_5b0f24c7c0713'),
(744, 102, 'subtitle', ''),
(745, 102, '_subtitle', 'field_5b0f22c7287f8'),
(746, 100, '_wp_trash_meta_status', 'publish'),
(747, 100, '_wp_trash_meta_time', '1527719066'),
(748, 100, '_wp_desired_post_slug', 'acf_page-fields'),
(749, 103, '_edit_last', '1'),
(750, 103, 'field_5b0f24c7c0713', 'a:14:{s:3:\"key\";s:19:\"field_5b0f24c7c0713\";s:5:\"label\";s:8:\"Subtitle\";s:4:\"name\";s:8:\"subtitle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:57:\"This text will be displayed above the current page title.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(752, 103, 'position', 'normal'),
(753, 103, 'layout', 'no_box'),
(754, 103, 'hide_on_screen', ''),
(755, 103, '_edit_lock', '1527719405:1'),
(756, 104, 'subtitle', 'HELP US HELP OTHERS'),
(757, 104, '_subtitle', 'field_5b0f24c7c0713'),
(758, 105, 'subtitle', 'JOIN THE SFC FAMILY'),
(759, 105, '_subtitle', 'field_5b0f24c7c0713'),
(760, 42, 'subtitle', 'Join Us'),
(761, 42, '_subtitle', 'field_5b0f24c7c0713'),
(762, 106, 'subtitle', 'BE A PRO-LIFE ADVOCATE'),
(763, 106, '_subtitle', 'field_5b0f24c7c0713'),
(764, 46, 'subtitle', 'Advocate for Life'),
(765, 46, '_subtitle', 'field_5b0f24c7c0713'),
(766, 107, 'subtitle', 'OFFER UP YOUR PRAYERS'),
(767, 107, '_subtitle', 'field_5b0f24c7c0713'),
(768, 55, 'subtitle', 'Offer Up Your Prayers'),
(769, 55, '_subtitle', 'field_5b0f24c7c0713'),
(770, 103, 'field_5b0f25fc16d51', 'a:11:{s:3:\"key\";s:19:\"field_5b0f25fc16d51\";s:5:\"label\";s:12:\"Header Image\";s:4:\"name\";s:12:\"header_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:81:\"This image will be displayed as a background image for the current page\'s header.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(771, 103, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(772, 108, '_wp_attached_file', '2018/05/bg-poor.png'),
(773, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1040;s:4:\"file\";s:19:\"2018/05/bg-poor.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bg-poor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bg-poor-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bg-poor-768x416.png\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"bg-poor-1024x555.png\";s:5:\"width\";i:1024;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(774, 109, 'subtitle', 'HELP US HELP OTHERS'),
(775, 109, '_subtitle', 'field_5b0f24c7c0713'),
(776, 109, 'header_image', '108'),
(777, 109, '_header_image', 'field_5b0f25fc16d51'),
(778, 44, 'header_image', '131'),
(779, 44, '_header_image', 'field_5b0f25fc16d51'),
(780, 110, '_wp_attached_file', '2018/05/bg-clp.png'),
(781, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:888;s:4:\"file\";s:18:\"2018/05/bg-clp.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bg-clp-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bg-clp-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"bg-clp-768x355.png\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"bg-clp-1024x474.png\";s:5:\"width\";i:1024;s:6:\"height\";i:474;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(782, 111, 'subtitle', 'JOIN THE SFC FAMILY'),
(783, 111, '_subtitle', 'field_5b0f24c7c0713'),
(784, 111, 'header_image', '110'),
(785, 111, '_header_image', 'field_5b0f25fc16d51'),
(786, 42, 'header_image', '133'),
(787, 42, '_header_image', 'field_5b0f25fc16d51');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(788, 112, '_wp_attached_file', '2018/05/bg-motherandchild.png'),
(789, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1040;s:4:\"file\";s:29:\"2018/05/bg-motherandchild.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bg-motherandchild-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"bg-motherandchild-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"bg-motherandchild-768x416.png\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"bg-motherandchild-1024x555.png\";s:5:\"width\";i:1024;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(790, 113, 'subtitle', 'BE A PRO-LIFE ADVOCATE'),
(791, 113, '_subtitle', 'field_5b0f24c7c0713'),
(792, 113, 'header_image', '112'),
(793, 113, '_header_image', 'field_5b0f25fc16d51'),
(794, 46, 'header_image', '139'),
(795, 46, '_header_image', 'field_5b0f25fc16d51'),
(796, 114, 'subtitle', 'ADVOCATE FOR LIFE'),
(797, 114, '_subtitle', 'field_5b0f24c7c0713'),
(798, 114, 'header_image', '112'),
(799, 114, '_header_image', 'field_5b0f25fc16d51'),
(800, 115, 'subtitle', 'JOIN US'),
(801, 115, '_subtitle', 'field_5b0f24c7c0713'),
(802, 115, 'header_image', '110'),
(803, 115, '_header_image', 'field_5b0f25fc16d51'),
(804, 116, 'subtitle', 'HELP THE POORT'),
(805, 116, '_subtitle', 'field_5b0f24c7c0713'),
(806, 116, 'header_image', '108'),
(807, 116, '_header_image', 'field_5b0f25fc16d51'),
(808, 117, 'subtitle', 'HELP THE POOR'),
(809, 117, '_subtitle', 'field_5b0f24c7c0713'),
(810, 117, 'header_image', '108'),
(811, 117, '_header_image', 'field_5b0f25fc16d51'),
(812, 118, '_edit_last', '1'),
(813, 118, 'field_5b0f292e3f29f', 'a:14:{s:3:\"key\";s:19:\"field_5b0f292e3f29f\";s:5:\"label\";s:18:\"Youtube Video Code\";s:4:\"name\";s:12:\"youtube_code\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:61:\"This code links to the youtube video that you want to render.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(814, 118, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"videos\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(815, 118, 'position', 'normal'),
(816, 118, 'layout', 'no_box'),
(817, 118, 'hide_on_screen', ''),
(818, 118, '_edit_lock', '1527720207:1'),
(819, 99, 'youtube_code', '9z5BUE6J57s'),
(820, 99, '_youtube_code', 'field_5b0f292e3f29f'),
(821, 32, 'youtube_code', 'rJn8T_47khc'),
(822, 32, '_youtube_code', 'field_5b0f292e3f29f'),
(823, 91, 'youtube_code', 'x08RNL-aaJQ'),
(824, 91, '_youtube_code', 'field_5b0f292e3f29f'),
(825, 119, '_wp_attached_file', '2018/05/alone-calm-faith-576926.jpg'),
(826, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4104;s:6:\"height\";i:2736;s:4:\"file\";s:35:\"2018/05/alone-calm-faith-576926.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"alone-calm-faith-576926-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"alone-calm-faith-576926-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"alone-calm-faith-576926-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"alone-calm-faith-576926-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(827, 120, 'subtitle', 'OFFER UP YOUR PRAYERS'),
(828, 120, '_subtitle', 'field_5b0f24c7c0713'),
(829, 120, 'header_image', '119'),
(830, 120, '_header_image', 'field_5b0f25fc16d51'),
(831, 55, 'header_image', '144'),
(832, 55, '_header_image', 'field_5b0f25fc16d51'),
(833, 121, 'subtitle', ''),
(834, 121, '_subtitle', 'field_5b0f24c7c0713'),
(835, 121, 'header_image', '110'),
(836, 121, '_header_image', 'field_5b0f25fc16d51'),
(837, 29, 'subtitle', ''),
(838, 29, '_subtitle', 'field_5b0f24c7c0713'),
(839, 29, 'header_image', '110'),
(840, 29, '_header_image', 'field_5b0f25fc16d51'),
(841, 122, '_edit_last', '1'),
(842, 123, 'subtitle', ''),
(843, 123, '_subtitle', 'field_5b0f24c7c0713'),
(844, 123, 'header_image', '18'),
(845, 123, '_header_image', 'field_5b0f25fc16d51'),
(846, 122, '_simcal_attach_calendar_id', '0'),
(847, 122, '_simcal_attach_calendar_position', 'after'),
(848, 122, 'subtitle', ''),
(849, 122, '_subtitle', 'field_5b0f24c7c0713'),
(850, 122, 'header_image', '18'),
(851, 122, '_header_image', 'field_5b0f25fc16d51'),
(852, 122, '_edit_lock', '1527831354:1'),
(853, 124, 'subtitle', ''),
(854, 124, '_subtitle', 'field_5b0f24c7c0713'),
(855, 124, 'header_image', '110'),
(856, 124, '_header_image', 'field_5b0f25fc16d51'),
(857, 125, '_wp_attached_file', '2018/06/responsive-lightbox-thumbnail.png'),
(858, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5120;s:6:\"height\";i:2880;s:4:\"file\";s:41:\"2018/06/responsive-lightbox-thumbnail.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"responsive-lightbox-thumbnail-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"responsive-lightbox-thumbnail-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"responsive-lightbox-thumbnail-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"responsive-lightbox-thumbnail-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(859, 126, '_rl_images_count', '10'),
(860, 126, '_edit_last', '1'),
(861, 126, '_edit_lock', '1527840415:1'),
(862, 126, '_rl_images', 'a:2:{s:5:\"media\";a:1:{s:11:\"attachments\";a:2:{s:3:\"ids\";a:10:{i:0;i:110;i:1;i:119;i:2;i:112;i:3;i:108;i:4;i:25;i:5;i:18;i:6;i:17;i:7;i:16;i:8;i:15;i:9;i:14;}s:7:\"exclude\";a:0:{}}}s:9:\"menu_item\";s:5:\"media\";}'),
(863, 126, '_rl_config', 'a:2:{s:9:\"basicgrid\";a:12:{s:4:\"size\";s:6:\"medium\";s:4:\"link\";s:4:\"file\";s:7:\"orderby\";s:10:\"menu_order\";s:5:\"order\";s:3:\"asc\";s:7:\"columns\";i:3;s:10:\"columns_lg\";i:4;s:10:\"columns_md\";i:3;s:10:\"columns_sm\";i:2;s:10:\"columns_xs\";i:1;s:6:\"gutter\";i:2;s:12:\"force_height\";b:0;s:10:\"row_height\";i:150;}s:9:\"menu_item\";s:9:\"basicgrid\";}'),
(864, 126, '_rl_design', 'a:2:{s:7:\"options\";a:10:{s:10:\"show_title\";s:6:\"global\";s:12:\"show_caption\";s:6:\"global\";s:9:\"show_icon\";s:1:\"0\";s:12:\"hover_effect\";s:1:\"0\";s:11:\"title_color\";s:7:\"#ffffff\";s:13:\"caption_color\";s:7:\"#cccccc\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";i:80;s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_width\";i:0;}s:9:\"menu_item\";s:7:\"options\";}'),
(865, 126, '_rl_paging', 'a:2:{s:7:\"options\";a:5:{s:10:\"pagination\";b:0;s:15:\"pagination_type\";s:5:\"paged\";s:19:\"pagination_position\";s:6:\"bottom\";s:15:\"images_per_page\";i:1;s:9:\"load_more\";s:13:\"automatically\";}s:9:\"menu_item\";s:7:\"options\";}'),
(866, 126, '_rl_lightbox', 'a:2:{s:7:\"options\";a:6:{s:15:\"lightbox_enable\";b:1;s:19:\"lightbox_image_size\";s:6:\"global\";s:26:\"lightbox_custom_size_width\";i:1024;s:27:\"lightbox_custom_size_height\";i:1024;s:20:\"lightbox_image_title\";s:6:\"global\";s:22:\"lightbox_image_caption\";s:6:\"global\";}s:9:\"menu_item\";s:7:\"options\";}'),
(867, 126, '_rl_misc', 'a:2:{s:7:\"options\";a:4:{s:22:\"gallery_title_position\";s:4:\"none\";s:28:\"gallery_description_position\";s:4:\"none\";s:19:\"gallery_description\";s:0:\"\";s:20:\"gallery_custom_class\";s:0:\"\";}s:9:\"menu_item\";s:7:\"options\";}'),
(868, 126, '_rl_featured_image_type', 'image'),
(869, 126, '_rl_featured_image', ''),
(873, 126, '_thumbnail_id', '125'),
(878, 129, '_edit_last', '1'),
(879, 129, '_edit_lock', '1527871866:1'),
(880, 129, 'rsg_galleryImages', 'a:10:{i:0;s:2:\"14\";i:1;s:3:\"119\";i:2;s:3:\"112\";i:3;s:3:\"110\";i:4;s:3:\"108\";i:5;s:2:\"25\";i:6;s:2:\"18\";i:7;s:2:\"17\";i:8;s:2:\"16\";i:9;s:2:\"15\";}'),
(881, 129, 'rsg_pretext', '  '),
(882, 129, 'rsg_aftertext', '  '),
(883, 129, 'rsg_width-size', 'a:1:{s:5:\"width\";s:3:\"100\";}'),
(884, 129, 'rsg_thumb-size-options', 'a:4:{s:7:\"orderby\";s:9:\"categoryD\";s:6:\"source\";s:6:\"medium\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:3:\"140\";}'),
(885, 129, 'rsg_colums', 'a:8:{s:9:\"autowidth\";s:4:\"auto\";s:6:\"colums\";s:1:\"3\";s:10:\"autowidth1\";s:4:\"auto\";s:7:\"colums1\";s:1:\"3\";s:10:\"autowidth2\";s:4:\"auto\";s:7:\"colums2\";s:1:\"2\";s:10:\"autowidth3\";s:4:\"auto\";s:7:\"colums3\";s:1:\"1\";}'),
(886, 129, 'rsg_radius', '5'),
(887, 129, 'rsg_horizontalSpaceBetweenBoxes', '15'),
(888, 129, 'rsg_verticalSpaceBetweenBoxes', '15'),
(889, 129, 'rsg_shadow', '1'),
(890, 129, 'rsg_shadow-options', 'a:4:{s:7:\"hshadow\";s:1:\"0\";s:7:\"vshadow\";s:1:\"5\";s:7:\"bshadow\";s:1:\"7\";s:5:\"color\";s:21:\"rgba(34, 25, 25, 0.4)\";}'),
(891, 129, 'rsg_hover-shadow-options', 'a:4:{s:7:\"hshadow\";s:1:\"1\";s:7:\"vshadow\";s:1:\"3\";s:7:\"bshadow\";s:1:\"3\";s:5:\"color\";s:21:\"rgba(34, 25, 25, 0.4)\";}'),
(892, 129, 'rsg_border-options', 'a:3:{s:5:\"width\";s:1:\"5\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:16:\"rgb(229, 64, 40)\";}'),
(893, 129, 'rsg_hover-border-options', 'a:3:{s:5:\"width\";s:1:\"5\";s:5:\"style\";s:5:\"solid\";s:5:\"color\";s:16:\"rgb(229, 64, 40)\";}'),
(894, 129, 'rsg_thumbClick', '0'),
(895, 129, 'rsg_hover', '1'),
(896, 129, 'rsg_background', 'rgba(7, 7, 7, 0.5)'),
(897, 129, 'rsg_overlayEffect', 'direction-aware-fade'),
(898, 129, 'rsg_showTitle', 'a:6:{s:7:\"enabled\";s:1:\"1\";s:8:\"fontBold\";s:4:\"bold\";s:8:\"fontSize\";s:2:\"12\";s:14:\"fontLineHeight\";s:3:\"100\";s:5:\"color\";s:18:\"rgb(255, 255, 255)\";s:10:\"colorHover\";s:18:\"rgb(255, 255, 255)\";}'),
(899, 129, 'rsg_linkIcon', 'a:8:{s:10:\"iconSelect\";s:7:\"fa-link\";s:8:\"fontSize\";s:2:\"20\";s:14:\"fontLineHeight\";s:3:\"100\";s:10:\"borderSize\";s:1:\"0\";s:5:\"color\";s:18:\"rgb(255, 255, 255)\";s:10:\"colorHover\";s:18:\"rgb(255, 255, 255)\";s:7:\"colorBg\";s:16:\"rgb(229, 64, 40)\";s:12:\"colorBgHover\";s:16:\"rgb(183, 55, 37)\";}'),
(900, 129, 'rsg_zoomIcon', 'a:9:{s:7:\"enabled\";s:1:\"1\";s:10:\"iconSelect\";s:14:\"fa-search-plus\";s:8:\"fontSize\";s:2:\"16\";s:14:\"fontLineHeight\";s:3:\"100\";s:10:\"borderSize\";s:1:\"2\";s:5:\"color\";s:18:\"rgb(255, 255, 255)\";s:10:\"colorHover\";s:18:\"rgb(255, 255, 255)\";s:7:\"colorBg\";s:17:\"rgb(13, 130, 241)\";s:12:\"colorBgHover\";s:15:\"rgb(6, 70, 130)\";}'),
(901, 129, 'rsg_showDesc', 'a:4:{s:8:\"fontSize\";s:2:\"24\";s:14:\"fontLineHeight\";s:3:\"100\";s:5:\"color\";s:12:\"rgb(0, 0, 0)\";s:10:\"colorHover\";s:12:\"rgb(0, 0, 0)\";}'),
(902, 129, 'rsg_desc_template', '  <div class=\"rbs-hover-title\">@TITLE@</div>\r\n<div class=\"rbs-hover-caption\">@CAPTION@</div>\r\n<div class=\"rbs-hover-text\">@DESC@</div>\r\n<div class=\"rbs-hover-more\"><a href=\"@LINK@\">Read more</a></div>\r\n'),
(903, 129, 'rsg_menu', '1'),
(904, 129, 'rsg_menuSelfImages', '1'),
(905, 129, 'rsg_menuRoot', '1'),
(906, 129, 'rsg_menuRootLabel', 'All'),
(907, 129, 'rsg_menuSelf', '1'),
(908, 129, 'rsg_buttonFill', 'border'),
(909, 129, 'rsg_buttonColor', 'red'),
(910, 129, 'rsg_buttonType', 'normal'),
(911, 129, 'rsg_buttonSize', 'normal'),
(912, 129, 'rsg_buttonAlign', 'left'),
(913, 129, 'rsg_paddingLeft', '5'),
(914, 129, 'rsg_paddingBottom', '10'),
(915, 129, 'rsg_searchColor', 'rgb(218, 139, 163)'),
(916, 129, 'rsg_searchLabel', 'search'),
(918, 129, 'rsg_boxesToLoadStart', '12'),
(919, 129, 'rsg_boxesToLoad', '8'),
(921, 129, 'rsg_loadingBgColor', 'rgb(255, 255, 255)'),
(922, 129, 'rsg_LoadingWord', 'Loading...'),
(923, 129, 'rsg_loadMoreWord', 'Load More'),
(924, 129, 'rsg_noMoreEntriesWord', 'No More Entries'),
(925, 129, 'rsg_polaroidSource', 'desc'),
(926, 129, 'rsg_polaroidBackground', 'rgb(255, 255, 255)'),
(927, 129, 'rsg_polaroidAlign', 'center'),
(928, 129, 'rsg_lightboxTitle', '1'),
(929, 129, 'rsg_lightboxSource', 'title'),
(930, 129, 'rsg_lightboxColor', 'rgb(243, 243, 243)'),
(931, 129, 'rsg_lightboxBackground', 'rgba(11, 11, 11, 0.8)'),
(932, 129, 'rsg_lightboxCounter', '1'),
(933, 129, 'rsg_lightboxCounterText', 'of'),
(934, 129, 'rsg_lightboxSwipe', '1'),
(935, 129, 'rsg_lightboxClose', '1'),
(936, 129, 'rsg_lightboxArrow', '1'),
(937, 129, 'rsg_lightboxDescSource', 'title'),
(938, 129, 'rsg_lightboxDescClass', 'light'),
(939, 129, 'rsg_lightboxSocialFacebook', '1'),
(940, 129, 'rsg_lightboxSocialTwitter', '1'),
(941, 129, 'rsg_lightboxSocialGoogleplus', '1'),
(942, 129, 'rsg_lightboxSocialPinterest', '1'),
(943, 129, 'rsg_lightboxSocialVK', '1'),
(944, 129, 'gallery_views_count', '6'),
(945, 129, 'rsg_options', '0'),
(946, 131, '_wp_attached_file', '2018/06/bg-poor.png'),
(947, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1040;s:4:\"file\";s:19:\"2018/06/bg-poor.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bg-poor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bg-poor-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bg-poor-768x416.png\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"bg-poor-1024x555.png\";s:5:\"width\";i:1024;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(948, 132, 'subtitle', 'HELP THE POOR'),
(949, 132, '_subtitle', 'field_5b0f24c7c0713'),
(950, 132, 'header_image', '131'),
(951, 132, '_header_image', 'field_5b0f25fc16d51'),
(952, 133, '_wp_attached_file', '2018/06/bg-clp-copy.png'),
(953, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:888;s:4:\"file\";s:23:\"2018/06/bg-clp-copy.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"bg-clp-copy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"bg-clp-copy-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"bg-clp-copy-768x355.png\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"bg-clp-copy-1024x474.png\";s:5:\"width\";i:1024;s:6:\"height\";i:474;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(954, 134, 'subtitle', 'JOIN US'),
(955, 134, '_subtitle', 'field_5b0f24c7c0713'),
(956, 134, 'header_image', '133'),
(957, 134, '_header_image', 'field_5b0f25fc16d51'),
(958, 135, '_wp_attached_file', '2018/06/bg-home-banner.jpg'),
(959, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:805;s:4:\"file\";s:26:\"2018/06/bg-home-banner.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bg-home-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"bg-home-banner-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"bg-home-banner-768x429.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:429;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"bg-home-banner-1024x572.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:572;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(960, 136, 'subtitle', ''),
(961, 136, '_subtitle', 'field_5b0f24c7c0713'),
(962, 136, 'header_image', '135'),
(963, 136, '_header_image', 'field_5b0f25fc16d51'),
(964, 53, 'subtitle', 'SFC'),
(965, 53, '_subtitle', 'field_5b0f24c7c0713'),
(966, 53, 'header_image', '154'),
(967, 53, '_header_image', 'field_5b0f25fc16d51'),
(968, 137, 'subtitle', 'SINGLES FOR CHRIST'),
(969, 137, '_subtitle', 'field_5b0f24c7c0713'),
(970, 137, 'header_image', '135'),
(971, 137, '_header_image', 'field_5b0f25fc16d51'),
(972, 138, 'subtitle', 'SFC'),
(973, 138, '_subtitle', 'field_5b0f24c7c0713'),
(974, 138, 'header_image', '135'),
(975, 138, '_header_image', 'field_5b0f25fc16d51'),
(976, 139, '_wp_attached_file', '2018/06/bg-motherandchild-copy.png'),
(977, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1040;s:4:\"file\";s:34:\"2018/06/bg-motherandchild-copy.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"bg-motherandchild-copy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"bg-motherandchild-copy-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"bg-motherandchild-copy-768x416.png\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"bg-motherandchild-copy-1024x555.png\";s:5:\"width\";i:1024;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(978, 140, 'subtitle', 'ADVOCATE FOR LIFE'),
(979, 140, '_subtitle', 'field_5b0f24c7c0713'),
(980, 140, 'header_image', '139'),
(981, 140, '_header_image', 'field_5b0f25fc16d51'),
(982, 141, 'subtitle', 'Help the Poor'),
(983, 141, '_subtitle', 'field_5b0f24c7c0713'),
(984, 141, 'header_image', '131'),
(985, 141, '_header_image', 'field_5b0f25fc16d51'),
(986, 142, 'subtitle', 'Join Us'),
(987, 142, '_subtitle', 'field_5b0f24c7c0713'),
(988, 142, 'header_image', '133'),
(989, 142, '_header_image', 'field_5b0f25fc16d51'),
(990, 143, 'subtitle', 'Advocate for Life'),
(991, 143, '_subtitle', 'field_5b0f24c7c0713'),
(992, 143, 'header_image', '139'),
(993, 143, '_header_image', 'field_5b0f25fc16d51'),
(994, 144, '_wp_attached_file', '2018/06/bg-prayer.jpeg'),
(995, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4104;s:6:\"height\";i:2736;s:4:\"file\";s:22:\"2018/06/bg-prayer.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"bg-prayer-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"bg-prayer-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"bg-prayer-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"bg-prayer-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(996, 145, 'subtitle', 'Offer Up Your Prayers'),
(997, 145, '_subtitle', 'field_5b0f24c7c0713'),
(998, 145, 'header_image', '144'),
(999, 145, '_header_image', 'field_5b0f25fc16d51'),
(1000, 146, '_edit_last', '1'),
(1001, 146, '_edit_lock', '1527971217:1'),
(1002, 147, '_edit_last', '1'),
(1003, 147, '_edit_lock', '1527971674:1'),
(1004, 147, '_gallery', 'a:6:{i:0;s:2:\"25\";i:1;s:2:\"18\";i:2;s:2:\"17\";i:3;s:2:\"16\";i:4;s:2:\"15\";i:5;s:2:\"14\";}'),
(1005, 147, '_gallery_format', 'default'),
(1006, 147, '_gallery_format_data', 'a:1:{s:7:\"default\";a:0:{}}'),
(1007, 148, '_wp_attached_file', '2018/06/conference-copy.jpg'),
(1008, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:4000;s:4:\"file\";s:27:\"2018/06/conference-copy.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"conference-copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"conference-copy-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"conference-copy-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"conference-copy-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"X-T2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1501923820\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"21.4\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:15:\"0.0166666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1009, 149, 'subtitle', 'SFC'),
(1010, 149, '_subtitle', 'field_5b0f24c7c0713'),
(1011, 149, 'header_image', '148'),
(1012, 149, '_header_image', 'field_5b0f25fc16d51'),
(1015, 151, 'subtitle', 'SFC'),
(1016, 151, '_subtitle', 'field_5b0f24c7c0713'),
(1017, 151, 'header_image', '150'),
(1018, 151, '_header_image', 'field_5b0f25fc16d51'),
(1019, 152, '_wp_attached_file', '2018/06/conference-copy-2.jpg'),
(1020, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4941;s:6:\"height\";i:3001;s:4:\"file\";s:29:\"2018/06/conference-copy-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"conference-copy-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"conference-copy-2-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"conference-copy-2-768x466.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"conference-copy-2-1024x622.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:622;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"X-T2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1501923820\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"21.4\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:15:\"0.0166666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1021, 153, 'subtitle', 'SFC'),
(1022, 153, '_subtitle', 'field_5b0f24c7c0713'),
(1023, 153, 'header_image', '152'),
(1024, 153, '_header_image', 'field_5b0f25fc16d51'),
(1025, 154, '_wp_attached_file', '2018/06/conference-copy-1.jpg'),
(1026, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4905;s:6:\"height\";i:4000;s:4:\"file\";s:29:\"2018/06/conference-copy-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"conference-copy-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"conference-copy-1-300x245.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"conference-copy-1-768x626.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"conference-copy-1-1024x835.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:835;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"X-T2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1501923820\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"21.4\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:15:\"0.0166666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1027, 155, 'subtitle', 'SFC'),
(1028, 155, '_subtitle', 'field_5b0f24c7c0713'),
(1029, 155, 'header_image', '154'),
(1030, 155, '_header_image', 'field_5b0f25fc16d51'),
(1031, 156, '_edit_last', '1'),
(1032, 156, '_edit_lock', '1528134292:1'),
(1033, 156, '_wp_old_slug', '156');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-20 04:18:38', '2018-05-20 04:18:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-05-30 09:06:57', '2018-05-30 09:06:57', '', 0, 'http://localhost:8888/sfc/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-20 04:18:38', '2018-05-20 04:18:38', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/sfc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-05-30 07:18:34', '2018-05-30 07:18:34', '', 0, 'http://localhost:8888/sfc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-20 04:18:38', '2018-05-20 04:18:38', '<h2>Who we are</h2><p>Our website address is: http://localhost:8888/sfc.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-05-30 07:18:39', '2018-05-30 07:18:39', '', 0, 'http://localhost:8888/sfc/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-05-30 09:06:59', '2018-05-30 09:06:59', 'test', 'test', '', 'trash', 'open', 'open', '', '__trashed-3', '', '', '2018-05-30 09:06:59', '2018-05-30 09:06:59', '', 0, 'http://localhost:8888/sfc/?p=5', 0, 'post', '', 0),
(6, 1, '2018-05-20 04:32:02', '2018-05-20 04:32:02', 'test', 'test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-05-20 04:32:02', '2018-05-20 04:32:02', '', 5, 'http://localhost:8888/sfc/2018/05/20/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-05-30 09:06:55', '2018-05-30 09:06:55', 'content', 'title', '', 'trash', 'open', 'open', '', '__trashed-2', '', '', '2018-05-30 09:06:55', '2018-05-30 09:06:55', '', 0, 'http://localhost:8888/sfc/?p=7', 0, 'post', '', 0),
(8, 1, '2018-05-20 04:33:17', '2018-05-20 04:33:17', 'content', 'title', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-05-20 04:33:17', '2018-05-20 04:33:17', '', 7, 'http://localhost:8888/sfc/2018/05/20/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-05-20 04:43:47', '2018-05-20 04:43:47', '<h3><strong>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</strong></h3>\r\nRichard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'When Life Gives You Lemons, Squeeze It', '', 'publish', 'closed', 'closed', '', 'test-article', '', '', '2018-05-30 03:39:14', '2018-05-30 03:39:14', '', 0, 'http://localhost:8888/sfc/?post_type=articles&#038;p=9', 0, 'articles', '', 0),
(13, 1, '2018-05-20 04:58:01', '2018-05-20 04:58:01', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-05-31 17:51:46', '2018-05-31 17:51:46', '', 0, 'http://localhost:8888/sfc/?p=13', 6, 'nav_menu_item', '', 0),
(14, 1, '2018-05-20 05:09:23', '2018-05-20 05:09:23', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-05-20 05:09:23', '2018-05-20 05:09:23', '', 9, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/1.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2018-05-20 05:09:25', '2018-05-20 05:09:25', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-05-20 05:09:25', '2018-05-20 05:09:25', '', 9, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/2.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2018-05-20 05:09:26', '2018-05-20 05:09:26', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-05-20 05:09:26', '2018-05-20 05:09:26', '', 9, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/3.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2018-05-20 05:09:28', '2018-05-20 05:09:28', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-05-20 05:09:28', '2018-05-20 05:09:28', '', 9, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/4.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2018-05-20 05:09:30', '2018-05-20 05:09:30', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-05-20 05:09:30', '2018-05-20 05:09:30', '', 9, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/5.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2018-05-20 05:15:53', '2018-05-20 05:15:53', '', 'LATEST NEWS', '', 'publish', 'closed', 'closed', '', 'latest-news', '', '', '2018-05-20 05:15:53', '2018-05-20 05:15:53', '', 0, 'http://localhost:8888/sfc/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-05-20 05:26:20', '2018-05-20 05:26:20', '', 'Media', '', 'publish', 'closed', 'closed', '', 'media', '', '', '2018-05-22 02:52:50', '2018-05-22 02:52:50', '', 0, 'http://localhost:8888/sfc/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-05-20 05:26:20', '2018-05-20 05:26:20', '', 'Media', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-05-20 05:26:20', '2018-05-20 05:26:20', '', 21, 'http://localhost:8888/sfc/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-05-20 05:31:33', '2018-05-20 05:31:33', '[calendar id=\"26\"] Test Content Album\r\n\r\n[post_gallery]', 'Event #1 Album', '', 'publish', 'closed', 'closed', '', 'event-1-album', '', '', '2018-05-22 02:53:00', '2018-05-22 02:53:00', '', 0, 'http://localhost:8888/sfc/?post_type=photos&#038;p=23', 0, 'photos', '', 0),
(24, 1, '2018-05-20 07:59:15', '2018-05-20 07:59:15', ' ', '', '', 'publish', 'closed', 'closed', '', 'media', '', '', '2018-05-31 17:51:46', '2018-05-31 17:51:46', '', 0, 'http://localhost:8888/sfc/?p=24', 5, 'nav_menu_item', '', 0),
(25, 1, '2018-05-21 16:30:53', '2018-05-21 16:30:53', '', 'pexels-photo-697244', '', 'inherit', 'open', 'closed', '', 'pexels-photo-697244', '', '', '2018-05-21 16:30:53', '2018-05-21 16:30:53', '', 9, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/pexels-photo-697244.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-05-22 02:49:40', '2018-05-22 02:49:40', '<h3><strong>[title]</strong></h3>\r\n[when]\r\n[location]\r\n\r\n[description]\r\n\r\n[link newwindow=\"yes\"]See more details[/link]', 'Test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2018-05-22 03:13:17', '2018-05-22 03:13:17', '', 0, 'http://localhost:8888/sfc/?post_type=calendar&#038;p=26', 0, 'calendar', '', 0),
(27, 1, '2018-05-22 02:50:33', '2018-05-22 02:50:33', '[calendar id=\"26\"]', 'Media', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-05-22 02:50:33', '2018-05-22 02:50:33', '', 21, 'http://localhost:8888/sfc/21-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-05-22 02:52:50', '2018-05-22 02:52:50', '', 'Media', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-05-22 02:52:50', '2018-05-22 02:52:50', '', 21, 'http://localhost:8888/sfc/21-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-05-22 03:06:48', '2018-05-22 03:06:48', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-06-01 05:42:38', '2018-06-01 05:42:38', '', 0, 'http://localhost:8888/sfc/?page_id=29', 0, 'page', '', 0),
(31, 1, '2018-05-22 03:06:48', '2018-05-22 03:06:48', '[calendar id=\"26\"]', 'Events', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-05-22 03:06:48', '2018-05-22 03:06:48', '', 29, 'http://localhost:8888/sfc/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-05-22 05:24:50', '2018-05-22 05:24:50', 'This is a description for the video above.', 'Jason Mraz - Can\'t Hold Out On Love', '', 'publish', 'closed', 'closed', '', 'test-video', '', '', '2018-05-30 22:46:51', '2018-05-30 22:46:51', '', 0, 'http://localhost:8888/sfc/?post_type=videos&#038;p=32', 0, 'videos', '', 0),
(33, 1, '2018-05-22 06:47:04', '2018-05-22 06:47:04', '', 'Here I Am To Worship', '', 'publish', 'open', 'closed', '', 'test-song', '', '', '2018-05-22 07:41:48', '2018-05-22 07:41:48', '', 0, 'http://localhost:8888/sfc/?post_type=crd_sheet_music&#038;p=33', 0, 'crd_sheet_music', '', 0),
(34, 1, '2018-05-22 07:45:34', '2018-05-22 07:45:34', '', 'Another Hope', '', 'publish', 'open', 'closed', '', 'another-hope', '', '', '2018-05-22 07:45:34', '2018-05-22 07:45:34', '', 0, 'http://localhost:8888/sfc/?post_type=crd_sheet_music&#038;p=34', 0, 'crd_sheet_music', '', 0),
(35, 1, '2018-05-22 07:45:49', '2018-05-22 07:45:49', '', 'A New Hope', '', 'publish', 'open', 'closed', '', 'a-new-hope', '', '', '2018-05-22 07:45:49', '2018-05-22 07:45:49', '', 0, 'http://localhost:8888/sfc/?post_type=crd_sheet_music&#038;p=35', 0, 'crd_sheet_music', '', 0),
(36, 1, '2018-05-22 07:46:04', '2018-05-22 07:46:04', '', 'Beautiful Day', '', 'publish', 'open', 'closed', '', 'beautiful-day', '', '', '2018-05-22 07:46:04', '2018-05-22 07:46:04', '', 0, 'http://localhost:8888/sfc/?post_type=crd_sheet_music&#038;p=36', 0, 'crd_sheet_music', '', 0),
(38, 1, '2018-05-30 03:13:59', '2018-05-30 03:13:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Gotta Catch Em All, Gotta Catch Em All', '', 'publish', 'closed', 'closed', '', 'gotta-catch-em-all-gotta-catch-em-all', '', '', '2018-05-30 03:14:18', '2018-05-30 03:14:18', '', 0, 'http://localhost:8888/sfc/?post_type=articles&#038;p=38', 0, 'articles', '', 0),
(39, 1, '2018-05-30 03:14:41', '2018-05-30 03:14:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Chase the Blues Away', '', 'publish', 'closed', 'closed', '', 'chase-the-blues-away', '', '', '2018-05-30 03:14:41', '2018-05-30 03:14:41', '', 0, 'http://localhost:8888/sfc/?post_type=articles&#038;p=39', 0, 'articles', '', 0),
(40, 1, '2018-05-30 03:15:10', '2018-05-30 03:15:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Importance is in the Eye of the Beholder', '', 'publish', 'closed', 'closed', '', 'importance-is-in-the-eye-of-the-beholder', '', '', '2018-05-30 03:43:39', '2018-05-30 03:43:39', '', 0, 'http://localhost:8888/sfc/?post_type=articles&#038;p=40', 0, 'articles', '', 0),
(41, 1, '2018-05-30 03:15:33', '2018-05-30 03:15:33', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'Change is but a Notion', '', 'publish', 'closed', 'closed', '', 'change-is-but-a-notion', '', '', '2018-05-30 18:34:28', '2018-05-30 18:34:28', '', 0, 'http://localhost:8888/sfc/?post_type=articles&#038;p=41', 0, 'articles', '', 0),
(42, 1, '2018-05-30 06:40:01', '2018-05-30 06:40:01', '', 'Christian Life Program', '', 'publish', 'closed', 'closed', '', 'clp', '', '', '2018-06-02 06:01:43', '2018-06-02 06:01:43', '', 0, 'http://localhost:8888/sfc/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-05-30 06:40:01', '2018-05-30 06:40:01', '', 'Christian Life Program', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-05-30 06:40:01', '2018-05-30 06:40:01', '', 42, 'http://localhost:8888/sfc/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-05-30 06:48:37', '2018-05-30 06:48:37', '', 'Answering the Cry of the Poor', '', 'publish', 'closed', 'closed', '', 'ancop', '', '', '2018-06-02 05:55:49', '2018-06-02 05:55:49', '', 0, 'http://localhost:8888/sfc/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-05-30 06:48:37', '2018-05-30 06:48:37', '', 'Answering the Cry of the Poor', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-30 06:48:37', '2018-05-30 06:48:37', '', 44, 'http://localhost:8888/sfc/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-05-30 06:53:33', '2018-05-30 06:53:33', '', 'Gift of Life', '', 'publish', 'closed', 'closed', '', 'gift-of-life', '', '', '2018-06-02 06:02:21', '2018-06-02 06:02:21', '', 0, 'http://localhost:8888/sfc/?page_id=46', 0, 'page', '', 0),
(47, 1, '2018-05-30 06:53:33', '2018-05-30 06:53:33', '', 'Gift of Life', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-05-30 06:53:33', '2018-05-30 06:53:33', '', 46, 'http://localhost:8888/sfc/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-05-30 07:14:30', '2018-05-30 07:14:30', '', 'Advocate for Life', '', 'publish', 'closed', 'closed', '', '48', '', '', '2018-05-31 17:51:46', '2018-05-31 17:51:46', '', 0, 'http://localhost:8888/sfc/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2018-05-30 07:14:29', '2018-05-30 07:14:29', '', 'Help the Poor', '', 'publish', 'closed', 'closed', '', 'ancop', '', '', '2018-05-31 17:51:46', '2018-05-31 17:51:46', '', 0, 'http://localhost:8888/sfc/?p=49', 3, 'nav_menu_item', '', 0),
(50, 1, '2018-05-30 07:14:29', '2018-05-30 07:14:29', '', 'Join Us', '', 'publish', 'closed', 'closed', '', 'clp', '', '', '2018-05-31 17:51:46', '2018-05-31 17:51:46', '', 0, 'http://localhost:8888/sfc/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2018-05-30 07:18:34', '2018-05-30 07:18:34', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/sfc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-30 07:18:34', '2018-05-30 07:18:34', '', 2, 'http://localhost:8888/sfc/2-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-05-30 07:18:39', '2018-05-30 07:18:39', '<h2>Who we are</h2><p>Our website address is: http://localhost:8888/sfc.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-05-30 07:18:39', '2018-05-30 07:18:39', '', 3, 'http://localhost:8888/sfc/3-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-05-30 07:18:57', '2018-05-30 07:18:57', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-06-02 22:12:19', '2018-06-02 22:12:19', '', 0, 'http://localhost:8888/sfc/?page_id=53', 0, 'page', '', 0),
(54, 1, '2018-05-30 07:18:57', '2018-05-30 07:18:57', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-05-30 07:18:57', '2018-05-30 07:18:57', '', 53, 'http://localhost:8888/sfc/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-05-30 07:29:32', '2018-05-30 07:29:32', '', 'Prayer Intentions', '', 'publish', 'closed', 'closed', '', 'prayers', '', '', '2018-06-02 06:41:24', '2018-06-02 06:41:24', '', 0, 'http://localhost:8888/sfc/?page_id=55', 0, 'page', '', 0),
(56, 1, '2018-05-30 07:29:32', '2018-05-30 07:29:32', '', 'Prayers', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-05-30 07:29:32', '2018-05-30 07:29:32', '', 55, 'http://localhost:8888/sfc/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-05-30 07:30:13', '2018-05-30 07:30:13', '', 'Prayer Intentions', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-05-30 07:30:13', '2018-05-30 07:30:13', '', 55, 'http://localhost:8888/sfc/55-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-05-30 07:34:52', '2018-05-30 07:34:52', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2018-05-31 17:51:46', '2018-05-31 17:51:46', '', 0, 'http://localhost:8888/sfc/?p=59', 1, 'nav_menu_item', '', 0),
(61, 1, '2018-05-30 08:18:07', '2018-05-30 08:18:07', '[text* your-subject placeholder \"Full Name\"]\r\n[text your-name placeholder \"Full Name\"]\r\n[tel* phone placeholder \"Phone Number\"]\r\n[email* your-email placeholder \"Email Address\"]\r\n[text* City placeholder \"City\"]\r\n[select* State \"State\" \"AL\" \"AK\" \"AZ\" \"AR\" \"CA\" \"CO\" \"CT\" \"DE\" \"FL\" \"GA\" \"HI\" \"ID\" \"IL\" \"IN\" \"IA\" \"KS\" \"KY\" \"LA\" \"ME\" \"MD\" \"MA\" \"MI\" \"MN\" \"MS\" \"MO\" \"MT\" \"NE\" \"NV\" \"NH\" \"NJ\" \"NM\" \"NY\" \"NC\" \"ND\" \"OH\" \"OK\" \"OR\" \"PA\" \"RI\" \"SC\" \"SD\" \"TN\" \"TX\" \"UT\" \"VT\" \"VA\" \"WA\" \"WV\" \"WI\" \"WY\"]\r\n[number* Zipcode placeholder \"Zipcode\"]\r\n[textarea Comments placeholder \"Questions / Comments\"]\r\n\r\n[submit \"Submit\"]\n1\nSFC Southbay \"[your-subject]\"\n[your-subject] <[your-email]>\npmartindesigns@gmail.com\nFrom: [your-subject] <[your-email]>\r\nSubject: [your-email]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on SFC Southbay (http://localhost:8888/sfc)\nReply-To: [your-email]\n\n\n\n\nSFC Southbay \"[your-subject]\"\nSFC Southbay <pmartindesigns@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on SFC Southbay (http://localhost:8888/sfc)\nReply-To: pmartindesigns@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'CLP Entries', '', 'publish', 'closed', 'closed', '', 'clp-entries', '', '', '2018-05-30 19:52:21', '2018-05-30 19:52:21', '', 0, 'http://localhost:8888/sfc/?post_type=wpcf7_contact_form&#038;p=61', 0, 'wpcf7_contact_form', '', 0),
(62, 1, '2018-05-30 09:06:52', '2018-05-30 09:06:52', 'test', 'User Submitted Post', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-05-30 09:06:52', '2018-05-30 09:06:52', '', 0, 'http://localhost:8888/sfc/?p=62', 0, 'post', '', 0),
(63, 1, '2018-05-30 08:59:01', '2018-05-30 08:59:01', 'test', 'User Submitted Post', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-05-30 08:59:01', '2018-05-30 08:59:01', '', 62, 'http://localhost:8888/sfc/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-05-30 09:09:25', '2018-05-30 09:09:25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut .', 'James', '', 'publish', 'open', 'open', '', 'james', '', '', '2018-05-30 21:48:08', '2018-05-30 21:48:08', '', 0, 'http://localhost:8888/sfc/?p=64', 0, 'post', '', 0),
(65, 1, '2018-05-30 09:06:40', '2018-05-30 09:06:40', 'I pray for love.', 'James', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-05-30 09:06:40', '2018-05-30 09:06:40', '', 64, 'http://localhost:8888/sfc/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-05-30 09:06:57', '2018-05-30 09:06:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-30 09:06:57', '2018-05-30 09:06:57', '', 1, 'http://localhost:8888/sfc/1-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-05-30 09:14:43', '2018-05-30 09:14:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Samson', '', 'publish', 'open', 'open', '', 'samson', '', '', '2018-05-30 21:48:04', '2018-05-30 21:48:04', '', 0, 'http://localhost:8888/sfc/?p=67', 0, 'post', '', 0),
(68, 1, '2018-05-30 09:14:34', '2018-05-30 09:14:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Samson', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-05-30 09:14:34', '2018-05-30 09:14:34', '', 67, 'http://localhost:8888/sfc/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-05-30 09:15:01', '2018-05-30 09:15:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut .', 'James', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-05-30 09:15:01', '2018-05-30 09:15:01', '', 64, 'http://localhost:8888/sfc/64-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-05-30 09:16:38', '2018-05-30 09:16:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in ', 'Levi', '', 'publish', 'open', 'open', '', 'levi', '', '', '2018-05-30 21:48:49', '2018-05-30 21:48:49', '', 0, 'http://localhost:8888/sfc/?p=70', 0, 'post', '', 0),
(71, 1, '2018-05-30 09:16:38', '2018-05-30 09:16:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in ', 'Levi', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-05-30 09:16:38', '2018-05-30 09:16:38', '', 70, 'http://localhost:8888/sfc/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-05-30 09:16:52', '2018-05-30 09:16:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in ', 'Patrick', '', 'publish', 'open', 'open', '', 'patrick', '', '', '2018-05-30 21:47:54', '2018-05-30 21:47:54', '', 0, 'http://localhost:8888/sfc/?p=72', 0, 'post', '', 0),
(73, 1, '2018-05-30 09:16:52', '2018-05-30 09:16:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in ', 'Patrick', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-05-30 09:16:52', '2018-05-30 09:16:52', '', 72, 'http://localhost:8888/sfc/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-05-30 09:17:11', '2018-05-30 09:17:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in ', 'Andrea', '', 'publish', 'open', 'open', '', 'andrea', '', '', '2018-05-30 21:47:59', '2018-05-30 21:47:59', '', 0, 'http://localhost:8888/sfc/?p=74', 0, 'post', '', 0),
(75, 1, '2018-05-30 09:17:11', '2018-05-30 09:17:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in ', 'Andrea', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-05-30 09:17:11', '2018-05-30 09:17:11', '', 74, 'http://localhost:8888/sfc/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-05-30 19:40:03', '2018-05-30 19:40:03', 'pmartindesigns@gmail.com\nadmin', 'pmartindesigns@gmail.com', '', 'publish', 'closed', 'closed', '', 'pmartindesigns-gmail-com', '', '', '2018-05-30 19:40:03', '2018-05-30 19:40:03', '', 0, 'http://localhost:8888/sfc/pmartindesigns-gmail-com/', 0, 'flamingo_contact', '', 0),
(77, 1, '2018-05-30 19:15:48', '2018-05-30 19:15:48', 'Patrick\nMartin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', '[your-subject]', '', 'trash', 'closed', 'closed', '', 'your-subject__trashed', '', '', '2018-05-30 19:18:15', '2018-05-30 19:18:15', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=77', 0, 'flamingo_inbound', '', 0),
(78, 1, '2018-05-30 19:17:48', '2018-05-30 19:17:48', 'Patrick\nMartin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', '[your-subject]', '', 'trash', 'closed', 'closed', '', 'your-subject-2__trashed', '', '', '2018-05-30 19:18:15', '2018-05-30 19:18:15', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=78', 0, 'flamingo_inbound', '', 0),
(79, 1, '2018-05-30 19:18:04', '2018-05-30 19:18:04', 'Patrick\nMartin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', '[your-subject]', '', 'trash', 'closed', 'closed', '', 'your-subject-3__trashed', '', '', '2018-05-30 19:18:15', '2018-05-30 19:18:15', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=79', 0, 'flamingo_inbound', '', 0),
(80, 1, '2018-05-30 19:21:20', '2018-05-30 19:21:20', 'Tester\nPatrick\nMartin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', 'Tester', '', 'trash', 'closed', 'closed', '', 'tester__trashed', '', '', '2018-05-30 19:28:01', '2018-05-30 19:28:01', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=80', 0, 'flamingo_inbound', '', 0),
(81, 1, '2018-05-30 19:22:20', '2018-05-30 19:22:20', 'Patrick Martin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', 'Patrick Martin', '', 'trash', 'closed', 'closed', '', 'patrick-martin__trashed', '', '', '2018-05-30 19:28:01', '2018-05-30 19:28:01', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=81', 0, 'flamingo_inbound', '', 0),
(82, 1, '2018-05-30 19:25:37', '2018-05-30 19:25:37', 'Patrick Martin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', 'Patrick Martin', '', 'trash', 'closed', 'closed', '', 'patrick-martin-2__trashed', '', '', '2018-05-30 19:28:01', '2018-05-30 19:28:01', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=82', 0, 'flamingo_inbound', '', 0),
(83, 1, '2018-05-30 19:25:40', '2018-05-30 19:25:40', 'Patrick Martin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', 'Patrick Martin', '', 'trash', 'closed', 'closed', '', 'patrick-martin-3__trashed', '', '', '2018-05-30 19:28:01', '2018-05-30 19:28:01', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=83', 0, 'flamingo_inbound', '', 0),
(84, 1, '2018-05-30 19:27:53', '2018-05-30 19:27:53', 'Patrick Martinss\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', 'Patrick Martinss', '', 'trash', 'closed', 'closed', '', 'patrick-martinss__trashed', '', '', '2018-05-30 19:39:48', '2018-05-30 19:39:48', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=84', 0, 'flamingo_inbound', '', 0),
(85, 1, '2018-05-30 19:33:08', '2018-05-30 19:33:08', 'I\'m Interested in learning2\nPatrick Martin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', 'I\'m Interested in learning2', '', 'trash', 'closed', 'closed', '', 'im-interested-in-learning2__trashed', '', '', '2018-05-30 19:39:48', '2018-05-30 19:39:48', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=85', 0, 'flamingo_inbound', '', 0),
(86, 1, '2018-05-30 19:34:25', '2018-05-30 19:34:25', 'Patrick Martin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', 'Patrick Martin', '', 'publish', 'closed', 'closed', '', 'patrick-martin', '', '', '2018-05-30 19:34:25', '2018-05-30 19:34:25', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&p=86', 0, 'flamingo_inbound', '', 0),
(87, 1, '2018-05-30 19:40:03', '2018-05-30 19:40:03', 'Patrick Martin\n+1 562 810 4778\npmartindesigns@gmail.com\nCerritos\nCA\n90703', 'Patrick Martin', '', 'trash', 'closed', 'closed', '', 'patrick-martin-2__trashed-2', '', '', '2018-05-30 19:40:54', '2018-05-30 19:40:54', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&#038;p=87', 0, 'flamingo_inbound', '', 0),
(88, 1, '2018-05-30 19:40:34', '2018-05-30 19:40:34', 'patrickmaxmartin@gmail.com', 'patrickmaxmartin@gmail.com', '', 'publish', 'closed', 'closed', '', 'patrickmaxmartin-gmail-com', '', '', '2018-05-30 19:40:34', '2018-05-30 19:40:34', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_contact&p=88', 0, 'flamingo_contact', '', 0),
(89, 1, '2018-05-30 19:40:34', '2018-05-30 19:40:34', 'Patrick Martin\n+1 562 810 4778\npatrickmaxmartin@gmail.com\nCerritos\nCA\n90703', 'Patrick Martin', '', 'publish', 'closed', 'closed', '', 'patrick-martin-3', '', '', '2018-05-30 19:40:34', '2018-05-30 19:40:34', '', 0, 'http://localhost:8888/sfc/?post_type=flamingo_inbound&p=89', 0, 'flamingo_inbound', '', 0),
(90, 1, '2018-05-30 20:24:08', '2018-05-30 20:24:08', '', 'Christian Life Program 2018', '', 'publish', 'closed', 'closed', '', 'christian-life-program-2018', '', '', '2018-06-02 19:23:49', '2018-06-02 19:23:49', '', 0, 'http://localhost:8888/sfc/?post_type=photos&#038;p=90', 0, 'photos', '', 0),
(91, 1, '2018-05-30 20:42:26', '2018-05-30 20:42:26', '', 'Jason Mraz Serenades Patient at Children\'s of Alabama', '', 'publish', 'closed', 'closed', '', 'another-video', '', '', '2018-05-30 22:47:18', '2018-05-30 22:47:18', '', 0, 'http://localhost:8888/sfc/?post_type=videos&#038;p=91', 0, 'videos', '', 0),
(92, 1, '2018-05-30 21:33:23', '2018-05-30 21:33:23', 'I pray for my mom who is currently sick at the moment. Please also pray for my friend who is out of town right now, that he may always be safe. I pray for my mom who is currently sick at the moment. Please also pray for my friend who is out of town right now, that he may always be safe. I pray for my mom who is currently sick at the moment. Please also pray for my friend who is out of town right now, that he may always be safe.', 'Angel Diaz', '', 'publish', 'open', 'open', '', 'angel-diaz', '', '', '2018-05-30 21:48:19', '2018-05-30 21:48:19', '', 0, 'http://localhost:8888/sfc/?p=92', 0, 'post', '', 0),
(93, 1, '2018-05-30 21:33:13', '2018-05-30 21:33:13', 'I pray for my mom who is currently sick at the moment. Please also pray for my friend who is out of town right now, that he may always be safe. I pray for my mom who is currently sick at the moment. Please also pray for my friend who is out of town right now, that he may always be safe. I pray for my mom who is currently sick at the moment. Please also pray for my friend who is out of town right now, that he may always be safe.', 'Angel Diaz', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-05-30 21:33:13', '2018-05-30 21:33:13', '', 92, 'http://localhost:8888/sfc/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-05-30 21:46:37', '2018-05-30 21:46:37', 'I pray for you, bro.', 'Lance', '', 'publish', 'open', 'open', '', 'lance', '', '', '2018-05-30 21:51:54', '2018-05-30 21:51:54', '', 0, 'http://localhost:8888/sfc/?p=94', 0, 'post', '', 0),
(95, 1, '2018-05-30 21:46:37', '2018-05-30 21:46:37', 'I pray for you, bro.', 'Patrick', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-05-30 21:46:37', '2018-05-30 21:46:37', '', 94, 'http://localhost:8888/sfc/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-05-30 21:48:27', '2018-05-30 21:48:27', 'I pray for you, bro.', 'Lance', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-05-30 21:48:27', '2018-05-30 21:48:27', '', 94, 'http://localhost:8888/sfc/94-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-05-30 21:55:49', '2018-05-30 21:55:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Max', '', 'publish', 'open', 'open', '', 'max', '', '', '2018-06-01 08:10:15', '2018-06-01 08:10:15', '', 0, 'http://localhost:8888/sfc/?p=97', 0, 'post', '', 0),
(98, 1, '2018-05-30 21:55:49', '2018-05-30 21:55:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Max', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-05-30 21:55:49', '2018-05-30 21:55:49', '', 97, 'http://localhost:8888/sfc/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-05-30 21:58:02', '2018-05-30 21:58:02', '', 'Jason Mraz sings to celebrate new SPARC building', '', 'publish', 'closed', 'closed', '', 'jason-mraz-sings-to-celebrate-new-sparc-building', '', '', '2018-05-30 22:46:08', '2018-05-30 22:46:08', '', 0, 'http://localhost:8888/sfc/?post_type=videos&#038;p=99', 0, 'videos', '', 0),
(100, 1, '2018-05-30 22:18:59', '2018-05-30 22:18:59', '', 'Page Fields', '', 'trash', 'closed', 'closed', '', 'acf_page-fields__trashed', '', '', '2018-05-30 22:24:26', '2018-05-30 22:24:26', '', 0, 'http://localhost:8888/sfc/?post_type=acf&#038;p=100', 0, 'acf', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 1, '2018-05-30 22:20:22', '2018-05-30 22:20:22', '', 'Answering the Cry of the Poor', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-30 22:20:22', '2018-05-30 22:20:22', '', 44, 'http://localhost:8888/sfc/44-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-05-30 22:22:50', '2018-05-30 22:22:50', '', 'Answering the Cry of the Poor', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-30 22:22:50', '2018-05-30 22:22:50', '', 44, 'http://localhost:8888/sfc/44-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-05-30 22:25:47', '2018-05-30 22:25:47', '', 'Page Fields', '', 'publish', 'closed', 'closed', '', 'acf_page-fields', '', '', '2018-05-30 22:32:22', '2018-05-30 22:32:22', '', 0, 'http://localhost:8888/sfc/?post_type=acf&#038;p=103', 0, 'acf', '', 0),
(104, 1, '2018-05-30 22:25:59', '2018-05-30 22:25:59', '', 'Answering the Cry of the Poor', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-30 22:25:59', '2018-05-30 22:25:59', '', 44, 'http://localhost:8888/sfc/44-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-05-30 22:28:40', '2018-05-30 22:28:40', '', 'Christian Life Program', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-05-30 22:28:40', '2018-05-30 22:28:40', '', 42, 'http://localhost:8888/sfc/42-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-05-30 22:28:56', '2018-05-30 22:28:56', '', 'Gift of Life', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-05-30 22:28:56', '2018-05-30 22:28:56', '', 46, 'http://localhost:8888/sfc/46-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-05-30 22:29:50', '2018-05-30 22:29:50', '', 'Prayer Intentions', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-05-30 22:29:50', '2018-05-30 22:29:50', '', 55, 'http://localhost:8888/sfc/55-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-05-30 22:33:06', '2018-05-30 22:33:06', '', 'bg-poor', '', 'inherit', 'open', 'closed', '', 'bg-poor', '', '', '2018-05-30 22:33:06', '2018-05-30 22:33:06', '', 44, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/bg-poor.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2018-05-30 22:33:16', '2018-05-30 22:33:16', '', 'Answering the Cry of the Poor', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-30 22:33:16', '2018-05-30 22:33:16', '', 44, 'http://localhost:8888/sfc/44-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-05-30 22:37:08', '2018-05-30 22:37:08', '', 'bg-clp', '', 'inherit', 'open', 'closed', '', 'bg-clp', '', '', '2018-05-30 22:37:08', '2018-05-30 22:37:08', '', 42, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/bg-clp.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2018-05-30 22:37:14', '2018-05-30 22:37:14', '', 'Christian Life Program', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-05-30 22:37:14', '2018-05-30 22:37:14', '', 42, 'http://localhost:8888/sfc/42-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-05-30 22:37:48', '2018-05-30 22:37:48', '', 'bg-motherandchild', '', 'inherit', 'open', 'closed', '', 'bg-motherandchild', '', '', '2018-05-30 22:37:48', '2018-05-30 22:37:48', '', 46, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/bg-motherandchild.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2018-05-30 22:37:53', '2018-05-30 22:37:53', '', 'Gift of Life', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-05-30 22:37:53', '2018-05-30 22:37:53', '', 46, 'http://localhost:8888/sfc/46-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-05-30 22:38:13', '2018-05-30 22:38:13', '', 'Gift of Life', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-05-30 22:38:13', '2018-05-30 22:38:13', '', 46, 'http://localhost:8888/sfc/46-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-05-30 22:38:24', '2018-05-30 22:38:24', '', 'Christian Life Program', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-05-30 22:38:24', '2018-05-30 22:38:24', '', 42, 'http://localhost:8888/sfc/42-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-05-30 22:38:33', '2018-05-30 22:38:33', '', 'Answering the Cry of the Poor', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-30 22:38:33', '2018-05-30 22:38:33', '', 44, 'http://localhost:8888/sfc/44-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-05-30 22:38:39', '2018-05-30 22:38:39', '', 'Answering the Cry of the Poor', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-30 22:38:39', '2018-05-30 22:38:39', '', 44, 'http://localhost:8888/sfc/44-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-05-30 22:44:45', '2018-05-30 22:44:45', '', 'Video Fields', '', 'publish', 'closed', 'closed', '', 'acf_video-fields', '', '', '2018-05-30 22:44:45', '2018-05-30 22:44:45', '', 0, 'http://localhost:8888/sfc/?post_type=acf&#038;p=118', 0, 'acf', '', 0),
(119, 1, '2018-05-31 07:55:00', '2018-05-31 07:55:00', '', 'alone-calm-faith-576926', '', 'inherit', 'open', 'closed', '', 'alone-calm-faith-576926', '', '', '2018-05-31 07:55:00', '2018-05-31 07:55:00', '', 55, 'http://localhost:8888/sfc/wp-content/uploads/2018/05/alone-calm-faith-576926.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2018-05-31 07:55:06', '2018-05-31 07:55:06', '', 'Prayer Intentions', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-05-31 07:55:06', '2018-05-31 07:55:06', '', 55, 'http://localhost:8888/sfc/55-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-06-01 05:36:53', '2018-06-01 05:36:53', '[calendar id=\"26\"]', 'Events', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-01 05:36:53', '2018-06-01 05:36:53', '', 29, 'http://localhost:8888/sfc/29-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-06-01 05:37:41', '2018-06-01 05:37:41', '', 'testadsa', '', 'publish', 'closed', 'closed', '', 'testadsa', '', '', '2018-06-01 05:37:41', '2018-06-01 05:37:41', '', 0, 'http://localhost:8888/sfc/?page_id=122', 0, 'page', '', 0),
(123, 1, '2018-06-01 05:37:41', '2018-06-01 05:37:41', '', 'testadsa', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2018-06-01 05:37:41', '2018-06-01 05:37:41', '', 122, 'http://localhost:8888/sfc/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-06-01 05:40:10', '2018-06-01 05:40:10', '', 'Events', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-01 05:40:10', '2018-06-01 05:40:10', '', 29, 'http://localhost:8888/sfc/29-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-06-01 07:44:36', '2018-06-01 07:44:36', '', 'responsive-lightbox-thumbnail', '', 'inherit', 'open', 'closed', '', 'responsive-lightbox-thumbnail', '', '', '2018-06-02 20:27:03', '2018-06-02 20:27:03', '', 146, 'http://localhost:8888/sfc/wp-content/uploads/2018/06/responsive-lightbox-thumbnail.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2018-06-01 07:45:07', '2018-06-01 07:45:07', '', 'My New Gallery', '', 'publish', 'closed', 'closed', '', 'my-new-gallery', '', '', '2018-06-01 07:59:05', '2018-06-01 07:59:05', '', 0, 'http://localhost:8888/sfc/?post_type=rl_gallery&#038;p=126', 0, 'rl_gallery', '', 0),
(127, 1, '2018-06-01 08:09:41', '2018-06-01 08:09:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\n&nbsp;\r\n\r\n[rl_gallery id=\"126\"]', 'Max', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-06-01 08:09:41', '2018-06-01 08:09:41', '', 97, 'http://localhost:8888/sfc/97-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-06-01 08:10:15', '2018-06-01 08:10:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Max', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-06-01 08:10:15', '2018-06-01 08:10:15', '', 97, 'http://localhost:8888/sfc/97-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-06-01 16:48:32', '2018-06-01 16:48:32', '', 'New Gallery', '', 'publish', 'open', 'closed', '', 'new-gallery', '', '', '2018-06-01 16:53:22', '2018-06-01 16:53:22', '', 0, 'http://localhost:8888/sfc/?post_type=robo_gallery_table&#038;p=129', 0, 'robo_gallery_table', '', 0),
(130, 1, '2018-06-01 16:52:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-06-01 16:52:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/sfc/?post_type=robo_gallery_table&p=130', 0, 'robo_gallery_table', '', 0),
(131, 1, '2018-06-02 05:40:36', '2018-06-02 05:40:36', '', 'bg-poor', '', 'inherit', 'open', 'closed', '', 'bg-poor-2', '', '', '2018-06-02 05:40:36', '2018-06-02 05:40:36', '', 44, 'http://localhost:8888/sfc/wp-content/uploads/2018/06/bg-poor.png', 0, 'attachment', 'image/png', 0),
(132, 1, '2018-06-02 05:40:41', '2018-06-02 05:40:41', '', 'Answering the Cry of the Poor', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-06-02 05:40:41', '2018-06-02 05:40:41', '', 44, 'http://localhost:8888/sfc/44-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-06-02 05:45:38', '2018-06-02 05:45:38', '', 'bg-clp copy', '', 'inherit', 'open', 'closed', '', 'bg-clp-copy', '', '', '2018-06-02 05:45:38', '2018-06-02 05:45:38', '', 42, 'http://localhost:8888/sfc/wp-content/uploads/2018/06/bg-clp-copy.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2018-06-02 05:45:43', '2018-06-02 05:45:43', '', 'Christian Life Program', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-06-02 05:45:43', '2018-06-02 05:45:43', '', 42, 'http://localhost:8888/sfc/42-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-06-02 05:49:56', '2018-06-02 05:49:56', '', 'bg-home-banner', '', 'inherit', 'open', 'closed', '', 'bg-home-banner', '', '', '2018-06-02 05:49:56', '2018-06-02 05:49:56', '', 53, 'http://localhost:8888/sfc/wp-content/uploads/2018/06/bg-home-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2018-06-02 05:50:00', '2018-06-02 05:50:00', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-06-02 05:50:00', '2018-06-02 05:50:00', '', 53, 'http://localhost:8888/sfc/53-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-06-02 05:50:41', '2018-06-02 05:50:41', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-06-02 05:50:41', '2018-06-02 05:50:41', '', 53, 'http://localhost:8888/sfc/53-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2018-06-02 05:50:59', '2018-06-02 05:50:59', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-06-02 05:50:59', '2018-06-02 05:50:59', '', 53, 'http://localhost:8888/sfc/53-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-06-02 05:52:06', '2018-06-02 05:52:06', '', 'bg-motherandchild copy', '', 'inherit', 'open', 'closed', '', 'bg-motherandchild-copy', '', '', '2018-06-02 05:52:06', '2018-06-02 05:52:06', '', 46, 'http://localhost:8888/sfc/wp-content/uploads/2018/06/bg-motherandchild-copy.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2018-06-02 05:52:10', '2018-06-02 05:52:10', '', 'Gift of Life', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-06-02 05:52:10', '2018-06-02 05:52:10', '', 46, 'http://localhost:8888/sfc/46-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-06-02 05:55:49', '2018-06-02 05:55:49', '', 'Answering the Cry of the Poor', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-06-02 05:55:49', '2018-06-02 05:55:49', '', 44, 'http://localhost:8888/sfc/44-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-06-02 06:01:43', '2018-06-02 06:01:43', '', 'Christian Life Program', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-06-02 06:01:43', '2018-06-02 06:01:43', '', 42, 'http://localhost:8888/sfc/42-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-06-02 06:02:21', '2018-06-02 06:02:21', '', 'Gift of Life', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-06-02 06:02:21', '2018-06-02 06:02:21', '', 46, 'http://localhost:8888/sfc/46-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-06-02 06:41:18', '2018-06-02 06:41:18', '', 'bg-prayer', '', 'inherit', 'open', 'closed', '', 'bg-prayer', '', '', '2018-06-02 06:41:18', '2018-06-02 06:41:18', '', 55, 'http://localhost:8888/sfc/wp-content/uploads/2018/06/bg-prayer.jpeg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-06-02 06:41:24', '2018-06-02 06:41:24', '', 'Prayer Intentions', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-06-02 06:41:24', '2018-06-02 06:41:24', '', 55, 'http://localhost:8888/sfc/55-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-06-02 20:26:57', '0000-00-00 00:00:00', '', 'Hillsong Concert 2018', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-02 20:26:57', '2018-06-02 20:26:57', '', 0, 'http://localhost:8888/sfc/?post_type=photos&#038;p=146', 0, 'photos', '', 0),
(147, 1, '2018-06-02 20:29:48', '2018-06-02 20:29:48', '', 'Hillsong Concert 2018', '', 'publish', 'closed', 'closed', '', 'hillsong-concert-2018', '', '', '2018-06-02 20:29:48', '2018-06-02 20:29:48', '', 0, 'http://localhost:8888/sfc/?post_type=photos&#038;p=147', 0, 'photos', '', 0),
(148, 1, '2018-06-02 22:09:16', '2018-06-02 22:09:16', '', 'conference copy', '', 'inherit', 'open', 'closed', '', 'conference-copy', '', '', '2018-06-02 22:09:16', '2018-06-02 22:09:16', '', 53, 'http://localhost:8888/sfc/wp-content/uploads/2018/06/conference-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2018-06-02 22:09:35', '2018-06-02 22:09:35', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-06-02 22:09:35', '2018-06-02 22:09:35', '', 53, 'http://localhost:8888/sfc/53-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-06-02 22:10:56', '2018-06-02 22:10:56', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-06-02 22:10:56', '2018-06-02 22:10:56', '', 53, 'http://localhost:8888/sfc/53-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2018-06-02 22:11:35', '2018-06-02 22:11:35', '', 'conference copy', '', 'inherit', 'open', 'closed', '', 'conference-copy-3', '', '', '2018-06-02 22:11:35', '2018-06-02 22:11:35', '', 53, 'http://localhost:8888/sfc/wp-content/uploads/2018/06/conference-copy-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2018-06-02 22:11:43', '2018-06-02 22:11:43', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-06-02 22:11:43', '2018-06-02 22:11:43', '', 53, 'http://localhost:8888/sfc/53-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2018-06-02 22:12:12', '2018-06-02 22:12:12', '', 'conference copy', '', 'inherit', 'open', 'closed', '', 'conference-copy-2', '', '', '2018-06-02 22:12:12', '2018-06-02 22:12:12', '', 53, 'http://localhost:8888/sfc/wp-content/uploads/2018/06/conference-copy-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2018-06-02 22:12:19', '2018-06-02 22:12:19', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-06-02 22:12:19', '2018-06-02 22:12:19', '', 53, 'http://localhost:8888/sfc/53-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-06-04 17:22:50', '2018-06-04 17:22:50', '\"This Is the Heir\" The tenant farmers don\'t seem very bright. They murder the son in order to get his inheritance. What father would give an inheritance to someone who killed his son? It doesn\'t make sense. Then again, sin doesn\'t make sense either. Many times, we reject Christ in our life and then wonder why our prayers to God the Father go (seemingly) unanswered. What could we be thinking? How often do I offer up a sacrifice or an act of charity for a prayer intention?\r\n<h3>Conversation with Christ</h3>\r\nLet me live up to the demands of my faith, Lord. Let me realize that my dignity, as a Christian, demands that I try to live a life worthy of my baptism ― that I not be satisfied living like everyone else.\r\n<h3>Resolution</h3>\r\nI will offer up a decade of a rosary for a family member who is far from the faith.', 'This Is the Heir', '', 'publish', 'closed', 'closed', '', 'this-is-the-heir', '', '', '2018-06-04 17:23:08', '2018-06-04 17:23:08', '', 0, 'http://localhost:8888/sfc/?post_type=articles&#038;p=156', 0, 'articles', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'test', 'test', 0),
(3, 'tag', 'tag', 0),
(4, 'Main Menu', 'main-menu', 0),
(5, 'Breadcrumbs', 'breadcrumbs', 0),
(6, 'google', 'google', 0),
(7, 'default-calendar', 'default-calendar', 0),
(8, 'Featured', 'featured', 0),
(9, 'Art', 'art', 0),
(10, 'Contact Form 7', 'contact-form-7', 0),
(11, 'CLP Entries', 'clp-entries', 0),
(12, 'Public', 'public', 0),
(13, 'Private', 'private', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(5, 2, 0),
(7, 1, 0),
(7, 3, 0),
(9, 8, 0),
(13, 4, 0),
(20, 5, 0),
(24, 4, 0),
(26, 6, 0),
(26, 7, 0),
(40, 8, 0),
(41, 8, 0),
(41, 9, 0),
(48, 4, 0),
(49, 4, 0),
(50, 4, 0),
(59, 4, 0),
(62, 1, 0),
(64, 13, 0),
(67, 12, 0),
(70, 12, 0),
(72, 12, 0),
(74, 12, 0),
(77, 11, 0),
(78, 11, 0),
(79, 11, 0),
(80, 11, 0),
(81, 11, 0),
(82, 11, 0),
(83, 11, 0),
(84, 11, 0),
(85, 11, 0),
(86, 11, 0),
(87, 11, 0),
(89, 11, 0),
(92, 12, 0),
(94, 12, 0),
(97, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'post_tag', '', 0, 0),
(3, 3, 'post_tag', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 6),
(5, 5, 'nav_menu', '', 0, 1),
(6, 6, 'calendar_feed', '', 0, 1),
(7, 7, 'calendar_type', '', 0, 1),
(8, 8, 'category', '', 0, 3),
(9, 9, 'topics', '', 0, 1),
(10, 10, 'flamingo_inbound_channel', '', 0, 0),
(11, 11, 'flamingo_inbound_channel', '', 10, 2),
(12, 12, 'category', '', 0, 7),
(13, 13, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6364131c09d17a17f507317ca8ecf6956d10b1c3f2602e2112715d5f8265388a\";a:4:{s:10:\"expiration\";i:1528305717;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1528132917;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '37'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:22:\"add-post-type-articles\";i:1;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1527650077'),
(22, 1, 'nav_menu_recently_edited', '4'),
(23, 1, 'default_password_nag', ''),
(24, 1, 'closedpostboxes_videos', 'a:0:{}'),
(25, 1, 'metaboxhidden_videos', 'a:5:{i:0;s:11:\"categorydiv\";i:1;s:12:\"postimagediv\";i:2;s:11:\"postexcerpt\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(26, 1, 'closedpostboxes_crd_sheet_music', 'a:0:{}'),
(27, 1, 'metaboxhidden_crd_sheet_music', 'a:7:{i:0;s:11:\"categorydiv\";i:1;s:16:\"tagsdiv-post_tag\";i:2;s:12:\"postimagediv\";i:3;s:11:\"postexcerpt\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:7:\"slugdiv\";}'),
(28, 1, 'meta-box-order_articles', 'a:3:{s:4:\"side\";s:34:\"submitdiv,categorydiv,postimagediv\";s:6:\"normal\";s:29:\"postexcerpt,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_articles', '2'),
(30, 1, 'closedpostboxes_articles', 'a:0:{}'),
(31, 1, 'metaboxhidden_articles', 'a:3:{i:0;s:11:\"postexcerpt\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(32, 1, 'closedpostboxes_flamingo_page_flamingo_inbound', 'a:0:{}'),
(33, 1, 'metaboxhidden_flamingo_page_flamingo_inbound', 'a:0:{}'),
(34, 1, 'closedpostboxes_page', 'a:0:{}'),
(35, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BFl7IUj3En2R7cwLnncbyWE686r2Vo/', 'admin', 'pmartindesigns@gmail.com', '', '2018-05-20 04:18:38', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mf_custom_fields`
--
ALTER TABLE `wp_mf_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mf_custom_groups`
--
ALTER TABLE `wp_mf_custom_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mf_custom_taxonomy`
--
ALTER TABLE `wp_mf_custom_taxonomy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mf_posttypes`
--
ALTER TABLE `wp_mf_posttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_mf_post_meta`
--
ALTER TABLE `wp_mf_post_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `idx_post_field` (`post_id`,`meta_id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mf_custom_fields`
--
ALTER TABLE `wp_mf_custom_fields`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mf_custom_groups`
--
ALTER TABLE `wp_mf_custom_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mf_custom_taxonomy`
--
ALTER TABLE `wp_mf_custom_taxonomy`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mf_posttypes`
--
ALTER TABLE `wp_mf_posttypes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
