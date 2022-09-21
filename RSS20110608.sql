-- phpMyAdmin SQL Dump
-- version 3.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2011 at 11:50 AM
-- Server version: 5.0.91
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pacifi71_rss`
--
CREATE DATABASE `pacifi71_rss` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pacifi71_rss`;

-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_config`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` varchar(250) NOT NULL,
  PRIMARY KEY  (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_acymailing_config`
--

INSERT INTO `rss_acymailing_config` (`namekey`, `value`) VALUES
('level', 'Starter'),
('version', '1.1.1'),
('from_name', 'Read Some Stuff'),
('from_email', 'phaseu@gmail.com'),
('reply_name', 'Read Some Stuff'),
('reply_email', 'phaseu@gmail.com'),
('bounce_email', ''),
('add_names', '1'),
('mailer_method', 'mail'),
('encoding_format', 'base64'),
('charset', 'UTF-8'),
('word_wrapping', '150'),
('hostname', ''),
('embed_images', '0'),
('embed_files', '1'),
('multiple_part', '1'),
('sendmail_path', '/usr/sbin/sendmail'),
('smtp_host', 'localhost'),
('smtp_port', ''),
('smtp_secured', ''),
('smtp_auth', '0'),
('smtp_username', ''),
('smtp_password', ''),
('smtp_keepalive', '1'),
('queue_nbmail', '60'),
('queue_type', 'auto'),
('queue_delay', '3600'),
('queue_try', '3'),
('allow_visitor', '1'),
('require_confirmation', '0'),
('priority_newsletter', '3'),
('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,epg,ico,odg,odp,ods,odt,png,ppt,swf,xcf'),
('uploadfolder', 'components/com_acymailing/upload'),
('editor', '0'),
('confirm_redirect', ''),
('subscription_message', '1'),
('notification_unsuball', ''),
('cron_next', '1270413066'),
('confirmation_message', '1'),
('welcome_message', '1'),
('unsub_message', '1'),
('cron_last', '0'),
('cron_fromip', ''),
('cron_report', ''),
('cron_frequency', '300'),
('cron_sendreport', '2'),
('cron_sendto', 'phaseu@gmail.com'),
('cron_fullreport', '1'),
('cron_savereport', '2'),
('cron_savefolder', 'administrator/components/com_acymailing/upload/report.log'),
('cron_savepath', 'administrator/components/com_acymailing/logs/report.log'),
('notification_created', ''),
('notification_accept', ''),
('notification_refuse', ''),
('forward', '0'),
('description_starter', 'Joomla Newsletter Extension'),
('description_essential', 'Joomla Newsletter Extension'),
('description_business', 'Joomla Newsletter Extension'),
('description_enterprise', 'Joomla Marketing Campaign'),
('priority_followup', '2'),
('unsub_redirect', ''),
('show_footer', '1'),
('use_sef', '0'),
('itemid', '0'),
('css_module', 'default'),
('css_frontend', 'default'),
('css_backend', 'default'),
('installcomplete', '1'),
('bounce_email_bounce', 'delete'),
('bounce_regex_bounce', 'deliver|daemon|fail|system|return|impos'),
('bounce_action_bounce', 'unsub'),
('bounce_rules_bounce', 'Mailbox not accessible'),
('bounce_email_end', 'forward'),
('bounce_forward_end', 'phaseu@gmail.com'),
('bounce_rules_end', 'Final Action'),
('Starter', '0'),
('Essential', '1'),
('Business', '2'),
('Enterprise', '3');

-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_list`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(10) unsigned default NULL,
  `listid` smallint(10) unsigned NOT NULL auto_increment,
  `published` tinyint(11) default NULL,
  `userid` int(10) unsigned default NULL,
  `alias` varchar(250) default NULL,
  `color` varchar(30) default NULL,
  `visible` tinyint(4) NOT NULL default '1',
  `welmailid` mediumint(11) default NULL,
  `unsubmailid` mediumint(11) default NULL,
  `type` enum('list','campaign') NOT NULL default 'list',
  `access_sub` varchar(250) default 'all',
  `access_manage` varchar(250) NOT NULL default 'none',
  `languages` varchar(250) NOT NULL default 'all',
  PRIMARY KEY  (`listid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rss_acymailing_list`
--

INSERT INTO `rss_acymailing_list` (`name`, `description`, `ordering`, `listid`, `published`, `userid`, `alias`, `color`, `visible`, `welmailid`, `unsubmailid`, `type`, `access_sub`, `access_manage`, `languages`) VALUES
('Newsletters', 'Receive our latest news', 1, 1, 1, 62, 'mailing_list', '#CCCCCC', 1, NULL, NULL, 'list', 'all', 'none', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_listcampaign`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_listcampaign` (
  `campaignid` smallint(10) unsigned NOT NULL,
  `listid` smallint(10) unsigned NOT NULL,
  PRIMARY KEY  (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_acymailing_listcampaign`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_listmail`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_listmail` (
  `listid` int(10) unsigned NOT NULL,
  `mailid` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_acymailing_listmail`
--

INSERT INTO `rss_acymailing_listmail` (`listid`, `mailid`) VALUES
(1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_listsub`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_listsub` (
  `listid` smallint(11) unsigned NOT NULL,
  `subid` int(11) unsigned NOT NULL,
  `subdate` int(11) unsigned default NULL,
  `unsubdate` int(11) unsigned default NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY  (`listid`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_acymailing_listsub`
--

INSERT INTO `rss_acymailing_listsub` (`listid`, `subid`, `subdate`, `unsubdate`, `status`) VALUES
(1, 1, 1270139868, NULL, 1),
(1, 2, 1270139868, NULL, 1),
(1, 3, 1270139868, NULL, 1),
(1, 4, 1270139868, NULL, 1),
(1, 5, 1270139868, NULL, 1),
(1, 6, 1270139868, NULL, 1),
(1, 7, 1270139868, NULL, 1),
(1, 8, 1270139868, NULL, 1),
(1, 9, 1270139868, NULL, 1),
(1, 10, 1270139868, NULL, 1),
(1, 11, 1270139868, NULL, 1),
(1, 12, 1270139868, NULL, 1),
(1, 13, 1270139868, NULL, 1),
(1, 14, 1270139868, NULL, 1),
(1, 15, 1270139868, NULL, 1),
(1, 16, 1270139868, NULL, 1),
(1, 17, 1270139868, NULL, 1),
(1, 18, 1270139868, NULL, 1),
(1, 19, 1270139868, NULL, 1),
(1, 20, 1270139868, NULL, 1),
(1, 21, 1270139868, NULL, 1),
(1, 22, 1270139868, NULL, 1),
(1, 23, 1270139868, NULL, 1),
(1, 24, 1270139868, NULL, 1),
(1, 25, 1270139868, NULL, 1),
(1, 26, 1270139868, NULL, 1),
(1, 27, 1270139868, NULL, 1),
(1, 28, 1270139868, NULL, 1),
(1, 29, 1270139868, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_mail`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_mail` (
  `mailid` mediumint(10) unsigned NOT NULL auto_increment,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) default '1',
  `senddate` int(10) unsigned default NULL,
  `created` int(10) unsigned default NULL,
  `fromname` varchar(250) NOT NULL,
  `fromemail` varchar(250) NOT NULL,
  `replyname` varchar(250) NOT NULL,
  `replyemail` varchar(250) NOT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification') NOT NULL default 'news',
  `visible` tinyint(4) NOT NULL default '1',
  `userid` int(10) unsigned default NULL,
  `alias` varchar(250) default NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL default '1',
  `tempid` smallint(11) NOT NULL default '0',
  `key` varchar(200) default NULL,
  `frequency` varchar(50) default NULL,
  `params` text,
  PRIMARY KEY  (`mailid`),
  KEY `senddate` (`senddate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `rss_acymailing_mail`
--

INSERT INTO `rss_acymailing_mail` (`mailid`, `subject`, `body`, `altbody`, `published`, `senddate`, `created`, `fromname`, `fromemail`, `replyname`, `replyemail`, `type`, `visible`, `userid`, `alias`, `attach`, `html`, `tempid`, `key`, `frequency`, `params`) VALUES
(1, 'New Subscriber on your website', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p></blockquote>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'notification_created', NULL, 1, 0, NULL, NULL, NULL),
(2, 'A User unsubscribed from all your lists', '<p>Hello {subtag:name},</p><p>The user {user:name} unsubscribed from all your lists</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'notification_unsuball', NULL, 1, 0, NULL, NULL, NULL),
(3, 'A User refuses to receive e-mails from your website', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'notification_refuse', NULL, 1, 0, NULL, NULL, NULL),
(4, '{subtag:name}, please confirm your Subscription', '<p> Hello {subtag:name}, </p><p><strong>{confirm}Click here to confirm your Subscription{/confirm}</strong></p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'confirmation', NULL, 1, 0, NULL, NULL, NULL),
(5, 'AcyMailing Cron Report', '<p>{report}</p><p>{detailreport}</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'report', NULL, 1, 0, NULL, NULL, NULL),
(6, 'A Newsletter has been generated : "{subject}"', '<p>The Newsletter issue {issuenb} has been generated : </p><p>Subject : {subject}</p><p>{body}</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'notification_autonews', NULL, 1, 0, NULL, NULL, NULL),
(7, 'Read Some Stuff Version 1.10 Released', '<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td align="left"><img src="templates/sk_quadcol/images/grey/header_lightorange.png" border="0" alt="Read Some Stuff" /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: left;">\r\n<h4 class="headerorange" style="text-align: left;">Hello,</h4>\r\nOver the past few months we have been working to make some upgrades to Read Some Stuff.  Many of the changes were quite large, but behind the scenes.  They were done to improve the performance of the site and to give us a platform on which we could continue to develop new features. <br /><br />There were some changes made from a graphical perspective and to provide a better flow and user experience in working through the application.  Below are some of the major highlights of things that were changed, as well as, some new features that are on their way.  We have a very long future feature list, but would be interested in hearing your feedback about the changes that have been made, as well as, any other ideas that you have for future realeases.<br /><br />The goal of this project is to create a one stop location for its users to get all their daily news, information, and eventually interact with their social media world.  The hope is that having all this information available in one place will save the user valuable time and give them the flexibility to deal with all this information as they like.\r\n<h4 class="headerorange" style="text-align: left;">Latest Release - Beta Version 1.10</h4>\r\n<ul style="text-align: left;">\r\n<li style="text-align: left;">Improved flow through the system and reorganization of content within configuration windows.</li>\r\n<li style="text-align: left;">Updated graphics and color scheme.</li>\r\n<li style="text-align: left;">Reorganized code base to support ongoing development. </li>\r\n<li style="text-align: left;">Ability to scroll within an outlet.</li>\r\n<li>Reduced the number of themes available. This was done to reduce the completity and development time in implementing a better GUI experience for our users.</li>\r\n<li>Added a getting started screen for new users.</li>\r\n<li>Automatically loading configuration screen when adding a new outlet.</li>\r\n</ul>\r\n<h4 class="headerorange" style="text-align: left;">Features Coming In Future Releases</h4>\r\n<ul style="text-align: left;">\r\n<li style="text-align: left;">Maintain contacts in your account.</li>\r\n<li style="text-align: left;">Forward news and information from your feeds to your contacts quickly and easily.</li>\r\n<li style="text-align: left;">Save your favorite articles to be viewed at a later date.</li>\r\n<li style="text-align: left;">Post selected news from your outlets to your favorite social media sites, Facebook, Twitter, and more.</li>\r\n<li style="text-align: left;">Become friends with other people who have accounts.</li>\r\n<li style="text-align: left;">Create outlets that are shared with your friends, such as photos from Picasa, videos from YouTube, and more.</li>\r\n<li style="text-align: left;">Automated determination of your screens resolution, and the amount of information you have on your screen to maximize the use of the content area on your screen.</li>\r\n<li style="text-align: left;">Widgets that can be placed in your outlet to show a specific type of content such as photos, videos, or other multimedia information.</li>\r\n<li style="text-align: left;">Suggesting friends or contacts based on your interests as determined from the type of news you choose to read.</li>\r\n<li style="text-align: left;">Import and export feeds in OPML format.</li>\r\n<li style="text-align: left;">Button to reload an individual outlet.</li>\r\n<li style="text-align: left;">Collapse outlets when empty.</li>\r\n</ul>\r\n<h4 class="headerorange" style="text-align: left;">Additonal Unique Uses For Read Some Stuff</h4>\r\n<ul style="text-align: left;">\r\n<li style="text-align: left;">Job Search Engine: Look for RSS feeds coming from the leading job search sites. Many of them will allow you to view the feed of a saved search. Pull that feed into an outlet and you will constantly be up to date on new job posts for your area and for your profession.</li>\r\n<li style="text-align: left;">Your Friends Photos and Videos: Pull in feeds from your friends pages on sites such as Picasa, YouTube, etc. You can stay up to date with any new photos or videos they post immediately.</li>\r\n<li style="text-align: left;">Stock Market Information: Finding feeds from your favorite financial sites and pulling them into your outlets will let you stay on top of events happening in the stock market real time.</li>\r\n</ul>\r\nPlease leave us <a href="feedback.php" title="Feedback">feedback</a> with any ideas, issues, or other thoughts.  We look forward to hearing from you!</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="font-size:10px;color:#000000;margin:auto;text-align:center;" colspan="3">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 1270412946, 1270140806, 'Read Some Stuff', 'readsomestuff@gmail.com', 'Read Some Stuff', 'readsomestuff@gmail.com', 'news', 1, 62, 'read-some-stuff-version-110-released', NULL, 1, 4, '870c46e24791d8255d83559061a34db1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_queue`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(10) unsigned NOT NULL,
  `priority` tinyint(3) unsigned default '3',
  `try` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`subid`,`mailid`),
  KEY `senddate` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_acymailing_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_stats`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_stats` (
  `mailid` mediumint(10) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL default '0',
  `senttext` int(10) unsigned NOT NULL default '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(10) unsigned NOT NULL default '0',
  `opentotal` int(10) unsigned NOT NULL default '0',
  `bounceunique` mediumint(10) unsigned NOT NULL default '0',
  `fail` mediumint(10) unsigned NOT NULL default '0',
  `clicktotal` int(10) unsigned NOT NULL default '0',
  `clickunique` mediumint(10) unsigned NOT NULL default '0',
  `unsub` mediumint(10) unsigned NOT NULL default '0',
  `forward` mediumint(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_acymailing_stats`
--

INSERT INTO `rss_acymailing_stats` (`mailid`, `senthtml`, `senttext`, `senddate`, `openunique`, `opentotal`, `bounceunique`, `fail`, `clicktotal`, `clickunique`, `unsub`, `forward`) VALUES
(7, 24, 0, 1270412947, 6, 15, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_subscriber`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned default NULL,
  `name` varchar(250) NOT NULL,
  `created` int(10) unsigned default NULL,
  `confirmed` tinyint(4) NOT NULL default '0',
  `enabled` tinyint(4) NOT NULL default '1',
  `accept` tinyint(4) NOT NULL default '1',
  `ip` varchar(100) default NULL,
  `html` tinyint(4) NOT NULL default '1',
  `key` varchar(250) default NULL,
  PRIMARY KEY  (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `rss_acymailing_subscriber`
--

INSERT INTO `rss_acymailing_subscriber` (`subid`, `email`, `userid`, `name`, `created`, `confirmed`, `enabled`, `accept`, `ip`, `html`, `key`) VALUES
(1, 'readsomestuff@gmail.com', 62, 'Administrator', 1270139868, 1, 1, 1, NULL, 1, '5e9edb0f83487184912c366a892510fb'),
(2, 'betatest@gmail.com', 63, 'betatest', 1270139868, 1, 1, 1, NULL, 1, '340dfd120dc652fdca8d7697cd358f18'),
(3, 'michelle.phaseu@gmail.com', 64, 'Michelle Gay', 1270139868, 1, 1, 1, NULL, 1, 'd84d3c981946d85ba953a7971fc7bee2'),
(4, 'pacificcustomwebs@gmail.com', 65, 'Scott', 1270139868, 1, 1, 1, NULL, 1, 'f3ac6799d85bfedcc3407730709cf649'),
(5, 'test@gmail.com', 66, 'Winestein', 1270139868, 1, 1, 1, NULL, 1, 'd8be5e1aa757f10b7dd2e3eafcf0aa37'),
(6, 'mustbamustang@sbcglobal.net', 98, 'Jim Siddons', 1270139868, 1, 1, 1, NULL, 1, '6084185781c70f771997b5ad126ca6cc'),
(7, 'mitchesmoons@gmail.com', 97, 'Mitche', 1270139868, 1, 1, 1, NULL, 1, '068f670e798e946b16312323b98c6388'),
(8, 'jersey72@gmail.com', 76, 'Chris Harrison', 1270139868, 1, 1, 1, NULL, 1, '4dd7963bf57dc79e6587095bdc976a9f'),
(9, 'LNGBCHDOMINIQUE@GMAIL.COM', 77, 'KIMBERLY STEELE', 1270139868, 0, 0, 1, NULL, 1, NULL),
(10, 'gyrus@iratepirates.com', 78, 'Gyrus', 1270139868, 1, 1, 1, NULL, 1, '6af3939d78dbf6e7c2a9e6ace4bbb372'),
(11, 'keeronlewin@yahoo.com', 79, 'keeron', 1270139868, 0, 0, 1, NULL, 1, NULL),
(12, 'pierrelouis.evens@gmail.com', 80, 'evens', 1270139868, 1, 1, 1, NULL, 1, 'e0216ba2cf3a6d78b9441951d1f938ae'),
(13, 'ifsheonlyknw@yahoo.com', 81, 'evey', 1270139868, 0, 0, 1, NULL, 1, NULL),
(14, 'xffpm007@gmail.com', 82, 'Rick', 1270139868, 1, 1, 1, NULL, 1, '79efb08b1aabb771c3c274bdd3634807'),
(15, 'toddwc@gmail.com', 83, 'Todd Carter', 1270139868, 1, 1, 1, NULL, 1, '969ab80c556507d5b01d069fc028f9eb'),
(16, 'wiitennisbo@gmail.com', 84, 'kabob', 1270139868, 0, 0, 1, NULL, 1, NULL),
(17, 'jerrymiah@sympatico.ca', 85, 'Yvon Pilote', 1270139868, 1, 1, 1, NULL, 1, 'fc0dfb240b8035f82a3c14db30ade94c'),
(18, 'wedny_t@hotmail.com', 86, 'Wendy Tam', 1270139868, 1, 1, 1, NULL, 1, 'd50e753842f8e804b11ddf331b71ecde'),
(19, 'dmcneill@sgi-usa.org', 87, 'David McNeill', 1270139868, 1, 1, 1, NULL, 1, '893095ef3b64441ccab8a7843bed2b94'),
(20, 'connorshanewatkins@gmail.com', 88, 'conmankilla', 1270139868, 1, 1, 1, NULL, 1, 'ca90330238dfb6dc4f04a6e71acb7a74'),
(21, 'sable93@hughes.net', 89, 'AbiGail', 1270139868, 1, 1, 1, NULL, 1, '05e283c444fefaf28b0ffae51d60c3f9'),
(22, 'donaldd758@comcast.net', 90, ' Donald Dubuque ', 1270139868, 1, 1, 1, NULL, 1, '14ff24a7cdff2cb2db9f9a483a4ac657'),
(23, 'luceylinda@gmail.com', 91, 'Linda Lucey', 1270139868, 1, 1, 1, NULL, 1, 'aa53083e3457fbc490846c28f27fa3c1'),
(24, 'pilotvideos2@yahoo.ca', 92, 'ROGER BURROWS', 1270139868, 1, 1, 1, NULL, 1, '6d977bbddd4c41e799722e9fc6f256fa'),
(25, 'jbergquist@lcsc.org', 93, 'Jim Bergquist', 1270139868, 1, 1, 1, NULL, 1, 'b256963abee81fa58095c9ebc1601cc3'),
(26, 'goldilocks_kim@hotmail.com', 94, 'Kim smallacombe', 1270139868, 0, 0, 1, NULL, 1, NULL),
(27, 'dgstratton@suddenlink.net', 95, 'Dennis Stratton', 1270139868, 1, 1, 1, NULL, 1, '6ef3d81884641d32cd158289327eec20'),
(28, 'danielleesale@gmail.com', 96, 'Daniel Sale', 1270139868, 1, 1, 1, NULL, 1, '1ad85f46b05af36fd5a659623a310e6f'),
(29, 'phaseu@gmail.com', 101, 'phaseu', 1270139868, 1, 1, 1, NULL, 1, '2ccb128c440af1e7d4faf0bbf7cf074a'),
(31, 'msullivan@sulcom.com', 103, 'Matt Sullivan', 1273339323, 1, 1, 1, '76.243.29.217', 1, 'cf1cd572bdf8deb425f42eaf11ed57c3'),
(32, 'support@pacificcustomwebs.com', 104, 'testdrive', 1274192327, 1, 1, 1, '68.8.8.213', 1, '1002ec490c9ee82644d8c5798bfad0f7'),
(33, 'skybluupink@hotmail.com', 105, 'Elicia', 1274805726, 1, 1, 1, '198.176.189.201', 1, '89777b7bad5096374d0ed8416b60cd85'),
(34, 'da.scottyb@gmail.com', 106, 'scott briggs', 1276143588, 1, 1, 1, '174.145.223.24', 1, 'ccd5424a0236947baede33c3a2a62aa7'),
(35, 'tled123@gmail.com', 107, 'Tracy Siri', 1277408708, 1, 1, 1, '98.155.71.180', 1, '77edbe2c62a5b1f6473aab97b1e8d26f'),
(36, 'searecedes@london.com', 108, 'searecedes', 1288342630, 1, 1, 1, '188.92.74.95', 1, '9dfefd551b27cb585de6f1e220884e77'),
(37, 'sanusreth@gmail.com', 109, 'abdul qader', 1291713937, 1, 1, 1, '203.99.193.179', 1, '1a52bafdd1f0297103cd3b3d1c7db894'),
(38, 'sardine3348@gmail.com', 110, 'TerryVN', 1297395760, 1, 1, 1, '68.143.1.237', 1, '076957158358ff4421d4e9b15e485679'),
(39, 'jessica@mootech.net', 111, 'Jessica', 1298671972, 0, 0, 1, '206.251.240.27', 1, '6a5dab818055dafbbde963de60b6e642'),
(40, 'danaa.dan@yandex.ru', 112, 'Urgenebex', 1304306208, 1, 1, 1, '213.108.21.46', 1, '65fd3c119731771a918f7eee30d58347');

-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_template`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_template` (
  `tempid` smallint(11) unsigned NOT NULL auto_increment,
  `name` varchar(250) default NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned default NULL,
  `published` tinyint(4) NOT NULL default '1',
  `premium` tinyint(4) NOT NULL default '0',
  `ordering` smallint(10) unsigned NOT NULL default '99',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  PRIMARY KEY  (`tempid`),
  UNIQUE KEY `namekey` (`namekey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rss_acymailing_template`
--

INSERT INTO `rss_acymailing_template` (`tempid`, `name`, `description`, `body`, `altbody`, `created`, `published`, `premium`, `ordering`, `namekey`, `styles`) VALUES
(1, 'White Shadow Red', '1 header, 1 column, 3 vertical areas for articles.<br/><img src="components/com_acymailing/templates/newsletter-1/newsletter-1.png"/>', '<div style="background-color:#e2e8df;font-size:100%;font-family:Tahoma, Geneva, Kalimati, sans-serif;color:#8a8a8a;width:100%">\r\n\r\n<table width="560" cellpadding="0" cellspacing="0" style="margin:auto;">\r\n    <tr>\r\n    	<td colspan="3" style="font-size:10px;color:#000000;margin:auto;text-align:center;">This email contains graphics, so if you don''t see them, {readonline}view it in your browser{/readonline}.</td>\r\n    </tr>\r\n\r\n    <tr>\r\n    	<td colspan="3" height="10"></td>\r\n    </tr>\r\n\r\n    <tr>\r\n        <td width="37">\r\n        </td>\r\n\r\n        <td bgcolor="#fbfbf7" width="496" valign="top">\r\n        	<table width="100%" cellpadding="0" cellspacing="0">\r\n                <tr>\r\n                	<td height="20" colspan="2">\r\n\r\n                    </td>\r\n\r\n                </tr>\r\n                <tr>\r\n                	<td width="20">\r\n                    </td>\r\n                    <td height="110" width="456" style="background-color:#F9F7D3">\r\n                    	<table width="456" height="110" cellpadding="0" cellspacing="0">\r\n                            <tr>\r\n                                <td height="11" colspan="3">\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                            	<td width="7" >\r\n                                </td>\r\n                                <td>\r\n                                	<img src="http://www.acyba.com/images/templates/newsletter-1/logo-icon.png" alt=""/>\r\n                                </td>\r\n                                <td valign="top">\r\n                                	<table width="100%" height="100%" cellpadding="0" cellspacing="0">\r\n                                    	<tr>\r\n                                        	<td align="right"  valign="top" height="71">\r\n                                            	<h1 style="margin-bottom:0;margin-top:0;font-family:Tahoma, Geneva, Kalimati, sans-serif;font-size:26px;color:#d47e7e;vertical-align:top;">AcyMailing is Out!</h1>\r\n                                            </td>\r\n                                            <td width="15">\r\n                                            </td>\r\n\r\n                                        </tr>\r\n                                        <tr>\r\n                                        	<td align="right" height="15" valign="baseline" >\r\n                                            	<img alt="" src="http://www.acyba.com/images/templates/newsletter-1/company-name.png" height="15"/>\r\n                                            </td>\r\n                                        </tr>\r\n                                     </table>\r\n\r\n\r\n                                </td>\r\n\r\n\r\n                            </tr>\r\n\r\n                            <tr>\r\n                                <td height="3"  colspan="3">\r\n\r\n                                </td>\r\n\r\n\r\n                            </tr>\r\n\r\n\r\n                        </table>\r\n                    </td>\r\n                    <td width="20">\r\n                    </td>\r\n\r\n                </tr>\r\n                <tr>\r\n                	<td colspan="5">\r\n                    	<table width="100%">\r\n                        	<tr>\r\n                            	<td width="60">\r\n                                </td>\r\n                                <td>\r\n                                	<table width="100%">\r\n                                    	<tr>\r\n                                        	<td>\r\n                                                    <h3 style="color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;">E-Mail</h3>\r\n                                                    <h6 style="background-color:#d39f9f;margin:0;">&nbsp;</h6>\r\n                                                    <table>\r\n                                                    	<tr>\r\n                                                        	<td width="280" style="font-size:10px" valign="top" align="justify">\r\n                                                           	 	Electronic mail, often abbreviated as email or e-mail, is a method of exchanging digital messages, designed primarily for human use. E-mail systems are based on a store-and-forward model in which e-mail computer server systems accept, forward, deliver and store messages on behalf of users, who only need to connect to the e-mail infrastructure, typically an e-mail server, with a network-enabled device (e.g., a personal computer) for the duration of message submission or retrieval.<br/><a href="http://en.wikipedia.org/wiki/E-mail">Wikipedia</a>\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="http://www.acyba.com/images/templates/newsletter-1/acymailing.png" />\r\n                                                            </td>\r\n                                                        </tr>\r\n													</table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n\r\n                                </td>\r\n                                <td width="60">\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <tr>\r\n                            	<td width="60">\r\n                                </td>\r\n                                <td>\r\n                                	<table width="100%">\r\n                                    	<tr>\r\n                                        	<td>\r\n                                                    <h3 style="color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;">Marketing Campaign</h3>\r\n                                                    <h6 style="background-color:#d39f9f;margin:0;">&nbsp;</h6>\r\n                                                    <table>\r\n                                                    	<tr>\r\n                                                        	<td width="140" style="font-size:10px" valign="top" align="justify">\r\n                                                           	 	Marketing is an integrated communications-based process through which individuals and communities are informed or persuaded that existing and newly-identified needs and wants may be satisfied by the products and services of others.\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="components/com_acymailing/templates/newsletter-1/vert-separator.png" />\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="http://www.acyba.com/images/templates/newsletter-1/essential.png" />\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="components/com_acymailing/templates/newsletter-1/vert-separator.png" />\r\n                                                            </td>\r\n                                                            <td width="140" style="font-size:10px" valign="top" align="justify">\r\n                                                           	 	Marketing is used to create the customer, to keep the customer and to satisfy the customer.  <a href="http://en.wikipedia.org/wiki/Marketing_campaign">Wikipedia</a>\r\n                                                            </td>\r\n                                                        </tr>\r\n													</table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n\r\n                                </td>\r\n                                <td width="60">\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <tr>\r\n                            	<td width="60">\r\n                                </td>\r\n                                <td>\r\n                                	<table width="100%">\r\n                                    	<tr>\r\n                                        	<td>\r\n                                                    <h3 style="color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;">Joomla!</h3>\r\n                                                    <h6 style="background-color:#d39f9f;margin:0;">&nbsp;</h6>\r\n                                                    <table>\r\n                                                    	<tr>\r\n                                                        	<td width="200" style="font-size:10px" valign="top" align="justify">\r\n                                                           	 	Joomla! is a content management system platform for publishing content on the World Wide Web and intranets as well as a Model–view–controller (MVC) Web Application Development framework.\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="components/com_acymailing/templates/newsletter-1/vert-separator.png" />\r\n                                                            </td>\r\n                                                            <td width="200" style="font-size:10px" valign="top" align="justify">\r\n                                                           	 	The system includes features such as page caching to improve performance, RSS feeds, printable versions of pages, news flashes, blogs, polls, website searching, and language internationalization.<br/><a href="http://en.wikipedia.org/wiki/Joomla">Wikipedia</a>\r\n                                                            </td>\r\n                                                        </tr>\r\n													</table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n\r\n                                </td>\r\n                                <td width="60">\r\n                                </td>\r\n                            </tr>\r\n\r\n\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n\r\n            </table>\r\n        </td>\r\n        <td width="27">\r\n        </td>\r\n\r\n    </tr>\r\n    <tr>\r\n    	<td colspan="3"><img src="components/com_acymailing/templates/newsletter-1/page-footer.png" alt=""/></td>\r\n    </tr>\r\n\r\n    <tr>\r\n    	<td colspan="3" style="font-size:10px;color:#000000;margin:auto;text-align:center;">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\r\n    </tr>\r\n</table>\r\n\r\n\r\n</div>', '', NULL, 1, 0, 1, 'newsletter-1', 'a:5:{s:16:"acymailing_title";s:89:"color:#8a8a8a;font-weight:normal;font-size:14px;margin:0;border-bottom:5px solid #d39f9f;";s:16:"acymailing_unsub";s:31:"font-weight:bold;color:#000000;";s:19:"acymailing_readmore";s:14:"color:#d39f9f;";s:17:"acymailing_online";s:31:"font-weight:bold;color:#000000;";s:6:"tag_h1";s:89:"color:#8a8a8a;font-weight:normal;font-size:14px;margin:0;border-bottom:5px solid #d39f9f;";}'),
(2, 'Clean White Pink', 'White based template with 1 header, 2 columns<br/><img src="components/com_acymailing/templates/newsletter-2/newsletter-2.png"/>', '<div style="font-size:100%;font-family:Tahoma, Geneva, Kalimati, sans-serif;color:#8a8a8a;">\n\n<table width="600" cellpadding="0" cellspacing="0" style="margin:auto;">\n    <tr>\n    	<td colspan="3" style="font-size:10px;color:#000000;margin:auto;text-align:center;">This email contains graphics, so if you don''t see them, {readonline}view it in your browser{/readonline}.</td>\n    </tr>\n\n    <tr>\n    	<td colspan="3" height="30"></td>\n    </tr>\n\n    <tr>\n\n        <td width="370" valign="top">\n        	<table cellpadding="0" cellspacing="0">\n            	<tr>\n                	<td height="40" valign="top">\n                    	<h1 style="margin-bottom:0;margin-top:0;font-family:Tahoma, Geneva, Kalimati, sans-serif;font-size:26px;color:#d47e7e;vertical-align:top;text-align:center">AcyMailing is Out!</h1>\n                    </td>\n\n                </tr>\n\n                <tr>\n                	<td>\n\n                        <h3 style="color:#8a8a8a;text-align:right;ont-weight:normal;font-size:100%;margin:0;">E-Mail</h3>\n                        <h6 style="background-color:#d39fc9;margin:0;">&nbsp;</h6>\n                        <table>\n                            <tr>\n                                <td align="justify">\n                                <p style="font-size:10px;margin-top:0px;">Electronic mail, often abbreviated as email or e-mail, is a method of exchanging digital messages, designed primarily for human use.<br/><a href="http://en.wikipedia.org/wiki/E-mail">Wikipedia</a></p>\n                                </td>\n                                <td width="30%" style="text-align:center">\n                                    <img src="http://www.acyba.com/images/templates/newsletter-1/acymailing.png" />\n                                </td>\n                            </tr>\n                            <tr>\n                                <td colspan="2" align="right">\n                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\n                                </td>\n                            </tr>\n                         </table>\n                    </td>\n\n                </tr>\n                <tr>\n                	<td height="20">\n                    </td>\n                </tr>\n                <tr>\n                	<td>\n                        <h3 style="color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;text-align:right">Marketing Campaign</h3>\n                        <h6 style="background-color:#d39fc9;margin:0;">&nbsp;</h6>\n                        <table>\n                            <tr>\n                                <td valign="top" align="justify" width="35%">\n                                <p style="font-size:10px;margin-top:0px;">Marketing is an integrated communications-based process through which individuals and communities are informed or persuaded that existing and newly-identified needs and wants may be satisfied by the products and services of others.</p>\n                                </td>\n                                <td>\n                                    <img src="components/com_acymailing/templates/newsletter-1/vert-separator.png" />\n                                </td>\n                                <td style="text-align:center">\n                                    <img src="http://www.acyba.com/images/templates/newsletter-1/essential.png" />\n                                </td>\n                                <td>\n                                    <img src="components/com_acymailing/templates/newsletter-1/vert-separator.png" />\n                                </td>\n                                <td  valign="top" align="justify" width="30%">\n                                    <p style="font-size:10px;margin-top:0px;">Marketing is used to create the customer, to keep the customer and to satisfy the customer.  <a href="http://en.wikipedia.org/wiki/Marketing_campaign">Wikipedia</a></p>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td colspan="5" align="right">\n                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\n                                </td>\n                            </tr>\n\n\n                         </table>\n                    </td>\n\n                </tr>\n            </table>\n        </td>\n\n        <td width="20">\n        </td>\n\n        <td width="210" valign="top">\n        	<table cellpadding="0" cellspacing="0">\n            	<tr>\n                	<td>\n                    	<img src="http://www.acyba.com/images/templates/newsletter-2/logo-icon.jpg" width="207" height="137" alt="">\n                    </td>\n\n                </tr>\n                <tr>\n                	<td>\n                        <h3 style="color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;">Joomla!</h3>\n                        <h6 style="background-color:#d39fc9;margin:0;">&nbsp;</h6>\n                        <table>\n                            <tr>\n                                <td align="justify">\n                                <p style="font-size:10px;margin-top:0px;">Joomla! is a content management system platform for publishing content on the World Wide Web and intranets as well as a Model–view–controller (MVC) Web Application Development framework.</p>\n                                </td>\n                           </tr>\n\n                           <tr>\n                                <td>\n                                <img src="components/com_acymailing/templates/newsletter-2/hori-separator.png" />\n                                </td>\n                           </tr>\n\n                           <tr>\n                                <td align="justify">\n                                    <p style="font-size:10px;margin-top:0px;">The system includes features such as page caching to improve performance, RSS feeds, printable versions of pages, news flashes, blogs, polls, website searching, and language internationalization.<br/><a href="http://en.wikipedia.org/wiki/Joomla">Wikipedia</a></p>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td align="right">\n                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\n                                </td>\n                            </tr>\n                         </table>\n                    </td>\n\n                </tr>\n\n            </table>\n        </td>\n\n    </tr>\n    <tr>\n    	<td colspan="3" height="30"></td>\n    </tr>\n\n    <tr>\n    	<td colspan="3" style="font-size:10px;color:#000000;margin:auto;text-align:center;">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\n    </tr>\n</table>\n\n\n</div>', '', NULL, 1, 0, 2, 'newsletter-2', 'a:2:{s:16:"acymailing_title";s:63:"color:#8a8a8a;text-align:right;border-bottom:6px solid #d39fc9;";s:6:"tag_h1";s:63:"color:#8a8a8a;text-align:right;border-bottom:6px solid #d39fc9;";}'),
(3, 'Rounders and corners', 'Template with 2 columns and 3 rounded areas for articles<br/><img src="components/com_acymailing/templates/newsletter-3/newsletter-3.png"/>', '<div style="background-color:#dfe6e8;font-size:100%;font-family:Tahoma, Geneva, Kalimati, sans-serif;color:#8a8a8a;width:100%">\n\n<table width="600" cellpadding="0" cellspacing="0" style="margin:auto;">\n    <tr>\n    	<td colspan="3" style="font-size:10px;color:#000000;margin:auto;text-align:center;">This email contains graphics, so if you don''t see them, {readonline}view it in your browser{/readonline}.</td>\n    </tr>\n\n    <tr>\n    	<td colspan="3" height="30"></td>\n    </tr>\n\n    <tr>\n\n        <td width="216" valign="top">\n        	<table cellpadding="0" cellspacing="0">\n            	<tr>\n                	<td style="text-align: center">\n                    	<img src="http://www.acyba.com/images/templates/newsletter-3/logo-icon.jpg" width="207" height="137" alt="">\n                    </td>\n\n                </tr>\n\n                <tr>\n                	<td height="20">\n\n                    </td>\n\n                </tr>\n\n                <tr>\n                	<td>\n\n                            <table cellspacing="0" cellpadding="0">\n                                <tr>\n                                    <td colspan="3" width="216" height="15">\r\n                                    <img src="components/com_acymailing/templates/newsletter-3/top23rds.png" alt="" />\n                                    </td>\n                                </tr>\n                                <tr>\n                                    <td  bgcolor="#FFFFFF" width="15"></td>\n                                    <td bgcolor="#FFFFFF" width="186" >\n                                        <h3 style="color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;">Joomla!</h3>\n                                        <h6 style="background-color:#d3d09f;margin:0;">&nbsp;</h6>\n                                        <table>\n                                            <tr>\n\n                                                <td>\n                                                <p style="font-size:10px;margin-top:0px;">Joomla! is a content management system platform for publishing content on the World Wide Web and intranets as well as a Model–view–controller (MVC) Web Application Development framework.</p>\n                                                <img src="components/com_acymailing/templates/newsletter-2/hori-separator.png" />\n                                                <p style="font-size:10px;">The system includes features such as page caching to improve performance, RSS feeds, printable versions of pages, news flashes, blogs, polls, website searching, and language internationalization.<br/><a href="http://en.wikipedia.org/wiki/Joomla">Wikipedia</a></p>\n                                                </td>\n\n                                            </tr>\n                                            <tr>\n                                                <td align="right">\n                                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\n                                                </td>\n                                            </tr>\n                                      </table>\n\n\n                                    </td>\n                                    <td  bgcolor="#FFFFFF" width="15"></td>\n                                </tr>\n                                <tr>\n                                    <td  colspan="3" width="216" height="15">\r\n                                    <img src="components/com_acymailing/templates/newsletter-3/bottom23rds.png" alt=""/>\n                                    </td>\n                                </tr>\n                            </table>\n                    </td>\n\n                </tr>\n\n            </table>\n        </td>\n\n\n\n\n        <td width="20">\n        </td>\n  <td width="364" valign="top">\n        	<table cellpadding="0" cellspacing="0">\n            	<tr>\n                	<td width="325" height="48" style="background-color:#ffffff;color:#d47e7e;text-align:center;">\n                        <h1 style="margin-bottom:0;margin-top:0;font-family:Tahoma, Geneva, Kalimati, sans-serif;font-size:26px;color:#d47e7e;vertical-align:top;">AcyMailing is Out!</h1>\n                  </td>\n\n                </tr>\n\n                <tr>\n                	<td height="20">\n\n                    </td>\n                </tr>\n\n                <tr>\n                	<td>\n                            <table cellspacing="0" cellpadding="0">\n                                <tr>\n                                    <td colspan="3" width="323" height="15">\r\n                                    <img src="components/com_acymailing/templates/newsletter-3/top23rd.png" />\n                                    </td>\n                                </tr>\n                                <tr>\n                                    <td  bgcolor="#FFFFFF" width="15"></td>\n                                    <td bgcolor="#FFFFFF" width="293" >\n                                        <h3 style="color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;">E-Mail</h3>\n                                        <h6 style="background-color:#d3d09f;margin:0;">&nbsp;</h6>\n                                        <table>\n                                            <tr>\n                                                <td>\n                                                    <img src="http://www.acyba.com/images/templates/newsletter-1/acymailing.png" />\n                                                </td>\n                                                <td>\n                                                <p style="font-size:10px;margin-top:0px;">Electronic mail, often abbreviated as email or e-mail, is a method of exchanging digital messages, designed primarily for human use.<br/><a href="http://en.wikipedia.org/wiki/E-mail">Wikipedia</a></p>\n                                                </td>\n\n                                            </tr>\n                                            <tr>\n                                                <td colspan="2" align="right">\n                                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\n                                                </td>\n                                            </tr>\n                                         </table>\n                                    </td>\n                                    <td  bgcolor="#FFFFFF" width="15"></td>\n                                </tr>\n                                <tr>\n                                    <td  colspan="3" width="323" height="15">\r\n                                    <img src="components/com_acymailing/templates/newsletter-3/bottom23rd.png" alt=""/>\n                                    </td>\n                                </tr>\n                            </table>\n\n                    </td>\n\n                </tr>\n\n                <tr>\n                	<td height="20">\n\n                    </td>\n                </tr>\n\n\n\n                <tr>\n                	<td>\n                        <table cellspacing="0" cellpadding="0">\n                            <tr>\n                                <td colspan="3" width="323" height="15">\r\n                                	<img src="components/com_acymailing/templates/newsletter-3/top23rd.png" />\n                                </td>\n                            </tr>\n                            <tr>\n                                <td  bgcolor="#FFFFFF" width="15"></td>\n                                <td bgcolor="#FFFFFF" width="293" >\n                                    <h3 style="color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;">Marketing Campaign</h3>\n                                    <h6 style="background-color:#d3d09f;margin:0;">&nbsp;</h6>\n                                    <table>\n                                        <tr>\n\n                                            <td>\n                                            <p style="font-size:10px;margin-top:0px;">Marketing is an integrated communications-based process through which individuals and communities are informed or persuaded that existing and newly-identified needs and wants may be satisfied by the products and services of others.</p>\n                                            <img src="components/com_acymailing/templates/newsletter-2/hori-separator.png" />\n                                            <p style="font-size:10px;">Marketing is used to create the customer, to keep the customer and to satisfy the customer.  <a href="http://en.wikipedia.org/wiki/Marketing_campaign">Wikipedia</a></p>\n                                            </td>\n                                            <td>\n                                                <img src="http://www.acyba.com/images/templates/newsletter-1/essential.png" alt=""/>\n                                            </td>\n\n                                        </tr>\n                                        <tr>\n                                            <td colspan="2" align="right">\n                                                <a href="#" style="font-size:10px;color:#999999;">Read More</a>\n                                            </td>\n                                        </tr>\n                                     </table>\n\n\n                                </td>\n                                <td  bgcolor="#FFFFFF" width="15"></td>\n                            </tr>\n                            <tr>\n                                <td  colspan="3" width="323" height="15">\r\n                                <img src="components/com_acymailing/templates/newsletter-3/bottom23rd.png" alt=""/>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n\n                </tr>\n            </table>\n        </td>\n\n\n\n    </tr>\n    <tr>\n    	<td colspan="3" height="30"></td>\n    </tr>\n\n    <tr>\n    	<td colspan="3" style="font-size:10px;color:#000000;margin:auto;text-align:center;">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\n    </tr>\n</table>\n\n\n</div>', '', NULL, 1, 0, 3, 'newsletter-3', 'a:2:{s:16:"acymailing_title";s:46:"color:#8a8a8a;border-bottom:6px solid #d3d09f;";s:6:"tag_h1";s:46:"color:#8a8a8a;border-bottom:6px solid #d3d09f;";}'),
(4, 'Read Some Stuff', '', '<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td align="left"><img src="templates/sk_quadcol/images/grey/header_lightorange.png" border="0" alt="Briggs Promotional Products" /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td>Place monthly content here.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="font-size:10px;color:#000000;margin:auto;text-align:center;" colspan="3">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', NULL, 1, 1, 4, '1270140540read-some-stuff', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_url`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_url` (
  `urlid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  PRIMARY KEY  (`urlid`),
  UNIQUE KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_acymailing_url`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_urlclick`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(10) unsigned NOT NULL,
  `click` smallint(10) unsigned NOT NULL default '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`urlid`,`mailid`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_acymailing_urlclick`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_acymailing_userstats`
--

CREATE TABLE IF NOT EXISTS `rss_acymailing_userstats` (
  `mailid` mediumint(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL default '1',
  `sent` tinyint(4) NOT NULL default '1',
  `senddate` int(11) NOT NULL,
  `open` tinyint(4) NOT NULL default '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL default '0',
  `fail` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`mailid`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_acymailing_userstats`
--

INSERT INTO `rss_acymailing_userstats` (`mailid`, `subid`, `html`, `sent`, `senddate`, `open`, `opendate`, `bounce`, `fail`) VALUES
(7, 1, 1, 1, 1270412946, 0, 0, 0, 0),
(7, 18, 1, 1, 1270412946, 0, 0, 0, 0),
(7, 19, 1, 1, 1270412946, 0, 0, 0, 0),
(7, 20, 1, 1, 1270412946, 0, 0, 0, 0),
(7, 21, 1, 1, 1270412946, 0, 0, 0, 0),
(7, 22, 1, 1, 1270412946, 1, 1270418453, 0, 0),
(7, 23, 1, 1, 1270412946, 0, 0, 0, 0),
(7, 24, 1, 1, 1270412946, 0, 0, 0, 0),
(7, 25, 1, 1, 1270412946, 1, 1270412951, 0, 0),
(7, 27, 1, 1, 1270412946, 0, 0, 0, 0),
(7, 28, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 17, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 15, 1, 1, 1270412947, 7, 1270522153, 0, 0),
(7, 2, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 3, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 4, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 5, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 6, 1, 1, 1270412947, 3, 1270713547, 0, 0),
(7, 7, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 8, 1, 1, 1270412947, 1, 1270417567, 0, 0),
(7, 10, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 12, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 14, 1, 1, 1270412947, 0, 0, 0, 0),
(7, 29, 1, 1, 1270412947, 2, 1271702276, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rss_banner`
--

CREATE TABLE IF NOT EXISTS `rss_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_banner`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_bannerclient`
--

CREATE TABLE IF NOT EXISTS `rss_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_bannerclient`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_bannertrack`
--

CREATE TABLE IF NOT EXISTS `rss_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_bannertrack`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_categories`
--

CREATE TABLE IF NOT EXISTS `rss_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_components`
--

CREATE TABLE IF NOT EXISTS `rss_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `rss_components`
--

INSERT INTO `rss_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(34, 'Jumi', 'option=com_jumi', 0, 0, 'option=com_jumi', 'Jumi', 'com_jumi', 0, 'components/com_jumi/images/jumi.png', 0, '', 1),
(35, 'JoomlaPack', 'option=com_joomlapack', 0, 0, 'option=com_joomlapack', 'JoomlaPack', 'com_joomlapack', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(36, 'AcyMailing', 'option=com_acymailing', 0, 0, 'option=com_acymailing', 'AcyMailing', 'com_acymailing', 0, '../components/com_acymailing/images/icons/icon-16-acymailing.png', 0, '', 1),
(37, 'Users', '', 0, 36, 'option=com_acymailing&gtask=subscriber', 'Users', 'com_acymailing', 0, '../includes/js/user.png', 0, '', 1),
(38, 'Lists', '', 0, 36, 'option=com_acymailing&gtask=list', 'Lists', 'com_acymailing', 1, '../includes/js/ThemeOffice/static.png', 0, '', 1),
(39, 'Newsletters', '', 0, 36, 'option=com_acymailing&gtask=newsletter', 'Newsletters', 'com_acymailing', 2, '../components/com_acymailing/images/icons/icon-16-newsletter.png', 0, '', 1),
(40, 'Templates', '', 0, 36, 'option=com_acymailing&gtask=template', 'Templates', 'com_acymailing', 3, '../components/com_acymailing/images/icons/icon-16-acytemplate.png', 0, '', 1),
(41, 'Queue', '', 0, 36, 'option=com_acymailing&gtask=queue', 'Queue', 'com_acymailing', 4, '../components/com_acymailing/images/icons/icon-16-process.png', 0, '', 1),
(42, 'Statistics', '', 0, 36, 'option=com_acymailing&gtask=stats', 'Statistics', 'com_acymailing', 5, '../components/com_acymailing/images/icons/icon-16-stats.png', 0, '', 1),
(43, 'Configuration', '', 0, 36, 'option=com_acymailing&gtask=config', 'Configuration', 'com_acymailing', 6, '../includes/js/ThemeOffice/config.png', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rss_contact_details`
--

CREATE TABLE IF NOT EXISTS `rss_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_contact_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_content`
--

CREATE TABLE IF NOT EXISTS `rss_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `rss_content`
--

INSERT INTO `rss_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Portlets', 'portlets', '', '<p>{jumi *4}{/jumi}</p>', '', -2, 0, 0, 0, '2009-09-03 19:02:10', 62, '', '2009-09-03 19:21:47', 62, 0, '0000-00-00 00:00:00', '2009-09-03 19:02:10', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(2, 'Login Redirect', 'login-redirect', '', '<p>{jumi *5}{/jumi}</p>', '', -2, 0, 0, 0, '2009-09-04 01:17:13', 62, '', '2009-09-04 01:20:14', 62, 0, '0000-00-00 00:00:00', '2009-09-04 01:17:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 1, 5, 'robots=\nauthor='),
(3, 'Blank Page', 'blankpage', '', '<p>hello</p>', '', -2, 0, 0, 0, '2009-09-04 01:29:03', 62, '', '2009-09-04 01:31:35', 62, 0, '0000-00-00 00:00:00', '2009-09-04 01:29:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(4, 'Logout', 'logout', '', '<p> </p>\r\n<p> </p>\r\n<p>Thanks for using Read Some Stuff.  Tell your friends if you found this tool useful as you tackle the world''s mountain of information!</p>', '', 1, 0, 0, 0, '2009-09-04 01:34:33', 62, '', '2009-10-18 20:52:55', 62, 0, '0000-00-00 00:00:00', '2009-09-04 01:34:33', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 10, '', '', 0, 863, 'robots=\nauthor='),
(5, 'Home', 'home', '', '<h3 class="headerorange" style="text-align: left;">Welcome to Read Some Stuff</h3>\r\n<p style="text-align: left;">Read Some Stuff is a new way to connect with the world''s information through the use of RSS (Real Simple Syndication) feeds.  "Redefining RSS" is what you do through the use of advanced tools under your control.</p>\r\n<p style="text-align: left;">Read Some Stuff is built to allow more flexibility and control over the information retrieved through your feeds.  It puts the control back in your hands allowing you to define what is and is not important to you.  Your time is more valuable then ever.  Read Some Stuff is here to allow you to have all the world''s information you are interested in at your fingertips and what your not interested in, far out of your way.  <a href="index.php?option=com_user&amp;task=register" title="Sign Up Now">Sign up now</a> and take control over your news and information.</p>\r\n<p style="text-align: center;"><img src="images/articles/outletlayouts.jpg" border="0" alt="Outlet Layout" width="600" height="300" /></p>', '', 0, 0, 0, 0, '2009-09-04 15:07:42', 62, '', '2009-10-18 20:40:10', 62, 0, '0000-00-00 00:00:00', '2009-09-04 15:07:42', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 19, 0, 9, '', '', 0, 3, 'robots=\nauthor='),
(10, 'What Is RSS', 'what-is-rss', '', '<h3 class="headerorange">What Is RSS?</h3>\r\n<p><img src="images/articles/rsslogo.jpg" border="0" alt="RSS" hspace="7" vspace="7" width="200" height="200" align="right" />RSS stands for "Really Simple Syndication" or in some cases "Rich Site Summary."  It is a standardized format by which information can be transferred over the web between different websites.  The RSS document or "feed" is created on one website and made available to the world similar to a webpage.  It has an URL address the same as any website you are familiar with.  The difference is that when another website or application makes a call to that URL, a feed is returned which can then be consumed and interpreted by the requesting website or application.</p>\r\n<p>If you already know all this, cool and have fun with this site.  If I have already lost you, hang on because there are a few examples to follow in the getting started section that will show you exactly how to obtain a feed address, and then what to do with it within Read Some Stuff.  It is not important that you completely understand what a RSS feed is to be able to make good use of them within Read Some Stuff.</p>\r\n<ul>\r\n<li><a href="index.php?option=com_content&amp;view=article&amp;id=6" title="Getting Started">Getting Started</a></li>\r\n</ul>', '', 0, 0, 0, 0, '2009-10-08 22:55:54', 62, '', '2009-10-18 22:06:51', 62, 0, '0000-00-00 00:00:00', '2009-10-08 22:55:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 6, '', '', 0, 153, 'robots=\nauthor='),
(6, 'Getting Started', 'getting-started', '', '<h3 class="headerorange">Getting Started</h3>\r\n<p>The very first step in starting to use Read Some Stuff is to <a href="index.php?option=com_user&amp;task=register" title="Signup For Account">signup</a> for your free account.  This is required so that as you begin setting up your Read Some Stuff outlets, they will be saved for the next time you return to the site and login.</p>\r\n<p>Once you have your account and have activated it through a valid email account, it is time to get started.  Start off by signing into Read Some Stuff with the username and password you just created.  This will then take you to your Read Some Stuff outlets page.  From here you will want to begin setting up your outlets.</p>\r\n<p><strong>Setting Up An Outlet</strong></p>\r\n<p>To setup an outlet, simply click the "Add Outlet" button.  You will see your very first outlet appear on the left side of the screen.  Click edit and give the outlet a name, typically one that will remind you of what kind of content is being returned in that outlet.  For example, if you want to view the San Diego weather in the first outlet, name it "San Diego Weather."</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_addoutlet.jpg" border="0" alt="Adding An Outlet" hspace="7" vspace="7" width="500" height="124" /></p>\r\n<p style="text-align: center;"><span style="font-size: xx-small;">Please note that the configuration screens are designed for a screen resolution of 1024 x 768 or higher.  If you are trying to use a mobile device or monitor with a lower resolution, you may find that parts of the screen are hidden from your view.  Lower screen resolutions are only good for viewing your feeds, not setting them up.</span></p>\r\n<p><strong>Adding A RSS Feed</strong></p>\r\n<p>There are three methods available for you to work with RSS feeds.  Using these methods in combination will allow you to access a good percentage of the world''s online information.</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_addfeed.jpg" border="0" alt="Add Feed" width="500" height="226" /></p>\r\n<p>Method 1:  Search feeds previously defined by other Read Some Stuff users.  See the first red arrow above.  You can import these feeds into your outlet without ever worrying about the address of the feed because others have already done the work for you.  To use this, simply type a keyword and click search.  A dropdown list of all matching feeds will appear below.  Choose the feed you desire and click the "Add Feed" button.</p>\r\n<p>Method 2:  Create feeds from sites  based on keywords.  See second red arrow above.  To use this functionality, select the website from the dropdown that you wish to create your feed from, enter an appropriate keyword, and click the "Create Feed" button.</p>\r\n<p>Method 3:  Create feeds by RSS feed URL.  See the third red arrow above. The first step is identifying a RSS feed that you would like to import into your Read Some Stuff outlet.  <img src="images/articles/help/help_rsslogo.jpg" border="0" alt="RSS Logo" hspace="7" vspace="7" width="32" height="32" align="right" />Start by going to any website that contains the type of information you may be looking for, maybe a news site, maybe a blog, etc.  Once on that page, one way to identify the RSS feed for that page is to look for the RSS icon somewhere on the page.  It will generally be in orange and look something like the logo to the right.  Otherwise, look for something on the page that says RSS.</p>\r\n<p>Web browsers also help you to find any existing RSS feeds that may be on a page.  They have small RSS icons near the top of the page.  When you click on them you are given the RSS feed for that page.</p>\r\n<p style="text-align: center;">Firefox</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_firefox.jpg" border="0" alt="Firefox" width="500" height="114" /></p>\r\n<p> </p>\r\n<p style="text-align: center;">Internet Explorer</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_ie.jpg" border="0" width="500" height="104" /></p>\r\n<p>If you are unable to find a RSS feed for the page you are looking for, your last hope is to use some tools which allow for a RSS feed to still be pulled from a page even though there is not one actually defined on the page.  See the <a href="index.php?option=com_content&amp;view=article&amp;id=12" title="Advanced Usage">Advanced Usage</a> page for more details.</p>\r\n<p>The last step is to filter your results.  There are three options.  The first option is the total number of items to be returned in your outlet.  The second option is to search the feed item and return only results containing a word or phrase that you choose (example:  to return information from a sports website about the Dallas Cowboys, you would want to type Dallas Cowboys in the text box titled "Containing Word/Phrase.")  The third option is to select the time range to return feed items for.  Only items posted within that time frame will be displayed in your outlet.</p>\r\n<p style="text-align: left;">Once you have a feed defined, you can click the "Delete Feed" button to remove it from your outlet.  You can also delete the entire outlet with the "Delete Outlet" button.  Be aware that deletions are final, and you cannot get them back!</p>\r\n<p style="text-align: left;">Once you have defined your feed, click the "Save Outlet" button.  Simple as that!</p>\r\n<p style="text-align: left;">If you forget any of this, just check out the help boxes next to each item for guidance.  You can also click the "Help" button in the upper right hand corner to view this page for help.</p>\r\n<p style="text-align: left;">Give it a try and if you get stuck, please re-read this getting started page or check out the help tips next to each item.  If your still lost, do not hesitate to use the feedback form, and we will do our best to help you out.  Enjoy and have fun!</p>', '', 0, 0, 0, 0, '2009-09-04 15:15:30', 62, '', '2009-10-21 04:00:56', 62, 0, '0000-00-00 00:00:00', '2009-09-04 15:15:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 37, 0, 8, '', '', 0, 305, 'robots=\nauthor='),
(7, 'Login', 'login', '', '<p>{jumi *12}{/jumi}</p>', '', 0, 0, 0, 0, '2009-09-04 15:35:32', 62, '', '2009-10-08 01:43:26', 62, 0, '0000-00-00 00:00:00', '2009-09-04 15:35:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 7, '', '', 1, 487, 'robots=\nauthor='),
(8, 'Login Redirect Session', 'login-redirect-session', '', '<p>{jumi *8}{/jumi}</p>', '', -2, 0, 0, 0, '2009-09-16 01:54:42', 62, '', '2009-09-16 01:55:51', 62, 0, '0000-00-00 00:00:00', '2009-09-16 01:54:42', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 1, 10, 'robots=\nauthor='),
(9, 'Login Redirect Cookie', 'login-redirect-cookie', '', '<p>{jumi *9}{/jumi}</p>', '', -2, 0, 0, 0, '2009-09-16 01:54:42', 62, '', '2009-09-16 02:17:56', 62, 0, '0000-00-00 00:00:00', '2009-09-16 01:54:42', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 1, 74, 'robots=\nauthor='),
(11, 'Contact Us', 'contact-us', '', '<h3 class="headerorange">Contact Us</h3>\r\n<p>Our goal is to provide a tool that saves its users time and helps to organize the informtion that is available on the web through RSS feeds.  We are always looking for new ideas and welcome any ideas for further functionality that you may have.  Also, let us know if you experience any issues.  With an infinite amount of feeds out on the web it is impossible to test for anything, so if you run across a issue, please let us know.  Then we will take a look at it and work to resolve it.</p>\r\n<p>If you have questions, comments, problems, or ideas we encourage you to let us know through our <a href="feedback.php" title="Read Some Stuff Feedback Form" rel="gb_page[500, 500]">feedback form</a>.</p>', '', 0, 0, 0, 0, '2009-10-08 22:58:20', 62, '', '2009-10-18 21:16:24', 62, 0, '0000-00-00 00:00:00', '2009-10-08 22:58:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 5, '', '', 0, 172, 'robots=\nauthor='),
(12, 'Advanced Usage', 'advanced-usage', '', '<h3 class="headerorange">Advanced Usage</h3>\r\n<p>There are times where you are simply unable to find a RSS feed for a page that you would really like to pull content in from.  An example of a site like this which we will work with is <a href="http://www.monster.com" target="_blank" title="Monster">monster.com</a>.  For those of you not aware, monster is a leading website that allows for individuals to search for jobs that are posted by employers.  Lets take <a href="http://jobsearch.monster.com/Search.aspx?brd=1&amp;q=project%20manager&amp;cy=us&amp;where=92109&amp;rad=20&amp;rad_units=miles&amp;re=130" target="_blank" title="Monster Search">this page</a> as an example we will work with.  It is a monster search for project manager jobs in the 92109 zip code.  The problem is that there is no RSS feed for this page.</p>\r\n<p>Luckily for us another site called <a href="http://www.feedity.com" target="_blank" title="Feedity">Feedity</a> is here to help us solve this problem.  Before we begin, lets be upfront and let you know that this solution will take a little technical skill and HTML knowledge.  However, we will try to explain it as clearly as possible with lots of pictures.  Lets get started.</p>\r\n<p>We start by going to the <a href="http://www.feedity.com" target="_blank" title="Feedity">Feedity</a> site.  Take the URL that you found for your search on monster (example:  http://jobsearch.monster.com/Search.aspx?brd=1&amp;q=project%20manager&amp;cy=us&amp;where=92109&amp;rad=20&amp;rad_units=miles&amp;re=130) and paste it in the preview box where the red arrow is in the picture below.  Then click "Preview."</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_feeditystep1.jpg" border="0" alt="Step 1" width="500" height="240" /></p>\r\n<p style="text-align: left;">From the preview screen there are options to refine a search by defining the start and end pieces of HTML code, which will define a item in your new RSS feed.  To find these pieces of code lets go back to the monster site.  What we are looking to do is return each row from the list of jobs as an item in our RSS feed.  To do this, right-click in the middle of the window and select "View Page Source" (see picture below).</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_feeditystep2.jpg" border="0" alt="Step 2" width="500" height="321" /></p>\r\n<p style="text-align: left;">You will be given a window with a bunch of HTML code in it.  Do not get overwhelmed at this point if you are not familar with HTML code.  What we are looking to do is find a starting and ending segment of code to define each item.  Lets go ahead and press Ctrl-F or Edit/Find from your browser to search for the text in the first row.  Try searching for the title that is on the first line.  In this case we are going to search for "project manager."  It highlights this in green for us (see picture below).</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_feeditystep3.jpg" border="0" alt="Step 3" width="500" height="122" /></p>\r\n<p style="text-align: left;">Here is a close up view of the code we are interested in.  In the middle you see"Project Manager" (see the middle red arrow below) which we searched for and found in green above.  In HTML "&lt;tr&gt; defines the beginning of a row and "&lt;/tr&gt;" defines the end of a row.  In this case the starting piece of HTML code is "&lt;tr class=''SingleLineViewEvenRow''&gt;" and the ending piece of HTML code is "&lt;/tr&gt;" (see the two outside red arrows below).</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_feeditystep4.jpg" border="0" alt="Step 4" width="671" height="257" /></p>\r\n<p style="text-align: left;">Now that we have found the starting and ending code segments lets go back to the feedity site.  Click on the "Advanced Refine" on the right hand side.  Place the starting code "&lt;tr class=''SingleLineViewEvenRow''&gt;" in the field for Title Start Block (see below).  Place the ending code "&lt;/tr&gt;" in the field for Title End Block (see below).  Once you have done this click the "Refine" button.  It will come back with a preview of your results.  At the bottom go ahead and select a category in the dropdown box (choose a related topic), and click the "Get Feed" button.</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_feeditystep5.jpg" border="0" alt="Step 5" width="500" height="360" /></p>\r\n<p style="text-align: left;">On the next page shown below you are given your RSS feed URL.  Example:  (http://feedity.com/rss.aspx/monster-com/UlVSUFFT)  Copy the URL you are given and take it back to Read Some Stuff to add it into a new feed within one of your outlets.</p>\r\n<p style="text-align: center;"><img src="images/articles/help/help_feeditystep6.jpg" border="0" alt="Step 6" width="500" height="180" /></p>\r\n<p style="text-align: left;">Hopefully, we did not lose you along the way.  As stated above, this is more advanced and not necessarily meant for all users.  If it works for you, wonderful!  If not, you should be able to get by pretty well by finding RSS feeds on pages, letting Internet Explorer and Firefox help you, by selecting from feeds already defined by other Read Some Stuff users, or by creating feeds from sites based on your keyword , which is all explained on the <a href="index.php?option=com_content&amp;view=article&amp;id=6" title="Getting Started">Getting Started</a> page.  Good luck and have fun!</p>', '', 0, 0, 0, 0, '2009-10-08 23:02:45', 62, '', '2009-10-21 03:32:53', 62, 0, '0000-00-00 00:00:00', '2009-10-08 23:02:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 14, 0, 4, '', '', 0, 200, 'robots=\nauthor='),
(13, 'Registration Form', 'registration-form', '', '<p>{jumi *13}{/jumi}</p>', '', -2, 0, 0, 0, '2009-10-09 01:06:55', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-10-09 01:06:55', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(14, 'Blank Page', 'blank-page', '', '<p><strong></strong></p>', '', 1, 0, 0, 0, '2009-10-20 00:31:31', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-10-20 00:31:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 28, 'robots=\nauthor='),
(15, 'Home - Version 1.10', 'home-version-110', '', '<h3 class="headerorange" style="text-align: left;">Welcome to Read Some Stuff</h3>\r\n<p style="text-align: left;">Read Some Stuff is a new way to connect with the world''s information through the use of RSS (Real Simple Syndication) feeds.  "Redefining RSS" is what you do through the use of advanced tools under your control.</p>\r\n<p style="text-align: left;">Read Some Stuff is built to allow more flexibility and control over the information retrieved through your feeds.  It puts the control back in your hands allowing you to define what is and is not important to you.  Your time is more valuable then ever.  Read Some Stuff is here to allow you to have all the world''s information you are interested in at your fingertips and what your not interested in, far out of your way.  <a href="index.php?option=com_user&amp;task=register" title="Sign Up Now">Sign up now</a> and take control over your news and information.</p>\r\n<p style="text-align: center;"><img src="images/articles/outletlayouts.jpg" border="0" alt="Outlet Layout" width="600" height="300" /></p>', '', -2, 0, 0, 0, '2009-09-04 15:07:42', 62, '', '2010-03-24 21:37:46', 62, 0, '0000-00-00 00:00:00', '2009-09-04 15:07:42', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(16, 'Terms Of Use', 'terms-of-use', '', '<h3 class="headerorange" style="text-align: left;">Terms Of Use</h3>\r\n<p style="text-align: left;">Welcome to Read Some Stuff.  This page will layout the terms of use for the Read Some Stuff also referred to as the "website."  By using Read Some Stuff you accept these terms of use and agree to abide by all policies described below.<br /><br />To use Read Some Stuff you must be able to enter into a binding agreement.  The user must be aware that some of the information that can be accessed through this website may be offensive or inappropriate for some users depending on their age, location, or local rules and regulations.  Read Some Stuff is not responsible for enforcing what content is viewable based on age, physical location, or any associated rules and regulations in your area.<br /><br /><strong>Your Information:</strong><br />Read Some Stuff collects and stores your name, email, and password upon registering for the website.  The website also stores any rss feeds or other information which you enter into the site.  Future plans may include names and emails of your contacts, login information regarding your social networks, and more.  All personal information is not viewable by any other user.  Your rss feeds that you enter are added to the database of available feeds from which other users may choose.  In choosing these feeds there is no connection back to your user account or information.  Future plans may include the ability to match users based on similiar interest in news.  Any and all major changes with regard to the use of information you provide will be clearly detailed in each version release.  This document will also be updated to reflect those changes in the use of your information.<br /><strong><br />Third Party Information:</strong><br />The website allows the user to setup and define rss feeds, and in the future, other channels of information.  Read Some Stuff is not liable for any information delivered to the user through third party channels defined by the user.  Read Some Stuff is also not liable for any information that the user is able to access by channels defined by other users.  <br /><br /><strong>Limitation Of Liability:</strong><br />Read Some Stuff does not host the content which users access through the website.  Read Some Stuff is not responsible for any related loss of data, access to information, or downtime that may occur.  Read Some Stuff is also not liable for any damage that may occur on your computer system or electronic devices from data that is accessed though Read Some Stuff.<br /><br /><strong>Our Rights:</strong><br />Read Some Stuff has complete rights over the website and the data which is collected for use on the website.  Any reproduction, copy, transmission, or other unauthorized use of the information defined by Read Some Stuff is strictly prohibited.<br /><br />Read Some Stuff is protected by intellectual property laws.  The structure, concepts, design, and display are protected under copyright and may not be reproduced in any manner.</p>\r\n<p style="text-align: left;">Read Some Stuff reserves the right to remove a feed, outlet, or entire user''s account based upon the configuration of content which may be obscene, offensive, illegal, or in violation of the spirit of the website.  This may include removing feeds upon request of third party publishers to protect their intellectual property rights.</p>\r\n<p style="text-align: left;">Read Some Stuff shall not be liable for any claim by a third party regarding a violation of a law or other misuse of information configured by users of Read Some Stuff.</p>\r\n<p style="text-align: left;"><strong>Third Party Publishers Rights:</strong><br />Read Some Stuff does not define the feeds or content that is viewable throughout Read Some Stuff.  The feeds are created and used for personal use by the users of the website.  We do respect the intellectual property rights of third party publishers.  If you are a third party publisher and believe that your rights are being infringed upon, please let us know immediately.  Please include the location of the work on Read Some Stuff, a description of your rights to this work, and a description of how your rights are being infinged upon.  We will work with the offending user and work to correct the situation in a timely manner.<br /><br /><strong>Adjustments In Terms Of Use:</strong><br />Read Some Stuff reserves the right to update this document at any time to more clearly define its contents.  If you are concerned with any of its contents, please do not hesitate to contact us for further clarification.</p>', '', 1, 0, 0, 0, '2010-04-01 15:20:39', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-04-01 15:20:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 337, 'robots=\nauthor='),
(17, 'Home - Beta Version 1.10', 'home-beta-version-110', '', '<table border="0" cellspacing="5" cellpadding="5">\r\n<tbody>\r\n<tr>\r\n<td width="50%" valign="top">\r\n<table border="0" cellspacing="5" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<h3 class="headerorange" style="text-align: left;">Welcome to Read Some Stuff</h3>\r\n<h4 style="color:#666666">... Redefining RSS</h4>\r\n<p style="text-align: left;">Read Some Stuff is a new way to connect with the world''s information through the use of RSS (Real Simple Syndication) feeds. "Redefining RSS" is what you do through the use of advanced tools under your control.</p>\r\n<p style="text-align: left;">Read Some Stuff is built to allow more flexibility and control over the information retrieved through your feeds. It puts the control back in your hands allowing you to define what is and is not important to you. Your time is more valuable then ever. Read Some Stuff is here to allow you to have all the world''s information you are interested in at your fingertips and what your not interested in far out of your way.</p>\r\n<p style="text-align: left;">Not sure what a RSS feed is or how to work with them? Not a problem. By using your own search terms you can generate your own feeds from sites such as Google News, YouTube, Twitter, and more. You can also search feeds that have been predefined. As you build your comfort level with RSS feeds, you may start incorporating feeds that you have found into your stream.</p>\r\n<p style="text-align: left;"><a href="index.php?option=com_user&amp;task=register" title="Sign Up Now">Sign up now</a> and take control over your news and information!</p>\r\n<p style="text-align: center;"><img src="images/articles/outletlayouts.png" border="0" alt="Outlet Layout" /></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table style="border-width: 1px 0px 0px 1px;border-spacing: 2px;border-style: solid solid solid solid;border-color: 	orange orange orange orange;border-collapse: collapse;background-color: white;" border="0" cellspacing="0" cellpadding="5" width="100%">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: center;"><br />We are always looking for more ideas. Let us know any features or functionality you think would be useful. Also please let us know if you are experiencing any issues with the site. We are always looking to provide the best user experience possible.<br /><br /><a href="feedback.php" title="Read Some Stuff Feedback Form" rel="gb_page[500, 500]"><img src="images/articles/leavefeedback.png" border="0" alt="Feedback" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td height="10"> </td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table style="border-width: 1px 0px 0px 1px;border-spacing: 2px;border-style: solid solid solid solid;border-color: 	orange orange orange orange;border-collapse: collapse;background-color: white;" border="0" cellspacing="0" cellpadding="5" width="100%">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<h4 class="headerorange" style="text-align: center;">Interesting Uses For Read Some Stuff</h4>\r\n<div style="text-align:left">In additon to providing you with an easy and convienient way of getting all your news and information in one place, here are some other interesting uses for Read Some Stuff. As you come up with other creative ways to use this tool, please send us feedback and let us know.</div>\r\n<ul style="text-align: left;">\r\n<li style="text-align: left;">Job Search Engine: Look for RSS feeds coming from the leading job search sites. Many of them will allow you to view the feed of a saved search. Pull that feed into an outlet and you will constantly be up to date on new job posts for your area and for your profession.</li>\r\n<li style="text-align: left;">Your Friends Photos and Videos: Pull in feeds from your friends'' pages on sites such as Picasa, YouTube, etc. You can stay up to date with any new photos or videos they post immediately.</li>\r\n<li style="text-align: left;">Stock Market Information: Finding feeds from your favorite financial sites and pulling them into your outlets will let you stay on top of events happening in the stock market real time.</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td width="50%" align="center" valign="top">\r\n<table border="0" cellspacing="5" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table style="border-width: 0px 0px 0px 0px;border-spacing: 2px;border-style: solid solid solid solid;border-color: orange orange orange orange;border-collapse: collapse;" border="0" cellspacing="0" cellpadding="5" width="100%">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: center;"><a href="index.php?option=com_user&amp;task=register" title="Sign Up Now"><img src="images/articles/signup.png" border="0" /></a><br /><br /><a href="http://www.facebook.com/pages/Read-Some-Stuff/107114972652590" target="_blank"><img src="images/articles/facebook_fan.png" border="0" alt="Become A Fan On Facebook" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table style="border-width: 1px 0px 0px 1px;border-spacing: 2px;border-style: solid solid solid solid;border-color: orange orange orange orange;border-collapse: collapse;background-color: white;" border="0" cellspacing="0" cellpadding="5">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<h4 class="headerorange" style="text-align: center;">Latest Release - Beta Version 1.10</h4>\r\n<ul style="text-align: left;">\r\n<li style="text-align: left;">Improved flow through the system and reorganization of content within configuration windows.</li>\r\n<li style="text-align: left;">Updated graphics and color scheme.</li>\r\n<li style="text-align: left;">Reorganized code base to support ongoing development. </li>\r\n<li style="text-align: left;">Ability to scroll within an outlet.</li>\r\n<li>Reduced the number of themes available. This was done to reduce the completity and development time in implementing a better GUI experience for our users.</li>\r\n<li>Addition of getting started screen for new users.</li>\r\n<li>Automatically loading configuration screen when adding a new outlet.</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td height="10"> </td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table style="border-width: 1px 0px 0px 1px;border-spacing: 2px;border-style: solid solid solid solid;border-color: orange orange orange orange;border-collapse: collapse;background-color: white;" border="0" cellspacing="0" cellpadding="5">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<h4 class="headerorange" style="text-align: center;">Compatible With The Following Browsers</h4>\r\n<ul style="text-align: left;">\r\n<li style="text-align: left;">Internet Explorer 7</li>\r\n<li style="text-align: left;">Internet Explorer 8</li>\r\n<li style="text-align: left;">Mozilla Firefox 3</li>\r\n<li style="text-align: left;">Safari 4</li>\r\n<li style="text-align: left;">Google Chrome 4</li>\r\n<li style="text-align: left;">Opera 10</li>\r\n<li style="text-align: left;">Note: We no longer provide support for Internet Explorer 6. We recommend upgrading to one of the above browsers if you are experiencing issues with the website.</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td height="10"> </td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table style="border-width: 1px 0px 0px 1px;border-spacing: 2px;border-style: solid solid solid solid;border-color: orange orange orange orange;border-collapse: collapse;background-color: white;" border="0" cellspacing="0" cellpadding="5">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<h4 class="headerorange" style="text-align: center;">Features Coming In Future Releases</h4>\r\n<ul style="text-align: left;">\r\n<li style="text-align: left;">Maintain contacts in your account.</li>\r\n<li style="text-align: left;">Forward news and information from your feeds to your contacts quickly and easily.</li>\r\n<li style="text-align: left;">Save your favorite articles to be viewed at a later date.</li>\r\n<li style="text-align: left;">Post selected news from your outlets to your favorite social media sites, Facebook, Twitter, and more.</li>\r\n<li style="text-align: left;">Become friends with other people who have accounts.</li>\r\n<li style="text-align: left;">Create outlets that are shared with your friends, such as photos from Picasa, videos from YouTube, and more.</li>\r\n<li style="text-align: left;">Automated determination of your screens resolution and the amount of information you have on your screen to maximize the use of the content area on your screen.</li>\r\n<li style="text-align: left;">Widgets that can be placed in your outlet to show a specific type of content such as photos, videos, or other multimedia information.</li>\r\n<li style="text-align: left;">Suggesting friends or contacts based on your interests as determined from the type of news you choose to read.</li>\r\n<li style="text-align: left;">Import and export feeds in OPML format.</li>\r\n<li style="text-align: left;">Button to reload an individual outlet.</li>\r\n<li style="text-align: left;">Collapse outlets when empty.</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 0, '2010-04-01 15:21:00', 62, '', '2010-04-02 02:45:56', 62, 0, '0000-00-00 00:00:00', '2010-04-01 15:21:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 1, '', '', 0, 35, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `rss_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `rss_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_content_frontpage`
--

INSERT INTO `rss_content_frontpage` (`content_id`, `ordering`) VALUES
(5, 3),
(15, 2),
(17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rss_content_rating`
--

CREATE TABLE IF NOT EXISTS `rss_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `rss_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `rss_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `rss_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `rss_core_acl_aro`
--

INSERT INTO `rss_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0),
(11, 'users', '63', 0, 'betatest', 0),
(12, 'users', '64', 0, 'Michelle Gay', 0),
(13, 'users', '65', 0, 'Scott', 0),
(14, 'users', '66', 0, 'Winestein', 0),
(46, 'users', '98', 0, 'Jim Siddons', 0),
(45, 'users', '97', 0, 'Mitche', 0),
(24, 'users', '76', 0, 'Chris Harrison', 0),
(25, 'users', '77', 0, 'KIMBERLY STEELE', 0),
(26, 'users', '78', 0, 'Gyrus', 0),
(27, 'users', '79', 0, 'keeron', 0),
(28, 'users', '80', 0, 'evens', 0),
(29, 'users', '81', 0, 'evey', 0),
(30, 'users', '82', 0, 'Rick', 0),
(31, 'users', '83', 0, 'Todd Carter', 0),
(32, 'users', '84', 0, 'kabob', 0),
(33, 'users', '85', 0, 'Yvon Pilote', 0),
(34, 'users', '86', 0, 'Wendy Tam', 0),
(35, 'users', '87', 0, 'David McNeill', 0),
(36, 'users', '88', 0, 'conmankilla', 0),
(37, 'users', '89', 0, 'AbiGail', 0),
(38, 'users', '90', 0, 'Donald Dubuque', 0),
(39, 'users', '91', 0, 'Linda Lucey', 0),
(40, 'users', '92', 0, 'ROGER BURROWS', 0),
(41, 'users', '93', 0, 'Jim Bergquist', 0),
(42, 'users', '94', 0, 'Kim smallacombe', 0),
(43, 'users', '95', 0, 'Dennis Stratton', 0),
(44, 'users', '96', 0, 'Daniel Sale', 0),
(49, 'users', '101', 0, 'phaseu', 0),
(51, 'users', '103', 0, 'Matt Sullivan', 0),
(52, 'users', '104', 0, 'testdrive', 0),
(53, 'users', '105', 0, 'Elicia', 0),
(54, 'users', '106', 0, 'scott briggs', 0),
(55, 'users', '107', 0, 'Tracy Siri', 0),
(56, 'users', '108', 0, 'searecedes', 0),
(57, 'users', '109', 0, 'abdul qader', 0),
(58, 'users', '110', 0, 'TerryVN', 0),
(59, 'users', '111', 0, 'Jessica', 0),
(60, 'users', '112', 0, 'Urgenebex', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rss_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `rss_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `rss_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `rss_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `rss_core_acl_aro_groups`
--

INSERT INTO `rss_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `rss_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `rss_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `rss_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `rss_gacl_value_aro_sections` (`value`),
  KEY `rss_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `rss_core_acl_aro_sections`
--

INSERT INTO `rss_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rss_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `rss_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_core_acl_groups_aro_map`
--

INSERT INTO `rss_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(18, '', 11),
(18, '', 12),
(18, '', 13),
(18, '', 14),
(18, '', 24),
(18, '', 25),
(18, '', 26),
(18, '', 27),
(18, '', 28),
(18, '', 29),
(18, '', 30),
(18, '', 31),
(18, '', 32),
(18, '', 33),
(18, '', 34),
(18, '', 35),
(18, '', 36),
(18, '', 37),
(18, '', 38),
(18, '', 39),
(18, '', 40),
(18, '', 41),
(18, '', 42),
(18, '', 43),
(18, '', 44),
(18, '', 45),
(18, '', 46),
(18, '', 49),
(18, '', 51),
(18, '', 52),
(18, '', 53),
(18, '', 54),
(18, '', 55),
(18, '', 56),
(18, '', 57),
(18, '', 58),
(18, '', 59),
(18, '', 60),
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `rss_core_log_items`
--

CREATE TABLE IF NOT EXISTS `rss_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_core_log_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `rss_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_custom_outlets`
--

CREATE TABLE IF NOT EXISTS `rss_custom_outlets` (
  `id` int(11) NOT NULL auto_increment,
  `outlet_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `shared` varchar(10) NOT NULL,
  `totalitems` int(11) NOT NULL,
  `timerange` int(11) NOT NULL,
  `limitingtext` varchar(100) NOT NULL,
  `display_column` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=317 ;

--
-- Dumping data for table `rss_custom_outlets`
--

INSERT INTO `rss_custom_outlets` (`id`, `outlet_id`, `user_id`, `name`, `shared`, `totalitems`, `timerange`, `limitingtext`, `display_column`, `display_order`) VALUES
(2, '848ad110-e5c9-a5c4-b1cc-59b83223f061', 62, 'SoCal Brewinery', 'Yes', 10, 1, '', 1, 1),
(80, '02a04a4d-0dae-aed4-69a1-6ccafd9f5ce4', 66, 'Breweries (Twitter)', 'Yes', 15, 1, 'http://', 1, 5),
(4, 'Tiger-62', 62, 'Dev', 'Yes', 10, 7, '', 2, 1),
(5, 'Whale-62', 62, 'Tribune Etc', 'Yes', 5, 1, '', 3, 1),
(159, 'c740bb55-a7f3-db74-b53b-c13803e8e085', 76, 'new', 'Yes', 10, 1, '', 1, 1),
(79, '6ea94478-941e-ab44-2507-98bf116d1a10', 66, 'Beer News (Twitter)', 'Yes', 15, 1, 'http://', 2, 1),
(50, 'e3fec46d-ab52-6844-59d8-f5858f660760', 62, 'Core Brewing', 'Yes', 10, 7, '', 2, 2),
(215, 'f7c33433-b6d9-c4f4-f1ba-515756fc8bd0', 65, 'Craigslist San Diego', 'Yes', 50, 7, '', 5, 2),
(57, '15d718cf-c228-c9d4-e1cf-c494230304f0', 64, 'Craigslist Jobs', 'Yes', 10, 7, '', 1, 1),
(58, 'b1725bd8-a0b7-8a74-a10f-36b61fe75461', 64, 'Government Jobs', 'Yes', 10, 30, '', 2, 1),
(59, '531849c3-6e31-7bb4-6d94-9c88cbae5297', 64, 'Monster Feedity', 'Yes', 10, 7, '', 3, 1),
(218, '34d7ef1e-3892-3124-81de-64eafafa211a', 65, 'Mashable - Top News', 'Yes', 15, 0, '', 3, 3),
(102, 'bbb37613-e122-9774-09b8-2e66877d2ad1', 65, 'Chicago Tribune', 'Yes', 15, 0, '', 2, 7),
(96, '44e5a67c-c9a0-a614-15ba-b8858fec9614', 65, 'Drupal', 'Yes', 10, 30, '', 1, 11),
(78, '1d176141-e086-0394-65e2-8057b9585137', 66, 'Local Breweries (Twitter)', 'Yes', 15, 1, 'http://', 1, 6),
(101, '3c7ac58a-0b88-ab54-6d7d-514199871681', 63, 'NHL', 'Yes', 10, 7, '', 1, 3),
(316, '58f62c1f-7dd7-69d4-bd0f-262be127efb8', 65, 'Inside Network', 'Yes', 50, 0, '', 1, 1),
(217, 'f45fb41e-60d3-25d4-1995-1875df48d3fb', 65, 'Digg - Technology', 'Yes', 15, 0, '', 2, 2),
(95, '09ec945f-1a61-fe34-8d8e-78d3a58b647a', 65, 'Joomla', 'Yes', 15, 7, '', 1, 10),
(104, 'ceb31f6c-4b10-8074-7539-4bb9d7674286', 65, 'Google News', 'Yes', 15, 2, '', 3, 5),
(91, '0b0fe4b1-5f13-9164-31c4-d4211af34ead', 66, 'Google News (Wine)', 'Yes', 10, 1, '', 3, 1),
(90, '341bde9b-0256-fcc4-b1ba-b086569185ac', 66, 'Google News (Beer)', 'Yes', 10, 1, '', 1, 2),
(81, '4d714d8c-f33d-7484-a1dc-4f975fe8d1e0', 66, 'Local Breweries', 'Yes', 15, 2, '', 1, 4),
(82, 'f589887a-7df1-b3e4-8541-e1437035531d', 66, 'Beer News', 'Yes', 15, 1, '', 2, 3),
(83, '5235e129-22a0-ef94-b9b5-140b54dd3fca', 66, 'Beer Events', 'Yes', 15, 30, 'http://', 2, 2),
(84, '47fd5df0-397b-eb64-ad39-f53b781adbaf', 66, 'Local Wineries', 'Yes', 15, 1, '', 3, 2),
(85, 'f878e573-8c9e-dc04-6ded-3c5a6491f43b', 66, 'All Wineries', 'Yes', 15, 1, '', 3, 3),
(86, 'f677257e-003e-64d4-f5df-528acc356364', 66, 'Wine News', 'Yes', 15, 1, '', 3, 4),
(87, '64be5db1-1aea-58b4-81e9-0bf77b7c1e71', 66, 'Wine News (Twitter)', 'Yes', 15, 1, 'http://', 4, 1),
(88, '006dd3d8-dc32-ea54-21b8-cb1f518b3950', 66, 'All Breweries', 'Yes', 15, 2, '', 1, 3),
(111, '4c7e8252-c64b-21c4-29fa-808ff0488a51', 68, 'Five', 'Yes', 10, 1, '', 5, 1),
(112, '98245c0e-5171-0874-7d94-322c56824f10', 68, 'Test2', 'Yes', 10, 1, '', 4, 1),
(113, '2f7023d9-5590-8094-d11e-dca1e5108629', 68, 'Help2', 'Yes', 10, 1, '', 5, 2),
(117, 'a3223130-4d96-9f64-61d6-2bacbad313c7', 68, 'Four', 'Yes', 10, 1, '', 1, 2),
(118, 'bf738a19-fd98-3234-9174-6343e4694162', 68, 'Three', 'Yes', 10, 1, '', 4, 2),
(119, 'd692b444-20c4-7fd4-f166-c9c4bd297319', 68, 'two', 'Yes', 10, 1, '', 5, 3),
(120, '8153d2fa-70d1-1d84-653d-e0771aebbd98', 68, 'One', 'Yes', 10, 1, '', 5, 4),
(122, '64221c5b-2a63-fde4-41a3-53e131c18ccb', 68, 'Testing', 'Yes', 10, 1, '', 1, 1),
(135, 'df3784d9-8d1a-20a4-ad83-5e8b5f2b1516', 70, 'xyz', 'Yes', 5, 1, 'goggles', 2, 1),
(158, 'c55b5955-9e16-0d94-29a3-f6cca43766de', 64, 'new', 'Yes', 10, 1, '', 4, 1),
(136, 'dd2ee55b-ea97-0534-d914-2485561f473b', 69, 'wave', 'Yes', 15, 1, '', 3, 2),
(151, '0ec993e8-47ea-e1d4-79ed-cb337398b36f', 72, 'jobs', 'Yes', 10, 2, 'san diego', 1, 1),
(143, '17a05a69-299a-8e74-e55f-6ee6e60725c6', 69, 'happy', 'Yes', 15, 7, '', 1, 2),
(141, '9181634f-0e8c-0c04-d147-d6aeec8017f6', 70, 'yrtyrttttt', 'Yes', 10, 1, '', 1, 4),
(155, '7185b7b2-0532-2454-e964-361aa180a3c4', 72, 'new', 'Yes', 10, 1, '', 1, 2),
(148, '0458762c-7c8a-e1e4-49bd-0ee727308b1e', 71, 'xyz', 'Yes', 10, 1, 'therapy', 5, 2),
(145, '505c1c22-c939-01c4-3d68-a5880ec7271f', 69, 'love', 'Yes', 10, 2, '', 3, 1),
(146, '1af43845-8250-4a04-950a-016b545a65ab', 69, 'new', 'Yes', 10, 1, '', 1, 1),
(150, '1523ee08-b8ca-f9f4-852f-76039960cf5f', 71, 'new', 'Yes', 10, 1, '', 5, 1),
(153, '1c909d74-5902-9364-25ea-e1ecc9a91917', 72, 'bunz', 'Yes', 5, 1, '', 3, 1),
(154, 'a38a9967-353e-0044-2524-d96c97fa640b', 71, 'new', 'Yes', 10, 1, '', 1, 1),
(160, '4497c88b-c466-7494-bd14-d2451b675f74', 78, 'Media', 'Yes', 10, 1, '', 1, 1),
(161, '187e7b7f-c2c0-4204-316f-624a86623df1', 78, 'Science', 'Yes', 10, 1, '', 2, 1),
(162, '562787c8-e551-4e34-118e-537af90748ab', 78, 'Technology', 'Yes', 10, 1, '', 3, 1),
(163, 'b21e69a1-fe39-e094-1938-68ab4954042e', 80, 'new', 'Yes', 10, 1, '', 1, 33),
(164, 'ee64788c-1636-3b64-0d66-ab78784b88f2', 80, 'new', 'Yes', 10, 1, '', 1, 32),
(165, 'b2190be6-1b51-e094-a592-4ff1bf975556', 80, 'new', 'Yes', 10, 1, '', 1, 31),
(166, '29b190ef-b32b-a684-496a-b766bf1e7b0d', 80, 'new', 'Yes', 10, 1, '', 1, 30),
(167, '8e0198f5-2ae0-6794-e91f-a12fd5861563', 80, 'new', 'Yes', 10, 1, '', 1, 29),
(168, 'be33b541-ec5e-1314-45bd-1ada69ce5f85', 80, 'new', 'Yes', 10, 1, '', 1, 28),
(169, 'eb0bee81-66d2-e9e4-3930-952e753c663f', 80, 'new', 'Yes', 10, 1, '', 1, 27),
(170, 'f3368418-da65-9814-2962-6a291ddd01ec', 80, 'new', 'Yes', 10, 1, '', 1, 26),
(171, 'd6dec610-cfe6-c354-d9e9-e119470eaa5e', 80, 'new', 'Yes', 10, 1, '', 1, 25),
(172, 'd5bbbd6a-ccb3-c5e4-9178-ad2ab929ff3f', 80, 'new', 'Yes', 10, 1, '', 1, 24),
(173, '82646761-d4b4-a754-317e-9da33a4ff904', 80, 'new', 'Yes', 10, 1, '', 1, 23),
(174, '08e89ece-5201-8944-c5e6-1a94e8952b3a', 80, 'new', 'Yes', 10, 1, '', 1, 22),
(175, 'eeb29366-b058-1414-2962-c014ca540182', 80, 'new', 'Yes', 10, 1, '', 1, 21),
(176, 'a77fcc08-3bfb-4d74-e15d-7870a04ffb0d', 80, 'new', 'Yes', 10, 1, '', 1, 20),
(177, 'a8a4be54-8473-b574-a906-eb4a311c11dd', 80, 'new', 'Yes', 10, 1, '', 1, 19),
(178, 'd7c62c6b-506e-ea74-2562-b94ac4d95caa', 80, 'new', 'Yes', 10, 1, '', 1, 18),
(179, 'dd39391e-6d46-a684-adbe-bd7d8287cac8', 80, 'new', 'Yes', 10, 1, '', 1, 17),
(180, '67203a3b-6f15-3774-993b-e9f8d13b787b', 80, 'new', 'Yes', 10, 1, '', 1, 16),
(181, '78a7c172-5291-f574-89f2-92514eb4af67', 80, 'new', 'Yes', 10, 1, '', 1, 15),
(182, '1d6bf7fb-e78d-5df4-d13f-6b27633317d3', 80, 'new', 'Yes', 10, 1, '', 1, 14),
(183, 'cd1aae3d-0acb-6ae4-f5aa-3d85f317c6a0', 80, 'new', 'Yes', 10, 1, '', 1, 13),
(184, '70731cda-48d7-5584-7d8e-2331777b6454', 80, 'new', 'Yes', 10, 1, '', 1, 12),
(185, 'e428da73-eecd-c7c4-753b-3ab63edd7c11', 80, 'new', 'Yes', 10, 1, '', 1, 11),
(186, 'ac192ee2-8826-0944-e9e6-f4d6911d3f2a', 80, 'new', 'Yes', 10, 1, '', 1, 10),
(187, 'b4a02e21-888c-8054-e96a-e4aff8658f57', 80, 'new', 'Yes', 10, 1, '', 1, 9),
(188, 'fb2fb470-b665-9fc4-3919-eb9774d7b69f', 80, 'new', 'Yes', 10, 1, '', 1, 8),
(189, '437b08fb-145a-2154-e1f2-4aaf6cbec5ea', 80, 'new', 'Yes', 10, 1, '', 1, 7),
(190, '0c2689d2-7848-2ee4-8535-04191bde30fb', 80, 'new', 'Yes', 10, 1, '', 1, 6),
(191, 'd62b5e21-6934-6404-8dba-76a032f3f3e7', 80, 'new', 'Yes', 10, 1, '', 1, 5),
(192, '976f9b79-e506-4bd4-5902-a181181a0871', 80, 'new', 'Yes', 10, 1, '', 1, 4),
(193, 'e8597f9f-f920-37b4-a5c1-25cae525fa33', 80, 'new', 'Yes', 10, 1, '', 1, 3),
(194, '3b2f8027-bf41-06a4-218e-38d80542babb', 80, 'new', 'Yes', 10, 1, '', 1, 2),
(195, 'f0f65bb5-c8d2-6564-058f-a6897da0757b', 80, 'new', 'Yes', 10, 1, '', 1, 1),
(196, '87887290-b665-9d34-75b2-fe0518e28358', 86, 'new', 'Yes', 10, 1, '', 1, 2),
(197, '89c60d91-a574-4494-d9fc-ba88979c4be3', 86, 'new', 'Yes', 10, 1, '', 1, 1),
(198, '612e7642-ea4f-ff34-8994-cd7cf68ff906', 85, 'BBCNews International', 'Yes', 15, 1, '', 1, 1),
(199, '109e7504-b523-8814-e9ca-017626e7d3cd', 87, 'new', 'Yes', 10, 1, '', 1, 1),
(200, '0d2fe851-7da9-eca4-2d2c-8c100a19bddb', 91, 'new', 'Yes', 10, 1, '', 1, 1),
(201, '2ac5b854-37a4-9d54-2dba-36c3efa4bec1', 82, 'new', 'Yes', 10, 1, '', 1, 1),
(202, '77b58e35-1fd7-2fd4-e5bc-e279653a8ac6', 92, 'new', 'Yes', 10, 1, '', 1, 2),
(203, 'ddf0e1f0-a38f-b9d4-51f7-2857a8f6fdb2', 92, 'wikipedia', 'Yes', 10, 1, 'wikipedia,ifr', 1, 1),
(204, '7934363b-dc3a-8204-797a-6c7af3c1164c', 93, 'lasers', 'Yes', 10, 30, 'laser optics', 1, 5),
(205, '6d32179e-54e7-77d4-8993-40bf009efb94', 93, 'MN weather', 'Yes', 5, 1, '', 1, 4),
(206, '677bc773-9024-0034-65ab-dac44affc511', 93, 'Computers', 'Yes', 10, 30, 'computer', 1, 3),
(207, '9f6927f0-9248-4c44-998b-1ec1d5205007', 95, 'new', 'Yes', 10, 1, '', 1, 2),
(208, '050bdb1b-3937-ca54-f937-0f4532757689', 95, 'new', 'Yes', 10, 1, '', 1, 1),
(209, 'fa407b7a-9c53-5294-4dc6-97f80f61dbb3', 96, 'new', 'Yes', 10, 1, '', 1, 2),
(210, '96629e63-487c-cd64-51b6-d52745e0ea5d', 93, 'Lakes Country Cisco Academy', 'Yes', 10, 30, 'Cisco', 1, 2),
(211, '4f2c3a19-cfb5-8844-2da2-a3ca2c895a63', 93, 'new', 'Yes', 10, 1, '', 1, 1),
(266, '267009a4-1e38-51a4-c992-d1d980623692', 97, 'San Diego News', 'Yes', 10, 1, '', 1, 1),
(214, '5d953bb3-d49b-af64-3d89-5a2e5b4ce663', 66, 'Videos', 'Yes', 10, 7, '', 1, 1),
(219, '61bdc426-142d-f784-350a-db4f8800f642', 97, 'Sports', 'Yes', 15, 7, '', 3, 1),
(220, '8b9dfa27-cf36-9624-85f5-218c9e9aca21', 97, 'PBR', 'Yes', 15, 30, '', 4, 1),
(221, 'abed42c0-07ae-5794-c1fc-e2050c7eed2a', 97, 'U.S. News', 'Yes', 15, 2, '', 2, 1),
(222, '1fd61b4f-fc3f-daf4-9d33-643da9040e1d', 97, 'Weather', 'Yes', 15, 1, '', 1, 2),
(224, '0104e153-d8dd-2f04-e90e-83d07f23f5e3', 65, 'Chicago Blackhawks', 'Yes', 5, 2, '', 4, 5),
(225, '0bfb61a8-8a09-a144-f956-55ddc8911015', 65, 'Cubs News', 'Yes', 15, 2, '', 4, 4),
(226, '0fb7ecd4-52e2-0d74-7129-8d42f0ddfe0b', 65, 'Slashdot', 'Yes', 15, 0, '', 1, 6),
(227, '9fcc9be4-db2d-0684-558e-bb48009b4f83', 65, 'Engadget', 'Yes', 10, 2, '', 2, 4),
(309, 'ec76895e-7ae6-1694-f1c3-dd1cbe57d1c3', 65, 'Techcrunch', 'Yes', 15, 2, '', 3, 1),
(230, 'dcebcfb1-c705-79e4-4955-34da874d375e', 65, 'cNet', 'Yes', 15, 2, '', 2, 5),
(231, '82dc96cf-92c2-efa4-b19a-c68065b88efe', 65, 'Stock Markets', 'Yes', 15, 0, '', 3, 7),
(232, '71443b39-3914-d584-e5b5-d5708b5ddd90', 65, 'CNN Money - Technology', 'Yes', 10, 0, '', 3, 8),
(233, '7cea8fc5-69c2-2044-ede8-1e3e72a61b3f', 65, 'Google Stock Market News', 'Yes', 15, 1, '', 3, 6),
(234, 'd0fe2f05-7cd3-1e94-5de4-879a18392390', 65, 'Bob Parsons', 'Yes', 10, 7, '', 1, 9),
(264, '93aa6324-2136-ae84-a919-a220fed2b2c5', 65, 'NHL Scores', 'Yes', 10, 0, '', 4, 8),
(243, '30d55215-e45d-4e44-f520-3c463af9fe7f', 98, 'new', 'Yes', 10, 1, '', 1, 1),
(240, '95a798e5-0bcb-2524-213b-9a1cc6bbfdeb', 65, 'Techmeme', 'Yes', 15, 2, '', 2, 3),
(242, '6979a0c8-7886-fb14-793b-5f8440439896', 98, 'new', 'Yes', 10, 1, '', 3, 1),
(244, '7b0ae288-622c-7c44-6106-ef21b70401d0', 98, 'new', 'Yes', 10, 1, '', 2, 1),
(245, '1278cba0-548e-b834-8516-f2e17e622e89', 98, 'new', 'Yes', 10, 1, '', 3, 2),
(246, '9800aaac-3191-eb14-49cf-e6092108b2fa', 98, 'new', 'Yes', 10, 1, '', 2, 2),
(248, 'e9bcad8d-0879-2ab4-990d-173354a3c21f', 65, 'Daily Deals', 'Yes', 5, 1, '', 5, 6),
(312, '1bc2bd86-a701-b6b4-a1bd-71982dcdc82f', 65, 'Venture Hacks', 'Yes', 5, 0, '', 3, 2),
(313, 'cb549e43-7dc9-5514-0d55-b72c2d8687ce', 65, 'The Onion', 'Yes', 10, 0, '', 4, 1),
(314, 'cce97936-7fa0-16e4-69b7-c2181283373e', 65, 'Startup School', 'Yes', 5, 0, '', 5, 1),
(310, 'dee8ec0c-435b-bce4-d1f3-a63ab70fa079', 65, 'Venture Beat', 'Yes', 15, 0, '', 1, 2),
(311, '5578ccf6-4eab-5b94-d9cf-3dc317aaad6a', 65, 'Mixergy', 'Yes', 5, 0, '', 1, 4),
(254, '96c7558a-a549-6944-7dff-dc856c907658', 65, 'Austin Jobs', 'Yes', 15, 30, 'php', 5, 4),
(255, '4ac5c88e-518f-f3a4-5d72-6242c5ef241b', 65, 'Team PBR', 'Yes', 15, 7, '', 4, 3),
(257, '9a67b39b-7228-6404-d1ee-04a7caa88ff8', 100, 'Cool Videos', 'Yes', 10, 1, '', 1, 1),
(258, '126f52bb-cdde-6064-2974-fe8b8c4089b5', 101, 'Test', 'Yes', 10, 1, '', 1, 1),
(261, '40f47a88-4ba2-9e64-d535-d6b023703274', 96, 'new', 'Yes', 10, 1, '', 1, 1),
(260, '30cd4c8f-9aa7-e9b4-11e6-f28ecadbf244', 102, 'test', 'Yes', 5, 1, '', 1, 1),
(315, '44831108-1c82-a854-bdd7-e6dc49253bce', 65, 'Loewenherz', 'Yes', 5, 0, '', 1, 7),
(263, '398d6a44-a3e0-6dd4-e5c0-fd1feeb38478', 65, 'MLB Scores', 'Yes', 10, 0, '', 4, 7),
(265, '5b765f30-3e84-1664-29c8-ff92ca2862dd', 65, 'NBA Scores', 'Yes', 10, 0, '', 4, 9),
(269, '90f868d9-5bac-e9b4-b949-c3ecbc1e0e45', 63, 'Stocks', 'Yes', 15, 2, '', 4, 1),
(268, '867467c0-3313-efa4-915b-ce62a6ac972b', 63, 'MLB', 'Yes', 10, 1, '', 1, 2),
(270, '3eafcaf3-fdcd-0de4-ad47-7909ae943461', 63, 'San Diego News', 'Yes', 10, 1, '', 3, 1),
(271, '978b896e-2ee6-af94-356e-97cdacea70bd', 63, 'Jobs', 'Yes', 10, 1, '', 4, 2),
(272, '0abf7eb5-1fde-7e34-e575-2c7e39354452', 63, 'Weather', 'Yes', 5, 1, '', 1, 1),
(273, '26f19eac-d4c0-f404-f5a0-4a75aee8dea3', 63, 'cNet', 'Yes', 10, 1, '', 2, 1),
(274, '4acc92ba-9f2b-1ca4-d180-6c12a9a407a8', 63, 'Mashable', 'Yes', 10, 1, '', 3, 2),
(275, 'fecf27c9-0a18-b604-e974-bec1034c0333', 65, 'Encosia', 'Yes', 10, 0, '', 1, 8),
(276, '8120741c-6031-ab04-4de3-96c8df5d35b9', 65, 'Hanselman', 'Yes', 10, 7, '', 2, 6),
(279, 'a1fff516-d109-efd4-5d58-da038f58796e', 65, 'Test Google Alerts', 'Yes', 10, 1, '', 5, 5),
(278, '9b8a3dea-45b0-5664-d57e-bbfea01ddcde', 65, 'Web Design', 'Yes', 50, 7, '', 3, 4),
(280, 'eedbf015-a17f-c254-8144-81df7c7185f9', 65, 'Read Write Web', 'Yes', 15, 2, '', 2, 1),
(281, 'bb77d2e8-acae-7214-2505-cd035feb77bc', 65, 'Boxing', 'Yes', 10, 7, '', 4, 6),
(282, 'e38f80ac-c235-0574-4d53-4acee65907c3', 103, 'YouTube', 'Yes', 10, 1, 'Hey there', 1, 1),
(284, '52505b72-66b2-5984-6d38-b1352b31f87f', 104, 'CNN', 'Yes', 10, 7, '', 1, 3),
(285, 'a1518210-7d37-f5a4-3536-b4557558b187', 104, 'ESPN', 'Yes', 15, 7, '', 3, 2),
(286, 'ea4723ca-f6c7-f6e4-eda4-eed48837f01a', 104, 'Tech', 'Yes', 15, 2, '', 1, 1),
(287, '731b63f2-d064-c334-998f-f18b1832e3e3', 104, 'Google News - San Diego', 'Yes', 10, 7, '', 3, 1),
(288, '9be65655-389a-8dd4-35a6-da57b01b628c', 104, 'MSNBC', 'Yes', 10, 2, '', 2, 2),
(289, '52520222-ff76-6394-c18d-ef38b6a0f3a2', 104, 'Reef Builders', 'Yes', 5, 1, '', 1, 2),
(290, '3139f263-5f5c-8394-6926-4db70d2a7410', 104, 'Techcrunch', 'Yes', 10, 1, '', 2, 1),
(291, 'aeb616a2-f7dd-ed64-5d02-e20c01be3ada', 105, 'Sports', 'Yes', 5, 0, '', 3, 1),
(292, 'd5a656be-48de-4124-ed43-6d33a4c78a8b', 105, 'Run', 'Yes', 10, 1, '', 1, 1),
(293, '5741ee25-a3f2-06c4-7d4a-4facdd315743', 105, 'Shopping', 'Yes', 10, 2, '', 2, 1),
(294, '0c91b07d-f64f-6eb4-a922-722ba80b07e0', 104, 'Test', 'Yes', 10, 1, '', 2, 3),
(295, '7e1a079a-df41-db24-b544-7fe30bfa36ed', 106, 'sports', 'Yes', 10, 7, 'white sox', 1, 1),
(296, 'ebe9cfc3-8400-36e4-69ca-40409a99e438', 107, 'The girls', 'Yes', 10, 7, '', 1, 1),
(297, 'ba488214-991e-20b4-bde3-3733fdf2c030', 107, 'Lakers', 'Yes', 10, 1, '', 2, 1),
(301, 'cdfe2e84-4c00-2a74-59b2-ee959b0a7711', 65, 'Craigslist Tampa', 'Yes', 15, 30, 'php', 5, 3),
(302, '982e2f2b-aaea-b564-8549-078793d3e28b', 65, 'CMT', 'Yes', 15, 7, '', 4, 2),
(303, '1480d49a-59f6-9264-259f-993f9eda223d', 65, 'Storms', 'Yes', 5, 2, '', 5, 8),
(304, 'c6430a3a-b0b7-7d04-35e3-028ace0cf1e7', 65, 'Storm Prediction Center', 'Yes', 5, 2, '', 5, 7),
(305, '1ba24e91-69d8-6684-99de-dfeccb77b6ff', 109, 'new', 'Yes', 10, 1, '', 2, 1),
(306, '3045e237-4ddc-16e4-85ef-1c2f6aaf0897', 65, 'MacWorld', 'Yes', 15, 1, '', 1, 5),
(307, 'eb8a994c-a82a-5214-b911-5048f6d8fa42', 65, 'Y Combinator', 'Yes', 15, 0, '', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rss_custom_outletsrss`
--

CREATE TABLE IF NOT EXISTS `rss_custom_outletsrss` (
  `id` int(11) NOT NULL auto_increment,
  `outlet_id` varchar(50) NOT NULL,
  `rssname` varchar(100) NOT NULL,
  `location` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=461 ;

--
-- Dumping data for table `rss_custom_outletsrss`
--

INSERT INTO `rss_custom_outletsrss` (`id`, `outlet_id`, `rssname`, `location`) VALUES
(111, '1d176141-e086-0394-65e2-8057b9585137', 'Karl Strauss', 'http://twitter.com/statuses/user_timeline/19298578.rss'),
(58, '848ad110-e5c9-a5c4-b1cc-59b83223f061', 'test5', 'http://www.socalbrewinery.com/index.php?format=feed&type=rss'),
(57, 'Whale-62', 'fasdf', 'http://feeds.chicagotribune.com/chicagotribune/sports/'),
(56, 'Whale-62', 'dfas', 'http://www.chicagonow.com/blogs/top-ten-chicago-sports/atom.xml'),
(54, 'Tiger-62', 'Craigslist', 'http://sandiego.craigslist.org/search/?areaID=8&subAreaID=&query=php developer&catAbbreviation=jjj&format=rss'),
(55, 'Tiger-62', 'Stonebrew234', 'http://feeds.feedburner.com/stonebrew/VMhf'),
(110, '1d176141-e086-0394-65e2-8057b9585137', 'Greg From Stone Brewing Company', 'http://twitter.com/statuses/user_timeline/14738000.rss'),
(47, '848ad110-e5c9-a5c4-b1cc-59b83223f061', 'test', 'http://twitter.com/statuses/user_timeline/21877442.rss'),
(60, '848ad110-e5c9-a5c4-b1cc-59b83223f061', 'test3', 'http://rss.weather.com/weather/rss/local/92106?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(109, '1d176141-e086-0394-65e2-8057b9585137', 'Strone Brewing Company', 'http://twitter.com/statuses/user_timeline/16331259.rss'),
(63, 'e3fec46d-ab52-6844-59d8-f5858f660760', 'Core Brewing', 'http://www.corebrewing.com/feed/'),
(291, 'f45fb41e-60d3-25d4-1995-1875df48d3fb', 'Digg -Top News', 'http://feeds.digg.com/digg/topic/tech_news/popular.rss'),
(208, 'bbb37613-e122-9774-09b8-2e66877d2ad1', 'Bob Verdi', 'http://feeds.chicagotribune.com/chicagotribune/bob-verdi?format=xml'),
(263, 'c740bb55-a7f3-db74-b53b-c13803e8e085', 'Jersey', 'http://jersey72.blogspot.com/feeds/posts/default'),
(207, 'bbb37613-e122-9774-09b8-2e66877d2ad1', 'Chicago Sports', 'http://feeds.chicagotribune.com/chicagotribune/sports/'),
(167, '44e5a67c-c9a0-a614-15ba-b8858fec9614', 'Drupal Home', 'http://drupal.org/node/feed'),
(70, '15d718cf-c228-c9d4-e1cf-c494230304f0', 'Craigslist', 'http://sandiego.craigslist.org/csd/bus/index.rss'),
(71, 'b1725bd8-a0b7-8a74-a10f-36b61fe75461', 'Hot Jobs', 'http://hotjobs.yahoo.com/job-rss-l-San_Diego-CA-k-project manager-c-Management_Executive-m-1-d-FT-d-PT-j-PERM-j-CONT-h-project manager;_ylt=At4hkR2i0lmMGdas4hg_FOH6Q6IX'),
(72, '531849c3-6e31-7bb4-6d94-9c88cbae5297', 'Monster - Project Manager', 'http://feedity.com/rss.aspx/monster-com/UlZQV1JS'),
(290, 'f45fb41e-60d3-25d4-1995-1875df48d3fb', 'Digg - Security', 'http://feeds.digg.com/digg/topic/security/popular.rss'),
(286, 'f7c33433-b6d9-c4f4-f1ba-515756fc8bd0', 'Craigslist - Php', 'http://sandiego.craigslist.org/search/jjj?query=php&catAbbreviation=jjj&format=rss'),
(195, 'ceb31f6c-4b10-8074-7539-4bb9d7674286', 'Google News Sci/Tech', 'http://news.google.com/news?pz=1&ned=us&hl=en&topic=t&output=rss'),
(196, 'ceb31f6c-4b10-8074-7539-4bb9d7674286', 'Google News Top Stories', 'http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&topic=h&num=3&output=rss'),
(165, '09ec945f-1a61-fe34-8d8e-78d3a58b647a', 'New Joomla Extensions', 'http://feeds.joomla.org/JoomlaExtensions?format=xml'),
(166, '09ec945f-1a61-fe34-8d8e-78d3a58b647a', 'Joomla Community Blog', 'http://feeds.feedburner.com/JoomlaExtensionDirectoryEditorBlog?format=xml'),
(170, '006dd3d8-dc32-ea54-21b8-cb1f518b3950', 'Rogue', 'http://feedity.com/rss.aspx/rogue-com/UlZaVVFR'),
(173, 'f589887a-7df1-b3e4-8541-e1437035531d', 'The Barley Blog', 'http://www.thebarleyblog.com/feed/'),
(171, '1d176141-e086-0394-65e2-8057b9585137', 'Ballast Point', 'http://twitter.com/statuses/user_timeline/40892068.rss'),
(162, '5235e129-22a0-ef94-b9b5-140b54dd3fca', 'Beer Advocate', 'http://feedity.com/rss.aspx/beeradvocate-com/UlZaVVJa'),
(168, '4d714d8c-f33d-7484-a1dc-4f975fe8d1e0', 'Karl Strauss', 'http://feeds.feedblitz.com/KS'),
(169, '4d714d8c-f33d-7484-a1dc-4f975fe8d1e0', 'The Lost Abbey', 'http://feeds.feedburner.com/TheLostAbbey?format=xml'),
(160, '341bde9b-0256-fcc4-b1ba-b086569185ac', 'Google News Beer', 'http://news.google.com/news?um=1&ned=us&hl=en&q=beer news&output=rss'),
(161, '0b0fe4b1-5f13-9164-31c4-d4211af34ead', 'Google News Wine', 'http://news.google.com/news?um=1&ned=us&hl=en&q=wine news&output=rss'),
(105, '531849c3-6e31-7bb4-6d94-9c88cbae5297', 'Monster - Office Manager', 'http://feedity.com/rss.aspx/monster-com/UlZaVFFV '),
(112, '1d176141-e086-0394-65e2-8057b9585137', 'San Diego Brweing Company', 'http://twitter.com/statuses/user_timeline/18960998.rss'),
(128, '4d714d8c-f33d-7484-a1dc-4f975fe8d1e0', 'The Lost Abbey', 'http://www.lostabbey.com/feed/'),
(114, '6ea94478-941e-ab44-2507-98bf116d1a10', 'Beer Advocate', 'http://twitter.com/statuses/user_timeline/15205798.rss'),
(115, '6ea94478-941e-ab44-2507-98bf116d1a10', 'Brookston', 'http://twitter.com/statuses/user_timeline/9084822.rss'),
(116, '6ea94478-941e-ab44-2507-98bf116d1a10', 'Real Beer', 'http://twitter.com/statuses/user_timeline/3487091.rss'),
(132, '6ea94478-941e-ab44-2507-98bf116d1a10', 'Howe Sound Beer', 'http://twitter.com/statuses/user_timeline/17648331.rss'),
(118, '6ea94478-941e-ab44-2507-98bf116d1a10', 'The Beer Spot', 'http://twitter.com/statuses/user_timeline/14703671.rss'),
(119, '6ea94478-941e-ab44-2507-98bf116d1a10', 'The Full Pint', 'http://twitter.com/statuses/user_timeline/14336082.rss'),
(131, '6ea94478-941e-ab44-2507-98bf116d1a10', 'Beerinator', 'http://twitter.com/statuses/user_timeline/10842552.rss'),
(130, '6ea94478-941e-ab44-2507-98bf116d1a10', 'All About Beer', 'http://twitter.com/statuses/user_timeline/16376711.rss'),
(129, '6ea94478-941e-ab44-2507-98bf116d1a10', 'Beer 47', 'http://twitter.com/statuses/user_timeline/18576239.rss'),
(123, '02a04a4d-0dae-aed4-69a1-6ccafd9f5ce4', '10 Barrel Brewing', 'http://twitter.com/statuses/user_timeline/18248964.rss'),
(124, '02a04a4d-0dae-aed4-69a1-6ccafd9f5ce4', '21st Amendment', 'http://twitter.com/statuses/user_timeline/14980437.rss'),
(125, '02a04a4d-0dae-aed4-69a1-6ccafd9f5ce4', 'Alaskan Brewing', 'http://twitter.com/statuses/user_timeline/19407261.rss'),
(126, '02a04a4d-0dae-aed4-69a1-6ccafd9f5ce4', 'Rogue Ales', 'http://twitter.com/statuses/user_timeline/15635413.rss'),
(127, '02a04a4d-0dae-aed4-69a1-6ccafd9f5ce4', 'Shipyard Brewing', 'http://twitter.com/statuses/user_timeline/17943892.rss'),
(133, '6ea94478-941e-ab44-2507-98bf116d1a10', 'Better Beer Blog', 'http://www.betterbeerblog.com/index.php/feed/'),
(134, 'f589887a-7df1-b3e4-8541-e1437035531d', 'SD Brew', 'http://www.sdbrew.com/feed/'),
(135, 'f589887a-7df1-b3e4-8541-e1437035531d', 'Beer Examiner', 'http://www.examiner.com/RSS-241-Beer-Examiner'),
(136, 'f589887a-7df1-b3e4-8541-e1437035531d', 'Beer Topix', 'http://www.topix.net/rss/drink/beer.xml'),
(137, 'f589887a-7df1-b3e4-8541-e1437035531d', 'The Full Pint', 'http://thefullpint.com/feed'),
(138, 'f589887a-7df1-b3e4-8541-e1437035531d', 'Beer Advocate', 'http://beeradvocate.com/rss/feed?channel=beer_news'),
(139, '5235e129-22a0-ef94-b9b5-140b54dd3fca', 'Beer Events (DRAFT)', 'http://twitter.com/statuses/user_timeline/15969084.rss'),
(140, 'f677257e-003e-64d4-f5df-528acc356364', 'Wine Topix', 'http://rss.topix.net/rss/drink/wine.xml'),
(141, '64be5db1-1aea-58b4-81e9-0bf77b7c1e71', 'My Cellar', 'http://twitter.com/statuses/user_timeline/36546961.rss'),
(142, '64be5db1-1aea-58b4-81e9-0bf77b7c1e71', 'Top Wine News', 'http://twitter.com/statuses/user_timeline/19503553.rss'),
(143, '64be5db1-1aea-58b4-81e9-0bf77b7c1e71', 'Bill Daley', 'http://twitter.com/statuses/user_timeline/16364536.rss'),
(146, 'f878e573-8c9e-dc04-6ded-3c5a6491f43b', 'Lafond Winery', 'http://www.lafondwinery.com/wineweblog/feed/'),
(147, '47fd5df0-397b-eb64-ad39-f53b781adbaf', 'South Coast Winery', 'http://twitter.com/statuses/user_timeline/19935055.rss'),
(148, '4d714d8c-f33d-7484-a1dc-4f975fe8d1e0', 'The Stone Blog', 'http://feeds.feedburner.com/stonebrew/VMhf?format=xml'),
(150, '006dd3d8-dc32-ea54-21b8-cb1f518b3950', 'Dogfish Head', 'http://www.dogfish.com/community/blogfish/rss.xml'),
(151, 'f589887a-7df1-b3e4-8541-e1437035531d', 'Seen Through A Glass', 'http://feeds.feedburner.com/SeenThroughAGlass?format=xml'),
(152, '006dd3d8-dc32-ea54-21b8-cb1f518b3950', 'Goose Island', 'http://gooseislandbeer.blogspot.com/'),
(153, '006dd3d8-dc32-ea54-21b8-cb1f518b3950', 'Brooklyn Brewery', 'http://brooklynbrewery.com/blog/feed/'),
(154, '006dd3d8-dc32-ea54-21b8-cb1f518b3950', 'Abita', 'http://abita.com/news/rss.xml'),
(155, '006dd3d8-dc32-ea54-21b8-cb1f518b3950', 'New Belgium', 'http://www.newbelgium.com/rss/blog'),
(156, 'f589887a-7df1-b3e4-8541-e1437035531d', 'Beersmith', 'http://www.beersmith.com/blog/feed/'),
(157, 'f589887a-7df1-b3e4-8541-e1437035531d', 'The Beer Babe', 'http://feeds.feedburner.com/thebeerbabe?format=xml'),
(158, 'f589887a-7df1-b3e4-8541-e1437035531d', 'Confessions of a Beer Geek', 'http://confessionsofabeerkgeek.blogspot.com/feeds/posts/default?alt=rss'),
(159, 'f677257e-003e-64d4-f5df-528acc356364', 'Vintage Texas', 'http://www.blogcatalog.com/blogs/vintage-texas-searching-for-texas-terroir.html'),
(236, 'dd2ee55b-ea97-0534-d914-2485561f473b', 'Weather (92106)', 'http://rss.weather.com/weather/rss/local/92106?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(235, 'dd2ee55b-ea97-0534-d914-2485561f473b', 'Joomla Community Blog', 'http://feeds.feedburner.com/JoomlaExtensionDirectoryEditorBlog?format=xml'),
(206, 'bbb37613-e122-9774-09b8-2e66877d2ad1', 'Chicago News', 'http://feeds.chicagotribune.com/chicagotribune/news/'),
(285, '5d953bb3-d49b-af64-3d89-5a2e5b4ce663', 'Vimeo Stone Brewing', 'http://vimeo.com/stonebrew/videos/rss'),
(289, 'f45fb41e-60d3-25d4-1995-1875df48d3fb', 'Digg - Programming', 'http://feeds.digg.com/digg/topic/programming/popular.rss'),
(239, '17a05a69-299a-8e74-e55f-6ee6e60725c6', 'Weather', 'http://rss.weather.com/weather/rss/local/60448?cm_ven=LWO'),
(242, 'df3784d9-8d1a-20a4-ad83-5e8b5f2b1516', '', 'http://feeds.joomla.org/JoomlaExtensions?format=xml'),
(241, 'df3784d9-8d1a-20a4-ad83-5e8b5f2b1516', 'YouTube (beer)', 'http://gdata.youtube.com/feeds/base/videos?q=beer&client=ytapi-youtube-search&alt=rss&v=2'),
(244, '505c1c22-c939-01c4-3d68-a5880ec7271f', 'Ballast Point', 'http://twitter.com/statuses/user_timeline/40892068.rss'),
(245, '1af43845-8250-4a04-950a-016b545a65ab', 'Google News (saints)', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=saints&output=rss'),
(254, '0ec993e8-47ea-e1d4-79ed-cb337398b36f', 'Weather (92101)', 'http://rss.weather.com/weather/rss/local/92101?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(247, '0458762c-7c8a-e1e4-49bd-0ee727308b1e', 'Delicious (dogs)', 'http://feeds.delicious.com/v2/rss/tag/dogs'),
(253, '0ec993e8-47ea-e1d4-79ed-cb337398b36f', 'Ballast Point', 'http://twitter.com/statuses/user_timeline/40892068.rss'),
(258, '1c909d74-5902-9364-25ea-e1ecc9a91917', 'Beer', 'http://twitter.com/statuses/user_timeline/16376711.rss'),
(259, '1c909d74-5902-9364-25ea-e1ecc9a91917', 'Weather (60448)', 'http://rss.weather.com/weather/rss/local/60448?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(350, 'e9bcad8d-0879-2ab4-990d-173354a3c21f', 'Living Social - San Diego', 'http://livingsocial.com/cities/12-san-diego?format=atom'),
(266, '4497c88b-c466-7494-bd14-d2451b675f74', 'CNN Top Stories', 'http://rss.cnn.com/rss/cnn_topstories.rss'),
(271, '3b2f8027-bf41-06a4-218e-38d80542babb', '', ''),
(268, '187e7b7f-c2c0-4204-316f-624a86623df1', 'Popular Science', 'http://www.popsci.com/full-feed/science'),
(269, '562787c8-e551-4e34-118e-537af90748ab', 'Slashdot.org', 'http://rss.slashdot.org/Slashdot/slashdot'),
(270, '4497c88b-c466-7494-bd14-d2451b675f74', 'Fox News', 'http://feeds.foxnews.com/foxnews/latest'),
(272, '109e7504-b523-8814-e9ca-017626e7d3cd', 'Google News (money)', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=money&output=rss'),
(273, '109e7504-b523-8814-e9ca-017626e7d3cd', 'Google News Top Stories', 'http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&topic=h&num=3&output=rss'),
(274, '0d2fe851-7da9-eca4-2d2c-8c100a19bddb', 'Weather (27514)', 'http://rss.weather.com/weather/rss/local/27514?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(275, '2ac5b854-37a4-9d54-2dba-36c3efa4bec1', '', ''),
(276, '2ac5b854-37a4-9d54-2dba-36c3efa4bec1', 'Google News ()', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=&output=rss'),
(277, '2ac5b854-37a4-9d54-2dba-36c3efa4bec1', '', ''),
(278, '2ac5b854-37a4-9d54-2dba-36c3efa4bec1', '', ''),
(279, '7934363b-dc3a-8204-797a-6c7af3c1164c', 'Lasers in Science', 'http://rss.sciam.com/sciam/technology#'),
(280, '6d32179e-54e7-77d4-8993-40bf009efb94', 'Weather (56537)', 'http://rss.weather.com/weather/rss/local/56537?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(281, '677bc773-9024-0034-65ab-dac44affc511', 'Computers in Science', 'http://rss.sciam.com/sciam/technology#'),
(282, '96629e63-487c-cd64-51b6-d52745e0ea5d', 'Cisco News', 'http://feed43.com/7856103850648473.xml'),
(292, '34d7ef1e-3892-3124-81de-64eafafa211a', 'Mashable - Top News', 'http://feeds.mashable.com/Mashable?format=xml'),
(293, '61bdc426-142d-f784-350a-db4f8800f642', 'Lakers News', 'http://www.nba.com/lakers/rss.xml'),
(294, '61bdc426-142d-f784-350a-db4f8800f642', 'Google News (Lakers)', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=lakers&output=rss'),
(295, '61bdc426-142d-f784-350a-db4f8800f642', 'NFL News', 'http://www.nfl.com/rss/rsslanding?searchString=home'),
(298, 'abed42c0-07ae-5794-c1fc-e2050c7eed2a', 'Google News', 'http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&topic=n&output=rss'),
(297, '8b9dfa27-cf36-9624-85f5-218c9e9aca21', 'PBR News', 'http://www.pbrnow.com/blog/rss.cfm?mode=full'),
(299, '1fd61b4f-fc3f-daf4-9d33-643da9040e1d', 'CA Weather (92106)', 'http://rss.weather.com/weather/rss/local/92106?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(300, '1fd61b4f-fc3f-daf4-9d33-643da9040e1d', 'IL Weather (60586)', 'http://rss.weather.com/weather/rss/local/60586?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(301, '1fd61b4f-fc3f-daf4-9d33-643da9040e1d', 'TX Weather (78610)', 'http://rss.weather.com/weather/rss/local/78610?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(369, '0104e153-d8dd-2f04-e90e-83d07f23f5e3', 'Blackhawks', 'http://blackhawks.nhl.com/rss/news.xml'),
(303, '0bfb61a8-8a09-a144-f956-55ddc8911015', 'Cubs', 'http://mlb.mlb.com/partnerxml/gen/news/rss/chc.xml'),
(304, '0fb7ecd4-52e2-0d74-7129-8d42f0ddfe0b', 'Slashdot', 'http://rss.slashdot.org/Slashdot/slashdot'),
(305, '9fcc9be4-db2d-0684-558e-bb48009b4f83', 'Engadget', 'http://www.engadget.com/rss.xml'),
(452, 'ec76895e-7ae6-1694-f1c3-dd1cbe57d1c3', 'Techcrunch', 'http://feeds.feedburner.com/TechCrunch'),
(309, 'dcebcfb1-c705-79e4-4955-34da874d375e', 'cNet', 'http://news.cnet.com/2547-1_3-0-20.xml?tag=txt'),
(310, '82dc96cf-92c2-efa4-b19a-c68065b88efe', 'Money - Stock Markets', 'http://rss.cnn.com/rss/money_markets.rss'),
(311, '71443b39-3914-d584-e5b5-d5708b5ddd90', 'CNN Money - Technology', 'http://rss.cnn.com/rss/money_technology.rss'),
(312, '7cea8fc5-69c2-2044-ede8-1e3e72a61b3f', 'Google Stock Market News', 'http://www.google.com/finance/company_news?q=INDEXDJX:.DJI&output=rss'),
(313, 'd0fe2f05-7cd3-1e94-5de4-879a18392390', 'Bob Parsons', 'http://www.bobparsons.me/rss.php'),
(371, '267009a4-1e38-51a4-c992-d1d980623692', 'Kusi News', 'http://www.kusi.com/news/local/index.rss'),
(320, '95a798e5-0bcb-2524-213b-9a1cc6bbfdeb', 'Techmeme', 'http://www.techmeme.com/index.xml'),
(321, '6979a0c8-7886-fb14-793b-5f8440439896', 'Weather', 'http://www.weather.com/weather/today/Villa Park IL 60181?lswe=60181&from=searchbox_localwx'),
(322, '30d55215-e45d-4e44-f520-3c463af9fe7f', 'College Basketball', 'http://rivals.yahoo.com/ncaa/basketball;_ylt=AlK.rdgx8wC.UlD5GLncdOw5nYcB'),
(325, '1278cba0-548e-b834-8516-f2e17e622e89', 'Deal of the day', 'http://w00t.com/'),
(326, '7b0ae288-622c-7c44-6106-ef21b70401d0', 'chicago news', 'www.nbcchicago.com'),
(327, '9800aaac-3191-eb14-49cf-e6092108b2fa', 'Rates', 'http://www.bankrate.com/funnel/savings/savings-results.aspx?local=false&IRA=false&prods=33&ic_id=CR_searchMMASavingsRates_checking_MMASavings'),
(329, 'e9bcad8d-0879-2ab4-990d-173354a3c21f', 'Groupon - San Diego', 'http://feeds.feedburner.com/grouponsan-diego'),
(367, '93aa6324-2136-ae84-a919-a220fed2b2c5', 'NHL Scores', 'http://www.mpiii.com/scores/nhl.php'),
(368, '5b765f30-3e84-1664-29c8-ff92ca2862dd', 'NBA Scores', 'http://www.mpiii.com/scores/nba.php'),
(458, '44831108-1c82-a854-bdd7-e6dc49253bce', 'Lowenherz', 'http://feeds.feedburner.com/dloewenherz'),
(459, '58f62c1f-7dd7-69d4-bd0f-262be127efb8', 'Inside Facebook', 'feed://feeds.feedburner.com/InsideFacebook'),
(457, 'cce97936-7fa0-16e4-69b7-c2181283373e', 'Startup School', 'http://www.justin.tv/startupschool/videos'),
(453, 'dee8ec0c-435b-bce4-d1f3-a63ab70fa079', 'Venture Beat', 'http://feeds.venturebeat.com/Venturebeat'),
(454, '5578ccf6-4eab-5b94-d9cf-3dc317aaad6a', 'Mixergy', 'http://feeds.feedburner.com/Mixergy-blog'),
(455, '1bc2bd86-a701-b6b4-a1bd-71982dcdc82f', 'Venture Hacks', 'http://feeds.venturehacks.com/venturehacks'),
(456, 'cb549e43-7dc9-5514-0d55-b72c2d8687ce', 'The Onion', 'http://feeds.theonion.com/theonion/daily'),
(345, '96c7558a-a549-6944-7dff-dc856c907658', 'Web / Info Design', 'http://austin.craigslist.org/web/'),
(346, '96c7558a-a549-6944-7dff-dc856c907658', 'Internet Engineers', 'http://austin.craigslist.org/eng/'),
(349, '4ac5c88e-518f-f3a4-5d72-6242c5ef241b', 'Team PBR', 'http://www.teampbr.com/tools/combinedfeed.cfm/ct/news/type/rss/id/400025'),
(348, '96c7558a-a549-6944-7dff-dc856c907658', 'software / qa / dba', 'http://austin.craigslist.org/sof/'),
(351, 'e9bcad8d-0879-2ab4-990d-173354a3c21f', 'The Daily Save', 'http://twitter.com/statuses/user_timeline/96250026.rss'),
(352, 'd0fe2f05-7cd3-1e94-5de4-879a18392390', 'Bob Parsons - Twitter', 'http://twitter.com/statuses/user_timeline/20355172.rss'),
(353, '09ec945f-1a61-fe34-8d8e-78d3a58b647a', 'Joomla News', 'http://www.joomla.org/announcements.feed?type=rss'),
(356, '9a67b39b-7228-6404-d1ee-04a7caa88ff8', 'YouTube (google)', 'http://gdata.youtube.com/feeds/base/videos?q=google&client=ytapi-youtube-search&alt=rss&v=2'),
(357, '126f52bb-cdde-6064-2974-fe8b8c4089b5', 'YouTube (fun)', 'http://gdata.youtube.com/feeds/base/videos?q=fun&client=ytapi-youtube-search&alt=rss&v=2'),
(370, '267009a4-1e38-51a4-c992-d1d980623692', 'Google News (san diego news)', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=san diego news&output=rss'),
(363, '398d6a44-a3e0-6dd4-e5c0-fd1feeb38478', 'MLB Scores', 'http://www.mpiii.com/scores/mlb.php'),
(362, '0bfb61a8-8a09-a144-f956-55ddc8911015', 'Cubs', 'http://sports.yahoo.com/mlb/teams/chc/rss.xml'),
(460, '58f62c1f-7dd7-69d4-bd0f-262be127efb8', 'Inside Mobile Apps', 'http://feeds.feedburner.com/InsideMobileApps'),
(372, '4ac5c88e-518f-f3a4-5d72-6242c5ef241b', 'PBR News', 'http://www.pbrnow.com/blog/rss.cfm?mode=full'),
(375, '3c7ac58a-0b88-ab54-6d7d-514199871681', 'NHL Scores', 'http://www.mpiii.com/scores/nhl.php'),
(376, '3c7ac58a-0b88-ab54-6d7d-514199871681', 'Digg (NHL)', 'http://digg.com/rss_search?s=NHL'),
(377, '867467c0-3313-efa4-915b-ce62a6ac972b', 'MLB Scores', 'http://www.mpiii.com/scores/mlb.php'),
(378, '867467c0-3313-efa4-915b-ce62a6ac972b', 'Google News (MLB)', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=MLB&output=rss'),
(379, '90f868d9-5bac-e9b4-b949-c3ecbc1e0e45', 'Google News (stock market)', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=stock market&output=rss'),
(380, '90f868d9-5bac-e9b4-b949-c3ecbc1e0e45', 'Google Stock Market News', 'http://www.google.com/finance/company_news?q=INDEXDJX:.DJI&output=rss'),
(381, '3eafcaf3-fdcd-0de4-ad47-7909ae943461', 'Google News (san diego)', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=san diego&output=rss'),
(382, '3eafcaf3-fdcd-0de4-ad47-7909ae943461', 'Digg (san diego)', 'http://digg.com/rss_search?s=san diego'),
(383, '978b896e-2ee6-af94-356e-97cdacea70bd', 'Craigslist - Php', 'http://sandiego.craigslist.org/search/jjj?query=php&catAbbreviation=jjj&format=rss'),
(384, '0abf7eb5-1fde-7e34-e575-2c7e39354452', 'CA Weather (92106)', 'http://rss.weather.com/weather/rss/local/92106?cm_ven=LWO&cm_cat=rss&par=LWO_rss'),
(385, '26f19eac-d4c0-f404-f5a0-4a75aee8dea3', 'cNet', 'http://news.cnet.com/2547-1_3-0-20.xml?tag=txt'),
(386, '4acc92ba-9f2b-1ca4-d180-6c12a9a407a8', 'Mashable - Top News', 'http://feeds.mashable.com/Mashable?format=xml'),
(387, 'fecf27c9-0a18-b604-e974-bec1034c0333', 'Encosia (.NET, jQuery, AJAX)', 'http://feeds.encosia.com/Encosia?format=xml'),
(388, '8120741c-6031-ab04-4de3-96c8df5d35b9', 'Hanselman', 'http://feeds.feedburner.com/ScottHanselman'),
(395, '9b8a3dea-45b0-5664-d57e-bbfea01ddcde', 'D-Lists', 'http://feeds.feedburner.com/d-lists?format=xml'),
(390, '9b8a3dea-45b0-5664-d57e-bbfea01ddcde', 'Design Float', 'http://www.designfloat.com/rss.php'),
(391, '9b8a3dea-45b0-5664-d57e-bbfea01ddcde', 'Graphic Design Links', 'http://www.graphic-design-links.com/rss.php'),
(392, '9b8a3dea-45b0-5664-d57e-bbfea01ddcde', 'The Web Blend', 'http://thewebblend.com/feed/published/All'),
(393, '9b8a3dea-45b0-5664-d57e-bbfea01ddcde', 'zaBox', 'http://www.zabox.net/rss.php'),
(394, '9b8a3dea-45b0-5664-d57e-bbfea01ddcde', 'Pixel Groovy', 'http://feeds.feedburner.com/PixelGroovyFrontPage'),
(396, 'a1fff516-d109-efd4-5d58-da038f58796e', 'Vampire Diaries', 'http://www.google.com/alerts/feeds/01872719301809181097/3195780329161359048'),
(397, 'eedbf015-a17f-c254-8144-81df7c7185f9', 'Read Write Web', 'http://feeds.feedburner.com/readwriteweb'),
(398, 'bb77d2e8-acae-7214-2505-cd035feb77bc', 'Fanhouse Boxing', 'http://boxing.fanhouse.com/rss.xml'),
(399, 'bb77d2e8-acae-7214-2505-cd035feb77bc', 'ESPN Boxing', 'http://sports-ak.espn.go.com/espn/rss/boxing/news'),
(400, 'bb77d2e8-acae-7214-2505-cd035feb77bc', 'Yahoo Boxing', 'http://sports.yahoo.com/box/rss.xml'),
(401, 'e38f80ac-c235-0574-4d53-4acee65907c3', 'YouTube (beer)', 'http://gdata.youtube.com/feeds/base/videos?q=beer&client=ytapi-youtube-search&alt=rss&v=2'),
(403, '52505b72-66b2-5984-6d38-b1352b31f87f', 'CNN - Top Stories', 'http://rss.cnn.com/rss/cnn_topstories.rss'),
(404, 'a1518210-7d37-f5a4-3536-b4557558b187', 'ESPN', 'http://sports-ak.espn.go.com/espn/rss/news'),
(405, 'ea4723ca-f6c7-f6e4-eda4-eed48837f01a', 'Read Write Web', 'http://feeds.feedburner.com/readwriteweb'),
(406, 'ea4723ca-f6c7-f6e4-eda4-eed48837f01a', 'cNet', 'http://news.cnet.com/2547-1_3-0-20.xml?tag=txt'),
(407, '731b63f2-d064-c334-998f-f18b1832e3e3', 'Google News (san diego)', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=san diego&output=rss'),
(408, '9be65655-389a-8dd4-35a6-da57b01b628c', 'MSNBC - Top Stories', 'http://pheedo.msnbc.msn.com/id/3032091/device/rss'),
(409, '3139f263-5f5c-8394-6926-4db70d2a7410', 'Techcrunch', 'http://feeds.feedburner.com/TechCrunch'),
(411, 'aeb616a2-f7dd-ed64-5d02-e20c01be3ada', 'NHL Scores', 'http://www.mpiii.com/scores/nhl.php'),
(412, 'aeb616a2-f7dd-ed64-5d02-e20c01be3ada', 'NBA Scores', 'http://www.mpiii.com/scores/nba.php'),
(413, 'aeb616a2-f7dd-ed64-5d02-e20c01be3ada', 'MLB Scores', 'http://www.mpiii.com/scores/mlb.php'),
(416, 'd5a656be-48de-4124-ed43-6d33a4c78a8b', 'Google News (women', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=women'),
(427, 'ba488214-991e-20b4-bde3-3733fdf2c030', 'Google News (Lakers)', 'http://news.google.com/news?pz=1&ned=us&hl=en&q=lakers&output=rss'),
(428, 'ba488214-991e-20b4-bde3-3733fdf2c030', 'Lakers News', 'http://www.nba.com/lakers/rss.xml'),
(421, '5741ee25-a3f2-06c4-7d4a-4facdd315743', 'Shine Shopping', 'http://shine.yahoo.com/rss/blog/channel/beauty/'),
(423, 'ebe9cfc3-8400-36e4-69ca-40409a99e438', 'Tracy.bonics', 'http://www.tracybonics.com/feeds/posts/default?alt=rss'),
(425, 'ebe9cfc3-8400-36e4-69ca-40409a99e438', 'Ann H', 'http://myblackfeather.blogspot.com/feeds/posts/default?alt=rss'),
(426, 'ebe9cfc3-8400-36e4-69ca-40409a99e438', 'Sarah', 'http://bigbadblondebahu.blogspot.com/feeds/posts/default?alt=rss'),
(434, 'cdfe2e84-4c00-2a74-59b2-ee959b0a7711', 'Tampa Craigslist Engineering', 'http://tampa.craigslist.org/eng/'),
(435, 'cdfe2e84-4c00-2a74-59b2-ee959b0a7711', 'Tampa Craigslist Software', 'http://tampa.craigslist.org/sof/'),
(433, 'cdfe2e84-4c00-2a74-59b2-ee959b0a7711', 'Tampa Craigslist Web', 'http://tampa.craigslist.org/web/'),
(436, '982e2f2b-aaea-b564-8549-078793d3e28b', 'CMT', 'http://www.cmt.com/rss/all_country_news/latestcached.jhtml?partner=rssMozilla'),
(437, '982e2f2b-aaea-b564-8549-078793d3e28b', 'CMT Blog', 'http://blog.cmt.com/feed/'),
(441, '1480d49a-59f6-9264-259f-993f9eda223d', 'Storm 2', 'http://www.nhc.noaa.gov/nhc_at2.xml'),
(442, '1480d49a-59f6-9264-259f-993f9eda223d', 'Discussion Storm 1', 'http://www.nhc.noaa.gov/xml/TCDAT1.xml'),
(439, '1480d49a-59f6-9264-259f-993f9eda223d', 'General', 'http://www.nhc.noaa.gov/index-at.xml'),
(440, '1480d49a-59f6-9264-259f-993f9eda223d', 'Storm 1', 'http://www.nhc.noaa.gov/nhc_at1.xml'),
(443, '1480d49a-59f6-9264-259f-993f9eda223d', 'Wind Speed Storm 1', 'http://www.nhc.noaa.gov/xml/PWSAT1.xml'),
(444, '1480d49a-59f6-9264-259f-993f9eda223d', 'ALL FEEDS', 'http://www.nhc.noaa.gov/aboutrss.shtml'),
(445, 'c6430a3a-b0b7-7d04-35e3-028ace0cf1e7', 'Tornado / Thunderstorm Watches', 'http://www.spc.noaa.gov/products/spcwwrss.xml'),
(446, 'c6430a3a-b0b7-7d04-35e3-028ace0cf1e7', 'Mesoscale Discussions', 'http://www.spc.noaa.gov/products/spcmdrss.xml'),
(447, 'c6430a3a-b0b7-7d04-35e3-028ace0cf1e7', 'Convective Outlooks', 'http://www.spc.noaa.gov/products/spcacrss.xml'),
(448, 'ebe9cfc3-8400-36e4-69ca-40409a99e438', 'Melanie', 'feed://www.freshstartnutrition.com/feed/'),
(449, '3045e237-4ddc-16e4-85ef-1c2f6aaf0897', 'WacWorld - All', 'http://rss.macworld.com/macworld/feeds/main'),
(450, 'eb8a994c-a82a-5214-b911-5048f6d8fa42', 'Hacker News', 'http://news.ycombinator.com/rss'),
(451, '52520222-ff76-6394-c18d-ef38b6a0f3a2', 'Main', 'http://reefbuilders.com/feed/');

-- --------------------------------------------------------

--
-- Table structure for table `rss_custom_usersettings`
--

CREATE TABLE IF NOT EXISTS `rss_custom_usersettings` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `style` varchar(20) NOT NULL,
  `numbercolumns` int(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `screenwidth` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `rss_custom_usersettings`
--

INSERT INTO `rss_custom_usersettings` (`id`, `user_id`, `style`, `numbercolumns`, `level`, `screenwidth`) VALUES
(1, 63, 'light-orange', 4, 'advanced', 1200),
(2, 64, 'light-orange', 4, 'advanced', 1000),
(4, 62, 'light-orange', 3, 'basic', 1000),
(3, 65, 'light-orange', 5, 'basic', 1200),
(5, 66, 'light-orange', 4, 'basic', 1200),
(6, 68, 'light-orange', 5, 'basic', 1200),
(7, 69, 'light-orange', 3, 'advanced', 1000),
(8, 70, 'light-orange', 3, 'basic', 1200),
(9, 71, 'light-orange', 4, 'basic', 1200),
(10, 72, 'light-orange', 3, 'advanced', 1200),
(11, 80, 'light-orange', 3, 'basic', 800),
(12, 86, 'light-orange', 3, 'advanced', 800),
(13, 85, 'light-orange', 3, 'basic', 1000),
(14, 87, 'light-orange', 3, 'basic', 800),
(15, 82, 'light-orange', 3, 'basic', 800),
(16, 92, 'light-orange', 5, 'basic', 1400),
(17, 95, 'light-orange', 3, 'basic', 800),
(18, 97, 'light-orange', 4, 'basic', 1000),
(19, 98, 'light-orange', 3, 'basic', 800),
(20, 103, 'dark-orange', 3, '', 800),
(21, 104, 'light-orange', 3, '', 1000),
(22, 105, 'light-orange', 3, '', 1400),
(23, 107, 'dark-orange', 3, '', 800);

-- --------------------------------------------------------

--
-- Table structure for table `rss_groups`
--

CREATE TABLE IF NOT EXISTS `rss_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_groups`
--

INSERT INTO `rss_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `rss_jp_exclusion`
--

CREATE TABLE IF NOT EXISTS `rss_jp_exclusion` (
  `id` bigint(20) NOT NULL auto_increment,
  `profile` int(10) unsigned NOT NULL,
  `class` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rss_jp_exclusion`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_jp_inclusion`
--

CREATE TABLE IF NOT EXISTS `rss_jp_inclusion` (
  `id` bigint(20) NOT NULL auto_increment,
  `profile` int(10) unsigned NOT NULL,
  `class` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_jp_inclusion`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_jp_profiles`
--

CREATE TABLE IF NOT EXISTS `rss_jp_profiles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rss_jp_profiles`
--

INSERT INTO `rss_jp_profiles` (`id`, `description`) VALUES
(1, 'Default Backup Profile');

-- --------------------------------------------------------

--
-- Table structure for table `rss_jp_registry`
--

CREATE TABLE IF NOT EXISTS `rss_jp_registry` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `profile` int(10) unsigned NOT NULL default '1',
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `rss_jp_registry`
--

INSERT INTO `rss_jp_registry` (`id`, `profile`, `key`, `value`) VALUES
(3, 1, 'BackupType', 'full'),
(4, 1, 'TarNameTemplate', 'site-[HOST]-[DATE]-[TIME]'),
(5, 1, 'logLevel', '2'),
(6, 1, 'MySQLCompat', 'default'),
(7, 1, 'dbAlgorithm', 'smart'),
(8, 1, 'packAlgorithm', 'smart'),
(9, 1, 'listerengine', 'default'),
(10, 1, 'dbdumpengine', 'default'),
(11, 1, 'packerengine', 'jpa'),
(12, 1, 'InstallerPackage', 'jpi3.jpa'),
(13, 1, 'backupMethod', 'ajax'),
(14, 1, 'enableSizeQuotas', '0'),
(15, 1, 'enableCountQuotas', '0'),
(16, 1, 'sizeQuota', '30'),
(17, 1, 'countQuota', '3'),
(18, 1, 'enableMySQLKeepalive', '0'),
(19, 1, 'gzipbinary', 'gzip'),
(20, 1, 'effvfolder', 'external_files'),
(21, 1, 'mnRowsPerStep', '100'),
(22, 1, 'mnMaxFragmentSize', '1048756'),
(23, 1, 'mnMaxFragmentFiles', '50'),
(24, 1, 'mnArchiverChunk', '0'),
(25, 1, 'mnZIPForceOpen', '0'),
(26, 1, 'mnZIPCompressionThreshold', '1024768'),
(27, 1, 'mnZIPDirReadChunk', '1024768'),
(28, 1, 'mnMaxExecTimeAllowed', '14'),
(29, 1, 'mnMinimumExectime', '2'),
(30, 1, 'mnExectimeBiasPercent', '75'),
(31, 1, 'mnMaxOpsPerStep', '100'),
(32, 1, 'mysqldumpPath', '/usr/bin/mysqldump'),
(33, 1, 'mnMSDDataChunk', '16384'),
(34, 1, 'mnMSDMaxQueryLines', '100'),
(35, 1, 'mnMSDLinesPerSession', '100'),
(36, 0, 'authlevel', '25'),
(37, 0, 'nagscreen', '1'),
(38, 0, 'OutputDirectory', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup'),
(39, 0, 'enableFrontend', '0'),
(40, 0, 'secretWord', '');

-- --------------------------------------------------------

--
-- Table structure for table `rss_jp_stats`
--

CREATE TABLE IF NOT EXISTS `rss_jp_stats` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `description` varchar(255) NOT NULL,
  `comment` longtext,
  `backupstart` timestamp NOT NULL default '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') NOT NULL default 'run',
  `origin` enum('backend','frontend') NOT NULL default 'backend',
  `type` enum('full','dbonly','extradbonly') NOT NULL default 'full',
  `profile_id` bigint(20) NOT NULL default '1',
  `archivename` longtext,
  `absolute_path` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `rss_jp_stats`
--

INSERT INTO `rss_jp_stats` (`id`, `description`, `comment`, `backupstart`, `backupend`, `status`, `origin`, `type`, `profile_id`, `archivename`, `absolute_path`) VALUES
(1, 'Backup taken on Friday, 25 September 2009 13:16', '', '2009-09-25 21:16:56', '2009-09-25 21:17:44', 'complete', 'backend', 'full', 1, 'site-www.pacificcustomwebs.com-20090925-171656.zip', '/home/pacificc/public_html/feedthegator/administrator/components/com_joomlapack/backup/site-www.pacificcustomwebs.com-20090925-171656.zip'),
(2, 'Backup taken on Monday, 05 October 2009 13:25', '', '2009-10-05 20:25:14', '2009-10-05 20:26:04', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20091005-162514.zip', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20091005-162514.zip'),
(3, 'Backup taken on Thursday, 08 October 2009 09:31', '', '2009-10-08 16:31:28', '2009-10-08 16:32:13', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20091008-123128.zip', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20091008-123128.zip'),
(4, 'Backup taken on Thursday, 08 October 2009 09:34', '', '2009-10-08 16:34:53', '2009-10-08 16:35:06', 'complete', 'backend', 'full', 1, 'site-www.readsomestuff.com-20091008-123453.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-www.readsomestuff.com-20091008-123453.jpa'),
(5, 'Backup taken on Monday, 12 October 2009 20:11', '', '2009-10-13 03:11:27', '2009-10-13 03:11:41', 'complete', 'backend', 'full', 1, 'site-www.readsomestuff.com-20091012-231127.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-www.readsomestuff.com-20091012-231127.jpa'),
(6, 'Backup taken on Thursday, 22 October 2009 07:27', '', '2009-10-22 14:27:14', '2009-10-22 14:27:35', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20091022-102714.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20091022-102714.jpa'),
(7, 'Backup taken on Friday, 06 November 2009 07:23', '', '2009-11-06 15:24:05', '2009-11-06 15:24:24', 'complete', 'backend', 'full', 1, 'site-www.readsomestuff.com-20091106-102405.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-www.readsomestuff.com-20091106-102405.jpa'),
(8, 'Backup taken on Sunday, 27 December 2009 11:12', '', '2009-12-27 19:12:22', '2009-12-27 19:12:40', 'complete', 'backend', 'full', 1, 'site-www.readsomestuff.com-20091227-141222.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-www.readsomestuff.com-20091227-141222.jpa'),
(9, 'Backup taken on Friday, 29 January 2010 08:32', '', '2010-01-29 16:32:52', '2010-01-29 16:33:10', 'complete', 'backend', 'full', 1, 'site-www.readsomestuff.com-20100129-113252.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-www.readsomestuff.com-20100129-113252.jpa'),
(10, 'Backup taken on Thursday, 11 February 2010 08:30', '', '2010-02-11 16:30:29', '2010-02-11 16:30:47', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20100211-113029.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20100211-113029.jpa'),
(11, 'Backup taken on Thursday, 25 March 2010 08:47', '', '2010-03-25 15:47:12', '2010-03-25 15:47:30', 'complete', 'backend', 'full', 1, 'site-www.readsomestuff.com-20100325-114712.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-www.readsomestuff.com-20100325-114712.jpa'),
(12, 'Backup taken on Friday, 02 April 2010 08:46', '', '2010-04-02 15:46:56', '2010-04-02 15:47:15', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20100402-114656.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20100402-114656.jpa'),
(13, 'Backup taken on Monday, 26 April 2010 07:55', '', '2010-04-26 14:55:32', '2010-04-26 14:55:47', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20100426-105532.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20100426-105532.jpa'),
(14, 'Backup taken on Thursday, 13 May 2010 08:27', '', '2010-05-13 15:27:46', '2010-05-13 15:28:08', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20100513-112746.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20100513-112746.jpa'),
(15, 'Backup taken on Friday, 04 June 2010 08:58', '', '2010-06-04 15:58:57', '2010-06-04 15:59:16', 'complete', 'backend', 'full', 1, 'site-www.readsomestuff.com-20100604-115857.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-www.readsomestuff.com-20100604-115857.jpa'),
(16, 'Backup taken on Wednesday, 14 July 2010 19:25', '', '2010-07-15 02:25:39', '2010-07-15 02:25:58', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20100714-222539.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20100714-222539.jpa'),
(17, 'Backup taken on Thursday, 23 July 2010 18:36', '', '2010-07-23 01:37:02', '2010-07-23 01:37:28', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20100722-213702.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20100722-213702.jpa'),
(18, 'Backup taken on Wednesday, 29 September 2010 06:56', '', '2010-09-30 01:57:04', '2010-09-30 01:57:27', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20100929-215704.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20100929-215704.jpa'),
(19, 'Backup taken on Sunday, 10 October 2010 12:04', '', '2010-10-10 19:04:17', '2010-10-10 19:04:36', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20101010-150417.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20101010-150417.jpa'),
(20, 'Backup taken on Friday, 11 February 2011 03:05', '', '2011-02-11 03:05:48', '0000-00-00 00:00:00', 'complete', 'backend', 'full', 1, 'site-readsomestuff.com-20110210-210548.jpa', '/home/pacificc/public_html/readsomestuff.com/administrator/components/com_joomlapack/backup/site-readsomestuff.com-20110210-210548.jpa');

-- --------------------------------------------------------

--
-- Table structure for table `rss_jp_temp`
--

CREATE TABLE IF NOT EXISTS `rss_jp_temp` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY  (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_jp_temp`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_jumi`
--

CREATE TABLE IF NOT EXISTS `rss_jumi` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `path` varchar(255) default NULL,
  `custom_script` text,
  `access` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `published` int(11) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `rss_jumi`
--

INSERT INTO `rss_jumi` (`id`, `title`, `alias`, `path`, `custom_script`, `access`, `checked_out`, `published`) VALUES
(5, 'Login Redirect', '', '', '<?php\r\n$user =& JFactory::getUser();\r\n$userid = $user->id;\r\n?>\r\n\r\n<script language="javascript">\r\nlocation = "http://www.pacificcustomwebs.com/feedthegator/myportlets.php?userid=<?php echo $userid;?>";\r\n</script>', 0, 0, 0),
(6, 'Logout (Click)', '', '', '<?php\r\n  $user =& JFactory::getUser();\r\n  $userid = $user->id;\r\n  //echo $userid;\r\n  //setcookie("userid", "", time()-3600);\r\n  if ($userid == 0) //not logged in\r\n  {\r\n    echo "<script language=''javascript''>location = ''http://www.readsomestuff.com'';</script>";\r\n  }\r\n  else\r\n  {\r\n    echo "<script language=''javascript''>alert(''".$userid."'');var arr = document.getElementsByName(''Submit''); location = ''http://www.google.com''; // arr[0].click();</script>";\r\n  }\r\n?>', 0, 0, 0),
(7, 'Login Redirect Post', '', '', '<?php\r\n  $user =& JFactory::getUser();\r\n  $userid = $user->id;\r\n\r\nif ($userid != 0)\r\n{\r\n?>\r\n<form action="myportlets.php" method="post" id="myform" name="myform">\r\n<input type="hidden" value="<?php echo $userid; ?>" name="userid" id="userid"></input>\r\n</form>\r\n\r\n<script language="javascript">\r\ndocument.myform.submit();\r\n</script>\r\n<?php\r\n}\r\n?>\r\n\r\n', 0, 0, 0),
(10, 'Logout (function)', '', '', '<?php\r\n$error = $mainframe->logout();\r\n//create the redirect variable\r\n$return = ''http://www.readsomestuff.com'';\r\n\r\n   if(!JError::isError($error))\r\n   {\r\n      if ($return) {\r\n         //there is probably a cleaner way to do this but you get the idea.\r\n         ?>\r\n         <script language="javascript">\r\n         location = "http://www.readsomestuff.com";\r\n         </script>\r\n         <?php\r\n    }\r\n   }\r\nexit;\r\n\r\n?>', 0, 0, 0),
(8, 'Login Redirect Session', '', '', '<?php\r\n  $user =& JFactory::getUser();\r\n  $userid = $user->id;\r\n\r\nif ($userid != 0)\r\n{\r\n  $_SESSION[''userid''] = $userid;\r\n  //echo $_SESSION[''userid''];\r\n}\r\n?>\r\n\r\n<script language="javascript">\r\nalert(''<?php echo $_SESSION[''userid'']; ?>'');\r\nwindow.location.href = "myportlets.php";\r\n</script>', 0, 0, 0),
(9, 'Login Redirect Cookie', '', '', '<?php\r\n  $user =& JFactory::getUser();\r\n  $userid = $user->id;\r\n\r\nif ($userid != 0)\r\n{\r\n  setcookie(''userid'',$userid,time() + (86400 * 7)); // 86400 = 1 day\r\n}\r\n?>\r\n\r\n<script language="javascript">\r\nlocation = "http://www.readsomestuff.com/myportlets.php";\r\n</script>', 0, 0, 0),
(4, 'Portlets Code', '', '                                  Close                                           Feed DetailClose                    loading ...          ', '<iframe id="glu" src="myportlets.php" scrolling="no" frameborder=''0'' width="900"onload="resize_iframe()"></iframe>', 0, 0, 0),
(3, 'Portlets', '', '', '<?php\r\nrequire_once("/home/pacificc/public_html/feedthegator/myportlets.php");\r\n?>', 0, 0, 0),
(11, 'Logout (jfunction)', '', '', '<?php\r\nfunction logout()\r\n	{\r\n		global $mainframe;\r\n\r\n		//preform the logout action\r\n		$error = $mainframe->logout();\r\n\r\n		if(!JError::isError($error))\r\n		{\r\n			if ($return = JRequest::getVar(''return'', '''', ''method'', ''base64'')) {\r\n				$return = base64_decode($return);\r\n				if (!JURI::isInternal($return)) {\r\n					$return = '''';\r\n				}\r\n			}\r\n\r\n			// Redirect if the return url is not registration or login\r\n			if ( $return && !( strpos( $return, ''com_user'' )) ) {\r\n				$mainframe->redirect( $return );\r\n			}\r\n		} else {\r\n			parent::display();\r\n		}\r\n	}\r\n\r\n\r\nlogout();\r\n?>', 0, 0, 0),
(12, 'Login / Logout', '', '', '<?php\r\n  $user =& JFactory::getUser();\r\n  $userid = $user->id;\r\n\r\n  function logout()\r\n	{\r\n		global $mainframe;\r\n\r\n		//preform the logout action\r\n		$error = $mainframe->logout();\r\n\r\n	}\r\n\r\n\r\n    logout();\r\n?>\r\n  \r\n<?php\r\nif ($userid != 0)\r\n{\r\n?>\r\n<form action="home.php" method="post" id="myform" name="myform">\r\n<input type="hidden" value="<?php echo $userid; ?>" name="userid" id="userid"></input>\r\n</form>\r\n\r\n<script language="javascript">\r\ndocument.myform.submit();\r\n</script>\r\n<?php\r\n}\r\n?>\r\n\r\n\r\n\r\n\r\n\r\n', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rss_menu`
--

CREATE TABLE IF NOT EXISTS `rss_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `rss_menu`
--

INSERT INTO `rss_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(2, 'mainmenu', 'Hello Jumi!', 'hello-jumi', 'index.php?option=com_jumi&fileid=1', 'component', -2, 0, 34, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '', 0, 0, 0),
(3, 'mainmenu', 'BlankPage', 'blankpage', 'index.php?option=com_content&view=article&id=3', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(5, 'mainmenu', 'Login Redirect', 'login-redirect', 'index.php?option=com_content&view=article&id=2', 'component', -2, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(4, 'nodisplay', 'Logout', 'logout', 'index.php?option=com_content&view=article&id=4', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(6, 'mainmenu', 'Getting Started', 'getting-started', 'index.php?option=com_content&view=article&id=6', 'component', 0, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(7, 'mainmenu', 'Login Redirect Post', 'login-redirect-post', 'index.php?option=com_content&view=article&id=7', 'component', -2, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(8, 'nodisplay', 'Login', 'login', 'index.php?option=com_jumi&fileid=12', 'component', 1, 0, 34, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(9, 'mainmenu', 'What Is RSS', 'what-is-rss', 'index.php?option=com_content&view=article&id=10', 'component', 0, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(10, 'mainmenu', 'Contact Us', 'contact-us', 'index.php?option=com_content&view=article&id=11', 'component', 0, 0, 20, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(11, 'mainmenu', 'Advanced Usage', 'advanced-usage', 'index.php?option=com_content&view=article&id=12', 'component', 0, 0, 20, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(12, 'mainmenu', 'Registration Form', 'registration-form', 'index.php?option=com_content&view=article&id=13', 'component', -2, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(13, 'mainmenu', 'Blank Page', 'blank-page', 'index.php?option=com_content&view=article&id=14', 'component', 0, 0, 20, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(14, 'mainmenu', 'Terms Of Use', 'terms-of-use', 'index.php?option=com_content&view=article&id=16', 'component', 1, 0, 20, 0, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rss_menu_types`
--

CREATE TABLE IF NOT EXISTS `rss_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rss_menu_types`
--

INSERT INTO `rss_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'nodisplay', 'nodisplay', 'nodisplay');

-- --------------------------------------------------------

--
-- Table structure for table `rss_messages`
--

CREATE TABLE IF NOT EXISTS `rss_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `rss_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `rss_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_modules`
--

CREATE TABLE IF NOT EXISTS `rss_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `rss_modules`
--

INSERT INTO `rss_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 0, 'user1', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 0, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer= -\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 62, '2009-09-12 16:27:34', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Jumi', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_jumi', 0, 0, 1, '', 0, 0, ''),
(17, 'Login', '', 0, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_login', 0, 0, 0, 'style=quick\npretext=\nposttext=\nlogin=8\nlogout=\ngreeting=0\ntext_mode=input\nlogin_button=icon\nlogout_button=icon\nauto_remember=1\nlost_password=1\nlost_username=1\nregistration=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(19, 'nodisplay', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=nodisplay\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(20, 'My Menu', '<p><a class="a_menu" href="index.php" title="Home">Home</a> | <a href="terms-of-use" title="Terms Of Use">Terms Of Use</a></p>', 0, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(22, 'J!Analytics', '', 0, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_janalytics', 0, 0, 0, 'analyticsCode=ga\nanalyticsId=UA-11843960-1\nanalyticsSubdomainTracking=example.com\nanalyticsGatFix=off\n\n', 0, 0, ''),
(23, 'Copyright', '<p><img src="images/articles/copyright.png" border="0" alt="Read Some Stuff Copyright 2010" width="200" height="40" /></p>', 1, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(24, 'AcyMailing Module', '', 3, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_acymailing', 0, 0, 1, 'help=module\neffect=normal\nlists=None\nhiddenlists=All\ndisplaymode=vertical\nlistschecked=All\nlink=1\nshowname=1\nfieldsize=15\nshowsubscribe=1\nshowtermspopup=1\nboxwidth=200\nboxheight=150\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `rss_modules_menu`
--

CREATE TABLE IF NOT EXISTS `rss_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_modules_menu`
--

INSERT INTO `rss_modules_menu` (`moduleid`, `menuid`) VALUES
(16, 0),
(17, 0),
(20, 0),
(22, 0),
(23, 0),
(24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rss_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `rss_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_newsfeeds`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_plugins`
--

CREATE TABLE IF NOT EXISTS `rss_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `rss_plugins`
--

INSERT INTO `rss_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'System - Jumi', 'jumi', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(35, 'Button - Jumicoder', 'jumicoder', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(36, 'System - Jumi Router', 'jumirouter', 'system', 0, 100, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(37, 'System - Greybox', 'greybox', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(38, 'AcyMailing onPrepareContent trigger', 'contentplugin', 'acymailing', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-contentplugin\n'),
(39, 'AcyMailing Tag : online links', 'online', 'acymailing', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-online\nviewtemplate=standard\nforwardtemplate=standard\n'),
(40, 'AcyMailing : Statistics Plugin', 'stats', 'acymailing', 0, 50, 1, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-stats\npicture=components/com_acymailing/images/statpicture.png\nwidth=50\nheight=1\n'),
(41, 'AcyMailing Tag : content insertion', 'tagcontent', 'acymailing', 0, 11, 1, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-tagcontent\ndisplayart=all\n'),
(42, 'AcyMailing Tag : Subscriber informations', 'tagsubscriber', 'acymailing', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-tagsubscriber\n'),
(43, 'AcyMailing Tag : Manage the Subscription', 'tagsubscription', 'acymailing', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-tagsubscription\n'),
(44, 'AcyMailing Tag : Date / Time', 'tagtime', 'acymailing', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-tagtime\n'),
(45, 'AcyMailing Tag : Joomla User Informations', 'taguser', 'acymailing', 0, 3, 1, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-taguser\n'),
(46, 'AcyMailing Template Class Replacer', 'template', 'acymailing', 0, 25, 1, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-template\n'),
(47, 'User - AcyMailing', 'acymailing', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-user\nlists=None\n'),
(48, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `rss_poll_data`
--

CREATE TABLE IF NOT EXISTS `rss_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_poll_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_poll_date`
--

CREATE TABLE IF NOT EXISTS `rss_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_poll_date`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_poll_menu`
--

CREATE TABLE IF NOT EXISTS `rss_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_poll_menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_polls`
--

CREATE TABLE IF NOT EXISTS `rss_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_polls`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_sections`
--

CREATE TABLE IF NOT EXISTS `rss_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_sections`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_session`
--

CREATE TABLE IF NOT EXISTS `rss_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_session`
--

INSERT INTO `rss_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1307540091', '5fb6d667639d0dee34323c0a0b54e1d3', 1, 0, '', 0, 0, '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1307540091;s:18:"session.timer.last";i:1307540091;s:17:"session.timer.now";i:1307540091;s:22:"session.client.browser";s:83:"Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:84:"/home/pacifi71/public_html/readsomestuff.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"2c148638992d959a41a7c79ff16ffe55";}'),
('', '1307541790', 'c0b193809bb15993465d12b4b8a926ed', 1, 0, '', 0, 0, '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1307541790;s:18:"session.timer.last";i:1307541790;s:17:"session.timer.now";i:1307541790;s:22:"session.client.browser";s:83:"Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:84:"/home/pacifi71/public_html/readsomestuff.com/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"0eb0461e6a5c62f7d0f4e07374265d09";}');

-- --------------------------------------------------------

--
-- Table structure for table `rss_stats_agents`
--

CREATE TABLE IF NOT EXISTS `rss_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_stats_agents`
--


-- --------------------------------------------------------

--
-- Table structure for table `rss_templates_menu`
--

CREATE TABLE IF NOT EXISTS `rss_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_templates_menu`
--

INSERT INTO `rss_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('sk_quadcol', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rss_users`
--

CREATE TABLE IF NOT EXISTS `rss_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `rss_users`
--

INSERT INTO `rss_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'rss1main', 'phaseu@gmail.com', 'd67df3f8878c4a8dd3388b77d286147e:YrYspih4Hve9SAo4ZgSZ9J1lnY9EbXV3', 'Super Administrator', 0, 1, 25, '2011-02-10 19:12:20', '2011-03-09 01:27:26', '', ''),
(110, 'TerryVN', 'TerryVN', 'sardine3348@gmail.com', 'd27016af2adbca8279e8c6f7a1e3282c:8RowxOxs6952kzBWJQIGIaLbH1QvkyfJ', 'Registered', 0, 0, 18, '2011-02-11 03:42:40', '0000-00-00 00:00:00', '', '\n'),
(63, 'betatest', 'betatest', 'betatest@gmail.com', '76c5675b3e5eeee599a4a6603664576b:AXGRLaMvDMYK0K2p3TlkDwszyAiZSn7r', 'Registered', 0, 0, 18, '2009-09-04 03:31:01', '2010-05-14 17:30:31', '6528bcc07bddda3e0455d980867fe615', 'language=\ntimezone=0\n\n'),
(64, 'Michelle Gay', 'mgay', 'michelle.phaseu@gmail.com', 'a0654ff9f07a411c112444cfe7f22742:uhWtPw8igJOpO8cAb2k25mu2ch1y8UoK', 'Registered', 0, 0, 18, '2009-09-12 16:33:11', '2010-05-27 22:04:46', '', 'language=\ntimezone=0\n\n'),
(65, 'Scott', 'scott', 'pacificcustomwebs@gmail.com', '254275480d90d70f56bd6c884031d10e:fcuyAXSmkLbK9kkpiPQzik0d9mdqsPkv', 'Registered', 0, 0, 18, '2009-10-05 00:28:38', '2011-06-02 19:12:09', '', 'language=\ntimezone=0\n\n'),
(66, 'Winestein', 'winestein', 'test@gmail.com', '2c7bfb74f1994166cdea8c83a47270a9:fJj92idQDtw15ULHsDuf7cKEBhteC22o', 'Registered', 0, 0, 18, '2009-10-08 21:27:14', '2010-01-05 03:36:39', '', 'language=\ntimezone=0\n\n'),
(98, 'Jim Siddons', 'mustbamustang', 'mustbamustang@sbcglobal.net', 'b357a9dd14435682299aeb6f8425e164:DWJM9F0VeJwTUr6fafRCvAJdzSnEpbtW', 'Registered', 0, 0, 18, '2010-02-11 03:58:02', '2010-02-11 04:39:22', '', '\n'),
(97, 'Mitche', 'mitche', 'mitchesmoons@gmail.com', 'a41d2cf795af00bbf46bc77ec8218b5d:uy449eXtGAHlRM59EgHJc9jbxXx43DeA', 'Registered', 0, 0, 18, '2010-01-30 23:10:52', '2010-04-14 23:45:42', '', 'language=\ntimezone=0\n\n'),
(76, 'Chris Harrison', 'jersey', 'jersey72@gmail.com', 'ea3297879f410431acfb04d9641b75d5:Up98ZHvUg4alXwQ4PxTV8SkL3OiVmtCi', 'Registered', 0, 0, 18, '2009-10-21 21:56:24', '2009-10-21 21:57:26', '', '\n'),
(77, 'KIMBERLY STEELE', 'LNGBCHDOMINIQUE', 'LNGBCHDOMINIQUE@GMAIL.COM', '89837fa76325154449b5a6e4c398dabd:gSmPd0dlyvdtCP0SIAnjS2rWbY8kh9Zx', 'Registered', 1, 0, 18, '2009-11-25 15:36:14', '0000-00-00 00:00:00', 'c45777df9adc38cfd7e0b0b6be9c9d12', '\n'),
(78, 'Gyrus', 'Gyrus', 'gyrus@iratepirates.com', '1068fa840318ddc7f4357e6f8dde2689:potqkKwndj78TQUmdfu0NOzILq4r9TJe', 'Registered', 0, 0, 18, '2009-11-27 04:15:03', '2009-11-27 04:16:17', '', '\n'),
(79, 'keeron', 'keeron lewin', 'keeronlewin@yahoo.com', '3edceca87bb64b5bea9d56c1514774e8:dG0rUtmj1PE0xcgJxmzuEMGptumLZ8Pb', 'Registered', 1, 0, 18, '2009-11-27 06:19:31', '0000-00-00 00:00:00', '340c6f15a1b375bac34e893a6f869281', '\n'),
(80, 'evens', 'evenspierrelouis TV', 'pierrelouis.evens@gmail.com', '95356cc1f03d5cad07a4ba6ee182af57:BOotwta5Pf2IxDgfFURBmNgXyTBvzpxR', 'Registered', 0, 0, 18, '2009-11-28 12:45:28', '2009-11-28 12:54:31', '', '\n'),
(81, 'evey', 'esm', 'ifsheonlyknw@yahoo.com', 'a482d6380f4356d40c32ad939cd3e1d6:jQkQpAThJTBT7Ij5auRasG4EehnaOpFa', 'Registered', 1, 0, 18, '2009-11-28 20:03:56', '0000-00-00 00:00:00', 'f63d99f719aed631110e12248addc678', '\n'),
(82, 'Rick', 'Xffpmoo7', 'xffpm007@gmail.com', '4bf36b02676eb132d9a3e8781e6a7f89:c3DK5WAjNkeiWVAoLqRk78HNfhAMmwTh', 'Registered', 0, 0, 18, '2009-11-29 07:12:29', '2010-02-27 22:47:33', '', '\n'),
(83, 'Todd Carter', 'toddwc', 'toddwc@gmail.com', '936cc9beae4a5c068c625a5bdbdd6a7f:yAZ3P0agZDKa6inZYuUYC8UZRZpC748x', 'Registered', 0, 0, 18, '2009-11-29 11:49:39', '0000-00-00 00:00:00', '', '\n'),
(84, 'kabob', 'tennisman', 'wiitennisbo@gmail.com', 'e459ba8010c49b8e2c8200a222c74829:Q1HAiuwipQZntO5DkGvfHdydXbhGIKf5', 'Registered', 1, 0, 18, '2009-11-29 21:15:55', '0000-00-00 00:00:00', '35a397a1447bf73a95c4c972e97cd34b', '\n'),
(85, 'Yvon Pilote', 'Jerrymiah', 'jerrymiah@sympatico.ca', '8186791e413c5974f574d3df5a787288:AntJ7Ii1lVhanUkkkrylrXcnFvF5IN3m', 'Registered', 0, 0, 18, '2009-11-29 21:52:53', '2009-11-30 15:20:11', '', '\n'),
(86, 'Wendy Tam', 'calendargirl', 'wedny_t@hotmail.com', '73e593910e3b816349034c3abb8a2d5e:T0wpbHC5De45ozIB1pTKyOOiGyt8Qxfj', 'Registered', 0, 0, 18, '2009-11-29 23:57:39', '2009-11-29 23:58:03', '', '\n'),
(87, 'David McNeill', 'mikamac', 'dmcneill@sgi-usa.org', 'b4f31285d24e464383f68045da754048:sRYq1A7ZpIjbFKMcBWSPSgkUL4vAGsp6', 'Registered', 0, 0, 18, '2009-11-30 23:20:50', '2009-11-30 23:21:30', '', '\n'),
(88, 'conmankilla', 'conmankilla', 'connorshanewatkins@gmail.com', '6e03557be04ac17d42f6ddbcd1b40be1:WIAoD5puCwgMtguyYx9ieQmJWacqGg74', 'Registered', 0, 0, 18, '2009-12-01 02:17:23', '2009-12-01 02:25:13', '', '\n'),
(89, 'AbiGail', 'serene700', 'sable93@hughes.net', '2f4e6e15abc911ee13100a2730384f63:lhDkosPiF4jnLADDMyiThjWshjg5L7Ya', 'Registered', 0, 0, 18, '2009-12-01 14:35:52', '2009-12-01 14:42:29', '', '\n'),
(90, ' Donald Dubuque ', 'donald', 'donaldd758@comcast.net', '35a33e74903e7433f049fc5b986b5a1a:cnX9JvxLgfXJrAP5sWeedURiBVOy9cLb', 'Registered', 0, 0, 18, '2009-12-01 18:06:46', '0000-00-00 00:00:00', '', '\n'),
(91, 'Linda Lucey', 'luceylin', 'luceylinda@gmail.com', 'f735ca4a891726c7afcae3d3b92a1c65:5zAUJjgvfjzh40iD13PfSPzFmFVbeiYL', 'Registered', 0, 0, 18, '2009-12-02 14:52:59', '2009-12-02 14:54:32', '', '\n'),
(92, 'ROGER BURROWS', 'NAVIGATE', 'pilotvideos2@yahoo.ca', '9b885b5ba570b896d14de22fa58afbc2:sYa9YVmSocowJimiAVOA9UXPRnecKbsv', 'Registered', 0, 0, 18, '2009-12-03 18:33:54', '2009-12-04 19:06:31', '', '\n'),
(93, 'Jim Bergquist', 'jbergquist', 'jbergquist@lcsc.org', '8746a0677645f9480d23f37512335297:jHhv5AaPam14v5FODAiNxbbDzGSwAxAH', 'Registered', 0, 0, 18, '2009-12-04 21:30:40', '2009-12-09 18:29:52', '', '\n'),
(94, 'Kim smallacombe', 'goldilocks_kim', 'goldilocks_kim@hotmail.com', '456c301f02ec0a5484ecaca690c39ebf:wqcXHcXOfhgz0mkZljXgsww8VdCXEGfQ', 'Registered', 1, 0, 18, '2009-12-05 20:36:33', '0000-00-00 00:00:00', '69836f32187c21113d912bb1fa57c8f2', '\n'),
(95, 'Dennis Stratton', 'Dennis Stratton', 'dgstratton@suddenlink.net', '54a38019ab911cc994c02bfc05ccaa98:UhY7kQszBReU4EpjgZiTV0nwcvCKNRUf', 'Registered', 0, 0, 18, '2009-12-05 22:44:54', '2009-12-06 05:15:54', '', '\n'),
(96, 'Daniel Sale', 'dsale', 'danielleesale@gmail.com', '4712b0245d37ec6f16c642789a893dea:sGVRPtNAUmIB7nDgcpLnF6gwBuXYoOXt', 'Registered', 0, 0, 18, '2009-12-07 00:20:31', '2010-04-04 20:32:25', '', '\n'),
(101, 'phaseu', 'phaseu', 'phaseu@gmail.com', '21e76541c9c6fa420b8d4a00fc3ff426:yEzfrlktplL3gygI5oqzq7sVnmGaRYY1', 'Registered', 0, 0, 18, '2010-04-01 15:57:11', '2010-04-01 15:57:33', '', '\n'),
(103, 'Matt Sullivan', 'matto0', 'msullivan@sulcom.com', '602ed8bb1cc71571d93ea9289c66ff83:XgP1Q2H56YC1G6feHWgmCHdxKGvfNm2l', 'Registered', 0, 0, 18, '2010-05-08 17:22:03', '2010-05-09 16:53:11', '', '\n'),
(104, 'testdrive', 'testdrive', 'support@pacificcustomwebs.com', '2fac8a72fe7dc76fda6f125a03cea535:QTM3tdI5w9WoacawHs8KD2J9GE7MmMcW', 'Registered', 0, 0, 18, '2010-05-18 14:18:47', '2011-03-02 03:54:37', '', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n'),
(105, 'Elicia', 'elicia', 'skybluupink@hotmail.com', 'ca7377d9a813113b27dc7896bfcdb39c:h15hXWhMDLkxUI8n2X9LSMxC19EoKtOo', 'Registered', 0, 0, 18, '2010-05-25 16:42:06', '2010-05-29 17:33:45', '', 'language=\ntimezone=0\n\n'),
(106, 'scott briggs', 'scottyb', 'da.scottyb@gmail.com', '32cbc77f07ca0f7797c630798cf633c3:3icQXBhrTk2Y8K66KLCWYjClf31Kaod5', 'Registered', 0, 0, 18, '2010-06-10 04:19:48', '2010-06-10 04:22:52', '', '\n'),
(107, 'Tracy Siri', 'Tled', 'tled123@gmail.com', '04e0d86b50deac4c37dc549c86e7aade:McF5VimY17Dq1QwIAYGjcKiQs7nJsBre', 'Registered', 0, 0, 18, '2010-06-24 19:45:08', '2010-11-29 00:07:07', '', '\n'),
(108, 'searecedes', 'searecedes', 'searecedes@london.com', '15fad80202ec9c1c4a29468f57aff9f8:CYIn5BdL27QAjSenAYEmwbUjiLvdPetT', 'Registered', 0, 0, 18, '2010-10-29 08:57:09', '2010-11-04 17:31:56', '', '\n'),
(109, 'abdul qader', 'abdulQader', 'sanusreth@gmail.com', '43c98b7750d17628ca763f8d2be651d2:9kGMrHY8Mfz28idiXtEfFn7KxcHh0kO3', 'Registered', 0, 0, 18, '2010-12-07 09:25:37', '2010-12-07 09:27:25', '', '\n'),
(111, 'Jessica', 'jessica@mootech.net', 'jessica@mootech.net', '10c7ddb464b83fdc3b7bc638d8e82bad:ObL0Bj2CERkPhg5Crwk2e3QNuAMfBdYJ', 'Registered', 1, 0, 18, '2011-02-25 22:12:52', '0000-00-00 00:00:00', 'a166e8261b475d1cad2763dac10ba47c', '\n'),
(112, 'Urgenebex', 'Urgenebex', 'danaa.dan@yandex.ru', 'bdebbe58fe78db41eeba1bd3a52cd006:l2Ic8eqwrbc7tkq3fVa5JPttdGyVGFhm', 'Registered', 0, 0, 18, '2011-05-02 03:16:48', '2011-05-02 10:31:24', '', '\n');

-- --------------------------------------------------------

--
-- Table structure for table `rss_weblinks`
--

CREATE TABLE IF NOT EXISTS `rss_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rss_weblinks`
--

