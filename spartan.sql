-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2014 at 01:58 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spartan`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_03_25_082844_PagesTable', 1),
('2014_03_25_111850_Deletedpages', 2),
('2014_04_04_064020_GospelPogi', 3),
('2014_04_04_111425_photos', 4),
('2014_04_10_012745_videos', 5),
('2012_12_06_225921_migration_cartalyst_sentry_install_users', 6),
('2012_12_06_225929_migration_cartalyst_sentry_install_groups', 6),
('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 6),
('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 6),
('2014_04_10_041452_SubscribersEmail', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hero` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=97 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`, `deleted_at`, `hero`) VALUES
(84, 'About us', 'about-us', '<blockquote style="color: rgb(0, 0, 0); font-family: ''Myriad Pro'', Arial; font-size: medium; line-height: normal; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;"><font size="5"><br></font></blockquote><blockquote style="color: rgb(0, 0, 0); font-size: medium; line-height: normal; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;"><font size="5">The&nbsp;<i><b>House of Sparta Fitness Center</b>&nbsp;&nbsp;</i>was built</font></blockquote><blockquote style="color: rgb(0, 0, 0); font-size: medium; line-height: normal; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;"><font size="5">to inspire people, to live a healthy life style</font></blockquote><blockquote style="color: rgb(0, 0, 0); font-size: medium; line-height: normal; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;"><font size="5">to, to have bodies of healthy men from good</font></blockquote><blockquote style="color: rgb(0, 0, 0); font-size: medium; line-height: normal; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;"><font size="5">ol'' times and to help people to start a new healthy</font></blockquote><blockquote style="color: rgb(0, 0, 0); font-size: medium; line-height: normal; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;"><font size="5">life style.</font></blockquote>', '2014-04-10 13:34:20', '2014-04-10 15:31:01', NULL, 'assets/images/4.jpg'),
(86, 'Membership Benefits', 'membership-benefits', '<div><font size="5"><br></font></div><div><div><font size="5"><b>Being a Spartan helps you gain specific advantages like</b></font></div><div><ul><li><font size="5">Discount on weight lifting<br></font></li><li><font size="5">Regular Nutritionist consultation<br></font></li><li><font size="5">Free water usage</font><br></li></ul></div></div>', '2014-04-10 13:37:31', '2014-04-10 13:37:31', NULL, 'assets/images/memphoto.jpg'),
(87, 'Membership Payment', 'membership-payment', '<blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"><font size="5"><br></font></blockquote><blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"><font size="5"><b>Monthly</b> &nbsp; &nbsp;- &nbsp; &nbsp;Php 600.00</font></blockquote><blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"><font size="5"><b>Quarterl</b>y &nbsp;- &nbsp; &nbsp;Php 600.00<br></font></blockquote><blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"><font size="5"><b>Anually</b> &nbsp; &nbsp; &nbsp;- &nbsp; &nbsp;Php 600.00<br></font></blockquote><blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"><font size="5"><b>Spartan</b>&nbsp; &nbsp; &nbsp;- &nbsp; &nbsp;Php 600.00</font><br></blockquote>', '2014-04-10 13:39:38', '2014-04-10 13:39:38', NULL, 'assets/images/2.jpg'),
(88, 'Videos', 'videos', '', '2014-04-10 13:45:49', '2014-04-10 13:45:49', NULL, 'assets/images/5.jpg'),
(90, 'Images', 'images', '', '2014-04-10 13:51:40', '2014-04-10 13:51:40', NULL, ''),
(92, 'HEALTHY EATING', 'healthy-eating', '<h1 class="title" id="page-title" style="margin-top: 0px; margin-bottom: 6px; font-size: 2.4em; line-height: 1.167em; color: rgb(0, 0, 0); font-family: Arial, Helvetica, ''Nimbus Sans L'', sans-serif;">12 Surefire Muscle-Building Nutrition Tips</h1><div><br></div><div><div class="promo-title" style="margin-top: 12px; font-size: 1.45em; font-weight: bold; color: rgb(0, 0, 0); font-family: Arial, Helvetica, ''Nimbus Sans L'', sans-serif; line-height: 15px;">1) Eat Both Fatty and Low-Fat Fish</div><div class="slide-caption" style="color: rgb(0, 0, 0); font-size: 1.3rem; line-height: 1.7rem; margin-bottom: 25px; font-family: Arial, Helvetica, ''Nimbus Sans L'', sans-serif;"><span class="memento-caption"><p style="margin-top: 1.5em; margin-bottom: 1.5em;">Fish is an excellent source of protein that should be consumed regularly by bodybuilders. Varying in fat content, some types of fish are high in healthy fats while others are low in fat altogether. Unlike other tissue proteins, though, fatty fish provide a host of benefits to bodybuilders.</p><p style="margin-top: 1.5em; margin-bottom: 1.5em;">Salmon and sardines, for example, are excellent sources of omega-3 fatty acids, which support the immune system and assist with muscle recovery and growth, in addition to many other benefits. Fish that are lower in fat, such as tuna, also make an excellent source of protein. All bodybuilders, regardless of their phase of diet or training goals, should strive to take in eight ounces of fatty fish at least twice a week.</p></span></div></div><div><div class="promo-title" style="margin-top: 12px; font-size: 1.45em; font-weight: bold; color: rgb(0, 0, 0); font-family: Arial, Helvetica, ''Nimbus Sans L'', sans-serif; line-height: 15px;">2) Eat Your Veggies</div><div class="slide-caption" style="color: rgb(0, 0, 0); font-size: 1.3rem; line-height: 1.7rem; margin-bottom: 25px; font-family: Arial, Helvetica, ''Nimbus Sans L'', sans-serif;"><span class="memento-caption"><p style="margin-top: 1.5em; margin-bottom: 1.5em;">Vegetables are one of the most overlooked components of bodybuilding nutrition. Many bodybuilders are rigorous about their protein and complex carbohydrate consumption, but lax about eating a sufficient quantity and variety of vegetables. Bodybuilders should strive to take in five or six servings every day.</p><p style="margin-top: 1.5em; margin-bottom: 1.5em;">To meet your needs, include more than one serving at a meal. Not only do vegetables provide nutrien</p><p style="margin-top: 1.5em; margin-bottom: 1.5em;">ts that other bodybuilding foods may lack, but they also provide bulk and fiber, helping your body more efficiently process a high-protein diet.</p><p style="margin-top: 1.5em; margin-bottom: 1.5em;"><br></p><p style="margin-top: 1.5em; margin-bottom: 1.5em;"><a href="http://www.muscleandfitness.com/news-and-features/galleries/nutrition/12-surefire-muscle-building-nutrition-tips/slide/3">http://www.muscleandfitness.com/news-and-features/galleries/nutrition/12-surefire-muscle-building-nutrition-tips/slide/3</a><br></p></span></div></div><div><br></div><div><br></div><div><br></div><div><br></div>', '2014-04-10 14:20:36', '2014-04-10 14:20:36', NULL, 'assets/images/1.jpg'),
(94, 'Workouts', 'workouts', '<h1 style="color: rgb(58, 97, 14); margin-top: 5px; font-family: ''Times New Roman'', Times, serif; text-align: center; font-size: 27px; line-height: normal; background-color: rgb(240, 245, 251);">"3 Day Beginner Workout #1"</h1><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">This beginner workout is a fabulous starting point! Get ready to tackle both cardio and strength training workouts on the same days! You''ll hit all of your major muscle groups in 3 days putting you closer to your ideal body.</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Keep your eye on the prize as you workout your way through the week!</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Mondays are a great place to start your workouts for the week.Let''s work out Monday, Wednesday, Friday this week.</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Let''s get down to business.</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Each workout day, schedule a 30 minute walk for yourself with an additional 30 minutes of strength training.<br><br><strong></strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251); text-align: center;"><strong>"Cardio Workout<br>Your 30 Minute Walk"</strong></p><span style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Begin by warming up for 5 minutes and then pump it up to your target&nbsp;</span><a href="http://www.best-free-workout-plans.com/heart-rate-zones.html" target="" style="color: rgb(0, 0, 255); text-decoration: underline; font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">heart rate zone</a><span style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">&nbsp;for 20 minutes. End with 5 minutes of cool down.</span><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Each time you complete a workout, give yourself a pat on the back and write it in your workout log!</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Now for the strength training routines.</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251); text-align: center;"><strong>"Monday We''ll Work Chest, Shoulders, And Triceps."</strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><strong>Chest</strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><table width="100%" border="2" style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><tbody><tr><td>Dumbbell Chest Press</td><td>2 sets</td><td>10-15 repetitions/set</td></tr><tr><td>Dumbbell Fly</td><td>2 sets</td><td>10-15 repetitions</td></tr></tbody></table><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><strong>Shoulders</strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><table width="100%" border="2" style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><tbody><tr><td>Overhead Press</td><td>2 sets</td><td>10 -15 repetitions per set</td></tr><tr><td>Lateral Raise</td><td>2 sets</td><td>10 - 15 repetitions per set</td></tr></tbody></table><br style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><br style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><strong style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Triceps</strong><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><table width="100%" border="2" style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><tbody><tr><td>Cable Pull Down Extension</td><td>2 sets</td><td>10 - 15 repetitions/set</td></tr><tr><td>Dumbbell Extension/Kickback</td><td>2 sets</td><td>10 - 15 repetitions/set</td></tr></tbody></table><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Alright! Now that you''ve completed your strength training and are feeling energized, be sure to write it down! I like to record my sets as I complete them.</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Your commitment is obvious! Enjoy your rest and gear up for another energizing workout on Wednesday!</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251); text-align: center;"><strong>"Wednesday we''ll work our back muscles, biceps, and abs."</strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><strong>Back</strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><table width="100%" border="2" style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><tbody><tr><td>Dumbbell Row</td><td>2 sets</td><td>10-15 repetitions/set</td></tr><tr><td>Lat Pull Down</td><td>2 sets</td><td>10-15 repetitions/set</td></tr><tr><td>lower back extension</td><td>2 sets</td><td>10-15 repetitions/set</td></tr></tbody></table><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><strong>Biceps</strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><table width="100%" border="2" style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><tbody><tr><td>Seated dumbbell curls</td><td>2 sets</td><td>10-15 repetitions/set</td></tr><tr><td>Seated cable/tubing curls</td><td>2 sets</td><td>10-15 repetitions/set</td></tr></tbody></table><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><strong>Abs</strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><table width="100%" border="2" style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><tbody><tr><td><a href="http://www.best-free-workout-plans.com/best-ab-exercises-pull-in.html" target="" style="color: rgb(0, 0, 255); text-decoration: underline;">Pull In</a></td><td>2 sets</td><td>10-15 repetitions/set</td></tr><tr><td><a href="http://www.best-free-workout-plans.com/best-core-exercises-plank.html" target="" style="color: rgb(0, 0, 255); text-decoration: underline;">Plank</a></td><td>2 sets</td><td>5-10 repetitions/set</td></tr></tbody></table><br style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><br style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251); text-align: center;"><strong>"TGIF! Let''s Work Those Legs"</strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Our legs provide our built in mode of transportation. When you work your leg muscles you''ll strengthen and tone for a sexy result. You''ll look and feel great with lots of energy to spare!</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><strong>Legs</strong></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><table width="100%" border="2" style="color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><tbody><tr><td>Wall Squats</td><td>2 sets</td><td>10-15 repetitions/set</td></tr><tr><td>Standing Leg Curls</td><td>2 sets</td><td>10- 15 repetitions/set</td></tr><tr><td>Standing Calf Raise</td><td>2 sets</td><td>10-15 repetitions/set</td></tr></tbody></table><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">Congratulations! You have completed 3day beginner workout#1! Be sure to note your hard work in your workout log!</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);">You''re on your way to that ideal body! Stick with this fitness routine for 4 weeks and then choose another.</p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal; background-color: rgb(240, 245, 251);"><br></p><p style="margin-top: 1em; margin-bottom: 1em; color: rgb(0, 0, 0); font-family: ''Lucida Sans Unicode'', ''Lucida Grande'', sans-serif; font-size: 14px; line-height: normal;"><a href="http://www.best-free-workout-plans.com/beginner-workout-1-3-day.html">http://www.best-free-workout-plans.com/beginner-workout-1-3-day.html</a><br></p>', '2014-04-10 14:26:09', '2014-04-10 14:26:09', NULL, 'assets/images/3.jpg'),
(95, 'SERVICES OFFERED', 'services-offered', '<div><blockquote style="color: rgb(0, 0, 0); font-family: ''Myriad Pro'', Arial; font-size: medium; line-height: normal; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;"><br></blockquote><blockquote style="color: rgb(0, 0, 0); font-family: ''Myriad Pro'', Arial; font-size: medium; line-height: normal; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;"><ul><li><font size="5"><b>WEIGHT LOSS REHABILITATION</b></font></li><li><font size="5"><b>WEIGHT LIFTING / BODYBUILDING</b></font></li><li><font size="5"><b>CIRCUIT TRAINING</b></font></li><li><font size="5"><b>RESISTANCE TRAINING</b></font></li><li><font size="5"><b>SPORTS CONDITIONING</b></font></li><li><font size="5"><b>BODY WEIGHT TRAINING</b></font></li><li><font size="5"><b>TRX TRAINING</b></font></li></ul></blockquote></div>', '2014-04-10 14:29:29', '2014-04-10 14:29:29', NULL, 'assets/images/6.jpg'),
(96, 'Why join House of Sparta Fitness Center?', '/', '<blockquote style="margin: 0 0 0 40px; border: none; padding: 0px;"><div><font size="5"><br></font></div><div><font size="5">Because we can provide what a break Warriors Training would be like.</font></div><div><font size="5">Our goal is to make you fit. Sparta fit! To attain a Spartan Body with abs</font></div><div><font size="5">of steel like King Leonidas.</font></div><div><font size="5"><br></font></div><div><font size="5"><b>SO JOIN NOW AND BE A <font color="#f83a22">SPARTAN</font>!</b></font></div><div><font size="5"><b>AWOO! AWOO!</b></font></div></blockquote><div><br></div>', '2014-04-10 14:33:32', '2014-04-10 15:50:00', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `filename`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Eyp03pvj5bjmTd8rdY6HWdgAScDVXVVx8UNdBLJF.jpg', '', '', '2014-04-04 03:36:31', '2014-04-04 03:36:31'),
(2, 'pJQNCT275a10RonKRQUODbc59LkZEAUAl1iPHgJs.jpg', '', '', '2014-04-04 04:11:12', '2014-04-04 04:11:12'),
(3, '8Bh1bmbX7EpdGwyFp9JfNthA2TX3lQwwXm6wQ8A8.jpg', '', '', '2014-04-04 04:45:54', '2014-04-04 04:45:54'),
(4, 'D5AriHuFXAN0YQrwgdrblP9j0MvTLTQQTVouCFna.jpg', '', '', '2014-04-05 23:39:35', '2014-04-05 23:39:35'),
(5, 'qH4016OdlMBuMyn5IU9QHLkopmk47tQMOKK4v2cA.jpg', '', '', '2014-04-10 09:36:40', '2014-04-10 09:36:40'),
(6, '2vVnpYf34dJkGaf7QiaeRbq90QItpQrusKuK4mjp.jpg', '', '', '2014-04-10 09:36:52', '2014-04-10 09:36:52'),
(7, 'H5bi5DpWFdsPfe22TWPNvvpLrUi4zTaovvt1REGq.jpg', '', '', '2014-04-10 09:37:13', '2014-04-10 09:37:13'),
(8, 'qiq0UlFBRz770x0rY9Is1yMRzHQW5DhCTUDE1FMl.jpg', '', '', '2014-04-10 09:37:20', '2014-04-10 09:37:20'),
(9, 'gx3VJIBursBojreIkn4DTAhwfBpagCX8e5lqiYzr.jpg', '', '', '2014-04-10 09:37:26', '2014-04-10 09:37:26'),
(10, 'm7jYJhElr5KS9Cenbgfa5pI0vIItZ45rvdjx57Hs.jpg', '', '', '2014-04-10 09:37:58', '2014-04-10 09:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'kaypinedaa@yahoo.com', '2014-04-09 22:09:31', '2014-04-09 22:09:31'),
(6, 'kaypinedaaa@gmail.com', '2014-04-10 11:08:46', '2014-04-10 11:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, 0, 0, NULL, NULL, NULL),
(2, 2, '127.0.0.1', 0, 0, 0, '2014-04-09 22:54:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(2, 'admin@email.com', '$2y$10$0roP.VCs3tk6WqQUnQgrHutJhOoT0/YlGdo1BMLQcKpNx6QJ.wAxe', NULL, 1, NULL, NULL, '2014-04-10 08:39:37', '$2y$10$N3aBLPPHlTFQAlDfgQLw6.vR0qbgdqojdxQEgqqlEMIIc3oI/MI3u', NULL, NULL, NULL, '2014-04-09 19:55:11', '2014-04-10 08:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VidID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `VidID`, `created_at`, `updated_at`) VALUES
(4, 'Chest Exercises for Beginners at the Gym', '(Sample Video)\r\nNo copyright infringement intended', 'bV6aabX_Ar8', '2014-04-10 15:33:52', '2014-04-10 15:33:52');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
