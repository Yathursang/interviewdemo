-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 06:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuzhalosai`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`ID`, `PostsPerPage`) VALUES
(2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `blogarchivewidget`
--

CREATE TABLE `blogarchivewidget` (
  `ID` int(11) NOT NULL,
  `NumberToDisplay` int(11) NOT NULL DEFAULT 0,
  `ArchiveType` enum('Monthly','Yearly') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Monthly',
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogarchivewidget_live`
--

CREATE TABLE `blogarchivewidget_live` (
  `ID` int(11) NOT NULL,
  `NumberToDisplay` int(11) NOT NULL DEFAULT 0,
  `ArchiveType` enum('Monthly','Yearly') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Monthly',
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogarchivewidget_versions`
--

CREATE TABLE `blogarchivewidget_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `NumberToDisplay` int(11) NOT NULL DEFAULT 0,
  `ArchiveType` enum('Monthly','Yearly') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Monthly',
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogcategorieswidget`
--

CREATE TABLE `blogcategorieswidget` (
  `ID` int(11) NOT NULL,
  `Limit` int(11) NOT NULL DEFAULT 0,
  `Order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogcategorieswidget_live`
--

CREATE TABLE `blogcategorieswidget_live` (
  `ID` int(11) NOT NULL,
  `Limit` int(11) NOT NULL DEFAULT 0,
  `Order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogcategorieswidget_versions`
--

CREATE TABLE `blogcategorieswidget_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Limit` int(11) NOT NULL DEFAULT 0,
  `Order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogcategory`
--

CREATE TABLE `blogcategory` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Blog\\Model\\BlogCategory') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Blog\\Model\\BlogCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogcategory`
--

INSERT INTO `blogcategory` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `URLSegment`, `BlogID`) VALUES
(1, 'SilverStripe\\Blog\\Model\\BlogCategory', '2022-02-23 04:01:08', '2022-02-23 02:01:25', 'travel', 'travel', 12),
(2, 'SilverStripe\\Blog\\Model\\BlogCategory', '2022-03-20 14:31:19', '2022-03-20 05:28:09', 'Tree Planting', 'tree-planting', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogfeaturedpostswidget`
--

CREATE TABLE `blogfeaturedpostswidget` (
  `ID` int(11) NOT NULL,
  `NumberOfPosts` int(11) NOT NULL DEFAULT 0,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogfeaturedpostswidget_live`
--

CREATE TABLE `blogfeaturedpostswidget_live` (
  `ID` int(11) NOT NULL,
  `NumberOfPosts` int(11) NOT NULL DEFAULT 0,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogfeaturedpostswidget_versions`
--

CREATE TABLE `blogfeaturedpostswidget_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `NumberOfPosts` int(11) NOT NULL DEFAULT 0,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogpost`
--

CREATE TABLE `blogpost` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Summary` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT 0,
  `FeaturedInWidget` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogpost`
--

INSERT INTO `blogpost` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `FeaturedInWidget`) VALUES
(16, '2022-03-01 17:31:00', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p><span>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub>&nbsp;emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</span></p>', 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogpost_authors`
--

CREATE TABLE `blogpost_authors` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogpost_authors`
--

INSERT INTO `blogpost_authors` (`ID`, `BlogPostID`, `MemberID`) VALUES
(1, 13, 1),
(2, 14, 1),
(3, 16, 1),
(4, 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogpost_categories`
--

CREATE TABLE `blogpost_categories` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT 0,
  `BlogCategoryID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogpost_categories`
--

INSERT INTO `blogpost_categories` (`ID`, `BlogPostID`, `BlogCategoryID`) VALUES
(1, 13, 1),
(2, 14, 1),
(3, 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogpost_live`
--

CREATE TABLE `blogpost_live` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Summary` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT 0,
  `FeaturedInWidget` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogpost_live`
--

INSERT INTO `blogpost_live` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `FeaturedInWidget`) VALUES
(16, '2022-03-01 17:31:00', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p><span>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub>&nbsp;emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</span></p>', 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogpost_tags`
--

CREATE TABLE `blogpost_tags` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT 0,
  `BlogTagID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogpost_tags`
--

INSERT INTO `blogpost_tags` (`ID`, `BlogPostID`, `BlogTagID`) VALUES
(1, 13, 1),
(2, 14, 1),
(3, 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogpost_versions`
--

CREATE TABLE `blogpost_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Summary` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT 0,
  `FeaturedInWidget` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogpost_versions`
--

INSERT INTO `blogpost_versions` (`ID`, `RecordID`, `Version`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `FeaturedInWidget`) VALUES
(1, 13, 1, NULL, NULL, NULL, 0, 0),
(2, 13, 2, '2022-02-18 16:00:00', 'yathu', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', 10, 0),
(3, 13, 3, '2022-02-18 16:00:00', 'yathu', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', 10, 0),
(4, 14, 1, NULL, NULL, NULL, 0, 0),
(5, 14, 2, '2022-02-09 16:00:00', NULL, NULL, 18, 0),
(6, 14, 3, '2022-02-09 16:00:00', NULL, NULL, 18, 0),
(7, 16, 1, NULL, NULL, NULL, 0, 0),
(8, 16, 2, '2022-03-01 17:31:00', NULL, '<p><span>ur tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p>', 32, 1),
(9, 16, 3, '2022-03-01 17:31:00', NULL, '<p><span>ur tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p>', 32, 1),
(10, 16, 4, '2022-03-01 17:31:00', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p><span>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub>&nbsp;emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</span></p>', 32, 1),
(11, 16, 5, '2022-03-01 17:31:00', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p><span>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub>&nbsp;emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</span></p>', 32, 1),
(12, 16, 6, '2022-03-01 17:31:00', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p><span>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub>&nbsp;emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</span></p>', 35, 1),
(13, 16, 7, '2022-03-01 17:31:00', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p><span>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub>&nbsp;emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</span></p>', 35, 1),
(14, 16, 8, '2022-03-01 17:31:00', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p><span>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub>&nbsp;emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</span></p>', 36, 1),
(15, 16, 9, '2022-03-01 17:31:00', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p><span>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub>&nbsp;emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</span></p>', 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogrecentpostswidget`
--

CREATE TABLE `blogrecentpostswidget` (
  `ID` int(11) NOT NULL,
  `NumberOfPosts` int(11) NOT NULL DEFAULT 0,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogrecentpostswidget_live`
--

CREATE TABLE `blogrecentpostswidget_live` (
  `ID` int(11) NOT NULL,
  `NumberOfPosts` int(11) NOT NULL DEFAULT 0,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogrecentpostswidget_versions`
--

CREATE TABLE `blogrecentpostswidget_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `NumberOfPosts` int(11) NOT NULL DEFAULT 0,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogtag`
--

CREATE TABLE `blogtag` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Blog\\Model\\BlogTag') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Blog\\Model\\BlogTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogtag`
--

INSERT INTO `blogtag` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `URLSegment`, `BlogID`) VALUES
(1, 'SilverStripe\\Blog\\Model\\BlogTag', '2022-02-23 04:01:08', '2022-02-23 02:01:36', 'nocomment', 'nocomment', 12),
(2, 'SilverStripe\\Blog\\Model\\BlogTag', '2022-03-20 14:31:19', '2022-03-20 05:28:11', 'Tree ', 'tree', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogtagscloudwidget`
--

CREATE TABLE `blogtagscloudwidget` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogtagscloudwidget_live`
--

CREATE TABLE `blogtagscloudwidget_live` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogtagscloudwidget_versions`
--

CREATE TABLE `blogtagscloudwidget_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogtagswidget`
--

CREATE TABLE `blogtagswidget` (
  `ID` int(11) NOT NULL,
  `Limit` int(11) NOT NULL DEFAULT 0,
  `Order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogtagswidget_live`
--

CREATE TABLE `blogtagswidget_live` (
  `ID` int(11) NOT NULL,
  `Limit` int(11) NOT NULL DEFAULT 0,
  `Order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogtagswidget_versions`
--

CREATE TABLE `blogtagswidget_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Limit` int(11) NOT NULL DEFAULT 0,
  `Order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_contributors`
--

CREATE TABLE `blog_contributors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_editors`
--

CREATE TABLE `blog_editors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_live`
--

CREATE TABLE `blog_live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_live`
--

INSERT INTO `blog_live` (`ID`, `PostsPerPage`) VALUES
(2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `blog_versions`
--

CREATE TABLE `blog_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `PostsPerPage` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_versions`
--

INSERT INTO `blog_versions` (`ID`, `RecordID`, `Version`, `PostsPerPage`) VALUES
(1, 12, 3, 10),
(2, 12, 4, 10),
(3, 12, 5, 10),
(4, 12, 6, 10),
(5, 2, 3, 10),
(6, 2, 4, 10),
(7, 2, 5, 10),
(8, 2, 6, 10),
(9, 2, 7, 10),
(10, 2, 8, 10),
(11, 2, 9, 10),
(12, 2, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `blog_writers`
--

CREATE TABLE `blog_writers` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `changeset`
--

CREATE TABLE `changeset` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSet') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Versioned\\ChangeSet',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` enum('open','published','reverted') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'open',
  `IsInferred` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `LastSynced` datetime DEFAULT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `changeset`
--

INSERT INTO `changeset` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `State`, `IsInferred`, `Description`, `PublishDate`, `LastSynced`, `OwnerID`, `PublisherID`) VALUES
(1, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-21 22:39:45', '2022-02-21 22:39:45', 'Generated by publish of \'Contact Us\' at Feb 21, 2022, 10:39 PM', 'published', 1, NULL, '2022-02-21 22:39:45', '2022-02-21 22:39:45', 0, 1),
(2, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-21 22:39:50', '2022-02-21 22:39:50', 'Generated by publish of \'Contact Us\' at Feb 21, 2022, 10:39 PM', 'published', 1, NULL, '2022-02-21 22:39:50', '2022-02-21 22:39:50', 0, 1),
(3, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-21 22:41:19', '2022-02-21 22:41:19', 'Generated by publish of \'Contact Us\' at Feb 21, 2022, 10:41 PM', 'published', 1, NULL, '2022-02-21 22:41:19', '2022-02-21 22:41:19', 0, 1),
(4, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-21 22:41:41', '2022-02-21 22:41:41', 'Generated by publish of \'Contact Us\' at Feb 21, 2022, 10:41 PM', 'published', 1, NULL, '2022-02-21 22:41:41', '2022-02-21 22:41:41', 0, 1),
(5, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-21 23:36:06', '2022-02-21 23:36:06', 'Generated by publish of \'Home\' at Feb 21, 2022, 11:36 PM', 'published', 1, NULL, '2022-02-21 23:36:06', '2022-02-21 23:36:06', 0, 1),
(6, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-21 23:36:45', '2022-02-21 23:36:45', 'Generated by publish of \'Home\' at Feb 21, 2022, 11:36 PM', 'published', 1, NULL, '2022-02-21 23:36:45', '2022-02-21 23:36:45', 0, 1),
(7, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-21 23:40:01', '2022-02-21 23:40:01', 'Generated by publish of \'Contact Us\' at Feb 21, 2022, 11:40 PM', 'published', 1, NULL, '2022-02-21 23:40:01', '2022-02-21 23:40:01', 0, 1),
(8, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-21 23:50:12', '2022-02-21 23:50:12', 'Generated by publish of \'Contact Us\' at Feb 21, 2022, 11:50 PM', 'published', 1, NULL, '2022-02-21 23:50:12', '2022-02-21 23:50:12', 0, 1),
(9, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 03:01:33', '2022-02-22 03:01:33', 'Generated by publish of \'sub nav\' at Feb 22, 2022, 3:01 AM', 'published', 1, NULL, '2022-02-22 03:01:33', '2022-02-22 03:01:33', 0, 1),
(10, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:24:06', '2022-02-22 04:24:06', 'Generated by publish of \'Chief Executive Officer\' at Feb 22, 2022, 4:24 AM', 'published', 1, NULL, '2022-02-22 04:24:06', '2022-02-22 04:24:06', 0, 1),
(11, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:24:48', '2022-02-22 04:24:48', 'Generated by publish of \'Product Manager\' at Feb 22, 2022, 4:24 AM', 'published', 1, NULL, '2022-02-22 04:24:48', '2022-02-22 04:24:48', 0, 1),
(12, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:25:26', '2022-02-22 04:25:26', 'Generated by publish of \'CTO\' at Feb 22, 2022, 4:25 AM', 'published', 1, NULL, '2022-02-22 04:25:26', '2022-02-22 04:25:26', 0, 1),
(13, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:25:59', '2022-02-22 04:25:59', 'Generated by publish of \'Accountant\' at Feb 22, 2022, 4:25 AM', 'published', 1, NULL, '2022-02-22 04:25:59', '2022-02-22 04:25:59', 0, 1),
(14, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:26:02', '2022-02-22 04:26:02', 'Generated by publish of \'Accountant\' at Feb 22, 2022, 4:26 AM', 'published', 1, NULL, '2022-02-22 04:26:02', '2022-02-22 04:26:02', 0, 1),
(15, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:26:51', '2022-02-22 04:26:51', 'Generated by publish of \'Team\' at Feb 22, 2022, 4:26 AM', 'published', 1, NULL, '2022-02-22 04:26:51', '2022-02-22 04:26:51', 0, 1),
(16, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:28:48', '2022-02-22 04:28:48', 'Generated by publish of \'News\' at Feb 22, 2022, 4:28 AM', 'published', 1, NULL, '2022-02-22 04:28:48', '2022-02-22 04:28:48', 0, 1),
(17, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:29:02', '2022-02-22 04:29:02', 'Generated by publish of \'News\' at Feb 22, 2022, 4:29 AM', 'published', 1, NULL, '2022-02-22 04:29:02', '2022-02-22 04:29:02', 0, 1),
(18, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:31:56', '2022-02-22 04:31:56', 'Generated by publish of \'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia\' at Feb 22, 2022, 4:31 AM', 'published', 1, NULL, '2022-02-22 04:31:56', '2022-02-22 04:31:56', 0, 1),
(19, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:32:32', '2022-02-22 04:32:32', 'Generated by publish of \'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia\' at Feb 22, 2022, 4:32 AM', 'published', 1, NULL, '2022-02-22 04:32:32', '2022-02-22 04:32:32', 0, 1),
(20, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:33:22', '2022-02-22 04:33:22', 'Generated by publish of \'New Page\' at Feb 22, 2022, 4:33 AM', 'published', 1, NULL, '2022-02-22 04:33:22', '2022-02-22 04:33:22', 0, 1),
(21, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:35:09', '2022-02-22 04:35:09', 'Generated by publish of \'Auckland\' at Feb 22, 2022, 4:35 AM', 'published', 1, NULL, '2022-02-22 04:35:09', '2022-02-22 04:35:09', 0, 1),
(22, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:36:06', '2022-02-22 04:36:06', 'Generated by publish of \'NZ Regions\' at Feb 22, 2022, 4:36 AM', 'published', 1, NULL, '2022-02-22 04:36:06', '2022-02-22 04:36:06', 0, 1),
(23, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:37:24', '2022-02-22 04:37:24', 'Generated by publish of \'Northland\' at Feb 22, 2022, 4:37 AM', 'published', 1, NULL, '2022-02-22 04:37:24', '2022-02-22 04:37:24', 0, 1),
(24, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:37:31', '2022-02-22 04:37:31', 'Generated by publish of \'Northland\' at Feb 22, 2022, 4:37 AM', 'published', 1, NULL, '2022-02-22 04:37:31', '2022-02-22 04:37:31', 0, 1),
(25, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:38:16', '2022-02-22 04:38:16', 'Generated by publish of \'Waikato\' at Feb 22, 2022, 4:38 AM', 'published', 1, NULL, '2022-02-22 04:38:16', '2022-02-22 04:38:16', 0, 1),
(26, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:39:02', '2022-02-22 04:39:02', 'Generated by publish of \'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia\' at Feb 22, 2022, 4:39 AM', 'published', 1, NULL, '2022-02-22 04:39:02', '2022-02-22 04:39:02', 0, 1),
(27, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:39:53', '2022-02-22 04:39:53', 'Generated by publish of \'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia\' at Feb 22, 2022, 4:39 AM', 'published', 1, NULL, '2022-02-22 04:39:53', '2022-02-22 04:39:53', 0, 1),
(28, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:40:16', '2022-02-22 04:40:16', 'Generated by publish of \'New Page\' at Feb 22, 2022, 4:40 AM', 'published', 1, NULL, '2022-02-22 04:40:16', '2022-02-22 04:40:16', 0, 1),
(29, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:40:48', '2022-02-22 04:40:48', 'Generated by publish of \'Properties \' at Feb 22, 2022, 4:40 AM', 'published', 1, NULL, '2022-02-22 04:40:48', '2022-02-22 04:40:48', 0, 1),
(30, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:43:01', '2022-02-22 04:43:01', 'Generated by publish of \'Best price in manuka\' at Feb 22, 2022, 4:43 AM', 'published', 1, NULL, '2022-02-22 04:43:01', '2022-02-22 04:43:01', 0, 1),
(31, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:43:51', '2022-02-22 04:43:51', 'Generated by publish of \'Best price in manuka\' at Feb 22, 2022, 4:43 AM', 'published', 1, NULL, '2022-02-22 04:43:51', '2022-02-22 04:43:51', 0, 1),
(32, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 04:43:57', '2022-02-22 04:43:57', 'Generated by publish of \'Best price in manuka\' at Feb 22, 2022, 4:43 AM', 'published', 1, NULL, '2022-02-22 04:43:57', '2022-02-22 04:43:57', 0, 1),
(33, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-22 21:10:55', '2022-02-22 21:10:55', 'Generated by publish of \'Gentral\' at Feb 22, 2022, 9:10 PM', 'published', 1, NULL, '2022-02-22 21:10:55', '2022-02-22 21:10:55', 0, 1),
(34, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 01:57:57', '2022-02-23 01:57:57', 'Generated by publish of \'New Page\' at Feb 23, 2022, 1:57 AM', 'published', 1, NULL, '2022-02-23 01:57:57', '2022-02-23 01:57:57', 0, 1),
(35, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 02:01:00', '2022-02-23 02:01:00', 'Generated by publish of \'blog1\' at Feb 23, 2022, 2:01 AM', 'published', 1, NULL, '2022-02-23 02:01:00', '2022-02-23 02:01:00', 0, 1),
(36, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 02:01:52', '2022-02-23 02:01:52', 'Generated by publish of \'New Page\' at Feb 23, 2022, 2:01 AM', 'published', 1, NULL, '2022-02-23 02:01:52', '2022-02-23 02:01:52', 0, 1),
(37, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 02:02:09', '2022-02-23 02:02:09', 'Generated by publish of \'blog1\' at Feb 23, 2022, 2:02 AM', 'published', 1, NULL, '2022-02-23 02:02:09', '2022-02-23 02:02:09', 0, 1),
(38, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 02:02:19', '2022-02-23 02:02:19', 'Generated by publish of \'blog1\' at Feb 23, 2022, 2:02 AM', 'published', 1, NULL, '2022-02-23 02:02:19', '2022-02-23 02:02:19', 0, 1),
(39, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:01:03', '2022-02-23 04:01:03', 'Generated by publish of \'New Blog Post\' at Feb 23, 2022, 4:01 AM', 'published', 1, NULL, '2022-02-23 04:01:03', '2022-02-23 04:01:03', 0, 1),
(40, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:01:08', '2022-02-23 04:01:08', 'Generated by publish of \'New Blog Post\' at Feb 23, 2022, 4:01 AM', 'published', 1, NULL, '2022-02-23 04:01:08', '2022-02-23 04:01:08', 0, 1),
(41, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:50:12', '2022-02-23 04:50:12', 'Generated by publish of \'Default Admin\' at Feb 23, 2022, 4:50 AM', 'published', 1, NULL, '2022-02-23 04:50:12', '2022-02-23 04:50:12', 0, 1),
(42, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:54:06', '2022-02-23 04:54:06', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:54 AM', 'published', 1, NULL, '2022-02-23 04:54:06', '2022-02-23 04:54:06', 0, 1),
(43, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:54:21', '2022-02-23 04:54:21', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:54 AM', 'published', 1, NULL, '2022-02-23 04:54:21', '2022-02-23 04:54:21', 0, 1),
(44, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:55:34', '2022-02-23 04:55:34', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:55 AM', 'published', 1, NULL, '2022-02-23 04:55:34', '2022-02-23 04:55:34', 0, 1),
(45, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:56:12', '2022-02-23 04:56:12', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:56 AM', 'published', 1, NULL, '2022-02-23 04:56:12', '2022-02-23 04:56:12', 0, 1),
(46, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:56:14', '2022-02-23 04:56:14', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:56 AM', 'published', 1, NULL, '2022-02-23 04:56:14', '2022-02-23 04:56:14', 0, 1),
(47, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:57:47', '2022-02-23 04:57:47', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:57 AM', 'published', 1, NULL, '2022-02-23 04:57:47', '2022-02-23 04:57:47', 0, 1),
(48, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:57:52', '2022-02-23 04:57:52', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:57 AM', 'published', 1, NULL, '2022-02-23 04:57:52', '2022-02-23 04:57:52', 0, 1),
(49, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:58:24', '2022-02-23 04:58:24', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:58 AM', 'published', 1, NULL, '2022-02-23 04:58:24', '2022-02-23 04:58:24', 0, 1),
(50, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:58:53', '2022-02-23 04:58:53', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:58 AM', 'published', 1, NULL, '2022-02-23 04:58:53', '2022-02-23 04:58:53', 0, 1),
(51, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-23 04:58:57', '2022-02-23 04:58:57', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 23, 2022, 4:58 AM', 'published', 1, NULL, '2022-02-23 04:58:57', '2022-02-23 04:58:57', 0, 1),
(52, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-25 03:52:20', '2022-02-25 03:52:20', 'Generated by publish of \'Silver Start\' at Feb 25, 2022, 3:52 AM', 'published', 1, NULL, '2022-02-25 03:52:20', '2022-02-25 03:52:20', 0, 1),
(53, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-28 03:57:20', '2022-02-28 03:57:20', 'Generated by publish of \'Gunaratnam, Yathursan\' at Feb 28, 2022, 3:57 AM', 'published', 1, NULL, '2022-02-28 03:57:20', '2022-02-28 03:57:20', 0, 1),
(54, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-28 03:57:47', '2022-02-28 03:57:47', 'Generated by publish of \'Team\' at Feb 28, 2022, 3:57 AM', 'published', 1, NULL, '2022-02-28 03:57:47', '2022-02-28 03:57:47', 0, 1),
(55, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-28 21:41:30', '2022-02-28 21:41:30', 'Generated by publish of \'Contact Us\' at Feb 28, 2022, 9:41 PM', 'published', 1, NULL, '2022-02-28 21:41:30', '2022-02-28 21:41:30', 0, 1),
(56, 'SilverStripe\\Versioned\\ChangeSet', '2022-02-28 21:43:15', '2022-02-28 21:43:15', 'Generated by publish of \'Contact Us\' at Feb 28, 2022, 9:43 PM', 'published', 1, NULL, '2022-02-28 21:43:15', '2022-02-28 21:43:15', 0, 1),
(57, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-01 01:37:16', '2022-03-01 01:37:16', 'Generated by publish of \'sub nav\' at Mar 1, 2022, 1:37 AM', 'published', 1, NULL, '2022-03-01 01:37:16', '2022-03-01 01:37:16', 0, 1),
(58, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-01 01:37:45', '2022-03-01 01:37:45', 'Generated by publish of \'sub nav\' at Mar 1, 2022, 1:37 AM', 'published', 1, NULL, '2022-03-01 01:37:45', '2022-03-01 01:37:45', 0, 1),
(59, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-01 01:37:50', '2022-03-01 01:37:50', 'Generated by publish of \'Contact Us\' at Mar 1, 2022, 1:37 AM', 'published', 1, NULL, '2022-03-01 01:37:50', '2022-03-01 01:37:50', 0, 1),
(60, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-01 01:38:34', '2022-03-01 01:38:34', 'Generated by publish of \'Std Page\' at Mar 1, 2022, 1:38 AM', 'published', 1, NULL, '2022-03-01 01:38:34', '2022-03-01 01:38:34', 0, 1),
(61, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 22:32:38', '2022-03-02 22:32:38', 'Generated by publish of \'78 Normans Hill Road, Onehunga\' at Mar 2, 2022, 10:32 PM', 'published', 1, NULL, '2022-03-02 22:32:38', '2022-03-02 22:32:38', 0, 1),
(62, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 22:41:55', '2022-03-02 22:41:55', 'Generated by publish of \'20 Laud Avenue, Ellerslie\' at Mar 2, 2022, 10:41 PM', 'published', 1, NULL, '2022-03-02 22:41:55', '2022-03-02 22:41:55', 0, 1),
(63, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 22:42:01', '2022-03-02 22:42:01', 'Generated by publish of \'20 Laud Avenue, Ellerslie\' at Mar 2, 2022, 10:42 PM', 'published', 1, NULL, '2022-03-02 22:42:01', '2022-03-02 22:42:01', 0, 1),
(64, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:02:11', '2022-03-02 23:02:11', 'Generated by publish of \'78 Normans Hill Road, Onehunga\' at Mar 2, 2022, 11:02 PM', 'published', 1, NULL, '2022-03-02 23:02:11', '2022-03-02 23:02:11', 0, 1),
(65, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:02:33', '2022-03-02 23:02:33', 'Generated by publish of \'78 Normans Hill Road, Onehunga\' at Mar 2, 2022, 11:02 PM', 'published', 1, NULL, '2022-03-02 23:02:33', '2022-03-02 23:02:33', 0, 1),
(66, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:02:54', '2022-03-02 23:02:54', 'Generated by publish of \'20 Laud Avenue, Ellerslie\' at Mar 2, 2022, 11:02 PM', 'published', 1, NULL, '2022-03-02 23:02:54', '2022-03-02 23:02:54', 0, 1),
(67, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:03:25', '2022-03-02 23:03:25', 'Generated by publish of \'34 Shortland Street, City\' at Mar 2, 2022, 11:03 PM', 'published', 1, NULL, '2022-03-02 23:03:25', '2022-03-02 23:03:25', 0, 1),
(68, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:04:02', '2022-03-02 23:04:02', 'Generated by publish of \'78 Normans Hill Road, Onehunga\' at Mar 2, 2022, 11:04 PM', 'published', 1, NULL, '2022-03-02 23:04:02', '2022-03-02 23:04:02', 0, 1),
(69, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:06:30', '2022-03-02 23:06:30', 'Generated by publish of \'78 Normans Hill Road, Onehunga, Auckland\' at Mar 2, 2022, 11:06 PM', 'published', 1, NULL, '2022-03-02 23:06:30', '2022-03-02 23:06:30', 0, 1),
(70, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:06:47', '2022-03-02 23:06:47', 'Generated by publish of \'34 Shortland Street, City, Auckland\' at Mar 2, 2022, 11:06 PM', 'published', 1, NULL, '2022-03-02 23:06:47', '2022-03-02 23:06:47', 0, 1),
(71, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:06:51', '2022-03-02 23:06:51', 'Generated by publish of \'34 Shortland Street, City, Auckland\' at Mar 2, 2022, 11:06 PM', 'published', 1, NULL, '2022-03-02 23:06:51', '2022-03-02 23:06:51', 0, 1),
(72, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:07:07', '2022-03-02 23:07:07', 'Generated by publish of \'20 Laud Avenue, Ellerslie, Northland\' at Mar 2, 2022, 11:07 PM', 'published', 1, NULL, '2022-03-02 23:07:07', '2022-03-02 23:07:07', 0, 1),
(73, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:10:54', '2022-03-02 23:10:54', 'Generated by publish of \'20 Laud Avenue, Ellerslie, Northland\' at Mar 2, 2022, 11:10 PM', 'published', 1, NULL, '2022-03-02 23:10:54', '2022-03-02 23:10:54', 0, 1),
(74, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:11:04', '2022-03-02 23:11:04', 'Generated by publish of \'78 Normans Hill Road, Onehunga, Auckland\' at Mar 2, 2022, 11:11 PM', 'published', 1, NULL, '2022-03-02 23:11:04', '2022-03-02 23:11:04', 0, 1),
(75, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:11:36', '2022-03-02 23:11:36', 'Generated by publish of \'78 Normans Hill Road, Onehunga, Auckland\' at Mar 2, 2022, 11:11 PM', 'published', 1, NULL, '2022-03-02 23:11:36', '2022-03-02 23:11:36', 0, 1),
(76, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:11:38', '2022-03-02 23:11:38', 'Generated by publish of \'78 Normans Hill Road, Onehunga, Auckland\' at Mar 2, 2022, 11:11 PM', 'published', 1, NULL, '2022-03-02 23:11:38', '2022-03-02 23:11:38', 0, 1),
(77, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-02 23:11:54', '2022-03-02 23:11:54', 'Generated by publish of \'20 Laud Avenue, Ellerslie, Northland\' at Mar 2, 2022, 11:11 PM', 'published', 1, NULL, '2022-03-02 23:11:54', '2022-03-02 23:11:54', 0, 1),
(78, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 00:22:26', '2022-03-04 00:22:26', 'Generated by publish of \'Getlocation Page\' at Mar 4, 2022, 12:22 AM', 'published', 1, NULL, '2022-03-04 00:22:26', '2022-03-04 00:22:26', 0, 1),
(79, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 00:28:19', '2022-03-04 00:28:19', 'Generated by publish of \'Getlocation Page\' at Mar 4, 2022, 12:28 AM', 'published', 1, NULL, '2022-03-04 00:28:19', '2022-03-04 00:28:19', 0, 1),
(80, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 00:32:05', '2022-03-04 00:32:05', 'Generated by publish of \'Getlocation Page\' at Mar 4, 2022, 12:32 AM', 'published', 1, NULL, '2022-03-04 00:32:05', '2022-03-04 00:32:05', 0, 1),
(81, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 00:35:10', '2022-03-04 00:35:10', 'Generated by publish of \'Getlocation Page\' at Mar 4, 2022, 12:35 AM', 'published', 1, NULL, '2022-03-04 00:35:10', '2022-03-04 00:35:10', 0, 1),
(82, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 00:36:47', '2022-03-04 00:36:47', 'Generated by publish of \'Getlocation Page\' at Mar 4, 2022, 12:36 AM', 'published', 1, NULL, '2022-03-04 00:36:47', '2022-03-04 00:36:47', 0, 1),
(83, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 03:22:19', '2022-03-04 03:22:19', 'Generated by publish of \'#1\' at Mar 4, 2022, 3:22 AM', 'published', 1, NULL, '2022-03-04 03:22:19', '2022-03-04 03:22:19', 0, 1),
(84, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 03:22:23', '2022-03-04 03:22:23', 'Generated by publish of \'#1\' at Mar 4, 2022, 3:22 AM', 'published', 1, NULL, '2022-03-04 03:22:23', '2022-03-04 03:22:23', 0, 1),
(85, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 03:23:05', '2022-03-04 03:23:05', 'Generated by publish of \'#1\' at Mar 4, 2022, 3:23 AM', 'published', 1, NULL, '2022-03-04 03:23:05', '2022-03-04 03:23:05', 0, 1),
(86, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 03:24:54', '2022-03-04 03:24:54', 'Generated by publish of \'#1\' at Mar 4, 2022, 3:24 AM', 'published', 1, NULL, '2022-03-04 03:24:54', '2022-03-04 03:24:54', 0, 1),
(87, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 03:25:38', '2022-03-04 03:25:38', 'Generated by publish of \'#2\' at Mar 4, 2022, 3:25 AM', 'published', 1, NULL, '2022-03-04 03:25:38', '2022-03-04 03:25:38', 0, 1),
(88, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 03:26:17', '2022-03-04 03:26:17', 'Generated by publish of \'#3\' at Mar 4, 2022, 3:26 AM', 'published', 1, NULL, '2022-03-04 03:26:17', '2022-03-04 03:26:17', 0, 1),
(89, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 03:26:21', '2022-03-04 03:26:21', 'Generated by publish of \'#3\' at Mar 4, 2022, 3:26 AM', 'published', 1, NULL, '2022-03-04 03:26:21', '2022-03-04 03:26:21', 0, 1),
(90, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 13:49:15', '2022-03-04 13:49:15', 'Generated by publish of \'20 Laud Avenue, Ellerslie, Auckland 1060\' at Mar 4, 2022, 1:49 PM', 'published', 1, NULL, '2022-03-04 13:49:15', '2022-03-04 13:49:15', 0, 1),
(91, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 13:49:23', '2022-03-04 13:49:23', 'Generated by publish of \'20 Laud Avenue, Ellerslie, Auckland 1060\' at Mar 4, 2022, 1:49 PM', 'published', 1, NULL, '2022-03-04 13:49:23', '2022-03-04 13:49:23', 0, 1),
(92, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 13:49:30', '2022-03-04 13:49:30', 'Generated by publish of \'20 Laud Avenue, Ellerslie, Auckland 1060\' at Mar 4, 2022, 1:49 PM', 'published', 1, NULL, '2022-03-04 13:49:30', '2022-03-04 13:49:30', 0, 1),
(93, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 14:23:15', '2022-03-04 14:23:15', 'Generated by publish of \'Corner Roy Place and, Orchard Road, Christchurch Airport, Christchurch 8052\' at Mar 4, 2022, 2:23 PM', 'published', 1, NULL, '2022-03-04 14:23:15', '2022-03-04 14:23:15', 0, 1),
(94, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 14:23:26', '2022-03-04 14:23:26', 'Generated by publish of \'Corner Roy Place and, Orchard Road, Christchurch Airport, Christchurch 8052\' at Mar 4, 2022, 2:23 PM', 'published', 1, NULL, '2022-03-04 14:23:26', '2022-03-04 14:23:26', 0, 1),
(95, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 14:24:36', '2022-03-04 14:24:36', 'Generated by publish of \'491 Tay Street, Hawthorndale, Invercargill 9810\' at Mar 4, 2022, 2:24 PM', 'published', 1, NULL, '2022-03-04 14:24:36', '2022-03-04 14:24:36', 0, 1),
(96, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-04 14:24:42', '2022-03-04 14:24:42', 'Generated by publish of \'491 Tay Street, Hawthorndale, Invercargill 9810\' at Mar 4, 2022, 2:24 PM', 'published', 1, NULL, '2022-03-04 14:24:42', '2022-03-04 14:24:42', 0, 1),
(97, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:00:50', '2022-03-12 06:00:50', 'Generated by publish of \'Our services\' at Mar 12, 2022, 6:00 AM', 'published', 1, NULL, '2022-03-12 06:00:50', '2022-03-12 06:00:50', 0, 1),
(98, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:02:14', '2022-03-12 06:02:14', 'Generated by publish of \'Our services\' at Mar 12, 2022, 6:02 AM', 'published', 1, NULL, '2022-03-12 06:02:14', '2022-03-12 06:02:14', 0, 1),
(99, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:03:19', '2022-03-12 06:03:19', 'Generated by publish of \'Std Page\' at Mar 12, 2022, 6:03 AM', 'published', 1, NULL, '2022-03-12 06:03:19', '2022-03-12 06:03:19', 0, 1),
(100, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:08:11', '2022-03-12 06:08:11', 'Generated by publish of \'About Us\' at Mar 12, 2022, 6:08 AM', 'published', 1, NULL, '2022-03-12 06:08:11', '2022-03-12 06:08:11', 0, 1),
(101, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:08:15', '2022-03-12 06:08:15', 'Generated by publish of \'About Us\' at Mar 12, 2022, 6:08 AM', 'published', 1, NULL, '2022-03-12 06:08:15', '2022-03-12 06:08:15', 0, 1),
(102, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:08:18', '2022-03-12 06:08:18', 'Generated by publish of \'Team\' at Mar 12, 2022, 6:08 AM', 'published', 1, NULL, '2022-03-12 06:08:18', '2022-03-12 06:08:18', 0, 1),
(103, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:08:21', '2022-03-12 06:08:21', 'Generated by publish of \'Properties \' at Mar 12, 2022, 6:08 AM', 'published', 1, NULL, '2022-03-12 06:08:21', '2022-03-12 06:08:21', 0, 1),
(104, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:08:25', '2022-03-12 06:08:25', 'Generated by publish of \'Contact Us\' at Mar 12, 2022, 6:08 AM', 'published', 1, NULL, '2022-03-12 06:08:25', '2022-03-12 06:08:25', 0, 1),
(105, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:11:34', '2022-03-12 06:11:34', 'Generated by publish of \'Kuzhalosai\' at Mar 12, 2022, 6:11 AM', 'published', 1, NULL, '2022-03-12 06:11:34', '2022-03-12 06:11:34', 0, 1),
(106, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:11:40', '2022-03-12 06:11:40', 'Generated by publish of \'Kuzhalosai\' at Mar 12, 2022, 6:11 AM', 'published', 1, NULL, '2022-03-12 06:11:40', '2022-03-12 06:11:40', 0, 1),
(107, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:16:01', '2022-03-12 06:16:01', 'Generated by publish of \'Home\' at Mar 12, 2022, 6:16 AM', 'published', 1, NULL, '2022-03-12 06:16:01', '2022-03-12 06:16:01', 0, 1),
(108, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:16:17', '2022-03-12 06:16:17', 'Generated by publish of \'Home\' at Mar 12, 2022, 6:16 AM', 'published', 1, NULL, '2022-03-12 06:16:17', '2022-03-12 06:16:17', 0, 1),
(109, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 06:16:19', '2022-03-12 06:16:19', 'Generated by publish of \'Home\' at Mar 12, 2022, 6:16 AM', 'published', 1, NULL, '2022-03-12 06:16:19', '2022-03-12 06:16:19', 0, 1),
(110, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 07:25:53', '2022-03-12 07:25:53', 'Generated by publish of \'Kuzhalosai\' at Mar 12, 2022, 7:25 AM', 'published', 1, NULL, '2022-03-12 07:25:53', '2022-03-12 07:25:53', 0, 1),
(111, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 07:26:26', '2022-03-12 07:26:26', 'Generated by publish of \'Kuzhalosai\' at Mar 12, 2022, 7:26 AM', 'published', 1, NULL, '2022-03-12 07:26:26', '2022-03-12 07:26:26', 0, 1),
(112, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 07:26:53', '2022-03-12 07:26:53', 'Generated by publish of \'Kuzhalosai\' at Mar 12, 2022, 7:26 AM', 'published', 1, NULL, '2022-03-12 07:26:53', '2022-03-12 07:26:53', 0, 1),
(113, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 07:27:45', '2022-03-12 07:27:45', 'Generated by publish of \'Kuzhalosai\' at Mar 12, 2022, 7:27 AM', 'published', 1, NULL, '2022-03-12 07:27:45', '2022-03-12 07:27:45', 0, 1),
(114, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 07:33:59', '2022-03-12 07:33:59', 'Generated by publish of \'Urgent Needs\' at Mar 12, 2022, 7:33 AM', 'published', 1, NULL, '2022-03-12 07:33:59', '2022-03-12 07:33:59', 0, 1),
(115, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 07:34:06', '2022-03-12 07:34:06', 'Generated by publish of \'Urgent Needs\' at Mar 12, 2022, 7:34 AM', 'published', 1, NULL, '2022-03-12 07:34:06', '2022-03-12 07:34:06', 0, 1),
(116, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:06:10', '2022-03-12 08:06:10', 'Generated by publish of \'Urgent Needs\' at Mar 12, 2022, 8:06 AM', 'published', 1, NULL, '2022-03-12 08:06:10', '2022-03-12 08:06:10', 0, 1),
(117, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:06:23', '2022-03-12 08:06:23', 'Generated by publish of \'Urgent Needs\' at Mar 12, 2022, 8:06 AM', 'published', 1, NULL, '2022-03-12 08:06:23', '2022-03-12 08:06:23', 0, 1),
(118, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:08:14', '2022-03-12 08:08:14', 'Generated by publish of \'About Us\' at Mar 12, 2022, 8:08 AM', 'published', 1, NULL, '2022-03-12 08:08:14', '2022-03-12 08:08:14', 0, 1),
(119, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:08:47', '2022-03-12 08:08:47', 'Generated by publish of \'News\' at Mar 12, 2022, 8:08 AM', 'published', 1, NULL, '2022-03-12 08:08:47', '2022-03-12 08:08:47', 0, 1),
(120, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:17:22', '2022-03-12 08:17:22', 'Generated by publish of \'Our services\' at Mar 12, 2022, 8:17 AM', 'published', 1, NULL, '2022-03-12 08:17:22', '2022-03-12 08:17:22', 0, 1),
(121, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:17:45', '2022-03-12 08:17:45', 'Generated by publish of \'News\' at Mar 12, 2022, 8:17 AM', 'published', 1, NULL, '2022-03-12 08:17:45', '2022-03-12 08:17:45', 0, 1),
(122, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:19:38', '2022-03-12 08:19:38', 'Generated by publish of \'New Members\' at Mar 12, 2022, 8:19 AM', 'published', 1, NULL, '2022-03-12 08:19:38', '2022-03-12 08:19:38', 0, 1),
(123, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:29:57', '2022-03-12 08:29:57', 'Generated by publish of \'Auckland\' at Mar 12, 2022, 8:29 AM', 'published', 1, NULL, '2022-03-12 08:29:57', '2022-03-12 08:29:57', 0, 1),
(124, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:41:59', '2022-03-12 08:41:59', 'Generated by publish of \'Home\' at Mar 12, 2022, 8:41 AM', 'published', 1, NULL, '2022-03-12 08:41:59', '2022-03-12 08:41:59', 0, 1),
(125, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:43:24', '2022-03-12 08:43:24', 'Generated by publish of \'Auckland\' at Mar 12, 2022, 8:43 AM', 'published', 1, NULL, '2022-03-12 08:43:24', '2022-03-12 08:43:24', 0, 1),
(126, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-12 08:53:23', '2022-03-12 08:53:23', 'Generated by publish of \'Chief Executive Officer\' at Mar 12, 2022, 8:53 AM', 'published', 1, NULL, '2022-03-12 08:53:23', '2022-03-12 08:53:23', 0, 1),
(127, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-13 03:50:59', '2022-03-13 03:50:59', 'Generated by publish of \'Home\' at Mar 13, 2022, 3:50 AM', 'published', 1, NULL, '2022-03-13 03:50:59', '2022-03-13 03:50:59', 0, 1),
(128, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-13 04:39:21', '2022-03-13 04:39:21', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 13, 2022, 4:39 AM', 'published', 1, NULL, '2022-03-13 04:39:21', '2022-03-13 04:39:21', 0, 1),
(129, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-13 05:53:59', '2022-03-13 05:53:59', 'Generated by publish of \'65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India\' at Mar 13, 2022, 5:53 AM', 'published', 1, NULL, '2022-03-13 05:53:59', '2022-03-13 05:53:59', 0, 1),
(130, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-13 05:54:02', '2022-03-13 05:54:02', 'Generated by publish of \'65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India\' at Mar 13, 2022, 5:54 AM', 'published', 1, NULL, '2022-03-13 05:54:02', '2022-03-13 05:54:02', 0, 1),
(131, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-13 06:31:59', '2022-03-13 06:31:59', 'Generated by publish of \'Home\' at Mar 13, 2022, 6:31 AM', 'published', 1, NULL, '2022-03-13 06:31:59', '2022-03-13 06:31:59', 0, 1),
(132, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 00:14:14', '2022-03-20 00:14:14', 'Generated by publish of \'Home\' at Mar 20, 2022, 12:14 AM', 'published', 1, NULL, '2022-03-20 00:14:14', '2022-03-20 00:14:14', 0, 1),
(133, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 01:18:16', '2022-03-20 01:18:16', 'Generated by publish of \'Chief Executive Officer\' at Mar 20, 2022, 1:18 AM', 'published', 1, NULL, '2022-03-20 01:18:16', '2022-03-20 01:18:16', 0, 1),
(134, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:15:58', '2022-03-20 02:15:58', 'Generated by publish of \'Product Manager\' at Mar 20, 2022, 2:15 AM', 'published', 1, NULL, '2022-03-20 02:15:58', '2022-03-20 02:15:58', 0, 1),
(135, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:16:01', '2022-03-20 02:16:01', 'Generated by publish of \'Product Manager\' at Mar 20, 2022, 2:16 AM', 'published', 1, NULL, '2022-03-20 02:16:01', '2022-03-20 02:16:01', 0, 1),
(136, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:29:03', '2022-03-20 02:29:03', 'Generated by publish of \'CTO\' at Mar 20, 2022, 2:29 AM', 'published', 1, NULL, '2022-03-20 02:29:03', '2022-03-20 02:29:03', 0, 1),
(137, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:31:16', '2022-03-20 02:31:16', 'Generated by publish of \'Accountant\' at Mar 20, 2022, 2:31 AM', 'published', 1, NULL, '2022-03-20 02:31:16', '2022-03-20 02:31:16', 0, 1),
(138, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:31:18', '2022-03-20 02:31:18', 'Generated by publish of \'Accountant\' at Mar 20, 2022, 2:31 AM', 'published', 1, NULL, '2022-03-20 02:31:18', '2022-03-20 02:31:18', 0, 1),
(139, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:32:53', '2022-03-20 02:32:53', 'Generated by publish of \'Team Member\' at Mar 20, 2022, 2:32 AM', 'published', 1, NULL, '2022-03-20 02:32:53', '2022-03-20 02:32:53', 0, 1),
(140, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:33:55', '2022-03-20 02:33:55', 'Generated by publish of \'Team Member\' at Mar 20, 2022, 2:33 AM', 'published', 1, NULL, '2022-03-20 02:33:55', '2022-03-20 02:33:55', 0, 1),
(141, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:34:22', '2022-03-20 02:34:22', 'Generated by publish of \'Founder \' at Mar 20, 2022, 2:34 AM', 'published', 1, NULL, '2022-03-20 02:34:22', '2022-03-20 02:34:22', 0, 1),
(142, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:34:43', '2022-03-20 02:34:43', 'Generated by publish of \'Team Member\' at Mar 20, 2022, 2:34 AM', 'published', 1, NULL, '2022-03-20 02:34:43', '2022-03-20 02:34:43', 0, 1),
(143, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:44:56', '2022-03-20 02:44:56', 'Generated by publish of \'Director-Operations\' at Mar 20, 2022, 2:44 AM', 'published', 1, NULL, '2022-03-20 02:44:56', '2022-03-20 02:44:56', 0, 1),
(144, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:45:13', '2022-03-20 02:45:13', 'Generated by publish of \'Director-Programmes\' at Mar 20, 2022, 2:45 AM', 'published', 1, NULL, '2022-03-20 02:45:13', '2022-03-20 02:45:13', 0, 1),
(145, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:46:15', '2022-03-20 02:46:15', 'Generated by publish of \'Founder \' at Mar 20, 2022, 2:46 AM', 'published', 1, NULL, '2022-03-20 02:46:15', '2022-03-20 02:46:15', 0, 1),
(146, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:46:41', '2022-03-20 02:46:41', 'Generated by publish of \'Founder \' at Mar 20, 2022, 2:46 AM', 'published', 1, NULL, '2022-03-20 02:46:41', '2022-03-20 02:46:41', 0, 1),
(147, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:48:22', '2022-03-20 02:48:22', 'Generated by publish of \'Director-Operations\' at Mar 20, 2022, 2:48 AM', 'published', 1, NULL, '2022-03-20 02:48:22', '2022-03-20 02:48:22', 0, 1),
(148, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:49:17', '2022-03-20 02:49:17', 'Generated by publish of \'Director-Programmes\' at Mar 20, 2022, 2:49 AM', 'published', 1, NULL, '2022-03-20 02:49:17', '2022-03-20 02:49:17', 0, 1),
(149, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:49:38', '2022-03-20 02:49:38', 'Generated by publish of \'Director-Internal Relations\' at Mar 20, 2022, 2:49 AM', 'published', 1, NULL, '2022-03-20 02:49:38', '2022-03-20 02:49:38', 0, 1),
(150, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 02:50:14', '2022-03-20 02:50:14', 'Generated by publish of \'Director-Internal Relations\' at Mar 20, 2022, 2:50 AM', 'published', 1, NULL, '2022-03-20 02:50:14', '2022-03-20 02:50:14', 0, 1),
(151, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 03:28:50', '2022-03-20 03:28:50', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 20, 2022, 3:28 AM', 'published', 1, NULL, '2022-03-20 03:28:50', '2022-03-20 03:28:50', 0, 1),
(152, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 03:30:19', '2022-03-20 03:30:19', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 20, 2022, 3:30 AM', 'published', 1, NULL, '2022-03-20 03:30:19', '2022-03-20 03:30:19', 0, 1),
(153, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 03:52:00', '2022-03-20 03:52:00', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 20, 2022, 3:52 AM', 'published', 1, NULL, '2022-03-20 03:52:00', '2022-03-20 03:52:00', 0, 1),
(154, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 03:52:05', '2022-03-20 03:52:05', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 20, 2022, 3:52 AM', 'published', 1, NULL, '2022-03-20 03:52:05', '2022-03-20 03:52:05', 0, 1),
(155, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 03:52:47', '2022-03-20 03:52:47', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 20, 2022, 3:52 AM', 'published', 1, NULL, '2022-03-20 03:52:47', '2022-03-20 03:52:47', 0, 1),
(156, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 03:52:53', '2022-03-20 03:52:53', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 20, 2022, 3:52 AM', 'published', 1, NULL, '2022-03-20 03:52:53', '2022-03-20 03:52:53', 0, 1),
(157, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 03:56:15', '2022-03-20 03:56:15', 'Generated by publish of \'65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India\' at Mar 20, 2022, 3:56 AM', 'published', 1, NULL, '2022-03-20 03:56:15', '2022-03-20 03:56:15', 0, 1),
(158, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 03:57:35', '2022-03-20 03:57:35', 'Generated by publish of \'65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India\' at Mar 20, 2022, 3:57 AM', 'published', 1, NULL, '2022-03-20 03:57:35', '2022-03-20 03:57:35', 0, 1),
(159, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 03:57:40', '2022-03-20 03:57:40', 'Generated by publish of \'65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India\' at Mar 20, 2022, 3:57 AM', 'published', 1, NULL, '2022-03-20 03:57:40', '2022-03-20 03:57:40', 0, 1),
(160, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:28:59', '2022-03-20 04:28:59', 'Generated by publish of \'Kuzhalosai\' at Mar 20, 2022, 4:28 AM', 'published', 1, NULL, '2022-03-20 04:28:59', '2022-03-20 04:28:59', 0, 1),
(161, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:29:46', '2022-03-20 04:29:46', 'Generated by publish of \'Kuzhalosai\' at Mar 20, 2022, 4:29 AM', 'published', 1, NULL, '2022-03-20 04:29:46', '2022-03-20 04:29:46', 0, 1),
(162, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:30:02', '2022-03-20 04:30:02', 'Generated by publish of \'Kuzhalosai\' at Mar 20, 2022, 4:30 AM', 'published', 1, NULL, '2022-03-20 04:30:02', '2022-03-20 04:30:02', 0, 1),
(163, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:30:42', '2022-03-20 04:30:42', 'Generated by publish of \'Kuzhalosai\' at Mar 20, 2022, 4:30 AM', 'published', 1, NULL, '2022-03-20 04:30:42', '2022-03-20 04:30:42', 0, 1),
(164, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:51:05', '2022-03-20 04:51:05', 'Generated by publish of \'Our services\' at Mar 20, 2022, 4:51 AM', 'published', 1, NULL, '2022-03-20 04:51:05', '2022-03-20 04:51:05', 0, 1),
(165, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:54:51', '2022-03-20 04:54:51', 'Generated by publish of \'ORPHANAGE SERVICE\' at Mar 20, 2022, 4:54 AM', 'published', 1, NULL, '2022-03-20 04:54:51', '2022-03-20 04:54:51', 0, 1),
(166, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:55:12', '2022-03-20 04:55:12', 'Generated by publish of \'KNOWLEDGE SHARING\' at Mar 20, 2022, 4:55 AM', 'published', 1, NULL, '2022-03-20 04:55:12', '2022-03-20 04:55:12', 0, 1),
(167, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:55:36', '2022-03-20 04:55:36', 'Generated by publish of \'PERSONALITY DEVELOPMENT\' at Mar 20, 2022, 4:55 AM', 'published', 1, NULL, '2022-03-20 04:55:36', '2022-03-20 04:55:36', 0, 1),
(168, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:55:57', '2022-03-20 04:55:57', 'Generated by publish of \'AWARENESS CREW\' at Mar 20, 2022, 4:55 AM', 'published', 1, NULL, '2022-03-20 04:55:57', '2022-03-20 04:55:57', 0, 1),
(169, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:56:12', '2022-03-20 04:56:12', 'Generated by publish of \'INFORMATION SHARING\' at Mar 20, 2022, 4:56 AM', 'published', 1, NULL, '2022-03-20 04:56:12', '2022-03-20 04:56:12', 0, 1),
(170, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:56:27', '2022-03-20 04:56:27', 'Generated by publish of \'SINGLE PARENT HELP\' at Mar 20, 2022, 4:56 AM', 'published', 1, NULL, '2022-03-20 04:56:27', '2022-03-20 04:56:27', 0, 1),
(171, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:56:41', '2022-03-20 04:56:41', 'Generated by publish of \'BLOOD FOR LIFE\' at Mar 20, 2022, 4:56 AM', 'published', 1, NULL, '2022-03-20 04:56:41', '2022-03-20 04:56:41', 0, 1),
(172, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:56:57', '2022-03-20 04:56:57', 'Generated by publish of \'GENERAL COUNSELLING\' at Mar 20, 2022, 4:56 AM', 'published', 1, NULL, '2022-03-20 04:56:57', '2022-03-20 04:56:57', 0, 1),
(173, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:57:17', '2022-03-20 04:57:17', 'Generated by publish of \'EMERGENCY RESCUE)\' at Mar 20, 2022, 4:57 AM', 'published', 1, NULL, '2022-03-20 04:57:17', '2022-03-20 04:57:17', 0, 1),
(174, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:57:21', '2022-03-20 04:57:21', 'Generated by publish of \'EMERGENCY RESCUE\' at Mar 20, 2022, 4:57 AM', 'published', 1, NULL, '2022-03-20 04:57:21', '2022-03-20 04:57:21', 0, 1),
(175, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:57:31', '2022-03-20 04:57:31', 'Generated by publish of \'EMERGENCY RESCUE\' at Mar 20, 2022, 4:57 AM', 'published', 1, NULL, '2022-03-20 04:57:31', '2022-03-20 04:57:31', 0, 1),
(176, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:57:50', '2022-03-20 04:57:50', 'Generated by publish of \'ECO KUZHALOSAI\' at Mar 20, 2022, 4:57 AM', 'published', 1, NULL, '2022-03-20 04:57:50', '2022-03-20 04:57:50', 0, 1),
(177, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 04:59:51', '2022-03-20 04:59:51', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 20, 2022, 4:59 AM', 'published', 1, NULL, '2022-03-20 04:59:51', '2022-03-20 04:59:51', 0, 1),
(178, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:00:03', '2022-03-20 05:00:03', 'Generated by publish of \'65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India\' at Mar 20, 2022, 5:00 AM', 'published', 1, NULL, '2022-03-20 05:00:03', '2022-03-20 05:00:03', 0, 1),
(179, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 'Generated by publish of \'Our services\' at Mar 20, 2022, 5:06 AM', 'published', 1, NULL, '2022-03-20 05:06:08', '2022-03-20 05:06:08', 0, 1),
(180, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:31:47', '2022-03-20 05:31:47', 'Generated by publish of \'Our tree planting program\' at Mar 20, 2022, 5:31 AM', 'published', 1, NULL, '2022-03-20 05:31:47', '2022-03-20 05:31:47', 0, 1),
(181, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:45:11', '2022-03-20 05:45:11', 'Generated by publish of \'Orphanage Service\' at Mar 20, 2022, 5:45 AM', 'published', 1, NULL, '2022-03-20 05:45:11', '2022-03-20 05:45:11', 0, 1),
(182, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:46:06', '2022-03-20 05:46:06', 'Generated by publish of \'Knowledge Sharing\' at Mar 20, 2022, 5:46 AM', 'published', 1, NULL, '2022-03-20 05:46:06', '2022-03-20 05:46:06', 0, 1),
(183, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:46:49', '2022-03-20 05:46:49', 'Generated by publish of \'Personality Development\' at Mar 20, 2022, 5:46 AM', 'published', 1, NULL, '2022-03-20 05:46:49', '2022-03-20 05:46:49', 0, 1),
(184, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:47:31', '2022-03-20 05:47:31', 'Generated by publish of \'Awareness Crew\' at Mar 20, 2022, 5:47 AM', 'published', 1, NULL, '2022-03-20 05:47:31', '2022-03-20 05:47:31', 0, 1),
(185, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:48:05', '2022-03-20 05:48:05', 'Generated by publish of \'Information Sharing\' at Mar 20, 2022, 5:48 AM', 'published', 1, NULL, '2022-03-20 05:48:05', '2022-03-20 05:48:05', 0, 1),
(186, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:48:51', '2022-03-20 05:48:51', 'Generated by publish of \'Single Parent Help\' at Mar 20, 2022, 5:48 AM', 'published', 1, NULL, '2022-03-20 05:48:51', '2022-03-20 05:48:51', 0, 1),
(187, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:49:33', '2022-03-20 05:49:33', 'Generated by publish of \'Blood for Life \' at Mar 20, 2022, 5:49 AM', 'published', 1, NULL, '2022-03-20 05:49:33', '2022-03-20 05:49:33', 0, 1),
(188, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:50:15', '2022-03-20 05:50:15', 'Generated by publish of \'General Counselling \' at Mar 20, 2022, 5:50 AM', 'published', 1, NULL, '2022-03-20 05:50:15', '2022-03-20 05:50:15', 0, 1),
(189, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:50:47', '2022-03-20 05:50:47', 'Generated by publish of \'Emergency Rescue\' at Mar 20, 2022, 5:50 AM', 'published', 1, NULL, '2022-03-20 05:50:47', '2022-03-20 05:50:47', 0, 1),
(190, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:51:12', '2022-03-20 05:51:12', 'Generated by publish of \'Eco Kuzhalosai\' at Mar 20, 2022, 5:51 AM', 'published', 1, NULL, '2022-03-20 05:51:12', '2022-03-20 05:51:12', 0, 1),
(191, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 05:56:41', '2022-03-20 05:56:41', 'Generated by publish of \'Our tree planting program\' at Mar 20, 2022, 5:56 AM', 'published', 1, NULL, '2022-03-20 05:56:41', '2022-03-20 05:56:41', 0, 1),
(192, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 06:18:52', '2022-03-20 06:18:52', 'Generated by publish of \'Our tree planting program\' at Mar 20, 2022, 6:18 AM', 'published', 1, NULL, '2022-03-20 06:18:52', '2022-03-20 06:18:52', 0, 1),
(193, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 06:20:53', '2022-03-20 06:20:53', 'Generated by publish of \'Orphanage Service\' at Mar 20, 2022, 6:20 AM', 'published', 1, NULL, '2022-03-20 06:20:53', '2022-03-20 06:20:53', 0, 1),
(194, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 06:25:52', '2022-03-20 06:25:52', 'Generated by publish of \'News\' at Mar 20, 2022, 6:25 AM', 'published', 1, NULL, '2022-03-20 06:25:52', '2022-03-20 06:25:52', 0, 1),
(195, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 06:28:33', '2022-03-20 06:28:33', 'Generated by publish of \'News\' at Mar 20, 2022, 6:28 AM', 'published', 1, NULL, '2022-03-20 06:28:33', '2022-03-20 06:28:33', 0, 1),
(196, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 06:28:48', '2022-03-20 06:28:48', 'Generated by publish of \'Our tree planting program\' at Mar 20, 2022, 6:28 AM', 'published', 1, NULL, '2022-03-20 06:28:48', '2022-03-20 06:28:48', 0, 1),
(197, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 06:29:19', '2022-03-20 06:29:19', 'Generated by publish of \'Our tree planting program\' at Mar 20, 2022, 6:29 AM', 'published', 1, NULL, '2022-03-20 06:29:19', '2022-03-20 06:29:19', 0, 1),
(198, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 11:06:22', '2022-03-20 11:06:22', 'Generated by publish of \'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India\' at Mar 20, 2022, 11:06 AM', 'published', 1, NULL, '2022-03-20 11:06:22', '2022-03-20 11:06:22', 0, 1),
(199, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 11:45:42', '2022-03-20 11:45:42', 'Generated by publish of \'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India\' at Mar 20, 2022, 11:45 AM', 'published', 1, NULL, '2022-03-20 11:45:42', '2022-03-20 11:45:42', 0, 1),
(200, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 12:17:51', '2022-03-20 12:17:51', 'Generated by publish of \'Orphanage Service\' at Mar 20, 2022, 12:17 PM', 'published', 1, NULL, '2022-03-20 12:17:51', '2022-03-20 12:17:51', 0, 1),
(201, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 12:19:25', '2022-03-20 12:19:25', 'Generated by publish of \'Orphanage Service\' at Mar 20, 2022, 12:19 PM', 'published', 1, NULL, '2022-03-20 12:19:25', '2022-03-20 12:19:25', 0, 1),
(202, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 12:25:02', '2022-03-20 12:25:02', 'Generated by publish of \'Orphanage Service\' at Mar 20, 2022, 12:25 PM', 'published', 1, NULL, '2022-03-20 12:25:02', '2022-03-20 12:25:02', 0, 1),
(203, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 12:28:11', '2022-03-20 12:28:11', 'Generated by publish of \'Orphanage Service\' at Mar 20, 2022, 12:28 PM', 'published', 1, NULL, '2022-03-20 12:28:11', '2022-03-20 12:28:11', 0, 1),
(204, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 12:35:01', '2022-03-20 12:35:01', 'Generated by publish of \'Our tree planting program\' at Mar 20, 2022, 12:35 PM', 'published', 1, NULL, '2022-03-20 12:35:01', '2022-03-20 12:35:01', 0, 1),
(205, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 12:48:36', '2022-03-20 12:48:36', 'Generated by publish of \'Kuzhalosai\' at Mar 20, 2022, 12:48 PM', 'published', 1, NULL, '2022-03-20 12:48:36', '2022-03-20 12:48:36', 0, 1),
(206, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 12:48:41', '2022-03-20 12:48:41', 'Generated by publish of \'Kuzhalosai\' at Mar 20, 2022, 12:48 PM', 'published', 1, NULL, '2022-03-20 12:48:41', '2022-03-20 12:48:41', 0, 1),
(207, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 12:50:20', '2022-03-20 12:50:20', 'Generated by publish of \'Kuzhalosai\' at Mar 20, 2022, 12:50 PM', 'published', 1, NULL, '2022-03-20 12:50:20', '2022-03-20 12:50:20', 0, 1);
INSERT INTO `changeset` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `State`, `IsInferred`, `Description`, `PublishDate`, `LastSynced`, `OwnerID`, `PublisherID`) VALUES
(208, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 14:31:19', '2022-03-20 14:31:19', 'Generated by publish of \'Our tree planting program\' at Mar 20, 2022, 2:31 PM', 'published', 1, NULL, '2022-03-20 14:31:19', '2022-03-20 14:31:19', 0, 1),
(209, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 16:43:47', '2022-03-20 16:43:47', 'Generated by publish of \'New Members\' at Mar 20, 2022, 4:43 PM', 'published', 1, NULL, '2022-03-20 16:43:47', '2022-03-20 16:43:47', 0, 1),
(210, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 22:08:17', '2022-03-20 22:08:17', 'Generated by publish of \'Founder \' at Mar 20, 2022, 10:08 PM', 'published', 1, NULL, '2022-03-20 22:08:17', '2022-03-20 22:08:17', 0, 1),
(211, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 22:08:44', '2022-03-20 22:08:44', 'Generated by publish of \'Director-Operations\' at Mar 20, 2022, 10:08 PM', 'published', 1, NULL, '2022-03-20 22:08:44', '2022-03-20 22:08:44', 0, 1),
(212, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 22:09:05', '2022-03-20 22:09:05', 'Generated by publish of \'Director-Programmes\' at Mar 20, 2022, 10:09 PM', 'published', 1, NULL, '2022-03-20 22:09:05', '2022-03-20 22:09:05', 0, 1),
(213, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-20 22:09:33', '2022-03-20 22:09:33', 'Generated by publish of \'Director-Internal Relations\' at Mar 20, 2022, 10:09 PM', 'published', 1, NULL, '2022-03-20 22:09:33', '2022-03-20 22:09:33', 0, 1),
(214, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 12:27:30', '2022-03-24 12:27:30', 'Generated by publish of \'Home\' at Mar 24, 2022, 12:27 PM', 'published', 1, NULL, '2022-03-24 12:27:30', '2022-03-24 12:27:30', 0, 1),
(215, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 13:52:40', '2022-03-24 13:52:40', 'Generated by publish of \'#1\' at Mar 24, 2022, 1:52 PM', 'published', 1, NULL, '2022-03-24 13:52:40', '2022-03-24 13:52:40', 0, 1),
(216, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 13:52:42', '2022-03-24 13:52:42', 'Generated by publish of \'#1\' at Mar 24, 2022, 1:52 PM', 'published', 1, NULL, '2022-03-24 13:52:42', '2022-03-24 13:52:42', 0, 1),
(217, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 13:56:19', '2022-03-24 13:56:19', 'Generated by publish of \'#3\' at Mar 24, 2022, 1:56 PM', 'published', 1, NULL, '2022-03-24 13:56:19', '2022-03-24 13:56:19', 0, 1),
(218, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 13:56:23', '2022-03-24 13:56:23', 'Generated by publish of \'#3\' at Mar 24, 2022, 1:56 PM', 'published', 1, NULL, '2022-03-24 13:56:23', '2022-03-24 13:56:23', 0, 1),
(219, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 13:56:25', '2022-03-24 13:56:25', 'Generated by publish of \'#3\' at Mar 24, 2022, 1:56 PM', 'published', 1, NULL, '2022-03-24 13:56:25', '2022-03-24 13:56:25', 0, 1),
(220, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 13:56:36', '2022-03-24 13:56:36', 'Generated by publish of \'#2\' at Mar 24, 2022, 1:56 PM', 'published', 1, NULL, '2022-03-24 13:56:36', '2022-03-24 13:56:36', 0, 1),
(221, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:08:51', '2022-03-24 14:08:51', 'Generated by publish of \'#2\' at Mar 24, 2022, 2:08 PM', 'published', 1, NULL, '2022-03-24 14:08:51', '2022-03-24 14:08:51', 0, 1),
(222, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:08:55', '2022-03-24 14:08:55', 'Generated by publish of \'#2\' at Mar 24, 2022, 2:08 PM', 'published', 1, NULL, '2022-03-24 14:08:55', '2022-03-24 14:08:55', 0, 1),
(223, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:09:24', '2022-03-24 14:09:24', 'Generated by publish of \'#3\' at Mar 24, 2022, 2:09 PM', 'published', 1, NULL, '2022-03-24 14:09:24', '2022-03-24 14:09:24', 0, 1),
(224, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:09:27', '2022-03-24 14:09:27', 'Generated by publish of \'#3\' at Mar 24, 2022, 2:09 PM', 'published', 1, NULL, '2022-03-24 14:09:27', '2022-03-24 14:09:27', 0, 1),
(225, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:10:28', '2022-03-24 14:10:28', 'Generated by publish of \'#4\' at Mar 24, 2022, 2:10 PM', 'published', 1, NULL, '2022-03-24 14:10:28', '2022-03-24 14:10:28', 0, 1),
(226, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:21:29', '2022-03-24 14:21:29', 'Generated by publish of \'#2\' at Mar 24, 2022, 2:21 PM', 'published', 1, NULL, '2022-03-24 14:21:29', '2022-03-24 14:21:29', 0, 1),
(227, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:21:40', '2022-03-24 14:21:40', 'Generated by publish of \'#3\' at Mar 24, 2022, 2:21 PM', 'published', 1, NULL, '2022-03-24 14:21:40', '2022-03-24 14:21:40', 0, 1),
(228, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:21:52', '2022-03-24 14:21:52', 'Generated by publish of \'#4\' at Mar 24, 2022, 2:21 PM', 'published', 1, NULL, '2022-03-24 14:21:52', '2022-03-24 14:21:52', 0, 1),
(229, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:31:11', '2022-03-24 14:31:11', 'Generated by publish of \'#1\' at Mar 24, 2022, 2:31 PM', 'published', 1, NULL, '2022-03-24 14:31:11', '2022-03-24 14:31:11', 0, 1),
(230, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:37:56', '2022-03-24 14:37:56', 'Generated by publish of \'#2\' at Mar 24, 2022, 2:37 PM', 'published', 1, NULL, '2022-03-24 14:37:56', '2022-03-24 14:37:56', 0, 1),
(231, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:38:05', '2022-03-24 14:38:05', 'Generated by publish of \'#2\' at Mar 24, 2022, 2:38 PM', 'published', 1, NULL, '2022-03-24 14:38:05', '2022-03-24 14:38:05', 0, 1),
(232, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:38:14', '2022-03-24 14:38:14', 'Generated by publish of \'#2\' at Mar 24, 2022, 2:38 PM', 'published', 1, NULL, '2022-03-24 14:38:14', '2022-03-24 14:38:14', 0, 1),
(233, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:38:22', '2022-03-24 14:38:22', 'Generated by publish of \'#3\' at Mar 24, 2022, 2:38 PM', 'published', 1, NULL, '2022-03-24 14:38:22', '2022-03-24 14:38:22', 0, 1),
(234, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:38:33', '2022-03-24 14:38:33', 'Generated by publish of \'#4\' at Mar 24, 2022, 2:38 PM', 'published', 1, NULL, '2022-03-24 14:38:33', '2022-03-24 14:38:33', 0, 1),
(235, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:38:40', '2022-03-24 14:38:40', 'Generated by publish of \'#1\' at Mar 24, 2022, 2:38 PM', 'published', 1, NULL, '2022-03-24 14:38:40', '2022-03-24 14:38:40', 0, 1),
(236, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:42:49', '2022-03-24 14:42:49', 'Generated by publish of \'#5\' at Mar 24, 2022, 2:42 PM', 'published', 1, NULL, '2022-03-24 14:42:49', '2022-03-24 14:42:49', 0, 1),
(237, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:44:21', '2022-03-24 14:44:21', 'Generated by publish of \'#5\' at Mar 24, 2022, 2:44 PM', 'published', 1, NULL, '2022-03-24 14:44:21', '2022-03-24 14:44:21', 0, 1),
(238, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:45:00', '2022-03-24 14:45:00', 'Generated by publish of \'#6\' at Mar 24, 2022, 2:45 PM', 'published', 1, NULL, '2022-03-24 14:45:00', '2022-03-24 14:45:00', 0, 1),
(239, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 'Generated by publish of \'Our services\' at Mar 24, 2022, 2:52 PM', 'published', 1, NULL, '2022-03-24 14:52:00', '2022-03-24 14:52:00', 0, 1),
(240, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 'Generated by publish of \'Our services\' at Mar 24, 2022, 2:54 PM', 'published', 1, NULL, '2022-03-24 14:54:43', '2022-03-24 14:54:43', 0, 1),
(241, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 'Generated by publish of \'Our services\' at Mar 24, 2022, 3:15 PM', 'published', 1, NULL, '2022-03-24 15:15:55', '2022-03-24 15:15:55', 0, 1),
(242, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 'Generated by publish of \'Our services\' at Mar 24, 2022, 3:25 PM', 'published', 1, NULL, '2022-03-24 15:25:07', '2022-03-24 15:25:07', 0, 1),
(243, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 15:52:06', '2022-03-24 15:52:06', 'Generated by publish of \'#1\' at Mar 24, 2022, 3:52 PM', 'published', 1, NULL, '2022-03-24 15:52:06', '2022-03-24 15:52:06', 0, 1),
(244, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 15:53:47', '2022-03-24 15:53:47', 'Generated by publish of \'#1\' at Mar 24, 2022, 3:53 PM', 'published', 1, NULL, '2022-03-24 15:53:47', '2022-03-24 15:53:47', 0, 1),
(245, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 15:55:44', '2022-03-24 15:55:44', 'Generated by publish of \'#1\' at Mar 24, 2022, 3:55 PM', 'published', 1, NULL, '2022-03-24 15:55:44', '2022-03-24 15:55:44', 0, 1),
(246, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 15:58:34', '2022-03-24 15:58:34', 'Generated by publish of \'#1\' at Mar 24, 2022, 3:58 PM', 'published', 1, NULL, '2022-03-24 15:58:34', '2022-03-24 15:58:34', 0, 1),
(247, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 16:04:13', '2022-03-24 16:04:13', 'Generated by publish of \'#1\' at Mar 24, 2022, 4:04 PM', 'published', 1, NULL, '2022-03-24 16:04:13', '2022-03-24 16:04:13', 0, 1),
(248, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 16:04:48', '2022-03-24 16:04:48', 'Generated by publish of \'#2\' at Mar 24, 2022, 4:04 PM', 'published', 1, NULL, '2022-03-24 16:04:48', '2022-03-24 16:04:48', 0, 1),
(249, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 16:05:27', '2022-03-24 16:05:27', 'Generated by publish of \'#3\' at Mar 24, 2022, 4:05 PM', 'published', 1, NULL, '2022-03-24 16:05:27', '2022-03-24 16:05:27', 0, 1),
(250, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 16:12:23', '2022-03-24 16:12:23', 'Generated by publish of \'#2\' at Mar 24, 2022, 4:12 PM', 'published', 1, NULL, '2022-03-24 16:12:23', '2022-03-24 16:12:23', 0, 1),
(251, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 16:13:18', '2022-03-24 16:13:18', 'Generated by publish of \'#3\' at Mar 24, 2022, 4:13 PM', 'published', 1, NULL, '2022-03-24 16:13:18', '2022-03-24 16:13:18', 0, 1),
(252, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 16:40:40', '2022-03-24 16:40:40', 'Generated by publish of \'#6\' at Mar 24, 2022, 4:40 PM', 'published', 1, NULL, '2022-03-24 16:40:40', '2022-03-24 16:40:40', 0, 1),
(253, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 16:40:51', '2022-03-24 16:40:51', 'Generated by publish of \'#5\' at Mar 24, 2022, 4:40 PM', 'published', 1, NULL, '2022-03-24 16:40:51', '2022-03-24 16:40:51', 0, 1),
(254, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 16:40:54', '2022-03-24 16:40:54', 'Generated by publish of \'#5\' at Mar 24, 2022, 4:40 PM', 'published', 1, NULL, '2022-03-24 16:40:54', '2022-03-24 16:40:54', 0, 1),
(255, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 17:57:18', '2022-03-24 17:57:18', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 24, 2022, 5:57 PM', 'published', 1, NULL, '2022-03-24 17:57:18', '2022-03-24 17:57:18', 0, 1),
(256, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 17:57:57', '2022-03-24 17:57:57', 'Generated by publish of \'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India\' at Mar 24, 2022, 5:57 PM', 'published', 1, NULL, '2022-03-24 17:57:57', '2022-03-24 17:57:57', 0, 1),
(257, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 17:58:18', '2022-03-24 17:58:18', 'Generated by publish of \'Urgent Needs\' at Mar 24, 2022, 5:58 PM', 'published', 1, NULL, '2022-03-24 17:58:18', '2022-03-24 17:58:18', 0, 1),
(258, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 17:59:05', '2022-03-24 17:59:05', 'Generated by publish of \'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India\' at Mar 24, 2022, 5:59 PM', 'published', 1, NULL, '2022-03-24 17:59:05', '2022-03-24 17:59:05', 0, 1),
(259, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 17:59:23', '2022-03-24 17:59:23', 'Generated by publish of \'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India\' at Mar 24, 2022, 5:59 PM', 'published', 1, NULL, '2022-03-24 17:59:23', '2022-03-24 17:59:23', 0, 1),
(260, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 18:15:58', '2022-03-24 18:15:58', 'Generated by publish of \'Page not found\' at Mar 24, 2022, 6:15 PM', 'published', 1, NULL, '2022-03-24 18:15:58', '2022-03-24 18:15:58', 0, 1),
(261, 'SilverStripe\\Versioned\\ChangeSet', '2022-03-24 18:20:52', '2022-03-24 18:20:52', 'Generated by publish of \'Default Admin\' at Mar 24, 2022, 6:20 PM', 'published', 1, NULL, '2022-03-24 18:20:52', '2022-03-24 18:20:52', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changesetitem`
--

CREATE TABLE `changesetitem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSetItem') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Versioned\\ChangeSetItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `VersionBefore` int(11) NOT NULL DEFAULT 0,
  `VersionAfter` int(11) NOT NULL DEFAULT 0,
  `Added` enum('explicitly','implicitly') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'implicitly',
  `ChangeSetID` int(11) NOT NULL DEFAULT 0,
  `ObjectID` int(11) NOT NULL DEFAULT 0,
  `ObjectClass` enum('Custom\\Needs','Custom\\Project','Custom\\Service','Custom\\Sponsor','Custom\\Team','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SSFormCapture\\Model\\CapturedField','SSFormCapture\\Model\\CapturedFormSubmission','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\Widgets\\Model\\Widget','SilverStripe\\Widgets\\Model\\WidgetArea','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','Custom\\ContactPage','Custom\\HomePage','Custom\\NeedsSearchPage','Custom\\ServicesPage','Custom\\SponsoresPage','Custom\\TeamPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\Blog\\Widgets\\BlogArchiveWidget','SilverStripe\\Blog\\Widgets\\BlogCategoriesWidget','SilverStripe\\Blog\\Widgets\\BlogFeaturedPostsWidget','SilverStripe\\Blog\\Widgets\\BlogRecentPostsWidget','SilverStripe\\Blog\\Widgets\\BlogTagsCloudWidget','SilverStripe\\Blog\\Widgets\\BlogTagsWidget','Custom\\Property','Custom\\ArticleCategory','Custom\\Region','Custom\\Getlocations') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Needs'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `changesetitem`
--

INSERT INTO `changesetitem` (`ID`, `ClassName`, `LastEdited`, `Created`, `VersionBefore`, `VersionAfter`, `Added`, `ChangeSetID`, `ObjectID`, `ObjectClass`) VALUES
(1, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-21 22:39:45', '2022-02-21 22:39:45', 2, 4, 'explicitly', 1, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(2, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-21 22:39:50', '2022-02-21 22:39:50', 4, 4, 'explicitly', 2, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(3, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-21 22:41:19', '2022-02-21 22:41:19', 4, 6, 'explicitly', 3, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(4, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-21 22:41:41', '2022-02-21 22:41:41', 6, 8, 'explicitly', 4, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(5, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-21 23:36:06', '2022-02-21 23:36:06', 2, 4, 'explicitly', 5, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(6, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-21 23:36:45', '2022-02-21 23:36:45', 4, 6, 'explicitly', 6, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(7, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-21 23:40:01', '2022-02-21 23:40:01', 8, 10, 'explicitly', 7, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(8, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-21 23:50:12', '2022-02-21 23:50:12', 10, 10, 'explicitly', 8, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(10, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:24:06', '2022-02-22 04:24:06', 0, 3, 'explicitly', 10, 1, 'Custom\\Team'),
(11, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:24:06', '2022-02-22 04:24:06', 0, 2, 'implicitly', 10, 4, 'SilverStripe\\Assets\\File'),
(12, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:24:48', '2022-02-22 04:24:48', 0, 3, 'explicitly', 11, 2, 'Custom\\Team'),
(13, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:24:48', '2022-02-22 04:24:48', 0, 2, 'implicitly', 11, 5, 'SilverStripe\\Assets\\File'),
(14, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:25:26', '2022-02-22 04:25:26', 0, 4, 'explicitly', 12, 3, 'Custom\\Team'),
(15, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:25:26', '2022-02-22 04:25:26', 0, 2, 'implicitly', 12, 6, 'SilverStripe\\Assets\\File'),
(16, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:25:59', '2022-02-22 04:25:59', 0, 4, 'explicitly', 13, 4, 'Custom\\Team'),
(17, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:25:59', '2022-02-22 04:25:59', 0, 2, 'implicitly', 13, 7, 'SilverStripe\\Assets\\File'),
(18, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:26:02', '2022-02-22 04:26:02', 4, 6, 'explicitly', 14, 4, 'Custom\\Team'),
(19, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:26:02', '2022-02-22 04:26:02', 2, 2, 'implicitly', 14, 7, 'SilverStripe\\Assets\\File'),
(20, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:26:51', '2022-02-22 04:26:51', 0, 4, 'explicitly', 15, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(23, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:31:56', '2022-02-22 04:31:56', 0, 3, 'explicitly', 18, 9, 'SilverStripe\\CMS\\Model\\SiteTree'),
(24, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:32:32', '2022-02-22 04:32:32', 3, 5, 'explicitly', 19, 9, 'SilverStripe\\CMS\\Model\\SiteTree'),
(25, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:32:32', '2022-02-22 04:32:32', 0, 2, 'implicitly', 19, 10, 'SilverStripe\\Assets\\File'),
(26, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:32:32', '2022-02-22 04:32:32', 0, 2, 'implicitly', 19, 11, 'SilverStripe\\Assets\\File'),
(27, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:33:22', '2022-02-22 04:33:22', 0, 3, 'explicitly', 20, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(28, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:35:09', '2022-02-22 04:35:09', 0, 2, 'explicitly', 21, 1, 'Custom\\Region'),
(29, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:35:09', '2022-02-22 04:35:09', 0, 2, 'implicitly', 21, 13, 'SilverStripe\\Assets\\File'),
(30, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:36:06', '2022-02-22 04:36:06', 3, 5, 'explicitly', 22, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(31, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:36:06', '2022-02-22 04:36:06', 2, 2, 'implicitly', 22, 1, 'Custom\\Region'),
(32, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:36:06', '2022-02-22 04:36:06', 2, 2, 'implicitly', 22, 13, 'SilverStripe\\Assets\\File'),
(33, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:37:24', '2022-02-22 04:37:24', 0, 2, 'explicitly', 23, 2, 'Custom\\Region'),
(34, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:37:24', '2022-02-22 04:37:24', 0, 2, 'implicitly', 23, 14, 'SilverStripe\\Assets\\File'),
(35, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:37:31', '2022-02-22 04:37:31', 2, 2, 'explicitly', 24, 2, 'Custom\\Region'),
(36, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:37:31', '2022-02-22 04:37:31', 2, 2, 'implicitly', 24, 14, 'SilverStripe\\Assets\\File'),
(37, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:38:16', '2022-02-22 04:38:16', 0, 2, 'explicitly', 25, 3, 'Custom\\Region'),
(38, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:38:16', '2022-02-22 04:38:16', 0, 2, 'implicitly', 25, 15, 'SilverStripe\\Assets\\File'),
(39, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:39:02', '2022-02-22 04:39:02', 5, 7, 'explicitly', 26, 9, 'SilverStripe\\CMS\\Model\\SiteTree'),
(40, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:39:02', '2022-02-22 04:39:02', 2, 2, 'implicitly', 26, 10, 'SilverStripe\\Assets\\File'),
(41, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:39:02', '2022-02-22 04:39:02', 2, 2, 'implicitly', 26, 11, 'SilverStripe\\Assets\\File'),
(42, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:39:53', '2022-02-22 04:39:53', 7, 9, 'explicitly', 27, 9, 'SilverStripe\\CMS\\Model\\SiteTree'),
(43, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:39:53', '2022-02-22 04:39:53', 2, 2, 'implicitly', 27, 10, 'SilverStripe\\Assets\\File'),
(44, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:39:53', '2022-02-22 04:39:53', 2, 2, 'implicitly', 27, 11, 'SilverStripe\\Assets\\File'),
(45, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:40:16', '2022-02-22 04:40:16', 0, 3, 'explicitly', 28, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(46, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:40:48', '2022-02-22 04:40:48', 3, 5, 'explicitly', 29, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(47, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:43:01', '2022-02-22 04:43:01', 0, 3, 'explicitly', 30, 1, 'Custom\\Property'),
(48, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:43:51', '2022-02-22 04:43:51', 3, 6, 'explicitly', 31, 1, 'Custom\\Property'),
(49, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:43:51', '2022-02-22 04:43:51', 0, 2, 'implicitly', 31, 17, 'SilverStripe\\Assets\\File'),
(50, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:43:57', '2022-02-22 04:43:57', 6, 8, 'explicitly', 32, 1, 'Custom\\Property'),
(51, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 04:43:57', '2022-02-22 04:43:57', 2, 2, 'implicitly', 32, 17, 'SilverStripe\\Assets\\File'),
(52, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-22 21:10:55', '2022-02-22 21:10:55', 0, 0, 'explicitly', 33, 1, 'Custom\\ArticleCategory'),
(54, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 02:01:00', '2022-02-23 02:01:00', 0, 3, 'explicitly', 35, 13, 'SilverStripe\\CMS\\Model\\SiteTree'),
(55, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 02:01:00', '2022-02-23 02:01:00', 2, 2, 'implicitly', 35, 10, 'SilverStripe\\Assets\\File'),
(57, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 02:02:09', '2022-02-23 02:02:09', 3, 3, 'explicitly', 37, 13, 'SilverStripe\\CMS\\Model\\SiteTree'),
(58, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 02:02:09', '2022-02-23 02:02:09', 2, 2, 'implicitly', 37, 10, 'SilverStripe\\Assets\\File'),
(59, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 02:02:19', '2022-02-23 02:02:19', 3, 3, 'explicitly', 38, 13, 'SilverStripe\\CMS\\Model\\SiteTree'),
(60, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 02:02:19', '2022-02-23 02:02:19', 2, 2, 'implicitly', 38, 10, 'SilverStripe\\Assets\\File'),
(61, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:01:03', '2022-02-23 04:01:03', 0, 3, 'explicitly', 39, 14, 'SilverStripe\\CMS\\Model\\SiteTree'),
(62, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:01:03', '2022-02-23 04:01:03', 0, 2, 'implicitly', 39, 18, 'SilverStripe\\Assets\\File'),
(63, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:01:08', '2022-02-23 04:01:08', 3, 3, 'explicitly', 40, 14, 'SilverStripe\\CMS\\Model\\SiteTree'),
(64, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:01:08', '2022-02-23 04:01:08', 2, 2, 'implicitly', 40, 18, 'SilverStripe\\Assets\\File'),
(65, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:50:12', '2022-02-23 04:50:12', 0, 0, 'explicitly', 41, 1, 'SilverStripe\\Security\\Member'),
(66, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:54:06', '2022-02-23 04:54:06', 0, 0, 'explicitly', 42, 2, 'SilverStripe\\Security\\Member'),
(67, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:54:21', '2022-02-23 04:54:21', 0, 0, 'explicitly', 43, 2, 'SilverStripe\\Security\\Member'),
(68, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:55:34', '2022-02-23 04:55:34', 0, 0, 'explicitly', 44, 2, 'SilverStripe\\Security\\Member'),
(69, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:56:12', '2022-02-23 04:56:12', 0, 0, 'explicitly', 45, 2, 'SilverStripe\\Security\\Member'),
(70, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:56:14', '2022-02-23 04:56:14', 0, 0, 'explicitly', 46, 2, 'SilverStripe\\Security\\Member'),
(71, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:57:47', '2022-02-23 04:57:47', 0, 0, 'explicitly', 47, 2, 'SilverStripe\\Security\\Member'),
(72, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:57:52', '2022-02-23 04:57:52', 0, 0, 'explicitly', 48, 2, 'SilverStripe\\Security\\Member'),
(73, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:58:24', '2022-02-23 04:58:24', 0, 0, 'explicitly', 49, 2, 'SilverStripe\\Security\\Member'),
(74, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:58:53', '2022-02-23 04:58:53', 0, 0, 'explicitly', 50, 2, 'SilverStripe\\Security\\Member'),
(75, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-23 04:58:57', '2022-02-23 04:58:57', 0, 0, 'explicitly', 51, 2, 'SilverStripe\\Security\\Member'),
(76, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-25 03:52:20', '2022-02-25 03:52:20', 0, 0, 'explicitly', 52, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(77, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-28 03:57:20', '2022-02-28 03:57:20', 0, 0, 'explicitly', 53, 2, 'SilverStripe\\Security\\Member'),
(78, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-28 03:57:47', '2022-02-28 03:57:47', 4, 6, 'explicitly', 54, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(79, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-28 21:41:30', '2022-02-28 21:41:30', 10, 12, 'explicitly', 55, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(80, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-02-28 21:43:15', '2022-02-28 21:43:15', 12, 12, 'explicitly', 56, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(83, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-01 01:37:50', '2022-03-01 01:37:50', 12, 14, 'explicitly', 59, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(85, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 22:32:38', '2022-03-02 22:32:38', 0, 4, 'explicitly', 61, 2, 'Custom\\Property'),
(86, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 22:32:38', '2022-03-02 22:32:38', 0, 2, 'implicitly', 61, 20, 'SilverStripe\\Assets\\File'),
(88, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 22:41:55', '2022-03-02 22:41:55', 0, 2, 'implicitly', 62, 21, 'SilverStripe\\Assets\\File'),
(90, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 22:42:01', '2022-03-02 22:42:01', 2, 2, 'implicitly', 63, 21, 'SilverStripe\\Assets\\File'),
(91, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:02:11', '2022-03-02 23:02:11', 4, 7, 'explicitly', 64, 2, 'Custom\\Property'),
(92, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:02:11', '2022-03-02 23:02:11', 2, 2, 'implicitly', 64, 20, 'SilverStripe\\Assets\\File'),
(93, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:02:33', '2022-03-02 23:02:33', 7, 10, 'explicitly', 65, 2, 'Custom\\Property'),
(94, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:02:33', '2022-03-02 23:02:33', 2, 2, 'implicitly', 65, 20, 'SilverStripe\\Assets\\File'),
(96, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:02:54', '2022-03-02 23:02:54', 2, 2, 'implicitly', 66, 21, 'SilverStripe\\Assets\\File'),
(97, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:03:25', '2022-03-02 23:03:25', 8, 11, 'explicitly', 67, 1, 'Custom\\Property'),
(98, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:03:25', '2022-03-02 23:03:25', 2, 2, 'implicitly', 67, 17, 'SilverStripe\\Assets\\File'),
(99, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:04:02', '2022-03-02 23:04:02', 10, 13, 'explicitly', 68, 2, 'Custom\\Property'),
(100, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:04:02', '2022-03-02 23:04:02', 2, 2, 'implicitly', 68, 20, 'SilverStripe\\Assets\\File'),
(101, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:06:30', '2022-03-02 23:06:30', 13, 16, 'explicitly', 69, 2, 'Custom\\Property'),
(102, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:06:30', '2022-03-02 23:06:30', 2, 2, 'implicitly', 69, 20, 'SilverStripe\\Assets\\File'),
(103, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:06:47', '2022-03-02 23:06:47', 11, 14, 'explicitly', 70, 1, 'Custom\\Property'),
(104, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:06:47', '2022-03-02 23:06:47', 2, 2, 'implicitly', 70, 17, 'SilverStripe\\Assets\\File'),
(105, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:06:51', '2022-03-02 23:06:51', 14, 17, 'explicitly', 71, 1, 'Custom\\Property'),
(106, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:06:51', '2022-03-02 23:06:51', 2, 2, 'implicitly', 71, 17, 'SilverStripe\\Assets\\File'),
(108, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:07:07', '2022-03-02 23:07:07', 2, 2, 'implicitly', 72, 21, 'SilverStripe\\Assets\\File'),
(110, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:10:54', '2022-03-02 23:10:54', 2, 2, 'implicitly', 73, 21, 'SilverStripe\\Assets\\File'),
(111, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:11:04', '2022-03-02 23:11:04', 16, 19, 'explicitly', 74, 2, 'Custom\\Property'),
(112, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:11:04', '2022-03-02 23:11:04', 2, 2, 'implicitly', 74, 20, 'SilverStripe\\Assets\\File'),
(113, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:11:36', '2022-03-02 23:11:36', 19, 22, 'explicitly', 75, 2, 'Custom\\Property'),
(114, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:11:36', '2022-03-02 23:11:36', 2, 2, 'implicitly', 75, 20, 'SilverStripe\\Assets\\File'),
(115, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:11:38', '2022-03-02 23:11:38', 22, 24, 'explicitly', 76, 2, 'Custom\\Property'),
(116, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:11:38', '2022-03-02 23:11:38', 2, 2, 'implicitly', 76, 20, 'SilverStripe\\Assets\\File'),
(118, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-02 23:11:54', '2022-03-02 23:11:54', 2, 2, 'implicitly', 77, 21, 'SilverStripe\\Assets\\File'),
(124, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 03:22:19', '2022-03-04 03:22:19', 0, 2, 'explicitly', 83, 1, 'Custom\\Getlocations'),
(125, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 03:22:23', '2022-03-04 03:22:23', 2, 2, 'explicitly', 84, 1, 'Custom\\Getlocations'),
(126, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 03:23:05', '2022-03-04 03:23:05', 2, 2, 'explicitly', 85, 1, 'Custom\\Getlocations'),
(127, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 03:24:54', '2022-03-04 03:24:54', 2, 4, 'explicitly', 86, 1, 'Custom\\Getlocations'),
(128, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 03:25:38', '2022-03-04 03:25:38', 0, 2, 'explicitly', 87, 2, 'Custom\\Getlocations'),
(129, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 03:26:17', '2022-03-04 03:26:17', 0, 2, 'explicitly', 88, 3, 'Custom\\Getlocations'),
(130, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 03:26:21', '2022-03-04 03:26:21', 2, 2, 'explicitly', 89, 3, 'Custom\\Getlocations'),
(132, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 13:49:15', '2022-03-04 13:49:15', 0, 2, 'implicitly', 90, 22, 'SilverStripe\\Assets\\File'),
(134, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 13:49:23', '2022-03-04 13:49:23', 2, 2, 'implicitly', 91, 21, 'SilverStripe\\Assets\\File'),
(136, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 13:49:30', '2022-03-04 13:49:30', 2, 2, 'implicitly', 92, 21, 'SilverStripe\\Assets\\File'),
(138, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 14:23:15', '2022-03-04 14:23:15', 2, 2, 'implicitly', 93, 22, 'SilverStripe\\Assets\\File'),
(140, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 14:23:26', '2022-03-04 14:23:26', 2, 2, 'implicitly', 94, 22, 'SilverStripe\\Assets\\File'),
(142, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 14:24:36', '2022-03-04 14:24:36', 2, 2, 'implicitly', 95, 21, 'SilverStripe\\Assets\\File'),
(144, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-04 14:24:42', '2022-03-04 14:24:42', 2, 2, 'implicitly', 96, 21, 'SilverStripe\\Assets\\File'),
(145, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:00:50', '2022-03-12 06:00:50', 5, 7, 'explicitly', 97, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(146, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:00:50', '2022-03-12 06:00:50', 2, 2, 'implicitly', 97, 1, 'Custom\\Region'),
(147, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:00:50', '2022-03-12 06:00:50', 2, 2, 'implicitly', 97, 2, 'Custom\\Region'),
(148, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:00:50', '2022-03-12 06:00:50', 2, 2, 'implicitly', 97, 3, 'Custom\\Region'),
(149, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:00:50', '2022-03-12 06:00:50', 2, 2, 'implicitly', 97, 13, 'SilverStripe\\Assets\\File'),
(150, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:00:50', '2022-03-12 06:00:50', 2, 2, 'implicitly', 97, 14, 'SilverStripe\\Assets\\File'),
(151, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:00:50', '2022-03-12 06:00:50', 2, 2, 'implicitly', 97, 15, 'SilverStripe\\Assets\\File'),
(152, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:02:14', '2022-03-12 06:02:14', 7, 9, 'explicitly', 98, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(153, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:02:14', '2022-03-12 06:02:14', 2, 2, 'implicitly', 98, 1, 'Custom\\Region'),
(154, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:02:14', '2022-03-12 06:02:14', 2, 2, 'implicitly', 98, 2, 'Custom\\Region'),
(155, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:02:14', '2022-03-12 06:02:14', 2, 2, 'implicitly', 98, 3, 'Custom\\Region'),
(156, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:02:14', '2022-03-12 06:02:14', 2, 2, 'implicitly', 98, 13, 'SilverStripe\\Assets\\File'),
(157, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:02:14', '2022-03-12 06:02:14', 2, 2, 'implicitly', 98, 14, 'SilverStripe\\Assets\\File'),
(158, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:02:14', '2022-03-12 06:02:14', 2, 2, 'implicitly', 98, 15, 'SilverStripe\\Assets\\File'),
(160, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:08:11', '2022-03-12 06:08:11', 2, 2, 'explicitly', 100, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(161, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:08:15', '2022-03-12 06:08:15', 2, 2, 'explicitly', 101, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(162, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:08:18', '2022-03-12 06:08:18', 6, 11, 'explicitly', 102, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(163, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:08:21', '2022-03-12 06:08:21', 5, 7, 'explicitly', 103, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(164, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:08:25', '2022-03-12 06:08:25', 14, 16, 'explicitly', 104, 3, 'SilverStripe\\CMS\\Model\\SiteTree'),
(165, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:11:34', '2022-03-12 06:11:34', 0, 0, 'explicitly', 105, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(166, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:11:40', '2022-03-12 06:11:40', 0, 0, 'explicitly', 106, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(167, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:16:01', '2022-03-12 06:16:01', 6, 8, 'explicitly', 107, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(168, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:16:17', '2022-03-12 06:16:17', 8, 10, 'explicitly', 108, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(169, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 06:16:19', '2022-03-12 06:16:19', 10, 10, 'explicitly', 109, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(170, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 07:25:53', '2022-03-12 07:25:53', 0, 0, 'explicitly', 110, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(171, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 07:26:26', '2022-03-12 07:26:26', 0, 0, 'explicitly', 111, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(172, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 07:26:53', '2022-03-12 07:26:53', 0, 0, 'explicitly', 112, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(173, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 07:27:45', '2022-03-12 07:27:45', 0, 0, 'explicitly', 113, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(174, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 07:33:59', '2022-03-12 07:33:59', 7, 9, 'explicitly', 114, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(175, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 07:34:06', '2022-03-12 07:34:06', 9, 9, 'explicitly', 115, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(176, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:06:10', '2022-03-12 08:06:10', 9, 11, 'explicitly', 116, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(177, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:06:23', '2022-03-12 08:06:23', 11, 11, 'explicitly', 117, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(178, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:08:14', '2022-03-12 08:08:14', 2, 4, 'explicitly', 118, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(179, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:08:47', '2022-03-12 08:08:47', 4, 6, 'explicitly', 119, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(180, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:17:22', '2022-03-12 08:17:22', 9, 11, 'explicitly', 120, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(181, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:17:22', '2022-03-12 08:17:22', 2, 2, 'implicitly', 120, 1, 'Custom\\Region'),
(182, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:17:22', '2022-03-12 08:17:22', 2, 2, 'implicitly', 120, 2, 'Custom\\Region'),
(183, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:17:22', '2022-03-12 08:17:22', 2, 2, 'implicitly', 120, 3, 'Custom\\Region'),
(184, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:17:22', '2022-03-12 08:17:22', 2, 2, 'implicitly', 120, 13, 'SilverStripe\\Assets\\File'),
(185, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:17:22', '2022-03-12 08:17:22', 2, 2, 'implicitly', 120, 14, 'SilverStripe\\Assets\\File'),
(186, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:17:22', '2022-03-12 08:17:22', 2, 2, 'implicitly', 120, 15, 'SilverStripe\\Assets\\File'),
(187, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:17:45', '2022-03-12 08:17:45', 6, 6, 'explicitly', 121, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(188, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:19:38', '2022-03-12 08:19:38', 11, 13, 'explicitly', 122, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(189, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:29:57', '2022-03-12 08:29:57', 2, 4, 'explicitly', 123, 1, 'Custom\\Region'),
(190, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:29:57', '2022-03-12 08:29:57', 2, 2, 'implicitly', 123, 13, 'SilverStripe\\Assets\\File'),
(191, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:41:59', '2022-03-12 08:41:59', 10, 13, 'explicitly', 124, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(192, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:43:24', '2022-03-12 08:43:24', 4, 7, 'explicitly', 125, 1, 'Custom\\Region'),
(193, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:43:24', '2022-03-12 08:43:24', 2, 2, 'implicitly', 125, 13, 'SilverStripe\\Assets\\File'),
(194, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:53:23', '2022-03-12 08:53:23', 3, 6, 'explicitly', 126, 1, 'Custom\\Team'),
(195, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-12 08:53:23', '2022-03-12 08:53:23', 2, 2, 'implicitly', 126, 4, 'SilverStripe\\Assets\\File'),
(196, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-13 03:50:59', '2022-03-13 03:50:59', 13, 15, 'explicitly', 127, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(197, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-13 04:39:21', '2022-03-13 04:39:21', 17, 20, 'explicitly', 128, 1, 'Custom\\Property'),
(198, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-13 04:39:21', '2022-03-13 04:39:21', 2, 2, 'implicitly', 128, 17, 'SilverStripe\\Assets\\File'),
(199, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-13 05:53:59', '2022-03-13 05:53:59', 24, 27, 'explicitly', 129, 2, 'Custom\\Property'),
(200, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-13 05:53:59', '2022-03-13 05:53:59', 2, 2, 'implicitly', 129, 20, 'SilverStripe\\Assets\\File'),
(201, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-13 05:54:02', '2022-03-13 05:54:02', 27, 29, 'explicitly', 130, 2, 'Custom\\Property'),
(202, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-13 05:54:02', '2022-03-13 05:54:02', 2, 2, 'implicitly', 130, 20, 'SilverStripe\\Assets\\File'),
(203, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-13 06:31:59', '2022-03-13 06:31:59', 15, 17, 'explicitly', 131, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(204, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 00:14:14', '2022-03-20 00:14:14', 17, 19, 'explicitly', 132, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(205, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 01:18:16', '2022-03-20 01:18:16', 6, 9, 'explicitly', 133, 1, 'Custom\\Team'),
(206, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 01:18:16', '2022-03-20 01:18:16', 0, 2, 'implicitly', 133, 24, 'SilverStripe\\Assets\\File'),
(207, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:15:58', '2022-03-20 02:15:58', 3, 5, 'explicitly', 134, 2, 'Custom\\Team'),
(208, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:15:58', '2022-03-20 02:15:58', 0, 2, 'implicitly', 134, 25, 'SilverStripe\\Assets\\File'),
(209, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:16:01', '2022-03-20 02:16:01', 5, 7, 'explicitly', 135, 2, 'Custom\\Team'),
(210, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:16:01', '2022-03-20 02:16:01', 2, 2, 'implicitly', 135, 25, 'SilverStripe\\Assets\\File'),
(211, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:29:03', '2022-03-20 02:29:03', 4, 7, 'explicitly', 136, 3, 'Custom\\Team'),
(212, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:29:03', '2022-03-20 02:29:03', 0, 2, 'implicitly', 136, 26, 'SilverStripe\\Assets\\File'),
(213, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:31:16', '2022-03-20 02:31:16', 6, 9, 'explicitly', 137, 4, 'Custom\\Team'),
(214, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:31:16', '2022-03-20 02:31:16', 0, 2, 'implicitly', 137, 27, 'SilverStripe\\Assets\\File'),
(215, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:31:18', '2022-03-20 02:31:18', 9, 11, 'explicitly', 138, 4, 'Custom\\Team'),
(216, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:31:18', '2022-03-20 02:31:18', 2, 2, 'implicitly', 138, 27, 'SilverStripe\\Assets\\File'),
(217, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:32:53', '2022-03-20 02:32:53', 7, 10, 'explicitly', 139, 3, 'Custom\\Team'),
(218, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:32:53', '2022-03-20 02:32:53', 2, 2, 'implicitly', 139, 26, 'SilverStripe\\Assets\\File'),
(219, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:33:55', '2022-03-20 02:33:55', 7, 10, 'explicitly', 140, 2, 'Custom\\Team'),
(220, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:33:55', '2022-03-20 02:33:55', 2, 2, 'implicitly', 140, 25, 'SilverStripe\\Assets\\File'),
(221, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:34:22', '2022-03-20 02:34:22', 9, 12, 'explicitly', 141, 1, 'Custom\\Team'),
(222, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:34:22', '2022-03-20 02:34:22', 2, 2, 'implicitly', 141, 24, 'SilverStripe\\Assets\\File'),
(223, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:34:43', '2022-03-20 02:34:43', 11, 14, 'explicitly', 142, 4, 'Custom\\Team'),
(224, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:34:43', '2022-03-20 02:34:43', 2, 2, 'implicitly', 142, 27, 'SilverStripe\\Assets\\File'),
(225, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:44:56', '2022-03-20 02:44:56', 10, 12, 'explicitly', 143, 2, 'Custom\\Team'),
(226, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:44:56', '2022-03-20 02:44:56', 2, 2, 'implicitly', 143, 25, 'SilverStripe\\Assets\\File'),
(227, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:45:13', '2022-03-20 02:45:13', 10, 13, 'explicitly', 144, 3, 'Custom\\Team'),
(228, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:45:13', '2022-03-20 02:45:13', 2, 2, 'implicitly', 144, 26, 'SilverStripe\\Assets\\File'),
(229, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:46:15', '2022-03-20 02:46:15', 12, 15, 'explicitly', 145, 1, 'Custom\\Team'),
(230, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:46:15', '2022-03-20 02:46:15', 2, 2, 'implicitly', 145, 24, 'SilverStripe\\Assets\\File'),
(231, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:46:41', '2022-03-20 02:46:41', 15, 17, 'explicitly', 146, 1, 'Custom\\Team'),
(232, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:46:41', '2022-03-20 02:46:41', 2, 2, 'implicitly', 146, 24, 'SilverStripe\\Assets\\File'),
(233, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:48:22', '2022-03-20 02:48:22', 12, 14, 'explicitly', 147, 2, 'Custom\\Team'),
(234, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:48:22', '2022-03-20 02:48:22', 2, 2, 'implicitly', 147, 25, 'SilverStripe\\Assets\\File'),
(235, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:49:17', '2022-03-20 02:49:17', 13, 15, 'explicitly', 148, 3, 'Custom\\Team'),
(236, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:49:17', '2022-03-20 02:49:17', 2, 2, 'implicitly', 148, 26, 'SilverStripe\\Assets\\File'),
(237, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:49:38', '2022-03-20 02:49:38', 14, 18, 'explicitly', 149, 4, 'Custom\\Team'),
(238, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:49:38', '2022-03-20 02:49:38', 2, 2, 'implicitly', 149, 27, 'SilverStripe\\Assets\\File'),
(239, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:50:14', '2022-03-20 02:50:14', 18, 20, 'explicitly', 150, 4, 'Custom\\Team'),
(240, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 02:50:14', '2022-03-20 02:50:14', 2, 2, 'implicitly', 150, 27, 'SilverStripe\\Assets\\File'),
(241, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:28:50', '2022-03-20 03:28:50', 20, 23, 'explicitly', 151, 1, 'Custom\\Property'),
(242, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:28:50', '2022-03-20 03:28:50', 2, 2, 'implicitly', 151, 17, 'SilverStripe\\Assets\\File'),
(243, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:30:19', '2022-03-20 03:30:19', 23, 26, 'explicitly', 152, 1, 'Custom\\Property'),
(244, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:30:19', '2022-03-20 03:30:19', 2, 2, 'implicitly', 152, 17, 'SilverStripe\\Assets\\File'),
(245, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:52:00', '2022-03-20 03:52:00', 26, 28, 'explicitly', 153, 1, 'Custom\\Property'),
(246, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:52:00', '2022-03-20 03:52:00', 0, 2, 'implicitly', 153, 28, 'SilverStripe\\Assets\\File'),
(247, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:52:05', '2022-03-20 03:52:05', 28, 31, 'explicitly', 154, 1, 'Custom\\Property'),
(248, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:52:05', '2022-03-20 03:52:05', 2, 2, 'implicitly', 154, 28, 'SilverStripe\\Assets\\File'),
(249, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:52:47', '2022-03-20 03:52:47', 31, 33, 'explicitly', 155, 1, 'Custom\\Property'),
(250, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:52:47', '2022-03-20 03:52:47', 0, 2, 'implicitly', 155, 29, 'SilverStripe\\Assets\\File'),
(251, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:52:53', '2022-03-20 03:52:53', 33, 35, 'explicitly', 156, 1, 'Custom\\Property'),
(252, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:52:53', '2022-03-20 03:52:53', 2, 2, 'implicitly', 156, 29, 'SilverStripe\\Assets\\File'),
(253, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:56:15', '2022-03-20 03:56:15', 29, 31, 'explicitly', 157, 2, 'Custom\\Property'),
(254, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:56:15', '2022-03-20 03:56:15', 0, 2, 'implicitly', 157, 30, 'SilverStripe\\Assets\\File'),
(255, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:57:35', '2022-03-20 03:57:35', 31, 34, 'explicitly', 158, 2, 'Custom\\Property'),
(256, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:57:35', '2022-03-20 03:57:35', 2, 2, 'implicitly', 158, 30, 'SilverStripe\\Assets\\File'),
(257, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:57:40', '2022-03-20 03:57:40', 34, 36, 'explicitly', 159, 2, 'Custom\\Property'),
(258, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 03:57:40', '2022-03-20 03:57:40', 2, 2, 'implicitly', 159, 30, 'SilverStripe\\Assets\\File'),
(259, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:28:59', '2022-03-20 04:28:59', 0, 0, 'explicitly', 160, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(260, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:29:46', '2022-03-20 04:29:46', 0, 0, 'explicitly', 161, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(261, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:30:02', '2022-03-20 04:30:02', 0, 0, 'explicitly', 162, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(262, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:30:42', '2022-03-20 04:30:42', 0, 0, 'explicitly', 163, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(263, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:51:05', '2022-03-20 04:51:05', 11, 13, 'explicitly', 164, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(264, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:54:51', '2022-03-20 04:54:51', 0, 3, 'explicitly', 165, 1, 'Custom\\Service'),
(265, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:55:12', '2022-03-20 04:55:12', 0, 3, 'explicitly', 166, 2, 'Custom\\Service'),
(266, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:55:36', '2022-03-20 04:55:36', 0, 3, 'explicitly', 167, 3, 'Custom\\Service'),
(267, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:55:57', '2022-03-20 04:55:57', 0, 3, 'explicitly', 168, 4, 'Custom\\Service'),
(268, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:56:12', '2022-03-20 04:56:12', 0, 3, 'explicitly', 169, 5, 'Custom\\Service'),
(269, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:56:27', '2022-03-20 04:56:27', 0, 3, 'explicitly', 170, 6, 'Custom\\Service'),
(270, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:56:41', '2022-03-20 04:56:41', 0, 3, 'explicitly', 171, 7, 'Custom\\Service'),
(271, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:56:57', '2022-03-20 04:56:57', 0, 3, 'explicitly', 172, 8, 'Custom\\Service'),
(272, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:57:17', '2022-03-20 04:57:17', 0, 3, 'explicitly', 173, 9, 'Custom\\Service'),
(273, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:57:21', '2022-03-20 04:57:21', 3, 5, 'explicitly', 174, 9, 'Custom\\Service'),
(274, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:57:31', '2022-03-20 04:57:31', 5, 8, 'explicitly', 175, 9, 'Custom\\Service'),
(275, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:57:50', '2022-03-20 04:57:50', 0, 3, 'explicitly', 176, 10, 'Custom\\Service'),
(276, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:59:51', '2022-03-20 04:59:51', 35, 37, 'explicitly', 177, 1, 'Custom\\Property'),
(277, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 04:59:51', '2022-03-20 04:59:51', 2, 2, 'implicitly', 177, 29, 'SilverStripe\\Assets\\File'),
(278, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:00:03', '2022-03-20 05:00:03', 36, 39, 'explicitly', 178, 2, 'Custom\\Property'),
(279, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:00:03', '2022-03-20 05:00:03', 2, 2, 'implicitly', 178, 30, 'SilverStripe\\Assets\\File'),
(280, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 13, 15, 'explicitly', 179, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(281, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 3, 3, 'implicitly', 179, 1, 'Custom\\Service'),
(282, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 3, 3, 'implicitly', 179, 2, 'Custom\\Service'),
(283, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 3, 3, 'implicitly', 179, 3, 'Custom\\Service'),
(284, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 3, 3, 'implicitly', 179, 4, 'Custom\\Service'),
(285, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 3, 3, 'implicitly', 179, 5, 'Custom\\Service'),
(286, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 3, 3, 'implicitly', 179, 6, 'Custom\\Service'),
(287, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 3, 3, 'implicitly', 179, 7, 'Custom\\Service'),
(288, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 3, 3, 'implicitly', 179, 8, 'Custom\\Service'),
(289, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 8, 8, 'implicitly', 179, 9, 'Custom\\Service'),
(290, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:06:08', '2022-03-20 05:06:08', 3, 3, 'implicitly', 179, 10, 'Custom\\Service'),
(291, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:31:47', '2022-03-20 05:31:47', 0, 3, 'explicitly', 180, 16, 'SilverStripe\\CMS\\Model\\SiteTree'),
(292, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:31:47', '2022-03-20 05:31:47', 0, 2, 'implicitly', 180, 32, 'SilverStripe\\Assets\\File'),
(293, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:45:11', '2022-03-20 05:45:11', 3, 6, 'explicitly', 181, 1, 'Custom\\Service'),
(294, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:46:06', '2022-03-20 05:46:06', 3, 6, 'explicitly', 182, 2, 'Custom\\Service'),
(295, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:46:49', '2022-03-20 05:46:49', 3, 6, 'explicitly', 183, 3, 'Custom\\Service'),
(296, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:47:31', '2022-03-20 05:47:31', 3, 6, 'explicitly', 184, 4, 'Custom\\Service'),
(297, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:48:05', '2022-03-20 05:48:05', 3, 6, 'explicitly', 185, 5, 'Custom\\Service'),
(298, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:48:51', '2022-03-20 05:48:51', 3, 6, 'explicitly', 186, 6, 'Custom\\Service'),
(299, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:49:33', '2022-03-20 05:49:33', 3, 6, 'explicitly', 187, 7, 'Custom\\Service'),
(300, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:50:15', '2022-03-20 05:50:15', 3, 6, 'explicitly', 188, 8, 'Custom\\Service'),
(301, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:50:47', '2022-03-20 05:50:47', 8, 11, 'explicitly', 189, 9, 'Custom\\Service'),
(302, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:51:12', '2022-03-20 05:51:12', 3, 6, 'explicitly', 190, 10, 'Custom\\Service'),
(303, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:56:41', '2022-03-20 05:56:41', 3, 3, 'explicitly', 191, 16, 'SilverStripe\\CMS\\Model\\SiteTree'),
(304, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 05:56:41', '2022-03-20 05:56:41', 2, 2, 'implicitly', 191, 32, 'SilverStripe\\Assets\\File'),
(305, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:18:52', '2022-03-20 06:18:52', 3, 3, 'explicitly', 192, 16, 'SilverStripe\\CMS\\Model\\SiteTree'),
(306, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:18:52', '2022-03-20 06:18:52', 2, 2, 'implicitly', 192, 32, 'SilverStripe\\Assets\\File'),
(307, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:20:53', '2022-03-20 06:20:53', 6, 8, 'explicitly', 193, 1, 'Custom\\Service'),
(308, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:20:53', '2022-03-20 06:20:53', 0, 2, 'implicitly', 193, 33, 'SilverStripe\\Assets\\File'),
(309, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:25:52', '2022-03-20 06:25:52', 6, 8, 'explicitly', 194, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(310, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:28:33', '2022-03-20 06:28:33', 8, 10, 'explicitly', 195, 2, 'SilverStripe\\CMS\\Model\\SiteTree'),
(311, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:28:48', '2022-03-20 06:28:48', 3, 3, 'explicitly', 196, 16, 'SilverStripe\\CMS\\Model\\SiteTree'),
(312, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:28:48', '2022-03-20 06:28:48', 2, 2, 'implicitly', 196, 32, 'SilverStripe\\Assets\\File'),
(313, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:29:19', '2022-03-20 06:29:19', 3, 5, 'explicitly', 197, 16, 'SilverStripe\\CMS\\Model\\SiteTree'),
(314, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 06:29:19', '2022-03-20 06:29:19', 2, 2, 'implicitly', 197, 32, 'SilverStripe\\Assets\\File'),
(315, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 11:06:22', '2022-03-20 11:06:22', 39, 43, 'explicitly', 198, 2, 'Custom\\Property'),
(316, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 11:06:22', '2022-03-20 11:06:22', 2, 2, 'implicitly', 198, 30, 'SilverStripe\\Assets\\File'),
(317, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 11:45:42', '2022-03-20 11:45:42', 43, 46, 'explicitly', 199, 2, 'Custom\\Property'),
(318, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 11:45:42', '2022-03-20 11:45:42', 2, 2, 'implicitly', 199, 30, 'SilverStripe\\Assets\\File'),
(319, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:17:51', '2022-03-20 12:17:51', 8, 10, 'explicitly', 200, 1, 'Custom\\Service'),
(320, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:17:51', '2022-03-20 12:17:51', 2, 2, 'implicitly', 200, 33, 'SilverStripe\\Assets\\File'),
(321, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:19:25', '2022-03-20 12:19:25', 10, 12, 'explicitly', 201, 1, 'Custom\\Service'),
(322, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:19:25', '2022-03-20 12:19:25', 2, 2, 'implicitly', 201, 33, 'SilverStripe\\Assets\\File'),
(323, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:25:02', '2022-03-20 12:25:02', 12, 14, 'explicitly', 202, 1, 'Custom\\Service'),
(324, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:25:02', '2022-03-20 12:25:02', 0, 2, 'implicitly', 202, 34, 'SilverStripe\\Assets\\File'),
(325, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:28:11', '2022-03-20 12:28:11', 14, 16, 'explicitly', 203, 1, 'Custom\\Service'),
(326, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:28:11', '2022-03-20 12:28:11', 2, 2, 'implicitly', 203, 34, 'SilverStripe\\Assets\\File'),
(327, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:35:01', '2022-03-20 12:35:01', 5, 7, 'explicitly', 204, 16, 'SilverStripe\\CMS\\Model\\SiteTree'),
(328, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:35:01', '2022-03-20 12:35:01', 0, 2, 'implicitly', 204, 35, 'SilverStripe\\Assets\\File'),
(329, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:48:36', '2022-03-20 12:48:36', 0, 0, 'explicitly', 205, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(330, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:48:41', '2022-03-20 12:48:41', 0, 0, 'explicitly', 206, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(331, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 12:50:20', '2022-03-20 12:50:20', 0, 0, 'explicitly', 207, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(332, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 14:31:19', '2022-03-20 14:31:19', 7, 9, 'explicitly', 208, 16, 'SilverStripe\\CMS\\Model\\SiteTree'),
(333, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 14:31:19', '2022-03-20 14:31:19', 0, 2, 'implicitly', 208, 36, 'SilverStripe\\Assets\\File'),
(334, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 16:43:47', '2022-03-20 16:43:47', 13, 15, 'explicitly', 209, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(335, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 22:08:17', '2022-03-20 22:08:17', 17, 19, 'explicitly', 210, 1, 'Custom\\Team'),
(336, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 22:08:17', '2022-03-20 22:08:17', 2, 2, 'implicitly', 210, 24, 'SilverStripe\\Assets\\File'),
(337, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 22:08:44', '2022-03-20 22:08:44', 14, 16, 'explicitly', 211, 2, 'Custom\\Team'),
(338, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 22:08:44', '2022-03-20 22:08:44', 2, 2, 'implicitly', 211, 25, 'SilverStripe\\Assets\\File'),
(339, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 22:09:05', '2022-03-20 22:09:05', 15, 17, 'explicitly', 212, 3, 'Custom\\Team'),
(340, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 22:09:05', '2022-03-20 22:09:05', 2, 2, 'implicitly', 212, 26, 'SilverStripe\\Assets\\File'),
(341, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 22:09:33', '2022-03-20 22:09:33', 20, 22, 'explicitly', 213, 4, 'Custom\\Team'),
(342, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-20 22:09:33', '2022-03-20 22:09:33', 2, 2, 'implicitly', 213, 27, 'SilverStripe\\Assets\\File'),
(343, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 12:27:30', '2022-03-24 12:27:30', 19, 21, 'explicitly', 214, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(344, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:52:40', '2022-03-24 13:52:40', 0, 2, 'explicitly', 215, 1, 'Custom\\Sponsor'),
(345, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:52:40', '2022-03-24 13:52:40', 0, 2, 'implicitly', 215, 38, 'SilverStripe\\Assets\\File'),
(346, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:52:42', '2022-03-24 13:52:42', 2, 2, 'explicitly', 216, 1, 'Custom\\Sponsor'),
(347, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:52:42', '2022-03-24 13:52:42', 2, 2, 'implicitly', 216, 38, 'SilverStripe\\Assets\\File'),
(348, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:56:19', '2022-03-24 13:56:19', 0, 3, 'explicitly', 217, 3, 'Custom\\Sponsor'),
(349, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:56:19', '2022-03-24 13:56:19', 0, 2, 'implicitly', 217, 39, 'SilverStripe\\Assets\\File'),
(350, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:56:23', '2022-03-24 13:56:23', 3, 3, 'explicitly', 218, 3, 'Custom\\Sponsor'),
(351, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:56:23', '2022-03-24 13:56:23', 2, 2, 'implicitly', 218, 39, 'SilverStripe\\Assets\\File'),
(352, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:56:25', '2022-03-24 13:56:25', 3, 3, 'explicitly', 219, 3, 'Custom\\Sponsor'),
(353, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:56:25', '2022-03-24 13:56:25', 2, 2, 'implicitly', 219, 39, 'SilverStripe\\Assets\\File'),
(354, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 13:56:36', '2022-03-24 13:56:36', 0, 3, 'explicitly', 220, 2, 'Custom\\Sponsor'),
(355, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:08:51', '2022-03-24 14:08:51', 3, 6, 'explicitly', 221, 2, 'Custom\\Sponsor'),
(356, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:08:51', '2022-03-24 14:08:51', 0, 2, 'implicitly', 221, 40, 'SilverStripe\\Assets\\File'),
(357, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:08:55', '2022-03-24 14:08:55', 6, 8, 'explicitly', 222, 2, 'Custom\\Sponsor'),
(358, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:08:55', '2022-03-24 14:08:55', 2, 2, 'implicitly', 222, 40, 'SilverStripe\\Assets\\File'),
(359, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:09:24', '2022-03-24 14:09:24', 3, 5, 'explicitly', 223, 3, 'Custom\\Sponsor'),
(360, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:09:24', '2022-03-24 14:09:24', 0, 2, 'implicitly', 223, 41, 'SilverStripe\\Assets\\File'),
(361, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:09:27', '2022-03-24 14:09:27', 5, 5, 'explicitly', 224, 3, 'Custom\\Sponsor');
INSERT INTO `changesetitem` (`ID`, `ClassName`, `LastEdited`, `Created`, `VersionBefore`, `VersionAfter`, `Added`, `ChangeSetID`, `ObjectID`, `ObjectClass`) VALUES
(362, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:09:27', '2022-03-24 14:09:27', 2, 2, 'implicitly', 224, 41, 'SilverStripe\\Assets\\File'),
(363, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:10:28', '2022-03-24 14:10:28', 0, 3, 'explicitly', 225, 4, 'Custom\\Sponsor'),
(364, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:10:28', '2022-03-24 14:10:28', 0, 2, 'implicitly', 225, 42, 'SilverStripe\\Assets\\File'),
(365, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:21:29', '2022-03-24 14:21:29', 8, 11, 'explicitly', 226, 2, 'Custom\\Sponsor'),
(366, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:21:29', '2022-03-24 14:21:29', 2, 2, 'implicitly', 226, 40, 'SilverStripe\\Assets\\File'),
(367, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:21:40', '2022-03-24 14:21:40', 5, 7, 'explicitly', 227, 3, 'Custom\\Sponsor'),
(368, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:21:40', '2022-03-24 14:21:40', 2, 2, 'implicitly', 227, 41, 'SilverStripe\\Assets\\File'),
(369, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:21:52', '2022-03-24 14:21:52', 3, 6, 'explicitly', 228, 4, 'Custom\\Sponsor'),
(370, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:21:52', '2022-03-24 14:21:52', 2, 2, 'implicitly', 228, 42, 'SilverStripe\\Assets\\File'),
(371, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:31:11', '2022-03-24 14:31:11', 2, 2, 'explicitly', 229, 1, 'Custom\\Sponsor'),
(372, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:31:11', '2022-03-24 14:31:11', 2, 2, 'implicitly', 229, 38, 'SilverStripe\\Assets\\File'),
(373, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:37:56', '2022-03-24 14:37:56', 11, 13, 'explicitly', 230, 2, 'Custom\\Sponsor'),
(374, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:37:56', '2022-03-24 14:37:56', 2, 2, 'implicitly', 230, 40, 'SilverStripe\\Assets\\File'),
(375, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:05', '2022-03-24 14:38:05', 13, 16, 'explicitly', 231, 2, 'Custom\\Sponsor'),
(376, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:05', '2022-03-24 14:38:05', 2, 2, 'implicitly', 231, 40, 'SilverStripe\\Assets\\File'),
(377, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:14', '2022-03-24 14:38:14', 16, 20, 'explicitly', 232, 2, 'Custom\\Sponsor'),
(378, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:14', '2022-03-24 14:38:14', 2, 2, 'implicitly', 232, 40, 'SilverStripe\\Assets\\File'),
(379, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:22', '2022-03-24 14:38:22', 7, 9, 'explicitly', 233, 3, 'Custom\\Sponsor'),
(380, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:22', '2022-03-24 14:38:22', 2, 2, 'implicitly', 233, 41, 'SilverStripe\\Assets\\File'),
(381, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:33', '2022-03-24 14:38:33', 6, 9, 'explicitly', 234, 4, 'Custom\\Sponsor'),
(382, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:33', '2022-03-24 14:38:33', 2, 2, 'implicitly', 234, 42, 'SilverStripe\\Assets\\File'),
(383, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:40', '2022-03-24 14:38:40', 2, 4, 'explicitly', 235, 1, 'Custom\\Sponsor'),
(384, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:38:40', '2022-03-24 14:38:40', 2, 2, 'implicitly', 235, 38, 'SilverStripe\\Assets\\File'),
(385, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:42:49', '2022-03-24 14:42:49', 0, 3, 'explicitly', 236, 5, 'Custom\\Sponsor'),
(386, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:42:49', '2022-03-24 14:42:49', 0, 2, 'implicitly', 236, 43, 'SilverStripe\\Assets\\File'),
(387, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:44:21', '2022-03-24 14:44:21', 3, 6, 'explicitly', 237, 5, 'Custom\\Sponsor'),
(388, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:44:21', '2022-03-24 14:44:21', 2, 2, 'implicitly', 237, 43, 'SilverStripe\\Assets\\File'),
(389, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:45:00', '2022-03-24 14:45:00', 0, 3, 'explicitly', 238, 6, 'Custom\\Sponsor'),
(390, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:45:00', '2022-03-24 14:45:00', 0, 2, 'implicitly', 238, 44, 'SilverStripe\\Assets\\File'),
(391, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 15, 17, 'explicitly', 239, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(392, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 16, 16, 'implicitly', 239, 1, 'Custom\\Service'),
(393, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 6, 6, 'implicitly', 239, 2, 'Custom\\Service'),
(394, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 6, 6, 'implicitly', 239, 3, 'Custom\\Service'),
(395, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 6, 6, 'implicitly', 239, 4, 'Custom\\Service'),
(396, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 6, 6, 'implicitly', 239, 5, 'Custom\\Service'),
(397, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 6, 6, 'implicitly', 239, 6, 'Custom\\Service'),
(398, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 6, 6, 'implicitly', 239, 7, 'Custom\\Service'),
(399, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 6, 6, 'implicitly', 239, 8, 'Custom\\Service'),
(400, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 11, 11, 'implicitly', 239, 9, 'Custom\\Service'),
(401, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 6, 6, 'implicitly', 239, 10, 'Custom\\Service'),
(402, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:52:00', '2022-03-24 14:52:00', 2, 2, 'implicitly', 239, 34, 'SilverStripe\\Assets\\File'),
(403, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 17, 17, 'explicitly', 240, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(404, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 16, 16, 'implicitly', 240, 1, 'Custom\\Service'),
(405, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 6, 6, 'implicitly', 240, 2, 'Custom\\Service'),
(406, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 6, 6, 'implicitly', 240, 3, 'Custom\\Service'),
(407, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 6, 6, 'implicitly', 240, 4, 'Custom\\Service'),
(408, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 6, 6, 'implicitly', 240, 5, 'Custom\\Service'),
(409, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 6, 6, 'implicitly', 240, 6, 'Custom\\Service'),
(410, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 6, 6, 'implicitly', 240, 7, 'Custom\\Service'),
(411, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 6, 6, 'implicitly', 240, 8, 'Custom\\Service'),
(412, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 11, 11, 'implicitly', 240, 9, 'Custom\\Service'),
(413, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 6, 6, 'implicitly', 240, 10, 'Custom\\Service'),
(414, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 14:54:43', '2022-03-24 14:54:43', 2, 2, 'implicitly', 240, 34, 'SilverStripe\\Assets\\File'),
(415, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 17, 19, 'explicitly', 241, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(416, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 16, 16, 'implicitly', 241, 1, 'Custom\\Service'),
(417, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 6, 6, 'implicitly', 241, 2, 'Custom\\Service'),
(418, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 6, 6, 'implicitly', 241, 3, 'Custom\\Service'),
(419, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 6, 6, 'implicitly', 241, 4, 'Custom\\Service'),
(420, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 6, 6, 'implicitly', 241, 5, 'Custom\\Service'),
(421, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 6, 6, 'implicitly', 241, 6, 'Custom\\Service'),
(422, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 6, 6, 'implicitly', 241, 7, 'Custom\\Service'),
(423, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 6, 6, 'implicitly', 241, 8, 'Custom\\Service'),
(424, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 11, 11, 'implicitly', 241, 9, 'Custom\\Service'),
(425, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 6, 6, 'implicitly', 241, 10, 'Custom\\Service'),
(426, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:15:55', '2022-03-24 15:15:55', 2, 2, 'implicitly', 241, 34, 'SilverStripe\\Assets\\File'),
(427, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 19, 21, 'explicitly', 242, 10, 'SilverStripe\\CMS\\Model\\SiteTree'),
(428, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 16, 16, 'implicitly', 242, 1, 'Custom\\Service'),
(429, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 6, 6, 'implicitly', 242, 2, 'Custom\\Service'),
(430, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 6, 6, 'implicitly', 242, 3, 'Custom\\Service'),
(431, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 6, 6, 'implicitly', 242, 4, 'Custom\\Service'),
(432, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 6, 6, 'implicitly', 242, 5, 'Custom\\Service'),
(433, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 6, 6, 'implicitly', 242, 6, 'Custom\\Service'),
(434, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 6, 6, 'implicitly', 242, 7, 'Custom\\Service'),
(435, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 6, 6, 'implicitly', 242, 8, 'Custom\\Service'),
(436, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 11, 11, 'implicitly', 242, 9, 'Custom\\Service'),
(437, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 6, 6, 'implicitly', 242, 10, 'Custom\\Service'),
(438, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:25:07', '2022-03-24 15:25:07', 2, 2, 'implicitly', 242, 34, 'SilverStripe\\Assets\\File'),
(439, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:52:06', '2022-03-24 15:52:06', 0, 3, 'explicitly', 243, 1, 'Custom\\Project'),
(440, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:52:06', '2022-03-24 15:52:06', 0, 2, 'implicitly', 243, 46, 'SilverStripe\\Assets\\File'),
(441, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:53:47', '2022-03-24 15:53:47', 3, 7, 'explicitly', 244, 1, 'Custom\\Project'),
(442, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:53:47', '2022-03-24 15:53:47', 2, 2, 'implicitly', 244, 46, 'SilverStripe\\Assets\\File'),
(443, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:55:44', '2022-03-24 15:55:44', 7, 9, 'explicitly', 245, 1, 'Custom\\Project'),
(444, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:55:44', '2022-03-24 15:55:44', 2, 2, 'implicitly', 245, 46, 'SilverStripe\\Assets\\File'),
(445, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:58:34', '2022-03-24 15:58:34', 9, 9, 'explicitly', 246, 1, 'Custom\\Project'),
(446, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 15:58:34', '2022-03-24 15:58:34', 2, 2, 'implicitly', 246, 46, 'SilverStripe\\Assets\\File'),
(447, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:04:13', '2022-03-24 16:04:13', 9, 11, 'explicitly', 247, 1, 'Custom\\Project'),
(448, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:04:13', '2022-03-24 16:04:13', 2, 2, 'implicitly', 247, 46, 'SilverStripe\\Assets\\File'),
(449, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:04:48', '2022-03-24 16:04:48', 0, 2, 'explicitly', 248, 2, 'Custom\\Project'),
(450, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:04:48', '2022-03-24 16:04:48', 0, 2, 'implicitly', 248, 47, 'SilverStripe\\Assets\\File'),
(451, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:05:27', '2022-03-24 16:05:27', 0, 2, 'explicitly', 249, 3, 'Custom\\Project'),
(452, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:05:27', '2022-03-24 16:05:27', 0, 2, 'implicitly', 249, 48, 'SilverStripe\\Assets\\File'),
(453, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:12:23', '2022-03-24 16:12:23', 2, 4, 'explicitly', 250, 2, 'Custom\\Project'),
(454, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:12:23', '2022-03-24 16:12:23', 2, 2, 'implicitly', 250, 47, 'SilverStripe\\Assets\\File'),
(455, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:13:18', '2022-03-24 16:13:18', 2, 4, 'explicitly', 251, 3, 'Custom\\Project'),
(456, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:13:18', '2022-03-24 16:13:18', 2, 2, 'implicitly', 251, 48, 'SilverStripe\\Assets\\File'),
(457, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:40:40', '2022-03-24 16:40:40', 3, 7, 'explicitly', 252, 6, 'Custom\\Sponsor'),
(458, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:40:40', '2022-03-24 16:40:40', 2, 2, 'implicitly', 252, 44, 'SilverStripe\\Assets\\File'),
(459, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:40:51', '2022-03-24 16:40:51', 6, 9, 'explicitly', 253, 5, 'Custom\\Sponsor'),
(460, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:40:51', '2022-03-24 16:40:51', 2, 2, 'implicitly', 253, 43, 'SilverStripe\\Assets\\File'),
(461, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:40:54', '2022-03-24 16:40:54', 9, 11, 'explicitly', 254, 5, 'Custom\\Sponsor'),
(462, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 16:40:54', '2022-03-24 16:40:54', 2, 2, 'implicitly', 254, 43, 'SilverStripe\\Assets\\File'),
(463, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 17:57:18', '2022-03-24 17:57:18', 0, 3, 'explicitly', 255, 1, 'Custom\\Needs'),
(464, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 17:57:57', '2022-03-24 17:57:57', 0, 3, 'explicitly', 256, 2, 'Custom\\Needs'),
(465, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 17:58:18', '2022-03-24 17:58:18', 11, 13, 'explicitly', 257, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(466, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 17:59:05', '2022-03-24 17:59:05', 3, 6, 'explicitly', 258, 1, 'Custom\\Needs'),
(467, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 17:59:05', '2022-03-24 17:59:05', 2, 2, 'implicitly', 258, 29, 'SilverStripe\\Assets\\File'),
(468, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 17:59:23', '2022-03-24 17:59:23', 3, 6, 'explicitly', 259, 2, 'Custom\\Needs'),
(469, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 17:59:23', '2022-03-24 17:59:23', 2, 2, 'implicitly', 259, 30, 'SilverStripe\\Assets\\File'),
(470, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 18:15:58', '2022-03-24 18:15:58', 2, 4, 'explicitly', 260, 4, 'SilverStripe\\CMS\\Model\\SiteTree'),
(471, 'SilverStripe\\Versioned\\ChangeSetItem', '2022-03-24 18:20:52', '2022-03-24 18:20:52', 0, 0, 'explicitly', 261, 1, 'SilverStripe\\Security\\Member');

-- --------------------------------------------------------

--
-- Table structure for table `changesetitem_referencedby`
--

CREATE TABLE `changesetitem_referencedby` (
  `ID` int(11) NOT NULL,
  `ChangeSetItemID` int(11) NOT NULL DEFAULT 0,
  `ChildID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `changesetitem_referencedby`
--

INSERT INTO `changesetitem_referencedby` (`ID`, `ChangeSetItemID`, `ChildID`) VALUES
(1, 11, 10),
(2, 13, 12),
(3, 15, 14),
(4, 17, 16),
(5, 19, 18),
(6, 25, 24),
(7, 26, 24),
(8, 29, 28),
(9, 31, 30),
(10, 32, 30),
(11, 34, 33),
(12, 36, 35),
(13, 38, 37),
(14, 40, 39),
(15, 41, 39),
(16, 43, 42),
(17, 44, 42),
(18, 49, 48),
(19, 51, 50),
(20, 55, 54),
(21, 58, 57),
(22, 60, 59),
(23, 62, 61),
(24, 64, 63),
(25, 86, 85),
(26, 88, 87),
(27, 90, 89),
(28, 92, 91),
(29, 94, 93),
(30, 96, 95),
(31, 98, 97),
(32, 100, 99),
(33, 102, 101),
(34, 104, 103),
(35, 106, 105),
(36, 108, 107),
(37, 110, 109),
(38, 112, 111),
(39, 114, 113),
(40, 116, 115),
(41, 118, 117),
(42, 132, 131),
(43, 134, 133),
(44, 136, 135),
(45, 138, 137),
(46, 140, 139),
(47, 142, 141),
(48, 144, 143),
(49, 146, 145),
(50, 147, 145),
(51, 148, 145),
(52, 149, 145),
(53, 150, 145),
(54, 151, 145),
(55, 153, 152),
(56, 154, 152),
(57, 155, 152),
(58, 156, 152),
(59, 157, 152),
(60, 158, 152),
(61, 181, 180),
(62, 182, 180),
(63, 183, 180),
(64, 184, 180),
(65, 185, 180),
(66, 186, 180),
(67, 190, 189),
(68, 193, 192),
(69, 195, 194),
(70, 198, 197),
(71, 200, 199),
(72, 202, 201),
(73, 206, 205),
(74, 208, 207),
(75, 210, 209),
(76, 212, 211),
(77, 214, 213),
(78, 216, 215),
(79, 218, 217),
(80, 220, 219),
(81, 222, 221),
(82, 224, 223),
(83, 226, 225),
(84, 228, 227),
(85, 230, 229),
(86, 232, 231),
(87, 234, 233),
(88, 236, 235),
(89, 238, 237),
(90, 240, 239),
(91, 242, 241),
(92, 244, 243),
(93, 246, 245),
(94, 248, 247),
(95, 250, 249),
(96, 252, 251),
(97, 254, 253),
(98, 256, 255),
(99, 258, 257),
(100, 277, 276),
(101, 279, 278),
(102, 281, 280),
(103, 282, 280),
(104, 283, 280),
(105, 284, 280),
(106, 285, 280),
(107, 286, 280),
(108, 287, 280),
(109, 288, 280),
(110, 289, 280),
(111, 290, 280),
(112, 292, 291),
(113, 304, 303),
(114, 306, 305),
(115, 308, 307),
(116, 312, 311),
(117, 314, 313),
(118, 316, 315),
(119, 318, 317),
(120, 320, 319),
(121, 322, 321),
(122, 324, 323),
(123, 326, 325),
(124, 328, 327),
(125, 333, 332),
(126, 336, 335),
(127, 338, 337),
(128, 340, 339),
(129, 342, 341),
(130, 345, 344),
(131, 347, 346),
(132, 349, 348),
(133, 351, 350),
(134, 353, 352),
(135, 356, 355),
(136, 358, 357),
(137, 360, 359),
(138, 362, 361),
(139, 364, 363),
(140, 366, 365),
(141, 368, 367),
(142, 370, 369),
(143, 372, 371),
(144, 374, 373),
(145, 376, 375),
(146, 378, 377),
(147, 380, 379),
(148, 382, 381),
(149, 384, 383),
(150, 386, 385),
(151, 388, 387),
(152, 390, 389),
(153, 392, 391),
(154, 393, 391),
(155, 394, 391),
(156, 395, 391),
(157, 396, 391),
(158, 397, 391),
(159, 398, 391),
(160, 399, 391),
(161, 400, 391),
(162, 401, 391),
(163, 402, 391),
(164, 404, 403),
(165, 405, 403),
(166, 406, 403),
(167, 407, 403),
(168, 408, 403),
(169, 409, 403),
(170, 410, 403),
(171, 411, 403),
(172, 412, 403),
(173, 413, 403),
(174, 414, 403),
(175, 416, 415),
(176, 417, 415),
(177, 418, 415),
(178, 419, 415),
(179, 420, 415),
(180, 421, 415),
(181, 422, 415),
(182, 423, 415),
(183, 424, 415),
(184, 425, 415),
(185, 426, 415),
(186, 428, 427),
(187, 429, 427),
(188, 430, 427),
(189, 431, 427),
(190, 432, 427),
(191, 433, 427),
(192, 434, 427),
(193, 435, 427),
(194, 436, 427),
(195, 437, 427),
(196, 438, 427),
(197, 440, 439),
(198, 442, 441),
(199, 444, 443),
(200, 446, 445),
(201, 448, 447),
(202, 450, 449),
(203, 452, 451),
(204, 454, 453),
(205, 456, 455),
(206, 458, 457),
(207, 460, 459),
(208, 462, 461),
(209, 467, 466),
(210, 469, 468);

-- --------------------------------------------------------

--
-- Table structure for table `contactinquiry`
--

CREATE TABLE `contactinquiry` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Fractas\\ContactPage\\ContactInquiry') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Fractas\\ContactPage\\ContactInquiry',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ref` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AdminComment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` enum('New','Opened','Answered','Spam','Archived') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `Sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contactpage`
--

CREATE TABLE `contactpage` (
  `ID` int(11) NOT NULL,
  `MailFrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailTo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailSubject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SuccessTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SuccessText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SideContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageID` int(11) NOT NULL DEFAULT 0,
  `TermsPageID` int(11) NOT NULL DEFAULT 0,
  `PrivacyPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactpage`
--

INSERT INTO `contactpage` (`ID`, `MailFrom`, `MailTo`, `MailSubject`, `SuccessTitle`, `SuccessText`, `SideContent`, `ImageID`, `TermsPageID`, `PrivacyPageID`) VALUES
(3, 'gyathursan@gmail.com', 'yathu.origami@gmail.com', 'New contact form inquiry', 'Thank you for submitting the contact form!', 'We will contact you back asap! Cheers :)', '<p>mas</p>', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactpage_live`
--

CREATE TABLE `contactpage_live` (
  `ID` int(11) NOT NULL,
  `MailFrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailTo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailSubject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SuccessTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SuccessText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SideContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageID` int(11) NOT NULL DEFAULT 0,
  `TermsPageID` int(11) NOT NULL DEFAULT 0,
  `PrivacyPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactpage_live`
--

INSERT INTO `contactpage_live` (`ID`, `MailFrom`, `MailTo`, `MailSubject`, `SuccessTitle`, `SuccessText`, `SideContent`, `ImageID`, `TermsPageID`, `PrivacyPageID`) VALUES
(3, 'gyathursan@gmail.com', 'yathu.origami@gmail.com', 'New contact form inquiry', 'Thank you for submitting the contact form!', 'We will contact you back asap! Cheers :)', '<p>mas</p>', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactpage_versions`
--

CREATE TABLE `contactpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `MailFrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailTo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailSubject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SuccessTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SuccessText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SideContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageID` int(11) NOT NULL DEFAULT 0,
  `TermsPageID` int(11) NOT NULL DEFAULT 0,
  `PrivacyPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactpage_versions`
--

INSERT INTO `contactpage_versions` (`ID`, `RecordID`, `Version`, `MailFrom`, `MailTo`, `MailSubject`, `SuccessTitle`, `SuccessText`, `SideContent`, `ImageID`, `TermsPageID`, `PrivacyPageID`) VALUES
(1, 3, 3, 'you@example.com', 'you@example.com', 'New contact form inquiry', 'Thank you for submitting the contact form!', 'We will contact you back asap! Cheers :)', NULL, 0, 0, 0),
(2, 3, 4, 'you@example.com', 'you@example.com', 'New contact form inquiry', 'Thank you for submitting the contact form!', 'We will contact you back asap! Cheers :)', NULL, 0, 0, 0),
(3, 3, 5, 'gyathursan@gmail.com', 'yathu.origami@gmail.com', 'New contact form inquiry', 'Thank you for submitting the contact form!', 'We will contact you back asap! Cheers :)', NULL, 0, 0, 0),
(4, 3, 6, 'gyathursan@gmail.com', 'yathu.origami@gmail.com', 'New contact form inquiry', 'Thank you for submitting the contact form!', 'We will contact you back asap! Cheers :)', NULL, 0, 0, 0),
(5, 3, 7, 'gyathursan@gmail.com', 'yathu.origami@gmail.com', 'New contact form inquiry', 'Thank you for submitting the contact form!', 'We will contact you back asap! Cheers :)', '<p>mas</p>', 0, 0, 0),
(6, 3, 8, 'gyathursan@gmail.com', 'yathu.origami@gmail.com', 'New contact form inquiry', 'Thank you for submitting the contact form!', 'We will contact you back asap! Cheers :)', '<p>mas</p>', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contentwidget`
--

CREATE TABLE `contentwidget` (
  `ID` int(11) NOT NULL,
  `HTML` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contentwidget_live`
--

CREATE TABLE `contentwidget_live` (
  `ID` int(11) NOT NULL,
  `HTML` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contentwidget_versions`
--

CREATE TABLE `contentwidget_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `HTML` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_articlecategory`
--

CREATE TABLE `custom_articlecategory` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\ArticleCategory') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\ArticleCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ArticleHolderID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_articlecategory`
--

INSERT INTO `custom_articlecategory` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `ArticleHolderID`) VALUES
(1, 'Custom\\ArticleCategory', '2022-02-22 21:10:55', '2022-02-22 21:10:55', 'Gentral', 8);

-- --------------------------------------------------------

--
-- Table structure for table `custom_articlecomment`
--

CREATE TABLE `custom_articlecomment` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\ArticleComment') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\ArticleComment',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ArticlePageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_articlepage`
--

CREATE TABLE `custom_articlepage` (
  `ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `AuthorDiscripe` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AuthorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fblink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Instagramlink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Linkedinlink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CoverPhotoID` int(11) NOT NULL DEFAULT 0,
  `AuthorImageID` int(11) NOT NULL DEFAULT 0,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `ServiceID` int(11) NOT NULL DEFAULT 0,
  `TeamID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_articlepage_categories`
--

CREATE TABLE `custom_articlepage_categories` (
  `ID` int(11) NOT NULL,
  `Custom_ArticlePageID` int(11) NOT NULL DEFAULT 0,
  `Custom_ArticleCategoryID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_articlepage_categories`
--

INSERT INTO `custom_articlepage_categories` (`ID`, `Custom_ArticlePageID`, `Custom_ArticleCategoryID`) VALUES
(1, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_articlepage_live`
--

CREATE TABLE `custom_articlepage_live` (
  `ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `AuthorDiscripe` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AuthorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fblink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Instagramlink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Linkedinlink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CoverPhotoID` int(11) NOT NULL DEFAULT 0,
  `AuthorImageID` int(11) NOT NULL DEFAULT 0,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `ServiceID` int(11) NOT NULL DEFAULT 0,
  `TeamID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_articlepage_versions`
--

CREATE TABLE `custom_articlepage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Date` date DEFAULT NULL,
  `AuthorDiscripe` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AuthorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fblink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Instagramlink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Linkedinlink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CoverPhotoID` int(11) NOT NULL DEFAULT 0,
  `AuthorImageID` int(11) NOT NULL DEFAULT 0,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `ServiceID` int(11) NOT NULL DEFAULT 0,
  `TeamID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_articlepage_versions`
--

INSERT INTO `custom_articlepage_versions` (`ID`, `RecordID`, `Version`, `Date`, `AuthorDiscripe`, `AuthorName`, `Fblink`, `Instagramlink`, `Linkedinlink`, `CoverPhotoID`, `AuthorImageID`, `RegionID`, `ServiceID`, `TeamID`) VALUES
(1, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0),
(2, 9, 2, '2022-02-22', 'Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.', 'Jane Smith', 'fb.com', 'fb.com', 'fb.com', 0, 0, 0, 0, 0),
(3, 9, 3, '2022-02-22', 'Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.', 'Jane Smith', 'fb.com', 'fb.com', 'fb.com', 0, 0, 0, 0, 0),
(4, 9, 4, '2022-02-22', 'Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.', 'Jane Smith', 'fb.com', 'fb.com', 'fb.com', 10, 11, 0, 0, 0),
(5, 9, 5, '2022-02-22', 'Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.', 'Jane Smith', 'fb.com', 'fb.com', 'fb.com', 10, 11, 0, 0, 0),
(6, 9, 6, '2022-02-22', 'Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.', 'Jane Smith', 'fb.com', 'fb.com', 'fb.com', 10, 11, 0, 0, 0),
(7, 9, 7, '2022-02-22', 'Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.', 'Jane Smith', 'fb.com', 'fb.com', 'fb.com', 10, 11, 0, 0, 0),
(8, 9, 8, '2022-02-22', 'Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.', 'Jane Smith', 'fb.com', 'fb.com', 'fb.com', 10, 11, 1, 0, 0),
(9, 9, 9, '2022-02-22', 'Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.', 'Jane Smith', 'fb.com', 'fb.com', 'fb.com', 10, 11, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_contactpage`
--

CREATE TABLE `custom_contactpage` (
  `ID` int(11) NOT NULL,
  `Mailto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_contactpage`
--

INSERT INTO `custom_contactpage` (`ID`, `Mailto`, `SubmitText`) VALUES
(3, 'yathursan.gunaratnam@origami-brand.com', '<div>\n<div><span>Thank you for your feedback.</span></div>\n<div><span>Your message has been sent.</span></div>\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `custom_contactpage_live`
--

CREATE TABLE `custom_contactpage_live` (
  `ID` int(11) NOT NULL,
  `Mailto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_contactpage_live`
--

INSERT INTO `custom_contactpage_live` (`ID`, `Mailto`, `SubmitText`) VALUES
(3, 'yathursan.gunaratnam@origami-brand.com', '<div>\n<div><span>Thank you for your feedback.</span></div>\n<div><span>Your message has been sent.</span></div>\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `custom_contactpage_versions`
--

CREATE TABLE `custom_contactpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Mailto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_contactpage_versions`
--

INSERT INTO `custom_contactpage_versions` (`ID`, `RecordID`, `Version`, `Mailto`, `SubmitText`) VALUES
(1, 3, 11, 'yathursan.gunaratnam@origami-brand.com', '<div>\n<div><span>Thank you for your feedback.</span></div>\n<div><span>Your message has been sent.</span></div>\n</div>'),
(2, 3, 12, 'yathursan.gunaratnam@origami-brand.com', '<div>\n<div><span>Thank you for your feedback.</span></div>\n<div><span>Your message has been sent.</span></div>\n</div>'),
(3, 3, 13, 'yathursan.gunaratnam@origami-brand.com', '<div>\n<div><span>Thank you for your feedback.</span></div>\n<div><span>Your message has been sent.</span></div>\n</div>'),
(4, 3, 14, 'yathursan.gunaratnam@origami-brand.com', '<div>\n<div><span>Thank you for your feedback.</span></div>\n<div><span>Your message has been sent.</span></div>\n</div>'),
(5, 3, 15, 'yathursan.gunaratnam@origami-brand.com', '<div>\n<div><span>Thank you for your feedback.</span></div>\n<div><span>Your message has been sent.</span></div>\n</div>'),
(6, 3, 16, 'yathursan.gunaratnam@origami-brand.com', '<div>\n<div><span>Thank you for your feedback.</span></div>\n<div><span>Your message has been sent.</span></div>\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `custom_getlocations`
--

CREATE TABLE `custom_getlocations` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Getlocations') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Getlocations',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(10,6) NOT NULL DEFAULT 0.000000,
  `lon` decimal(10,6) NOT NULL DEFAULT 0.000000,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_getlocations`
--

INSERT INTO `custom_getlocations` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `name`, `address`, `lat`, `lon`, `Description`) VALUES
(1, 'Custom\\Getlocations', '2022-03-04 03:24:54', '2022-03-04 03:22:13', 4, 'Origami', 'Unit 8, The Steelworks, 13 Coles Avenue, Auckland 1024', '0.000000', '0.000000', 'Right first – Brilliant Second\r\nOrigami is a strategic brand agency that injects commercial rigour into brand development.\r\nWe then execute brilliant creative work across a wide range of outputs directed by this thinking.'),
(2, 'Custom\\Getlocations', '2022-03-04 03:25:38', '2022-03-04 03:25:35', 2, 'Tauranga Real Estate Guide', '917b Cameron Road, Gate Pa, Tauranga 3112', '0.000000', '0.000000', 'Tauranga Real Estate Guide, Croatia holds the most important and comprehensive collection of paintings, sculptures, and drawings by 19th and 20th-century Croatian artists.'),
(3, 'Custom\\Getlocations', '2022-03-04 03:26:17', '2022-03-04 03:26:14', 2, 'Canterbury Museum', '11 Rolleston Avenue, Christchurch Central City, Christchurch 8013', '0.000000', '0.000000', 'One of my favorite places in the world. The simulated historical shopping street is a particular delight and had been since childhood decades ago. A must visit in the Botanical Gardens and Arts Centre area.');

-- --------------------------------------------------------

--
-- Table structure for table `custom_getlocations_live`
--

CREATE TABLE `custom_getlocations_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Getlocations') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Getlocations',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(10,6) NOT NULL DEFAULT 0.000000,
  `lon` decimal(10,6) NOT NULL DEFAULT 0.000000,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_getlocations_live`
--

INSERT INTO `custom_getlocations_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `name`, `address`, `lat`, `lon`, `Description`) VALUES
(1, 'Custom\\Getlocations', '2022-03-04 03:24:54', '2022-03-04 03:22:13', 4, 'Origami', 'Unit 8, The Steelworks, 13 Coles Avenue, Auckland 1024', '0.000000', '0.000000', 'Right first – Brilliant Second\r\nOrigami is a strategic brand agency that injects commercial rigour into brand development.\r\nWe then execute brilliant creative work across a wide range of outputs directed by this thinking.'),
(2, 'Custom\\Getlocations', '2022-03-04 03:25:38', '2022-03-04 03:25:35', 2, 'Tauranga Real Estate Guide', '917b Cameron Road, Gate Pa, Tauranga 3112', '0.000000', '0.000000', 'Tauranga Real Estate Guide, Croatia holds the most important and comprehensive collection of paintings, sculptures, and drawings by 19th and 20th-century Croatian artists.'),
(3, 'Custom\\Getlocations', '2022-03-04 03:26:17', '2022-03-04 03:26:14', 2, 'Canterbury Museum', '11 Rolleston Avenue, Christchurch Central City, Christchurch 8013', '0.000000', '0.000000', 'One of my favorite places in the world. The simulated historical shopping street is a particular delight and had been since childhood decades ago. A must visit in the Botanical Gardens and Arts Centre area.');

-- --------------------------------------------------------

--
-- Table structure for table `custom_getlocations_versions`
--

CREATE TABLE `custom_getlocations_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('Custom\\Getlocations') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Getlocations',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(10,6) NOT NULL DEFAULT 0.000000,
  `lon` decimal(10,6) NOT NULL DEFAULT 0.000000,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_getlocations_versions`
--

INSERT INTO `custom_getlocations_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `name`, `address`, `lat`, `lon`, `Description`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'Custom\\Getlocations', '2022-03-04 03:22:13', '2022-03-04 03:22:13', NULL, NULL, '0.000000', '0.000000', 'Right first – Brilliant Second\r\nOrigami is a strategic brand agency that injects commercial rigour into brand development.\r\nWe then execute brilliant creative work across a wide range of outputs directed by this thinking.'),
(2, 1, 2, 1, 0, 1, 1, 1, 'Custom\\Getlocations', '2022-03-04 03:22:19', '2022-03-04 03:22:13', NULL, NULL, '0.000000', '0.000000', 'Right first – Brilliant Second\r\nOrigami is a strategic brand agency that injects commercial rigour into brand development.\r\nWe then execute brilliant creative work across a wide range of outputs directed by this thinking.'),
(3, 1, 3, 0, 0, 1, 1, 0, 'Custom\\Getlocations', '2022-03-04 03:24:52', '2022-03-04 03:22:13', 'Origami', 'Unit 8, The Steelworks, 13 Coles Avenue, Auckland 1024', '0.000000', '0.000000', NULL),
(4, 1, 4, 1, 0, 1, 1, 1, 'Custom\\Getlocations', '2022-03-04 03:24:54', '2022-03-04 03:22:13', 'Origami', 'Unit 8, The Steelworks, 13 Coles Avenue, Auckland 1024', '0.000000', '0.000000', 'Right first – Brilliant Second\r\nOrigami is a strategic brand agency that injects commercial rigour into brand development.\r\nWe then execute brilliant creative work across a wide range of outputs directed by this thinking.'),
(5, 2, 1, 0, 0, 1, 1, 0, 'Custom\\Getlocations', '2022-03-04 03:25:35', '2022-03-04 03:25:35', 'Tauranga Real Estate Guide', '917b Cameron Road, Gate Pa, Tauranga 3112', '0.000000', '0.000000', 'Tauranga Real Estate Guide, Croatia holds the most important and comprehensive collection of paintings, sculptures, and drawings by 19th and 20th-century Croatian artists.'),
(6, 2, 2, 1, 0, 1, 1, 1, 'Custom\\Getlocations', '2022-03-04 03:25:38', '2022-03-04 03:25:35', 'Tauranga Real Estate Guide', '917b Cameron Road, Gate Pa, Tauranga 3112', '0.000000', '0.000000', 'Tauranga Real Estate Guide, Croatia holds the most important and comprehensive collection of paintings, sculptures, and drawings by 19th and 20th-century Croatian artists.'),
(7, 3, 1, 0, 0, 1, 1, 0, 'Custom\\Getlocations', '2022-03-04 03:26:14', '2022-03-04 03:26:14', 'Canterbury Museum', '11 Rolleston Avenue, Christchurch Central City, Christchurch 8013', '0.000000', '0.000000', 'One of my favorite places in the world. The simulated historical shopping street is a particular delight and had been since childhood decades ago. A must visit in the Botanical Gardens and Arts Centre area.'),
(8, 3, 2, 1, 0, 1, 1, 1, 'Custom\\Getlocations', '2022-03-04 03:26:17', '2022-03-04 03:26:14', 'Canterbury Museum', '11 Rolleston Avenue, Christchurch Central City, Christchurch 8013', '0.000000', '0.000000', 'One of my favorite places in the world. The simulated historical shopping street is a particular delight and had been since childhood decades ago. A must visit in the Botanical Gardens and Arts Centre area.');

-- --------------------------------------------------------

--
-- Table structure for table `custom_homepage`
--

CREATE TABLE `custom_homepage` (
  `ID` int(11) NOT NULL,
  `HeroTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HeroSubTitle` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `DonateDiscription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_homepage`
--

INSERT INTO `custom_homepage` (`ID`, `HeroTitle`, `HeroSubTitle`, `PhotoID`, `DonateDiscription`) VALUES
(1, 'Create a community where the need is met.', 'Kuzhalosai is a Non-Government Organization established in 2014 with the goal of creating a better society for all.', 23, 'Lockdown affects us all, let help those its affects the most');

-- --------------------------------------------------------

--
-- Table structure for table `custom_homepage_live`
--

CREATE TABLE `custom_homepage_live` (
  `ID` int(11) NOT NULL,
  `HeroTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HeroSubTitle` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `DonateDiscription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_homepage_live`
--

INSERT INTO `custom_homepage_live` (`ID`, `HeroTitle`, `HeroSubTitle`, `PhotoID`, `DonateDiscription`) VALUES
(1, 'Create a community where the need is met.', 'Kuzhalosai is a Non-Government Organization established in 2014 with the goal of creating a better society for all.', 23, 'Lockdown affects us all, let help those its affects the most');

-- --------------------------------------------------------

--
-- Table structure for table `custom_homepage_versions`
--

CREATE TABLE `custom_homepage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `HeroTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HeroSubTitle` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `DonateDiscription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_homepage_versions`
--

INSERT INTO `custom_homepage_versions` (`ID`, `RecordID`, `Version`, `HeroTitle`, `HeroSubTitle`, `PhotoID`, `DonateDiscription`) VALUES
(1, 1, 3, NULL, NULL, 0, NULL),
(2, 1, 4, NULL, NULL, 0, NULL),
(3, 1, 5, 'Welcome to SilverStripe', 'Welcome to SilverStripe! TWelcome to SilverStripe.', 0, NULL),
(4, 1, 6, 'Welcome to SilverStripe', 'Welcome to SilverStripe! TWelcome to SilverStripe.', 0, NULL),
(5, 1, 7, 'Be the Change  You wish to see', 'Welcome to SilverStripe! TWelcome to SilverStripe.', 0, NULL),
(6, 1, 8, 'Be the Change  You wish to see', 'Welcome to SilverStripe! TWelcome to SilverStripe.', 0, NULL),
(7, 1, 9, 'Be the Change  You wish to see', 'Thuvakkam is a Non Government Organization established in 2014 with the goal of creating a better society for all.', 0, NULL),
(8, 1, 10, 'Be the Change  You wish to see', 'Thuvakkam is a Non Government Organization established in 2014 with the goal of creating a better society for all.', 0, NULL),
(9, 1, 11, 'Our mission is to create a community where the need is met.', 'Thuvakkam is a Non Government Organization established in 2014 with the goal of creating a better society for all.', 0, NULL),
(10, 1, 12, 'Our mission is to create a community where the need is met.', 'By providing food and quality education, by providing various guides, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible, The task of the flute is to create.', 0, NULL),
(11, 1, 13, 'Our mission is to create a community where the need is met.', 'By providing food and quality education, by providing various guides, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible, The task of the flute is to create.', 0, NULL),
(12, 1, 14, 'Our mission is to create a community where the need is met.', 'By providing food and quality education, by providing various guides, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible, The task of the flute is to create.', 23, NULL),
(13, 1, 15, 'Our mission is to create a community where the need is met.', 'By providing food and quality education, by providing various guides, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible, The task of the flute is to create.', 23, NULL),
(14, 1, 16, 'Create a community where the need is met.', 'By providing food and quality education, by providing various guides, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible, The task of the flute is to create.', 23, NULL),
(15, 1, 17, 'Create a community where the need is met.', 'By providing food and quality education, by providing various guides, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible, The task of the flute is to create.', 23, NULL),
(16, 1, 18, 'Create a community where the need is met.', 'Kuzhalosai is a Non-Government Organization established in 2014 with the goal of creating a better society for all.', 23, NULL),
(17, 1, 19, 'Create a community where the need is met.', 'Kuzhalosai is a Non-Government Organization established in 2014 with the goal of creating a better society for all.', 23, NULL),
(18, 1, 20, 'Create a community where the need is met.', 'Kuzhalosai is a Non-Government Organization established in 2014 with the goal of creating a better society for all.', 23, 'Lockdown affects us all, let help those its affects the most'),
(19, 1, 21, 'Create a community where the need is met.', 'Kuzhalosai is a Non-Government Organization established in 2014 with the goal of creating a better society for all.', 23, 'Lockdown affects us all, let help those its affects the most');

-- --------------------------------------------------------

--
-- Table structure for table `custom_needs`
--

CREATE TABLE `custom_needs` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Needs') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Needs',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `MainTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ServiceID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_needs`
--

INSERT INTO `custom_needs` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `MainTitle`, `Title`, `PricePerNight`, `FeaturedOnHomepage`, `Description`, `ServiceID`, `PrimaryPhotoID`) VALUES
(1, 'Custom\\Needs', '2022-03-24 17:59:05', '2022-03-24 17:57:08', 6, 'Please support Monika College fees', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', 3, 29),
(2, 'Custom\\Needs', '2022-03-24 17:59:23', '2022-03-24 17:57:55', 6, 'Need a sewing machine for old man', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', 4, 30);

-- --------------------------------------------------------

--
-- Table structure for table `custom_needs_live`
--

CREATE TABLE `custom_needs_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Needs') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Needs',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `MainTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ServiceID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_needs_live`
--

INSERT INTO `custom_needs_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `MainTitle`, `Title`, `PricePerNight`, `FeaturedOnHomepage`, `Description`, `ServiceID`, `PrimaryPhotoID`) VALUES
(1, 'Custom\\Needs', '2022-03-24 17:59:05', '2022-03-24 17:57:08', 6, 'Please support Monika College fees', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', 3, 29),
(2, 'Custom\\Needs', '2022-03-24 17:59:23', '2022-03-24 17:57:55', 6, 'Need a sewing machine for old man', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', 4, 30);

-- --------------------------------------------------------

--
-- Table structure for table `custom_needs_versions`
--

CREATE TABLE `custom_needs_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('Custom\\Needs') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Needs',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `MainTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ServiceID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_needs_versions`
--

INSERT INTO `custom_needs_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `MainTitle`, `Title`, `PricePerNight`, `FeaturedOnHomepage`, `Description`, `ServiceID`, `PrimaryPhotoID`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'Custom\\Needs', '2022-03-24 17:57:08', '2022-03-24 17:57:08', 'Please support Monika College fees', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', 3, 0),
(2, 1, 2, 0, 0, 1, 1, 0, 'Custom\\Needs', '2022-03-24 17:57:18', '2022-03-24 17:57:08', 'Please support Monika College fees', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', 3, 0),
(3, 1, 3, 1, 0, 1, 1, 1, 'Custom\\Needs', '2022-03-24 17:57:18', '2022-03-24 17:57:08', 'Please support Monika College fees', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', 3, 0),
(4, 2, 1, 0, 0, 1, 1, 0, 'Custom\\Needs', '2022-03-24 17:57:55', '2022-03-24 17:57:55', 'Need a sewing machine for old man', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', 4, 0),
(5, 2, 2, 0, 0, 1, 1, 0, 'Custom\\Needs', '2022-03-24 17:57:57', '2022-03-24 17:57:55', 'Need a sewing machine for old man', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', 4, 0),
(6, 2, 3, 1, 0, 1, 1, 1, 'Custom\\Needs', '2022-03-24 17:57:57', '2022-03-24 17:57:55', 'Need a sewing machine for old man', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', 4, 0),
(7, 1, 4, 0, 0, 1, 1, 0, 'Custom\\Needs', '2022-03-24 17:59:02', '2022-03-24 17:57:08', 'Please support Monika College fees', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', 3, 29),
(8, 1, 5, 0, 0, 1, 1, 0, 'Custom\\Needs', '2022-03-24 17:59:05', '2022-03-24 17:57:08', 'Please support Monika College fees', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', 3, 29),
(9, 1, 6, 1, 0, 1, 1, 1, 'Custom\\Needs', '2022-03-24 17:59:05', '2022-03-24 17:57:08', 'Please support Monika College fees', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', 3, 29),
(10, 2, 4, 0, 0, 1, 1, 0, 'Custom\\Needs', '2022-03-24 17:59:21', '2022-03-24 17:57:55', 'Need a sewing machine for old man', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', 4, 30),
(11, 2, 5, 0, 0, 1, 1, 0, 'Custom\\Needs', '2022-03-24 17:59:23', '2022-03-24 17:57:55', 'Need a sewing machine for old man', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', 4, 30),
(12, 2, 6, 1, 0, 1, 1, 1, 'Custom\\Needs', '2022-03-24 17:59:23', '2022-03-24 17:57:55', 'Need a sewing machine for old man', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', 4, 30);

-- --------------------------------------------------------

--
-- Table structure for table `custom_project`
--

CREATE TABLE `custom_project` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Project') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Project',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `ProjectName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectDiscription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectImageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_project`
--

INSERT INTO `custom_project` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `ProjectName`, `ProjectDiscription`, `ProjectImageID`) VALUES
(1, 'Custom\\Project', '2022-03-24 16:04:13', '2022-03-24 15:52:03', 11, 'SCHOOL ARTS', '<p>School Arts is a program organised by Kuzhalosai, in different schools across Tamil Nadu to help the kids understand the nature better while having fun and connecting with each other.</p><p>Join us in this school arts event! Help in creating a clean &amp; beautiful society through this artwork event</p><p>Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature are mandatory.(reduce the fond size for this or change colour for this sentence)</p>', 46),
(2, 'Custom\\Project', '2022-03-24 16:12:23', '2022-03-24 16:04:46', 4, 'KARKKA KASADARA ', '<p>KARKKA KASADARA is a great opportunity for children learning our side the schools. It is a free educational program organised locally at several locations, by our volunteers to help children to excel in their education and expand their knowledge wider. Currently, more than 1000 students benefit from this program, and we aim to expand our network.</p><p>Education is the most powerful weapon we can use to change the world.- Nelson Mandela</p><p>Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature is mandatory.(reduce the fond size for this or change color for this sentence)</p>', 47),
(3, 'Custom\\Project', '2022-03-24 16:13:18', '2022-03-24 16:05:25', 4, 'BHUMI -Webinar', '<p>Bhumi webinar is a knowledge-sharing program open to anyone who is caring about our environment. We often get experts to share their thoughts and increase awareness. We also organize plantation programs and awareness programs through this network.</p><p>The environment is where we all meet; where we all have a mutual interest; it is the one thing all of us share. -Lady Bird Johnson</p>', 48);

-- --------------------------------------------------------

--
-- Table structure for table `custom_projectspage`
--

CREATE TABLE `custom_projectspage` (
  `ID` int(11) NOT NULL,
  `HeadLine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_projectspage_live`
--

CREATE TABLE `custom_projectspage_live` (
  `ID` int(11) NOT NULL,
  `HeadLine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_projectspage_versions`
--

CREATE TABLE `custom_projectspage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `HeadLine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_project_live`
--

CREATE TABLE `custom_project_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Project') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Project',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `ProjectName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectDiscription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectImageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_project_live`
--

INSERT INTO `custom_project_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `ProjectName`, `ProjectDiscription`, `ProjectImageID`) VALUES
(1, 'Custom\\Project', '2022-03-24 16:04:13', '2022-03-24 15:52:03', 11, 'SCHOOL ARTS', '<p>School Arts is a program organised by Kuzhalosai, in different schools across Tamil Nadu to help the kids understand the nature better while having fun and connecting with each other.</p><p>Join us in this school arts event! Help in creating a clean &amp; beautiful society through this artwork event</p><p>Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature are mandatory.(reduce the fond size for this or change colour for this sentence)</p>', 46),
(2, 'Custom\\Project', '2022-03-24 16:12:23', '2022-03-24 16:04:46', 4, 'KARKKA KASADARA ', '<p>KARKKA KASADARA is a great opportunity for children learning our side the schools. It is a free educational program organised locally at several locations, by our volunteers to help children to excel in their education and expand their knowledge wider. Currently, more than 1000 students benefit from this program, and we aim to expand our network.</p><p>Education is the most powerful weapon we can use to change the world.- Nelson Mandela</p><p>Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature is mandatory.(reduce the fond size for this or change color for this sentence)</p>', 47),
(3, 'Custom\\Project', '2022-03-24 16:13:18', '2022-03-24 16:05:25', 4, 'BHUMI -Webinar', '<p>Bhumi webinar is a knowledge-sharing program open to anyone who is caring about our environment. We often get experts to share their thoughts and increase awareness. We also organize plantation programs and awareness programs through this network.</p><p>The environment is where we all meet; where we all have a mutual interest; it is the one thing all of us share. -Lady Bird Johnson</p>', 48);

-- --------------------------------------------------------

--
-- Table structure for table `custom_project_versions`
--

CREATE TABLE `custom_project_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('Custom\\Project') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Project',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ProjectName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectDiscription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectImageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_project_versions`
--

INSERT INTO `custom_project_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `ProjectName`, `ProjectDiscription`, `ProjectImageID`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 15:52:03', '2022-03-24 15:52:03', 'SCHOOL ARTS', NULL, 46),
(2, 1, 2, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 15:52:06', '2022-03-24 15:52:03', 'SCHOOL ARTS', NULL, 46),
(3, 1, 3, 1, 0, 1, 1, 1, 'Custom\\Project', '2022-03-24 15:52:06', '2022-03-24 15:52:03', 'SCHOOL ARTS', NULL, 46),
(4, 1, 4, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 15:52:32', '2022-03-24 15:52:03', 'SCHOOL ARTS', NULL, 46),
(5, 1, 5, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 15:53:40', '2022-03-24 15:52:03', 'SCHOOL ARTS', NULL, 46),
(6, 1, 6, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 15:53:47', '2022-03-24 15:52:03', 'SCHOOL ARTS', NULL, 46),
(7, 1, 7, 1, 0, 1, 1, 1, 'Custom\\Project', '2022-03-24 15:53:47', '2022-03-24 15:52:03', 'SCHOOL ARTS', NULL, 46),
(8, 1, 8, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 15:54:18', '2022-03-24 15:52:03', 'SCHOOL ARTS', NULL, 46),
(9, 1, 9, 1, 0, 1, 1, 1, 'Custom\\Project', '2022-03-24 15:55:44', '2022-03-24 15:52:03', 'SCHOOL ARTS', NULL, 46),
(10, 1, 10, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 16:04:11', '2022-03-24 15:52:03', 'SCHOOL ARTS', '<p>School Arts is a program organised by Kuzhalosai, in different schools across Tamil Nadu to help the kids understand the nature better while having fun and connecting with each other.</p><p>Join us in this school arts event! Help in creating a clean &amp; beautiful society through this artwork event</p><p>Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature are mandatory.(reduce the fond size for this or change colour for this sentence)</p>', 46),
(11, 1, 11, 1, 0, 1, 1, 1, 'Custom\\Project', '2022-03-24 16:04:13', '2022-03-24 15:52:03', 'SCHOOL ARTS', '<p>School Arts is a program organised by Kuzhalosai, in different schools across Tamil Nadu to help the kids understand the nature better while having fun and connecting with each other.</p><p>Join us in this school arts event! Help in creating a clean &amp; beautiful society through this artwork event</p><p>Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature are mandatory.(reduce the fond size for this or change colour for this sentence)</p>', 46),
(12, 2, 1, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 16:04:46', '2022-03-24 16:04:46', 'KARKKA KASADARA ', '<div>\n<div><span>&lt;</span><span>p</span><span>&gt;</span><span> KARKKA KASADARA is great opportunity for children learning our side the schools. It is free educational program organised locally at several locations, by our volunteers to help children to excel in their education and expand their knowledge wider. Currently, more than 1000 students benefit with this program, and we aim to expand our network.</span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n<div><span>&nbsp; &nbsp; &nbsp; &nbsp; </span><span>&lt;</span><span>p</span><span>&gt;</span><span>Education is the most powerful weapon we can use to change the world.- Neson Mandela</span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n<div><span>&nbsp; &nbsp; </span><span>&lt;</span><span>p</span><span>&gt;</span><span> Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature are mandatory.(reduce the fond size for this or change colour for this sentence)</span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n</div>', 47),
(13, 2, 2, 1, 0, 1, 1, 1, 'Custom\\Project', '2022-03-24 16:04:48', '2022-03-24 16:04:46', 'KARKKA KASADARA ', '<div>\n<div><span>&lt;</span><span>p</span><span>&gt;</span><span> KARKKA KASADARA is great opportunity for children learning our side the schools. It is free educational program organised locally at several locations, by our volunteers to help children to excel in their education and expand their knowledge wider. Currently, more than 1000 students benefit with this program, and we aim to expand our network.</span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n<div><span>&nbsp; &nbsp; &nbsp; &nbsp; </span><span>&lt;</span><span>p</span><span>&gt;</span><span>Education is the most powerful weapon we can use to change the world.- Neson Mandela</span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n<div><span>&nbsp; &nbsp; </span><span>&lt;</span><span>p</span><span>&gt;</span><span> Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature are mandatory.(reduce the fond size for this or change colour for this sentence)</span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n</div>', 47),
(14, 3, 1, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 16:05:25', '2022-03-24 16:05:25', 'BHUMI -Webinar', '<div>\n<div><span>&lt;</span><span>p</span><span>&gt;</span><span>Bhumi webinar is a knowledge-sharing program open to anyone who is caring about our environment. We often get experts to share their thoughts and increase awareness. We also organize plantation programs and awareness programs through this network.</span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n<div><span>&nbsp; &nbsp; &nbsp; &nbsp; </span><span>&lt;</span><span>p</span><span>&gt;</span><span>“The environment is where we all meet; where we all have a mutual interest; it is the one thing all of us share.”</span></div>\n<div><span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -Lady Bird Johnson</span></div>\n<div><span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n</div>', 48),
(15, 3, 2, 1, 0, 1, 1, 1, 'Custom\\Project', '2022-03-24 16:05:27', '2022-03-24 16:05:25', 'BHUMI -Webinar', '<div>\n<div><span>&lt;</span><span>p</span><span>&gt;</span><span>Bhumi webinar is a knowledge-sharing program open to anyone who is caring about our environment. We often get experts to share their thoughts and increase awareness. We also organize plantation programs and awareness programs through this network.</span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n<div><span>&nbsp; &nbsp; &nbsp; &nbsp; </span><span>&lt;</span><span>p</span><span>&gt;</span><span>“The environment is where we all meet; where we all have a mutual interest; it is the one thing all of us share.”</span></div>\n<div><span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -Lady Bird Johnson</span></div>\n<div><span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span>&lt;/</span><span>p</span><span>&gt;</span></div>\n</div>', 48),
(16, 2, 3, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 16:12:21', '2022-03-24 16:04:46', 'KARKKA KASADARA ', '<p>KARKKA KASADARA is a great opportunity for children learning our side the schools. It is a free educational program organised locally at several locations, by our volunteers to help children to excel in their education and expand their knowledge wider. Currently, more than 1000 students benefit from this program, and we aim to expand our network.</p><p>Education is the most powerful weapon we can use to change the world.- Nelson Mandela</p><p>Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature is mandatory.(reduce the fond size for this or change color for this sentence)</p>', 47),
(17, 2, 4, 1, 0, 1, 1, 1, 'Custom\\Project', '2022-03-24 16:12:23', '2022-03-24 16:04:46', 'KARKKA KASADARA ', '<p>KARKKA KASADARA is a great opportunity for children learning our side the schools. It is a free educational program organised locally at several locations, by our volunteers to help children to excel in their education and expand their knowledge wider. Currently, more than 1000 students benefit from this program, and we aim to expand our network.</p><p>Education is the most powerful weapon we can use to change the world.- Nelson Mandela</p><p>Please note following of COVID-19 safety protocols such as wearing masks, sanitization, taking temperature is mandatory.(reduce the fond size for this or change color for this sentence)</p>', 47),
(18, 3, 3, 0, 0, 1, 1, 0, 'Custom\\Project', '2022-03-24 16:13:16', '2022-03-24 16:05:25', 'BHUMI -Webinar', '<p>Bhumi webinar is a knowledge-sharing program open to anyone who is caring about our environment. We often get experts to share their thoughts and increase awareness. We also organize plantation programs and awareness programs through this network.</p><p>The environment is where we all meet; where we all have a mutual interest; it is the one thing all of us share. -Lady Bird Johnson</p>', 48),
(19, 3, 4, 1, 0, 1, 1, 1, 'Custom\\Project', '2022-03-24 16:13:18', '2022-03-24 16:05:25', 'BHUMI -Webinar', '<p>Bhumi webinar is a knowledge-sharing program open to anyone who is caring about our environment. We often get experts to share their thoughts and increase awareness. We also organize plantation programs and awareness programs through this network.</p><p>The environment is where we all meet; where we all have a mutual interest; it is the one thing all of us share. -Lady Bird Johnson</p>', 48);

-- --------------------------------------------------------

--
-- Table structure for table `custom_property`
--

CREATE TABLE `custom_property` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Property') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Property',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `Bedrooms` int(11) NOT NULL DEFAULT 0,
  `Bathrooms` int(11) NOT NULL DEFAULT 0,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AvailableStart` date DEFAULT NULL,
  `AvailableEnd` date DEFAULT NULL,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0,
  `MainTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ServiceID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_property`
--

INSERT INTO `custom_property` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `PricePerNight`, `Bedrooms`, `Bathrooms`, `FeaturedOnHomepage`, `Description`, `AvailableStart`, `AvailableEnd`, `RegionID`, `PrimaryPhotoID`, `MainTitle`, `ServiceID`) VALUES
(1, 'Custom\\Property', '2022-03-20 04:59:51', '2022-02-22 04:42:58', 37, 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 1, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', '2022-02-25', '2022-03-13', 1, 29, 'Please support Monika College fees', 3),
(2, 'Custom\\Property', '2022-03-20 11:45:42', '2022-03-02 22:32:01', 46, 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 30, 'Need a sewing machine for old man', 3);

-- --------------------------------------------------------

--
-- Table structure for table `custom_property_live`
--

CREATE TABLE `custom_property_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Property') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Property',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `Bedrooms` int(11) NOT NULL DEFAULT 0,
  `Bathrooms` int(11) NOT NULL DEFAULT 0,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AvailableStart` date DEFAULT NULL,
  `AvailableEnd` date DEFAULT NULL,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0,
  `MainTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ServiceID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_property_live`
--

INSERT INTO `custom_property_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `PricePerNight`, `Bedrooms`, `Bathrooms`, `FeaturedOnHomepage`, `Description`, `AvailableStart`, `AvailableEnd`, `RegionID`, `PrimaryPhotoID`, `MainTitle`, `ServiceID`) VALUES
(1, 'Custom\\Property', '2022-03-20 04:59:51', '2022-02-22 04:42:58', 37, 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 1, 1, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', '2022-02-25', '2022-03-13', 1, 29, 'Please support Monika College fees', 3),
(2, 'Custom\\Property', '2022-03-20 11:45:42', '2022-03-02 22:32:01', 46, 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 30, 'Need a sewing machine for old man', 3);

-- --------------------------------------------------------

--
-- Table structure for table `custom_property_versions`
--

CREATE TABLE `custom_property_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('Custom\\Property') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Property',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `Bedrooms` int(11) NOT NULL DEFAULT 0,
  `Bathrooms` int(11) NOT NULL DEFAULT 0,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AvailableStart` date DEFAULT NULL,
  `AvailableEnd` date DEFAULT NULL,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0,
  `MainTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ServiceID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_property_versions`
--

INSERT INTO `custom_property_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Title`, `PricePerNight`, `Bedrooms`, `Bathrooms`, `FeaturedOnHomepage`, `Description`, `AvailableStart`, `AvailableEnd`, `RegionID`, `PrimaryPhotoID`, `MainTitle`, `ServiceID`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-02-22 04:42:58', '2022-02-22 04:42:58', 'Best price in manuka', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 0, NULL, 0),
(2, 1, 2, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-02-22 04:43:01', '2022-02-22 04:42:58', 'Best price in manuka', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 0, NULL, 0),
(3, 1, 3, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-02-22 04:43:01', '2022-02-22 04:42:58', 'Best price in manuka', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 0, NULL, 0),
(4, 1, 4, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-02-22 04:43:50', '2022-02-22 04:42:58', 'Best price in manuka', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, NULL, 0),
(5, 1, 5, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-02-22 04:43:51', '2022-02-22 04:42:58', 'Best price in manuka', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, NULL, 0),
(6, 1, 6, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-02-22 04:43:51', '2022-02-22 04:42:58', 'Best price in manuka', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, NULL, 0),
(7, 1, 7, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-02-22 04:43:57', '2022-02-22 04:42:58', 'Best price in manuka', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, NULL, 0),
(8, 1, 8, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-02-22 04:43:57', '2022-02-22 04:42:58', 'Best price in manuka', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, NULL, 0),
(9, 2, 1, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 22:32:01', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 0, NULL, 0),
(10, 2, 2, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 22:32:34', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, NULL, 0),
(11, 2, 3, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 22:32:38', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, NULL, 0),
(12, 2, 4, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 22:32:38', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, NULL, 0),
(13, 3, 1, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 22:41:42', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 0, NULL, 0),
(14, 3, 2, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 22:41:52', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, NULL, 0),
(15, 3, 3, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 22:41:55', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, NULL, 0),
(16, 3, 4, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 22:41:55', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, NULL, 0),
(17, 3, 5, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 22:42:01', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, NULL, 0),
(18, 3, 6, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 22:42:01', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, NULL, 0),
(19, 2, 5, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:02:09', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote is properly', 0),
(20, 2, 6, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:02:11', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote is properly', 0),
(21, 2, 7, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:02:11', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote is properly', 0),
(22, 2, 8, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:02:27', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote is properly', 0),
(23, 2, 9, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:02:33', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote is properly', 0),
(24, 2, 10, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:02:33', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote is properly', 0),
(25, 3, 7, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:02:52', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(26, 3, 8, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:02:54', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(27, 3, 9, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:02:54', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(28, 1, 9, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:03:24', '2022-02-22 04:42:58', '34 Shortland Street, City', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(29, 1, 10, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:03:25', '2022-02-22 04:42:58', '34 Shortland Street, City', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(30, 1, 11, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:03:25', '2022-02-22 04:42:58', '34 Shortland Street, City', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(31, 2, 11, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:04:01', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(32, 2, 12, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:04:02', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(33, 2, 13, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:04:02', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(34, 2, 14, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:06:28', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(35, 2, 15, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:06:30', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(36, 2, 16, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:06:30', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The wow factor\r\nResidential house', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(37, 1, 12, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:06:46', '2022-02-22 04:42:58', '34 Shortland Street, City, Auckland', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(38, 1, 13, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:06:47', '2022-02-22 04:42:58', '34 Shortland Street, City, Auckland', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(39, 1, 14, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:06:47', '2022-02-22 04:42:58', '34 Shortland Street, City, Auckland', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(40, 1, 15, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:06:49', '2022-02-22 04:42:58', '34 Shortland Street, City, Auckland', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(41, 1, 16, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:06:51', '2022-02-22 04:42:58', '34 Shortland Street, City, Auckland', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(42, 1, 17, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:06:51', '2022-02-22 04:42:58', '34 Shortland Street, City, Auckland', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(43, 3, 10, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:07:03', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Northland', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(44, 3, 11, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:07:07', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Northland', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(45, 3, 12, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:07:07', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Northland', '200.00', 3, 4, 0, 'You will love to call it home?\r\nResidential house', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(46, 3, 13, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:10:52', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Northland', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and ...', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(47, 3, 14, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:10:54', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Northland', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and ...', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(48, 3, 15, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:10:54', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Northland', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and ...', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(49, 2, 17, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:11:03', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and ...', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(50, 2, 18, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:11:04', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and ...', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(51, 2, 19, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:11:04', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and ...', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(52, 2, 20, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:11:34', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(53, 2, 21, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:11:36', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(54, 2, 22, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:11:36', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(55, 2, 23, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:11:38', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(56, 2, 24, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:11:38', '2022-03-02 22:32:01', '78 Normans Hill Road, Onehunga, Auckland', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(57, 3, 16, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:11:53', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Northland', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(58, 3, 17, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-02 23:11:54', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Northland', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(59, 3, 18, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-02 23:11:54', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Northland', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(60, 3, 19, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:41:23', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(61, 3, 20, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:41:25', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(62, 3, 21, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:41:29', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(63, 3, 22, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:41:47', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(64, 3, 23, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:41:51', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(65, 3, 24, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:42:03', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(66, 3, 25, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:42:07', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(67, 4, 1, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:43:04', '2022-03-04 13:43:04', '20 Laud Avenue, Ellerslie, Auckland 1060', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 0, 'gjhvjkkljbkjbkjjbkl', 0),
(68, 4, 2, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:43:09', '2022-03-04 13:43:04', '20 Laud Avenue, Ellerslie, Auckland 1060', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 0, 'gjhvjkkljbkjbkjjbkl', 0),
(69, 3, 26, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:43:47', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(70, 3, 27, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:46:43', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(71, 3, 28, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:46:45', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(72, 4, 3, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:48:21', '2022-03-04 13:43:04', '20 Laud Avenue, Ellerslie, Auckland 1060', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(73, 4, 4, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:49:15', '2022-03-04 13:43:04', '20 Laud Avenue, Ellerslie, Auckland 1060', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(74, 4, 5, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-04 13:49:15', '2022-03-04 13:43:04', '20 Laud Avenue, Ellerslie, Auckland 1060', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(75, 3, 29, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:49:23', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(76, 3, 30, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-04 13:49:23', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(77, 3, 31, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:49:26', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(78, 3, 32, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 13:49:30', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(79, 3, 33, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-04 13:49:30', '2022-03-02 22:41:42', '20 Laud Avenue, Ellerslie, Auckland 1060', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(80, 4, 6, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 14:23:02', '2022-03-04 13:43:04', 'Corner Roy Place and, Orchard Road, Christchurch Airport, Christchurch 8052', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(81, 4, 7, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 14:23:15', '2022-03-04 13:43:04', 'Corner Roy Place and, Orchard Road, Christchurch Airport, Christchurch 8052', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(82, 4, 8, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-04 14:23:15', '2022-03-04 13:43:04', 'Corner Roy Place and, Orchard Road, Christchurch Airport, Christchurch 8052', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(83, 4, 9, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 14:23:25', '2022-03-04 13:43:04', 'Corner Roy Place and, Orchard Road, Christchurch Airport, Christchurch 8052', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(84, 4, 10, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 14:23:26', '2022-03-04 13:43:04', 'Corner Roy Place and, Orchard Road, Christchurch Airport, Christchurch 8052', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(85, 4, 11, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-04 14:23:26', '2022-03-04 13:43:04', 'Corner Roy Place and, Orchard Road, Christchurch Airport, Christchurch 8052', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(86, 3, 34, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 14:24:34', '2022-03-02 22:41:42', '491 Tay Street, Hawthorndale, Invercargill 9810', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(87, 3, 35, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 14:24:36', '2022-03-02 22:41:42', '491 Tay Street, Hawthorndale, Invercargill 9810', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(88, 3, 36, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-04 14:24:36', '2022-03-02 22:41:42', '491 Tay Street, Hawthorndale, Invercargill 9810', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(89, 3, 37, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 14:24:41', '2022-03-02 22:41:42', '491 Tay Street, Hawthorndale, Invercargill 9810', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(90, 3, 38, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-04 14:24:42', '2022-03-02 22:41:42', '491 Tay Street, Hawthorndale, Invercargill 9810', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(91, 3, 39, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-04 14:24:42', '2022-03-02 22:41:42', '491 Tay Street, Hawthorndale, Invercargill 9810', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(92, 4, 12, 1, 1, 1, 1, 1, 'Custom\\Property', '2022-03-13 04:38:01', '2022-03-04 13:43:04', 'Corner Roy Place and, Orchard Road, Christchurch Airport, Christchurch 8052', '10.00', 1, 1, 0, 'guygyihiluhbilubilbliblb', NULL, NULL, 1, 22, 'gjhvjkkljbkjbkjjbkl', 0),
(93, 3, 40, 1, 1, 1, 1, 1, 'Custom\\Property', '2022-03-13 04:38:12', '2022-03-02 22:41:42', '491 Tay Street, Hawthorndale, Invercargill 9810', '200.00', 3, 4, 1, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-17', '2022-03-24', 2, 21, 'Send your price quotes', 0),
(94, 1, 18, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-13 04:39:19', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(95, 1, 19, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-13 04:39:21', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(96, 1, 20, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-13 04:39:21', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '180.00', 1, 1, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', '2022-02-25', '2022-03-13', 1, 17, 'Best price in manuka', 0),
(97, 2, 25, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-13 05:53:57', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(98, 2, 26, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-13 05:53:59', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(99, 2, 27, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-13 05:53:59', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(100, 2, 28, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-13 05:54:02', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(101, 2, 29, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-13 05:54:02', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '190.00', 2, 3, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', '2022-03-03', '2022-03-06', 1, 20, 'Ensure your quote', 0),
(102, 1, 21, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:28:48', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '180.00', 0, 0, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', NULL, NULL, 1, 17, 'Please support Monika College fees', 0),
(103, 1, 22, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:28:50', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '180.00', 0, 0, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', NULL, NULL, 1, 17, 'Please support Monika College fees', 0),
(104, 1, 23, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 03:28:50', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '180.00', 0, 0, 1, 'Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.', NULL, NULL, 1, 17, 'Please support Monika College fees', 0),
(105, 1, 24, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:30:18', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 17, 'Please support Monika College fees', 0),
(106, 1, 25, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:30:19', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 17, 'Please support Monika College fees', 0),
(107, 1, 26, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 03:30:19', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 17, 'Please support Monika College fees', 0),
(108, 1, 27, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:52:00', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 28, 'Please support Monika College fees', 0),
(109, 1, 28, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 03:52:00', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 28, 'Please support Monika College fees', 0),
(110, 1, 29, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:52:03', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 28, 'Please support Monika College fees', 0),
(111, 1, 30, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:52:05', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 28, 'Please support Monika College fees', 0),
(112, 1, 31, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 03:52:05', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 28, 'Please support Monika College fees', 0),
(113, 1, 32, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:52:47', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 29, 'Please support Monika College fees', 0),
(114, 1, 33, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 03:52:47', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 29, 'Please support Monika College fees', 0),
(115, 1, 34, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:52:53', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 29, 'Please support Monika College fees', 0),
(116, 1, 35, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 03:52:53', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 1, 29, 'Please support Monika College fees', 0),
(117, 2, 30, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:56:15', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 1, 30, 'Ensure your quote', 0),
(118, 2, 31, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 03:56:15', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 1, 30, 'Ensure your quote', 0),
(119, 2, 32, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:57:34', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 1, 30, 'need a sewing machine for old man', 0),
(120, 2, 33, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:57:35', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 1, 30, 'need a sewing machine for old man', 0),
(121, 2, 34, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 03:57:35', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 1, 30, 'need a sewing machine for old man', 0),
(122, 2, 35, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 03:57:40', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 1, 30, 'need a sewing machine for old man', 0),
(123, 2, 36, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 03:57:40', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 1, 30, 'need a sewing machine for old man', 0),
(124, 1, 36, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 04:59:51', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 0, 29, 'Please support Monika College fees', 3),
(125, 1, 37, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 04:59:51', '2022-02-22 04:42:58', 'Pavazhakundur, Tiruvannamalai, Tamil Nadu 606601, India', '12000.00', 0, 0, 1, 'I honestly don’t know :( my mother does the same to me. I’ve had a job since I was a kid literally a kid! I was a child model. I started working in retail and restaurants when I was 15 I’m now 22 and about to graduate college. I fund all my own vacations, clothes, makeup and hair.', NULL, NULL, 0, 29, 'Please support Monika College fees', 3),
(126, 2, 37, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 05:00:02', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'need a sewing machine for old man', 3),
(127, 2, 38, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 05:00:03', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'need a sewing machine for old man', 3);
INSERT INTO `custom_property_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Title`, `PricePerNight`, `Bedrooms`, `Bathrooms`, `FeaturedOnHomepage`, `Description`, `AvailableStart`, `AvailableEnd`, `RegionID`, `PrimaryPhotoID`, `MainTitle`, `ServiceID`) VALUES
(128, 2, 39, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 05:00:03', '2022-03-02 22:32:01', '65, 70 Feet Rd, Ellis Nagar, Madurai, Tamil Nadu 625016, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'need a sewing machine for old man', 3),
(129, 2, 40, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 11:02:33', '2022-03-02 22:32:01', 'rachchcghc', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'need a sewing machine for old man', 3),
(130, 2, 41, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 11:06:21', '2022-03-02 22:32:01', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'need a sewing machine for old man', 3),
(131, 2, 42, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 11:06:22', '2022-03-02 22:32:01', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'need a sewing machine for old man', 3),
(132, 2, 43, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 11:06:22', '2022-03-02 22:32:01', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'need a sewing machine for old man', 3),
(133, 2, 44, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 11:45:40', '2022-03-02 22:32:01', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'Need a sewing machine for old man', 3),
(134, 2, 45, 0, 0, 1, 1, 0, 'Custom\\Property', '2022-03-20 11:45:42', '2022-03-02 22:32:01', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'Need a sewing machine for old man', 3),
(135, 2, 46, 1, 0, 1, 1, 1, 'Custom\\Property', '2022-03-20 11:45:42', '2022-03-02 22:32:01', 'S.P Kovil Street, Chidambaram, Tamil Nadu 608001, India', '15000.00', 0, 0, 0, 'The Place Autocomplete service is a web service that returns place predictions in response to an HTTP request. The request specifies a textual search string and Autocomplete is a feature', NULL, NULL, 0, 30, 'Need a sewing machine for old man', 3);

-- --------------------------------------------------------

--
-- Table structure for table `custom_region`
--

CREATE TABLE `custom_region` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Region') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Region',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `RegionsPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_region`
--

INSERT INTO `custom_region` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `Description`, `PhotoID`, `RegionsPageID`) VALUES
(1, 'Custom\\Region', '2022-03-12 08:43:24', '2022-02-22 04:35:02', 7, 'Auckland', '<div>\n<div><span>Our mission is to create a community where the need is met.</span></div>\n</div><h2>தேவை தீர்ந்த சமூகத்தை உருவாக்குவதே எமது நோக்கம்.</h2><p>உணவு மற்றும் தரமான கல்வியை ஊட்டுவதன் மூலமும் , பல்வேறு வழிநடலத்தல்களை வழங்குவதன் மூலமும் , சமூக நிகழ்வுகள் குறித்த விழிப்புணர்வை ஊக்கிவிப்பதன் மூலமும் , சுற்றுசூழலைப் பாதுகாத்தது துடிப்பதன் மூலமும், எளியோரைகளை சரியான திசையில் வழிகாட்டுதல் மூலம், அவசரநிலைகளிலிருந்து உயிர்களை மிட்ட்பதன் மூலமும், மனமது அடுத்த தலைமுறையை மனிதநேயம் மட்டும் சமூக பொறுப்புடன் உருவாக்குவதன் மூலமும் , பலதரப்படட மக்களுக்கு சிறந்த அன்றாட வாழ்கையை உருவாக்குவதே குழலோசையின் பணியாகும்.</p>', 13, 10),
(2, 'Custom\\Region', '2022-02-22 04:37:24', '2022-02-22 04:37:21', 2, 'Northland', '<p><span>The&nbsp;</span>Northland Region<sup id=\"cite_ref-ReorgOrder1989_1-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Northland_Region#cite_note-ReorgOrder1989-1\">[1]</a></sup><span>&nbsp;(</span><a title=\"Māori language\" href=\"https://en.wikipedia.org/wiki/M%C4%81ori_language\">Māori</a><span>:&nbsp;</span>Te Tai Tokerau<span>) is the northernmost of New Zealand\'s 16&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">local government regions</a><span>. New Zealanders sometimes refer to it as the Winterless North because of its mild climate all throughout the year. The main population centre is the city of&nbsp;</span><a title=\"Whangārei\" href=\"https://en.wikipedia.org/wiki/Whang%C4%81rei\">Whangārei</a><span>, and the largest town is&nbsp;</span><a title=\"Kerikeri\" href=\"https://en.wikipedia.org/wiki/Kerikeri\">Kerikeri</a><span>. At the&nbsp;</span><a title=\"2018 New Zealand census\" href=\"https://en.wikipedia.org/wiki/2018_New_Zealand_census\">2018 New Zealand census</a><span>, Northland recorded a surprising population growth spurt of 18.1% since the previous&nbsp;</span><a title=\"2013 New Zealand census\" href=\"https://en.wikipedia.org/wiki/2013_New_Zealand_census\">2013 census</a><span>, placing it as the fastest growing region in New Zealand, ahead of other strong growth regions such as the&nbsp;</span><a title=\"Bay of Plenty\" href=\"https://en.wikipedia.org/wiki/Bay_of_Plenty\">Bay of Plenty</a><span>&nbsp;(2nd with 15%) and&nbsp;</span><a title=\"Waikato\" href=\"https://en.wikipedia.org/wiki/Waikato\">Waikato</a><span>&nbsp;(3rd with 13.5%).</span><sup id=\"cite_ref-2\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Northland_Region#cite_note-2\">[2]</a></sup></p>', 14, 10),
(3, 'Custom\\Region', '2022-02-22 04:38:16', '2022-02-22 04:38:13', 2, 'Waikato', '<p><span>The&nbsp;</span>Waikato<span>&nbsp;(</span><span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"&#039;w&#039; in &#039;wind&#039;\">w</span><span title=\"/aɪ/: &#039;i&#039; in &#039;tide&#039;\">aɪ</span><span title=\"&#039;k&#039; in &#039;kind&#039;\">k</span><span title=\"/ɑː/: &#039;a&#039; in &#039;father&#039;\">ɑː</span><span title=\"&#039;t&#039; in &#039;tie&#039;\">t</span><span title=\"/ɔː/: &#039;au&#039; in &#039;fraud&#039;\">ɔː</span></span>/</a></span></span><span>&nbsp;or&nbsp;</span><span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"&#039;w&#039; in &#039;wind&#039;\">w</span><span title=\"/aɪ/: &#039;i&#039; in &#039;tide&#039;\">aɪ</span><span title=\"&#039;k&#039; in &#039;kind&#039;\">k</span><span title=\"/æ/: &#039;a&#039; in &#039;bad&#039;\">æ</span><span title=\"&#039;t&#039; in &#039;tie&#039;\">t</span><span title=\"/oʊ/: &#039;o&#039; in &#039;code&#039;\">oʊ</span></span>/</a></span></span><span>) is a&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">local government region</a><span>&nbsp;of the upper&nbsp;</span><a title=\"North Island\" href=\"https://en.wikipedia.org/wiki/North_Island\">North Island</a><span>&nbsp;of&nbsp;</span><a title=\"New Zealand\" href=\"https://en.wikipedia.org/wiki/New_Zealand\">New Zealand</a><span>. It covers the&nbsp;</span><a title=\"Waikato District\" href=\"https://en.wikipedia.org/wiki/Waikato_District\">Waikato District</a><span>,&nbsp;</span><a title=\"Waipa District\" href=\"https://en.wikipedia.org/wiki/Waipa_District\">Waipa District</a><span>,&nbsp;</span><a title=\"Matamata-Piako District\" href=\"https://en.wikipedia.org/wiki/Matamata-Piako_District\">Matamata-Piako District</a><span>,&nbsp;</span><a title=\"South Waikato District\" href=\"https://en.wikipedia.org/wiki/South_Waikato_District\">South Waikato District</a><span>&nbsp;and&nbsp;</span><a title=\"Hamilton, New Zealand\" href=\"https://en.wikipedia.org/wiki/Hamilton,_New_Zealand\">Hamilton City</a><span>, as well as&nbsp;</span><a title=\"Hauraki Plains\" href=\"https://en.wikipedia.org/wiki/Hauraki_Plains\">Hauraki</a><span>,&nbsp;</span><a title=\"Coromandel Peninsula\" href=\"https://en.wikipedia.org/wiki/Coromandel_Peninsula\">Coromandel Peninsula</a><span>, the northern&nbsp;</span><a title=\"King Country\" href=\"https://en.wikipedia.org/wiki/King_Country\">King Country</a><span>, much of the&nbsp;</span><a title=\"Taupō District\" href=\"https://en.wikipedia.org/wiki/Taup%C5%8D_District\">Taupō District</a><span>, and parts of&nbsp;</span><a title=\"Rotorua\" href=\"https://en.wikipedia.org/wiki/Rotorua\">Rotorua District</a><span>.</span><sup id=\"cite_ref-teara_overview_3-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Waikato#cite_note-teara_overview-3\">[3]</a></sup><span>&nbsp;It is governed by the Waikato Regional Council.</span></p>', 15, 10);

-- --------------------------------------------------------

--
-- Table structure for table `custom_region_live`
--

CREATE TABLE `custom_region_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Region') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Region',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `RegionsPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_region_live`
--

INSERT INTO `custom_region_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `Description`, `PhotoID`, `RegionsPageID`) VALUES
(1, 'Custom\\Region', '2022-03-12 08:43:24', '2022-02-22 04:35:02', 7, 'Auckland', '<div>\n<div><span>Our mission is to create a community where the need is met.</span></div>\n</div><h2>தேவை தீர்ந்த சமூகத்தை உருவாக்குவதே எமது நோக்கம்.</h2><p>உணவு மற்றும் தரமான கல்வியை ஊட்டுவதன் மூலமும் , பல்வேறு வழிநடலத்தல்களை வழங்குவதன் மூலமும் , சமூக நிகழ்வுகள் குறித்த விழிப்புணர்வை ஊக்கிவிப்பதன் மூலமும் , சுற்றுசூழலைப் பாதுகாத்தது துடிப்பதன் மூலமும், எளியோரைகளை சரியான திசையில் வழிகாட்டுதல் மூலம், அவசரநிலைகளிலிருந்து உயிர்களை மிட்ட்பதன் மூலமும், மனமது அடுத்த தலைமுறையை மனிதநேயம் மட்டும் சமூக பொறுப்புடன் உருவாக்குவதன் மூலமும் , பலதரப்படட மக்களுக்கு சிறந்த அன்றாட வாழ்கையை உருவாக்குவதே குழலோசையின் பணியாகும்.</p>', 13, 10),
(2, 'Custom\\Region', '2022-02-22 04:37:24', '2022-02-22 04:37:21', 2, 'Northland', '<p><span>The&nbsp;</span>Northland Region<sup id=\"cite_ref-ReorgOrder1989_1-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Northland_Region#cite_note-ReorgOrder1989-1\">[1]</a></sup><span>&nbsp;(</span><a title=\"Māori language\" href=\"https://en.wikipedia.org/wiki/M%C4%81ori_language\">Māori</a><span>:&nbsp;</span>Te Tai Tokerau<span>) is the northernmost of New Zealand\'s 16&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">local government regions</a><span>. New Zealanders sometimes refer to it as the Winterless North because of its mild climate all throughout the year. The main population centre is the city of&nbsp;</span><a title=\"Whangārei\" href=\"https://en.wikipedia.org/wiki/Whang%C4%81rei\">Whangārei</a><span>, and the largest town is&nbsp;</span><a title=\"Kerikeri\" href=\"https://en.wikipedia.org/wiki/Kerikeri\">Kerikeri</a><span>. At the&nbsp;</span><a title=\"2018 New Zealand census\" href=\"https://en.wikipedia.org/wiki/2018_New_Zealand_census\">2018 New Zealand census</a><span>, Northland recorded a surprising population growth spurt of 18.1% since the previous&nbsp;</span><a title=\"2013 New Zealand census\" href=\"https://en.wikipedia.org/wiki/2013_New_Zealand_census\">2013 census</a><span>, placing it as the fastest growing region in New Zealand, ahead of other strong growth regions such as the&nbsp;</span><a title=\"Bay of Plenty\" href=\"https://en.wikipedia.org/wiki/Bay_of_Plenty\">Bay of Plenty</a><span>&nbsp;(2nd with 15%) and&nbsp;</span><a title=\"Waikato\" href=\"https://en.wikipedia.org/wiki/Waikato\">Waikato</a><span>&nbsp;(3rd with 13.5%).</span><sup id=\"cite_ref-2\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Northland_Region#cite_note-2\">[2]</a></sup></p>', 14, 10),
(3, 'Custom\\Region', '2022-02-22 04:38:16', '2022-02-22 04:38:13', 2, 'Waikato', '<p><span>The&nbsp;</span>Waikato<span>&nbsp;(</span><span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"&#039;w&#039; in &#039;wind&#039;\">w</span><span title=\"/aɪ/: &#039;i&#039; in &#039;tide&#039;\">aɪ</span><span title=\"&#039;k&#039; in &#039;kind&#039;\">k</span><span title=\"/ɑː/: &#039;a&#039; in &#039;father&#039;\">ɑː</span><span title=\"&#039;t&#039; in &#039;tie&#039;\">t</span><span title=\"/ɔː/: &#039;au&#039; in &#039;fraud&#039;\">ɔː</span></span>/</a></span></span><span>&nbsp;or&nbsp;</span><span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"&#039;w&#039; in &#039;wind&#039;\">w</span><span title=\"/aɪ/: &#039;i&#039; in &#039;tide&#039;\">aɪ</span><span title=\"&#039;k&#039; in &#039;kind&#039;\">k</span><span title=\"/æ/: &#039;a&#039; in &#039;bad&#039;\">æ</span><span title=\"&#039;t&#039; in &#039;tie&#039;\">t</span><span title=\"/oʊ/: &#039;o&#039; in &#039;code&#039;\">oʊ</span></span>/</a></span></span><span>) is a&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">local government region</a><span>&nbsp;of the upper&nbsp;</span><a title=\"North Island\" href=\"https://en.wikipedia.org/wiki/North_Island\">North Island</a><span>&nbsp;of&nbsp;</span><a title=\"New Zealand\" href=\"https://en.wikipedia.org/wiki/New_Zealand\">New Zealand</a><span>. It covers the&nbsp;</span><a title=\"Waikato District\" href=\"https://en.wikipedia.org/wiki/Waikato_District\">Waikato District</a><span>,&nbsp;</span><a title=\"Waipa District\" href=\"https://en.wikipedia.org/wiki/Waipa_District\">Waipa District</a><span>,&nbsp;</span><a title=\"Matamata-Piako District\" href=\"https://en.wikipedia.org/wiki/Matamata-Piako_District\">Matamata-Piako District</a><span>,&nbsp;</span><a title=\"South Waikato District\" href=\"https://en.wikipedia.org/wiki/South_Waikato_District\">South Waikato District</a><span>&nbsp;and&nbsp;</span><a title=\"Hamilton, New Zealand\" href=\"https://en.wikipedia.org/wiki/Hamilton,_New_Zealand\">Hamilton City</a><span>, as well as&nbsp;</span><a title=\"Hauraki Plains\" href=\"https://en.wikipedia.org/wiki/Hauraki_Plains\">Hauraki</a><span>,&nbsp;</span><a title=\"Coromandel Peninsula\" href=\"https://en.wikipedia.org/wiki/Coromandel_Peninsula\">Coromandel Peninsula</a><span>, the northern&nbsp;</span><a title=\"King Country\" href=\"https://en.wikipedia.org/wiki/King_Country\">King Country</a><span>, much of the&nbsp;</span><a title=\"Taupō District\" href=\"https://en.wikipedia.org/wiki/Taup%C5%8D_District\">Taupō District</a><span>, and parts of&nbsp;</span><a title=\"Rotorua\" href=\"https://en.wikipedia.org/wiki/Rotorua\">Rotorua District</a><span>.</span><sup id=\"cite_ref-teara_overview_3-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Waikato#cite_note-teara_overview-3\">[3]</a></sup><span>&nbsp;It is governed by the Waikato Regional Council.</span></p>', 15, 10);

-- --------------------------------------------------------

--
-- Table structure for table `custom_region_versions`
--

CREATE TABLE `custom_region_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('Custom\\Region') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Region',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `RegionsPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_region_versions`
--

INSERT INTO `custom_region_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `PhotoID`, `RegionsPageID`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'Custom\\Region', '2022-02-22 04:35:02', '2022-02-22 04:35:02', 'Auckland', '<p><span>The&nbsp;</span>Auckland Region<span>&nbsp;(</span><a title=\"Māori language\" href=\"https://en.wikipedia.org/wiki/M%C4%81ori_language\">Māori</a><span>:&nbsp;</span>Tāmaki Makaurau<span>) is one of the sixteen&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">regions of New Zealand</a><span>, named for the city of&nbsp;</span><a title=\"Auckland\" href=\"https://en.wikipedia.org/wiki/Auckland\">Auckland</a><span>, the country\'s largest&nbsp;</span><a title=\"Urban area\" href=\"https://en.wikipedia.org/wiki/Urban_area\">urban area</a><span>. The region encompasses the Auckland metropolitan area, smaller towns, rural areas, and the islands of the&nbsp;</span><a class=\"mw-redirect\" title=\"Hauraki Gulf\" href=\"https://en.wikipedia.org/wiki/Hauraki_Gulf\">Hauraki Gulf</a><span>. Containing 33 percent of the nation\'s residents,</span><sup id=\"cite_ref-NZ_population_data_2018_2-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Auckland_Region#cite_note-NZ_population_data_2018-2\">[2]</a></sup><span>&nbsp;it has by far the largest population and economy of any region of New Zealand, but the second-smallest land area.</span></p>', 13, 10),
(2, 1, 2, 1, 0, 1, 1, 1, 'Custom\\Region', '2022-02-22 04:35:09', '2022-02-22 04:35:02', 'Auckland', '<p><span>The&nbsp;</span>Auckland Region<span>&nbsp;(</span><a title=\"Māori language\" href=\"https://en.wikipedia.org/wiki/M%C4%81ori_language\">Māori</a><span>:&nbsp;</span>Tāmaki Makaurau<span>) is one of the sixteen&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">regions of New Zealand</a><span>, named for the city of&nbsp;</span><a title=\"Auckland\" href=\"https://en.wikipedia.org/wiki/Auckland\">Auckland</a><span>, the country\'s largest&nbsp;</span><a title=\"Urban area\" href=\"https://en.wikipedia.org/wiki/Urban_area\">urban area</a><span>. The region encompasses the Auckland metropolitan area, smaller towns, rural areas, and the islands of the&nbsp;</span><a class=\"mw-redirect\" title=\"Hauraki Gulf\" href=\"https://en.wikipedia.org/wiki/Hauraki_Gulf\">Hauraki Gulf</a><span>. Containing 33 percent of the nation\'s residents,</span><sup id=\"cite_ref-NZ_population_data_2018_2-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Auckland_Region#cite_note-NZ_population_data_2018-2\">[2]</a></sup><span>&nbsp;it has by far the largest population and economy of any region of New Zealand, but the second-smallest land area.</span></p>', 13, 10),
(3, 2, 1, 0, 0, 1, 1, 0, 'Custom\\Region', '2022-02-22 04:37:21', '2022-02-22 04:37:21', 'Northland', '<p><span>The&nbsp;</span>Northland Region<sup id=\"cite_ref-ReorgOrder1989_1-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Northland_Region#cite_note-ReorgOrder1989-1\">[1]</a></sup><span>&nbsp;(</span><a title=\"Māori language\" href=\"https://en.wikipedia.org/wiki/M%C4%81ori_language\">Māori</a><span>:&nbsp;</span>Te Tai Tokerau<span>) is the northernmost of New Zealand\'s 16&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">local government regions</a><span>. New Zealanders sometimes refer to it as the Winterless North because of its mild climate all throughout the year. The main population centre is the city of&nbsp;</span><a title=\"Whangārei\" href=\"https://en.wikipedia.org/wiki/Whang%C4%81rei\">Whangārei</a><span>, and the largest town is&nbsp;</span><a title=\"Kerikeri\" href=\"https://en.wikipedia.org/wiki/Kerikeri\">Kerikeri</a><span>. At the&nbsp;</span><a title=\"2018 New Zealand census\" href=\"https://en.wikipedia.org/wiki/2018_New_Zealand_census\">2018 New Zealand census</a><span>, Northland recorded a surprising population growth spurt of 18.1% since the previous&nbsp;</span><a title=\"2013 New Zealand census\" href=\"https://en.wikipedia.org/wiki/2013_New_Zealand_census\">2013 census</a><span>, placing it as the fastest growing region in New Zealand, ahead of other strong growth regions such as the&nbsp;</span><a title=\"Bay of Plenty\" href=\"https://en.wikipedia.org/wiki/Bay_of_Plenty\">Bay of Plenty</a><span>&nbsp;(2nd with 15%) and&nbsp;</span><a title=\"Waikato\" href=\"https://en.wikipedia.org/wiki/Waikato\">Waikato</a><span>&nbsp;(3rd with 13.5%).</span><sup id=\"cite_ref-2\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Northland_Region#cite_note-2\">[2]</a></sup></p>', 14, 10),
(4, 2, 2, 1, 0, 1, 1, 1, 'Custom\\Region', '2022-02-22 04:37:24', '2022-02-22 04:37:21', 'Northland', '<p><span>The&nbsp;</span>Northland Region<sup id=\"cite_ref-ReorgOrder1989_1-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Northland_Region#cite_note-ReorgOrder1989-1\">[1]</a></sup><span>&nbsp;(</span><a title=\"Māori language\" href=\"https://en.wikipedia.org/wiki/M%C4%81ori_language\">Māori</a><span>:&nbsp;</span>Te Tai Tokerau<span>) is the northernmost of New Zealand\'s 16&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">local government regions</a><span>. New Zealanders sometimes refer to it as the Winterless North because of its mild climate all throughout the year. The main population centre is the city of&nbsp;</span><a title=\"Whangārei\" href=\"https://en.wikipedia.org/wiki/Whang%C4%81rei\">Whangārei</a><span>, and the largest town is&nbsp;</span><a title=\"Kerikeri\" href=\"https://en.wikipedia.org/wiki/Kerikeri\">Kerikeri</a><span>. At the&nbsp;</span><a title=\"2018 New Zealand census\" href=\"https://en.wikipedia.org/wiki/2018_New_Zealand_census\">2018 New Zealand census</a><span>, Northland recorded a surprising population growth spurt of 18.1% since the previous&nbsp;</span><a title=\"2013 New Zealand census\" href=\"https://en.wikipedia.org/wiki/2013_New_Zealand_census\">2013 census</a><span>, placing it as the fastest growing region in New Zealand, ahead of other strong growth regions such as the&nbsp;</span><a title=\"Bay of Plenty\" href=\"https://en.wikipedia.org/wiki/Bay_of_Plenty\">Bay of Plenty</a><span>&nbsp;(2nd with 15%) and&nbsp;</span><a title=\"Waikato\" href=\"https://en.wikipedia.org/wiki/Waikato\">Waikato</a><span>&nbsp;(3rd with 13.5%).</span><sup id=\"cite_ref-2\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Northland_Region#cite_note-2\">[2]</a></sup></p>', 14, 10),
(5, 3, 1, 0, 0, 1, 1, 0, 'Custom\\Region', '2022-02-22 04:38:13', '2022-02-22 04:38:13', 'Waikato', '<p><span>The&nbsp;</span>Waikato<span>&nbsp;(</span><span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"&#039;w&#039; in &#039;wind&#039;\">w</span><span title=\"/aɪ/: &#039;i&#039; in &#039;tide&#039;\">aɪ</span><span title=\"&#039;k&#039; in &#039;kind&#039;\">k</span><span title=\"/ɑː/: &#039;a&#039; in &#039;father&#039;\">ɑː</span><span title=\"&#039;t&#039; in &#039;tie&#039;\">t</span><span title=\"/ɔː/: &#039;au&#039; in &#039;fraud&#039;\">ɔː</span></span>/</a></span></span><span>&nbsp;or&nbsp;</span><span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"&#039;w&#039; in &#039;wind&#039;\">w</span><span title=\"/aɪ/: &#039;i&#039; in &#039;tide&#039;\">aɪ</span><span title=\"&#039;k&#039; in &#039;kind&#039;\">k</span><span title=\"/æ/: &#039;a&#039; in &#039;bad&#039;\">æ</span><span title=\"&#039;t&#039; in &#039;tie&#039;\">t</span><span title=\"/oʊ/: &#039;o&#039; in &#039;code&#039;\">oʊ</span></span>/</a></span></span><span>) is a&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">local government region</a><span>&nbsp;of the upper&nbsp;</span><a title=\"North Island\" href=\"https://en.wikipedia.org/wiki/North_Island\">North Island</a><span>&nbsp;of&nbsp;</span><a title=\"New Zealand\" href=\"https://en.wikipedia.org/wiki/New_Zealand\">New Zealand</a><span>. It covers the&nbsp;</span><a title=\"Waikato District\" href=\"https://en.wikipedia.org/wiki/Waikato_District\">Waikato District</a><span>,&nbsp;</span><a title=\"Waipa District\" href=\"https://en.wikipedia.org/wiki/Waipa_District\">Waipa District</a><span>,&nbsp;</span><a title=\"Matamata-Piako District\" href=\"https://en.wikipedia.org/wiki/Matamata-Piako_District\">Matamata-Piako District</a><span>,&nbsp;</span><a title=\"South Waikato District\" href=\"https://en.wikipedia.org/wiki/South_Waikato_District\">South Waikato District</a><span>&nbsp;and&nbsp;</span><a title=\"Hamilton, New Zealand\" href=\"https://en.wikipedia.org/wiki/Hamilton,_New_Zealand\">Hamilton City</a><span>, as well as&nbsp;</span><a title=\"Hauraki Plains\" href=\"https://en.wikipedia.org/wiki/Hauraki_Plains\">Hauraki</a><span>,&nbsp;</span><a title=\"Coromandel Peninsula\" href=\"https://en.wikipedia.org/wiki/Coromandel_Peninsula\">Coromandel Peninsula</a><span>, the northern&nbsp;</span><a title=\"King Country\" href=\"https://en.wikipedia.org/wiki/King_Country\">King Country</a><span>, much of the&nbsp;</span><a title=\"Taupō District\" href=\"https://en.wikipedia.org/wiki/Taup%C5%8D_District\">Taupō District</a><span>, and parts of&nbsp;</span><a title=\"Rotorua\" href=\"https://en.wikipedia.org/wiki/Rotorua\">Rotorua District</a><span>.</span><sup id=\"cite_ref-teara_overview_3-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Waikato#cite_note-teara_overview-3\">[3]</a></sup><span>&nbsp;It is governed by the Waikato Regional Council.</span></p>', 15, 10),
(6, 3, 2, 1, 0, 1, 1, 1, 'Custom\\Region', '2022-02-22 04:38:16', '2022-02-22 04:38:13', 'Waikato', '<p><span>The&nbsp;</span>Waikato<span>&nbsp;(</span><span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"&#039;w&#039; in &#039;wind&#039;\">w</span><span title=\"/aɪ/: &#039;i&#039; in &#039;tide&#039;\">aɪ</span><span title=\"&#039;k&#039; in &#039;kind&#039;\">k</span><span title=\"/ɑː/: &#039;a&#039; in &#039;father&#039;\">ɑː</span><span title=\"&#039;t&#039; in &#039;tie&#039;\">t</span><span title=\"/ɔː/: &#039;au&#039; in &#039;fraud&#039;\">ɔː</span></span>/</a></span></span><span>&nbsp;or&nbsp;</span><span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span><span title=\"/ˈ/: primary stress follows\">ˈ</span><span title=\"&#039;w&#039; in &#039;wind&#039;\">w</span><span title=\"/aɪ/: &#039;i&#039; in &#039;tide&#039;\">aɪ</span><span title=\"&#039;k&#039; in &#039;kind&#039;\">k</span><span title=\"/æ/: &#039;a&#039; in &#039;bad&#039;\">æ</span><span title=\"&#039;t&#039; in &#039;tie&#039;\">t</span><span title=\"/oʊ/: &#039;o&#039; in &#039;code&#039;\">oʊ</span></span>/</a></span></span><span>) is a&nbsp;</span><a title=\"Regions of New Zealand\" href=\"https://en.wikipedia.org/wiki/Regions_of_New_Zealand\">local government region</a><span>&nbsp;of the upper&nbsp;</span><a title=\"North Island\" href=\"https://en.wikipedia.org/wiki/North_Island\">North Island</a><span>&nbsp;of&nbsp;</span><a title=\"New Zealand\" href=\"https://en.wikipedia.org/wiki/New_Zealand\">New Zealand</a><span>. It covers the&nbsp;</span><a title=\"Waikato District\" href=\"https://en.wikipedia.org/wiki/Waikato_District\">Waikato District</a><span>,&nbsp;</span><a title=\"Waipa District\" href=\"https://en.wikipedia.org/wiki/Waipa_District\">Waipa District</a><span>,&nbsp;</span><a title=\"Matamata-Piako District\" href=\"https://en.wikipedia.org/wiki/Matamata-Piako_District\">Matamata-Piako District</a><span>,&nbsp;</span><a title=\"South Waikato District\" href=\"https://en.wikipedia.org/wiki/South_Waikato_District\">South Waikato District</a><span>&nbsp;and&nbsp;</span><a title=\"Hamilton, New Zealand\" href=\"https://en.wikipedia.org/wiki/Hamilton,_New_Zealand\">Hamilton City</a><span>, as well as&nbsp;</span><a title=\"Hauraki Plains\" href=\"https://en.wikipedia.org/wiki/Hauraki_Plains\">Hauraki</a><span>,&nbsp;</span><a title=\"Coromandel Peninsula\" href=\"https://en.wikipedia.org/wiki/Coromandel_Peninsula\">Coromandel Peninsula</a><span>, the northern&nbsp;</span><a title=\"King Country\" href=\"https://en.wikipedia.org/wiki/King_Country\">King Country</a><span>, much of the&nbsp;</span><a title=\"Taupō District\" href=\"https://en.wikipedia.org/wiki/Taup%C5%8D_District\">Taupō District</a><span>, and parts of&nbsp;</span><a title=\"Rotorua\" href=\"https://en.wikipedia.org/wiki/Rotorua\">Rotorua District</a><span>.</span><sup id=\"cite_ref-teara_overview_3-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Waikato#cite_note-teara_overview-3\">[3]</a></sup><span>&nbsp;It is governed by the Waikato Regional Council.</span></p>', 15, 10),
(7, 1, 3, 0, 0, 1, 1, 0, 'Custom\\Region', '2022-03-12 08:29:55', '2022-02-22 04:35:02', 'Auckland', '<p>தேவை தீர்ந்த சமூகத்தை உருவாக்குவதே எமது நோக்கம்.</p>', 13, 10),
(8, 1, 4, 1, 0, 1, 1, 1, 'Custom\\Region', '2022-03-12 08:29:57', '2022-02-22 04:35:02', 'Auckland', '<p>தேவை தீர்ந்த சமூகத்தை உருவாக்குவதே எமது நோக்கம்.</p>', 13, 10),
(9, 1, 5, 0, 0, 1, 1, 0, 'Custom\\Region', '2022-03-12 08:43:06', '2022-02-22 04:35:02', 'Auckland', '<div>\n<div><span>Our mission is to create a community where the need is met.</span></div>\n</div>', 13, 10),
(10, 1, 6, 0, 0, 1, 1, 0, 'Custom\\Region', '2022-03-12 08:43:23', '2022-02-22 04:35:02', 'Auckland', '<div>\n<div><span>Our mission is to create a community where the need is met.</span></div>\n</div><h2>தேவை தீர்ந்த சமூகத்தை உருவாக்குவதே எமது நோக்கம்.</h2><p>உணவு மற்றும் தரமான கல்வியை ஊட்டுவதன் மூலமும் , பல்வேறு வழிநடலத்தல்களை வழங்குவதன் மூலமும் , சமூக நிகழ்வுகள் குறித்த விழிப்புணர்வை ஊக்கிவிப்பதன் மூலமும் , சுற்றுசூழலைப் பாதுகாத்தது துடிப்பதன் மூலமும், எளியோரைகளை சரியான திசையில் வழிகாட்டுதல் மூலம், அவசரநிலைகளிலிருந்து உயிர்களை மிட்ட்பதன் மூலமும், மனமது அடுத்த தலைமுறையை மனிதநேயம் மட்டும் சமூக பொறுப்புடன் உருவாக்குவதன் மூலமும் , பலதரப்படட மக்களுக்கு சிறந்த அன்றாட வாழ்கையை உருவாக்குவதே குழலோசையின் பணியாகும்.</p>', 13, 10),
(11, 1, 7, 1, 0, 1, 1, 1, 'Custom\\Region', '2022-03-12 08:43:24', '2022-02-22 04:35:02', 'Auckland', '<div>\n<div><span>Our mission is to create a community where the need is met.</span></div>\n</div><h2>தேவை தீர்ந்த சமூகத்தை உருவாக்குவதே எமது நோக்கம்.</h2><p>உணவு மற்றும் தரமான கல்வியை ஊட்டுவதன் மூலமும் , பல்வேறு வழிநடலத்தல்களை வழங்குவதன் மூலமும் , சமூக நிகழ்வுகள் குறித்த விழிப்புணர்வை ஊக்கிவிப்பதன் மூலமும் , சுற்றுசூழலைப் பாதுகாத்தது துடிப்பதன் மூலமும், எளியோரைகளை சரியான திசையில் வழிகாட்டுதல் மூலம், அவசரநிலைகளிலிருந்து உயிர்களை மிட்ட்பதன் மூலமும், மனமது அடுத்த தலைமுறையை மனிதநேயம் மட்டும் சமூக பொறுப்புடன் உருவாக்குவதன் மூலமும் , பலதரப்படட மக்களுக்கு சிறந்த அன்றாட வாழ்கையை உருவாக்குவதே குழலோசையின் பணியாகும்.</p>', 13, 10);

-- --------------------------------------------------------

--
-- Table structure for table `custom_service`
--

CREATE TABLE `custom_service` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Service') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Service',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `ServicesPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_service`
--

INSERT INTO `custom_service` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `Description`, `PhotoID`, `ServicesPageID`) VALUES
(1, 'Custom\\Service', '2022-03-20 12:28:11', '2022-03-20 04:54:47', 16, 'Orphanage Service', '<p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3><strong>WHAT WE DO</strong></h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 34, 10),
(2, 'Custom\\Service', '2022-03-20 05:46:06', '2022-03-20 04:55:10', 6, 'Knowledge Sharing', NULL, 0, 10),
(3, 'Custom\\Service', '2022-03-20 05:46:49', '2022-03-20 04:55:34', 6, 'Personality Development', NULL, 0, 10),
(4, 'Custom\\Service', '2022-03-20 05:47:31', '2022-03-20 04:55:55', 6, 'Awareness Crew', NULL, 0, 10),
(5, 'Custom\\Service', '2022-03-20 05:48:05', '2022-03-20 04:56:09', 6, 'Information Sharing', NULL, 0, 10),
(6, 'Custom\\Service', '2022-03-20 05:48:51', '2022-03-20 04:56:24', 6, 'Single Parent Help', NULL, 0, 10),
(7, 'Custom\\Service', '2022-03-20 05:49:33', '2022-03-20 04:56:38', 6, 'Blood for Life ', NULL, 0, 10),
(8, 'Custom\\Service', '2022-03-20 05:50:15', '2022-03-20 04:56:54', 6, 'General Counselling ', NULL, 0, 10),
(9, 'Custom\\Service', '2022-03-20 05:50:47', '2022-03-20 04:57:14', 11, 'Emergency Rescue', NULL, 0, 10),
(10, 'Custom\\Service', '2022-03-20 05:51:12', '2022-03-20 04:57:47', 6, 'Eco Kuzhalosai', NULL, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `custom_servicespage`
--

CREATE TABLE `custom_servicespage` (
  `ID` int(11) NOT NULL,
  `HeadLine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_servicespage`
--

INSERT INTO `custom_servicespage` (`ID`, `HeadLine`, `SubText`) VALUES
(10, 'Who We Are', 'Create a community where the need is met.');

-- --------------------------------------------------------

--
-- Table structure for table `custom_servicespage_live`
--

CREATE TABLE `custom_servicespage_live` (
  `ID` int(11) NOT NULL,
  `HeadLine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_servicespage_live`
--

INSERT INTO `custom_servicespage_live` (`ID`, `HeadLine`, `SubText`) VALUES
(10, 'Who We Are', 'Create a community where the need is met.');

-- --------------------------------------------------------

--
-- Table structure for table `custom_servicespage_versions`
--

CREATE TABLE `custom_servicespage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `HeadLine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_servicespage_versions`
--

INSERT INTO `custom_servicespage_versions` (`ID`, `RecordID`, `Version`, `HeadLine`, `SubText`) VALUES
(1, 10, 20, 'Who We Are', 'Create a community where the need is met.'),
(2, 10, 21, 'Who We Are', 'Create a community where the need is met.');

-- --------------------------------------------------------

--
-- Table structure for table `custom_service_live`
--

CREATE TABLE `custom_service_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Service') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Service',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `ServicesPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_service_live`
--

INSERT INTO `custom_service_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `Description`, `PhotoID`, `ServicesPageID`) VALUES
(1, 'Custom\\Service', '2022-03-20 12:28:11', '2022-03-20 04:54:47', 16, 'Orphanage Service', '<p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3><strong>WHAT WE DO</strong></h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 34, 10),
(2, 'Custom\\Service', '2022-03-20 05:46:06', '2022-03-20 04:55:10', 6, 'Knowledge Sharing', NULL, 0, 10),
(3, 'Custom\\Service', '2022-03-20 05:46:49', '2022-03-20 04:55:34', 6, 'Personality Development', NULL, 0, 10),
(4, 'Custom\\Service', '2022-03-20 05:47:31', '2022-03-20 04:55:55', 6, 'Awareness Crew', NULL, 0, 10),
(5, 'Custom\\Service', '2022-03-20 05:48:05', '2022-03-20 04:56:09', 6, 'Information Sharing', NULL, 0, 10),
(6, 'Custom\\Service', '2022-03-20 05:48:51', '2022-03-20 04:56:24', 6, 'Single Parent Help', NULL, 0, 10),
(7, 'Custom\\Service', '2022-03-20 05:49:33', '2022-03-20 04:56:38', 6, 'Blood for Life ', NULL, 0, 10),
(8, 'Custom\\Service', '2022-03-20 05:50:15', '2022-03-20 04:56:54', 6, 'General Counselling ', NULL, 0, 10),
(9, 'Custom\\Service', '2022-03-20 05:50:47', '2022-03-20 04:57:14', 11, 'Emergency Rescue', NULL, 0, 10),
(10, 'Custom\\Service', '2022-03-20 05:51:12', '2022-03-20 04:57:47', 6, 'Eco Kuzhalosai', NULL, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `custom_service_versions`
--

CREATE TABLE `custom_service_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('Custom\\Service') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Service',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `ServicesPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_service_versions`
--

INSERT INTO `custom_service_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `PhotoID`, `ServicesPageID`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:54:47', '2022-03-20 04:54:47', 'ORPHANAGE SERVICE', NULL, 0, 10),
(2, 1, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:54:51', '2022-03-20 04:54:47', 'ORPHANAGE SERVICE', NULL, 0, 10),
(3, 1, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:54:51', '2022-03-20 04:54:47', 'ORPHANAGE SERVICE', NULL, 0, 10),
(4, 2, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:55:10', '2022-03-20 04:55:10', 'KNOWLEDGE SHARING', NULL, 0, 10),
(5, 2, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:55:12', '2022-03-20 04:55:10', 'KNOWLEDGE SHARING', NULL, 0, 10),
(6, 2, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:55:12', '2022-03-20 04:55:10', 'KNOWLEDGE SHARING', NULL, 0, 10),
(7, 3, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:55:34', '2022-03-20 04:55:34', 'PERSONALITY DEVELOPMENT', NULL, 0, 10),
(8, 3, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:55:36', '2022-03-20 04:55:34', 'PERSONALITY DEVELOPMENT', NULL, 0, 10),
(9, 3, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:55:36', '2022-03-20 04:55:34', 'PERSONALITY DEVELOPMENT', NULL, 0, 10),
(10, 4, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:55:55', '2022-03-20 04:55:55', 'AWARENESS CREW', NULL, 0, 10),
(11, 4, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:55:57', '2022-03-20 04:55:55', 'AWARENESS CREW', NULL, 0, 10),
(12, 4, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:55:57', '2022-03-20 04:55:55', 'AWARENESS CREW', NULL, 0, 10),
(13, 5, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:56:09', '2022-03-20 04:56:09', 'INFORMATION SHARING', NULL, 0, 10),
(14, 5, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:56:12', '2022-03-20 04:56:09', 'INFORMATION SHARING', NULL, 0, 10),
(15, 5, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:56:12', '2022-03-20 04:56:09', 'INFORMATION SHARING', NULL, 0, 10),
(16, 6, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:56:24', '2022-03-20 04:56:24', 'SINGLE PARENT HELP', NULL, 0, 10),
(17, 6, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:56:27', '2022-03-20 04:56:24', 'SINGLE PARENT HELP', NULL, 0, 10),
(18, 6, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:56:27', '2022-03-20 04:56:24', 'SINGLE PARENT HELP', NULL, 0, 10),
(19, 7, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:56:38', '2022-03-20 04:56:38', 'BLOOD FOR LIFE', NULL, 0, 10),
(20, 7, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:56:41', '2022-03-20 04:56:38', 'BLOOD FOR LIFE', NULL, 0, 10),
(21, 7, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:56:41', '2022-03-20 04:56:38', 'BLOOD FOR LIFE', NULL, 0, 10),
(22, 8, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:56:54', '2022-03-20 04:56:54', 'GENERAL COUNSELLING', NULL, 0, 10),
(23, 8, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:56:57', '2022-03-20 04:56:54', 'GENERAL COUNSELLING', NULL, 0, 10),
(24, 8, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:56:57', '2022-03-20 04:56:54', 'GENERAL COUNSELLING', NULL, 0, 10),
(25, 9, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:57:14', '2022-03-20 04:57:14', 'EMERGENCY RESCUE)', NULL, 0, 10),
(26, 9, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:57:17', '2022-03-20 04:57:14', 'EMERGENCY RESCUE)', NULL, 0, 10),
(27, 9, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:57:17', '2022-03-20 04:57:14', 'EMERGENCY RESCUE)', NULL, 0, 10),
(28, 9, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:57:21', '2022-03-20 04:57:14', 'EMERGENCY RESCUE', NULL, 0, 10),
(29, 9, 5, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:57:21', '2022-03-20 04:57:14', 'EMERGENCY RESCUE', NULL, 0, 10),
(30, 9, 6, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:57:23', '2022-03-20 04:57:14', 'EMERGENCY RESCUE', NULL, 0, 10),
(31, 9, 7, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:57:31', '2022-03-20 04:57:14', 'EMERGENCY RESCUE', NULL, 0, 10),
(32, 9, 8, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:57:31', '2022-03-20 04:57:14', 'EMERGENCY RESCUE', NULL, 0, 10),
(33, 10, 1, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:57:47', '2022-03-20 04:57:47', 'ECO KUZHALOSAI', NULL, 0, 10),
(34, 10, 2, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 04:57:50', '2022-03-20 04:57:47', 'ECO KUZHALOSAI', NULL, 0, 10),
(35, 10, 3, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 04:57:50', '2022-03-20 04:57:47', 'ECO KUZHALOSAI', NULL, 0, 10),
(36, 1, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:45:09', '2022-03-20 04:54:47', 'Orphanage Service', NULL, 0, 10),
(37, 1, 5, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:45:11', '2022-03-20 04:54:47', 'Orphanage Service', NULL, 0, 10),
(38, 1, 6, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:45:11', '2022-03-20 04:54:47', 'Orphanage Service', NULL, 0, 10),
(39, 2, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:46:04', '2022-03-20 04:55:10', 'Knowledge Sharing', NULL, 0, 10),
(40, 2, 5, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:46:06', '2022-03-20 04:55:10', 'Knowledge Sharing', NULL, 0, 10),
(41, 2, 6, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:46:06', '2022-03-20 04:55:10', 'Knowledge Sharing', NULL, 0, 10),
(42, 3, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:46:47', '2022-03-20 04:55:34', 'Personality Development', NULL, 0, 10),
(43, 3, 5, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:46:49', '2022-03-20 04:55:34', 'Personality Development', NULL, 0, 10),
(44, 3, 6, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:46:49', '2022-03-20 04:55:34', 'Personality Development', NULL, 0, 10),
(45, 4, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:47:30', '2022-03-20 04:55:55', 'Awareness Crew', NULL, 0, 10),
(46, 4, 5, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:47:31', '2022-03-20 04:55:55', 'Awareness Crew', NULL, 0, 10),
(47, 4, 6, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:47:31', '2022-03-20 04:55:55', 'Awareness Crew', NULL, 0, 10),
(48, 5, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:48:04', '2022-03-20 04:56:09', 'Information Sharing', NULL, 0, 10),
(49, 5, 5, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:48:05', '2022-03-20 04:56:09', 'Information Sharing', NULL, 0, 10),
(50, 5, 6, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:48:05', '2022-03-20 04:56:09', 'Information Sharing', NULL, 0, 10),
(51, 6, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:48:50', '2022-03-20 04:56:24', 'Single Parent Help', NULL, 0, 10),
(52, 6, 5, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:48:51', '2022-03-20 04:56:24', 'Single Parent Help', NULL, 0, 10),
(53, 6, 6, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:48:51', '2022-03-20 04:56:24', 'Single Parent Help', NULL, 0, 10),
(54, 7, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:49:26', '2022-03-20 04:56:38', 'Blood for Life ', NULL, 0, 10),
(55, 7, 5, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:49:33', '2022-03-20 04:56:38', 'Blood for Life ', NULL, 0, 10),
(56, 7, 6, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:49:33', '2022-03-20 04:56:38', 'Blood for Life ', NULL, 0, 10),
(57, 8, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:50:13', '2022-03-20 04:56:54', 'General Counselling ', NULL, 0, 10),
(58, 8, 5, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:50:15', '2022-03-20 04:56:54', 'General Counselling ', NULL, 0, 10),
(59, 8, 6, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:50:15', '2022-03-20 04:56:54', 'General Counselling ', NULL, 0, 10),
(60, 9, 9, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:50:46', '2022-03-20 04:57:14', 'Emergency Rescue', NULL, 0, 10),
(61, 9, 10, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:50:47', '2022-03-20 04:57:14', 'Emergency Rescue', NULL, 0, 10),
(62, 9, 11, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:50:47', '2022-03-20 04:57:14', 'Emergency Rescue', NULL, 0, 10),
(63, 10, 4, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:51:11', '2022-03-20 04:57:47', 'Eco Kuzhalosai', NULL, 0, 10),
(64, 10, 5, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 05:51:12', '2022-03-20 04:57:47', 'Eco Kuzhalosai', NULL, 0, 10),
(65, 10, 6, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 05:51:12', '2022-03-20 04:57:47', 'Eco Kuzhalosai', NULL, 0, 10),
(66, 1, 7, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 06:20:50', '2022-03-20 04:54:47', 'Orphanage Service', '<p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p>', 33, 10),
(67, 1, 8, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 06:20:53', '2022-03-20 04:54:47', 'Orphanage Service', '<p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p>', 33, 10),
(68, 1, 9, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 12:17:24', '2022-03-20 04:54:47', 'Orphanage Service', '<h3>WHY WE DO WHAT WE DO</h3><p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3>WHAT WE DO</h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 33, 10),
(69, 1, 10, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 12:17:51', '2022-03-20 04:54:47', 'Orphanage Service', '<h3>WHY WE DO WHAT WE DO</h3><p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3>WHAT WE DO</h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 33, 10),
(70, 1, 11, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 12:19:24', '2022-03-20 04:54:47', 'Orphanage Service', '<h3><strong>WHY WE DO WHAT WE DO</strong></h3><p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3><strong>WHAT WE DO</strong></h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 33, 10),
(71, 1, 12, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 12:19:25', '2022-03-20 04:54:47', 'Orphanage Service', '<h3><strong>WHY WE DO WHAT WE DO</strong></h3><p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3><strong>WHAT WE DO</strong></h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 33, 10),
(72, 1, 13, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 12:25:01', '2022-03-20 04:54:47', 'Orphanage Service', '<h3><strong>WHY WE DO WHAT WE DO</strong></h3><p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3><strong>WHAT WE DO</strong></h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 34, 10),
(73, 1, 14, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 12:25:02', '2022-03-20 04:54:47', 'Orphanage Service', '<h3><strong>WHY WE DO WHAT WE DO</strong></h3><p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3><strong>WHAT WE DO</strong></h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 34, 10),
(74, 1, 15, 0, 0, 1, 1, 0, 'Custom\\Service', '2022-03-20 12:28:03', '2022-03-20 04:54:47', 'Orphanage Service', '<p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3><strong>WHAT WE DO</strong></h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 34, 10),
(75, 1, 16, 1, 0, 1, 1, 1, 'Custom\\Service', '2022-03-20 12:28:11', '2022-03-20 04:54:47', 'Orphanage Service', '<p>Supporting vulnerable children creates more adaptive, productive, and healthy adults. These adults have healthier cognitive and character traits later on. Children with proper support also translate into a future society with reduced crime, increased workforce productivity, lower teenage pregnancy, and the development of other positive character traits. Most importantly, it creates stronger future families. Many adults with character flaws and chronic health and emotional struggles were once healthy children. Studies show early intervention in the lives of disadvantaged children is far more effective than rehabilitating them when they are adults. There is also nothing quite like seeing a child smile who hasn’t for some time.</p><h3><strong>WHAT WE DO</strong></h3><p>We seek out responsible children’s homes in need of additional support. We assess how we can help them meet the needs of the children in their care. Then we use our network of caring individuals to provide them with support tailored to their needs. The support we offer comes in two forms: monetary support and volunteer support.</p>', 34, 10);

-- --------------------------------------------------------

--
-- Table structure for table `custom_sponsor`
--

CREATE TABLE `custom_sponsor` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Sponsor') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Sponsor',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `SponserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserFacebookLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserWebsiteLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserTelNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TypeofSponser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MoreData` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserLogoID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_sponsor`
--

INSERT INTO `custom_sponsor` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `SponserName`, `SponserFacebookLink`, `SponserWebsiteLink`, `SponserTelNumber`, `SponserAddress`, `TypeofSponser`, `MoreData`, `SponserLogoID`) VALUES
(1, 'Custom\\Sponsor', '2022-03-24 14:38:40', '2022-03-24 13:52:37', 4, 'Tamil Nadu Government', 'https://www.tn.gov.in/job_opportunity', 'https://www.tn.gov.in/job_opportunity', '0223672717', 'lipsim data', 'goverment', 'regular sponser', 38),
(2, 'Custom\\Sponsor', '2022-03-24 14:38:14', '2022-03-24 13:55:58', 20, 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(3, 'Custom\\Sponsor', '2022-03-24 14:38:22', '2022-03-24 13:55:59', 9, 'Chennai Smart City', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '113231', 'ndfkgnkdfngkdfngkfngknf', 'goverment', 'rejkghethnghntfsghfgjl;f', 41),
(4, 'Custom\\Sponsor', '2022-03-24 14:38:33', '2022-03-24 14:10:26', 9, 'Chennai local goverment', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', 'goverment', NULL, 42),
(5, 'Custom\\Sponsor', '2022-03-24 16:40:54', '2022-03-24 14:42:47', 11, 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43),
(6, 'Custom\\Sponsor', '2022-03-24 16:40:40', '2022-03-24 14:44:58', 7, 'hcl', NULL, NULL, NULL, NULL, 'private', NULL, 44);

-- --------------------------------------------------------

--
-- Table structure for table `custom_sponsor_live`
--

CREATE TABLE `custom_sponsor_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Sponsor') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Sponsor',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `SponserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserFacebookLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserWebsiteLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserTelNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TypeofSponser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MoreData` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserLogoID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_sponsor_live`
--

INSERT INTO `custom_sponsor_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `SponserName`, `SponserFacebookLink`, `SponserWebsiteLink`, `SponserTelNumber`, `SponserAddress`, `TypeofSponser`, `MoreData`, `SponserLogoID`) VALUES
(1, 'Custom\\Sponsor', '2022-03-24 14:38:40', '2022-03-24 13:52:37', 4, 'Tamil Nadu Government', 'https://www.tn.gov.in/job_opportunity', 'https://www.tn.gov.in/job_opportunity', '0223672717', 'lipsim data', 'goverment', 'regular sponser', 38),
(2, 'Custom\\Sponsor', '2022-03-24 14:38:14', '2022-03-24 13:55:58', 20, 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(3, 'Custom\\Sponsor', '2022-03-24 14:38:22', '2022-03-24 13:55:59', 9, 'Chennai Smart City', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '113231', 'ndfkgnkdfngkdfngkfngknf', 'goverment', 'rejkghethnghntfsghfgjl;f', 41),
(4, 'Custom\\Sponsor', '2022-03-24 14:38:33', '2022-03-24 14:10:26', 9, 'Chennai local goverment', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', 'goverment', NULL, 42),
(5, 'Custom\\Sponsor', '2022-03-24 16:40:54', '2022-03-24 14:42:47', 11, 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43),
(6, 'Custom\\Sponsor', '2022-03-24 16:40:40', '2022-03-24 14:44:58', 7, 'hcl', NULL, NULL, NULL, NULL, 'private', NULL, 44);

-- --------------------------------------------------------

--
-- Table structure for table `custom_sponsor_versions`
--

CREATE TABLE `custom_sponsor_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('Custom\\Sponsor') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Sponsor',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SponserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserFacebookLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserWebsiteLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserTelNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TypeofSponser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MoreData` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SponserLogoID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_sponsor_versions`
--

INSERT INTO `custom_sponsor_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `SponserName`, `SponserFacebookLink`, `SponserWebsiteLink`, `SponserTelNumber`, `SponserAddress`, `TypeofSponser`, `MoreData`, `SponserLogoID`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 13:52:37', '2022-03-24 13:52:37', 'Tamil Nadu Government', 'https://www.tn.gov.in/job_opportunity', 'https://www.tn.gov.in/job_opportunity', '0223672717', 'lipsim data', '0', 'regular sponser', 38),
(2, 1, 2, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 13:52:40', '2022-03-24 13:52:37', 'Tamil Nadu Government', 'https://www.tn.gov.in/job_opportunity', 'https://www.tn.gov.in/job_opportunity', '0223672717', 'lipsim data', '0', 'regular sponser', 38),
(3, 2, 1, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 13:55:58', '2022-03-24 13:55:58', 'Tamil nadu Goverment', 'fb.com', 'fb.com', '11', NULL, '0', NULL, 0),
(4, 3, 1, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 13:55:59', '2022-03-24 13:55:59', 'Tamil nadu Goverment', 'fb.com', 'fb.com', '113231', NULL, '0', NULL, 0),
(5, 3, 2, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 13:56:13', '2022-03-24 13:55:59', 'Tamil nadu Goverment', 'fb.com', 'fb.com', '113231', 'ndfkgnkdfngkdfngkfngknf', '0', 'rejkghethnghntfsghfgjl;f', 39),
(6, 3, 3, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 13:56:19', '2022-03-24 13:55:59', 'Tamil nadu Goverment', 'fb.com', 'fb.com', '113231', 'ndfkgnkdfngkdfngkfngknf', '0', 'rejkghethnghntfsghfgjl;f', 39),
(7, 2, 2, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 13:56:36', '2022-03-24 13:55:58', 'Tamil nadu Goverment', 'fb.com', 'fb.com', '11', NULL, '0', NULL, 0),
(8, 2, 3, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 13:56:36', '2022-03-24 13:55:58', 'Tamil nadu Goverment', 'fb.com', 'fb.com', '11', NULL, '0', NULL, 0),
(9, 2, 4, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:08:47', '2022-03-24 13:55:58', 'Income tax department', 'fb.com', 'fb.com', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', '0', NULL, 40),
(10, 2, 5, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:08:51', '2022-03-24 13:55:58', 'Income tax department', 'fb.com', 'fb.com', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', '0', NULL, 40),
(11, 2, 6, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:08:51', '2022-03-24 13:55:58', 'Income tax department', 'fb.com', 'fb.com', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', '0', NULL, 40),
(12, 2, 7, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:08:55', '2022-03-24 13:55:58', 'Income tax department', 'fb.com', 'fb.com', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', '0', NULL, 40),
(13, 2, 8, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:08:55', '2022-03-24 13:55:58', 'Income tax department', 'fb.com', 'fb.com', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', '0', NULL, 40),
(14, 3, 4, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:09:24', '2022-03-24 13:55:59', 'Chennai Smart City', 'fb.com', 'fb.com', '113231', 'ndfkgnkdfngkdfngkfngknf', '0', 'rejkghethnghntfsghfgjl;f', 41),
(15, 3, 5, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:09:24', '2022-03-24 13:55:59', 'Chennai Smart City', 'fb.com', 'fb.com', '113231', 'ndfkgnkdfngkdfngkfngknf', '0', 'rejkghethnghntfsghfgjl;f', 41),
(16, 4, 1, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:10:26', '2022-03-24 14:10:26', 'Chennai local goverment', 'fb.com', 'fb.com', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', '0', NULL, 42),
(17, 4, 2, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:10:28', '2022-03-24 14:10:26', 'Chennai local goverment', 'fb.com', 'fb.com', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', '0', NULL, 42),
(18, 4, 3, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:10:28', '2022-03-24 14:10:26', 'Chennai local goverment', 'fb.com', 'fb.com', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', '0', NULL, 42),
(19, 2, 9, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:21:27', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', '0', NULL, 40),
(20, 2, 10, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:21:29', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', '0', NULL, 40),
(21, 2, 11, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:21:29', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', '0', NULL, 40),
(22, 3, 6, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:21:39', '2022-03-24 13:55:59', 'Chennai Smart City', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '113231', 'ndfkgnkdfngkdfngkfngknf', '0', 'rejkghethnghntfsghfgjl;f', 41),
(23, 3, 7, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:21:40', '2022-03-24 13:55:59', 'Chennai Smart City', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '113231', 'ndfkgnkdfngkdfngkfngknf', '0', 'rejkghethnghntfsghfgjl;f', 41),
(24, 4, 4, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:21:51', '2022-03-24 14:10:26', 'Chennai local goverment', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', '0', NULL, 42),
(25, 4, 5, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:21:52', '2022-03-24 14:10:26', 'Chennai local goverment', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', '0', NULL, 42),
(26, 4, 6, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:21:52', '2022-03-24 14:10:26', 'Chennai local goverment', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', '0', NULL, 42),
(27, 2, 12, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:37:56', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(28, 2, 13, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:37:56', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(29, 2, 14, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:37:58', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(30, 2, 15, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:38:05', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(31, 2, 16, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:38:05', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(32, 2, 17, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:38:07', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(33, 2, 18, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:38:12', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(34, 2, 19, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:38:14', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(35, 2, 20, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:38:14', '2022-03-24 13:55:58', 'Income tax department', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '11234234534', 'dfhgshjghjsdjhdjsdfjdghjdghjhgj', 'goverment', NULL, 40),
(36, 3, 8, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:38:22', '2022-03-24 13:55:59', 'Chennai Smart City', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '113231', 'ndfkgnkdfngkdfngkfngknf', 'goverment', 'rejkghethnghntfsghfgjl;f', 41),
(37, 3, 9, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:38:22', '2022-03-24 13:55:59', 'Chennai Smart City', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '113231', 'ndfkgnkdfngkdfngkfngknf', 'goverment', 'rejkghethnghntfsghfgjl;f', 41),
(38, 4, 7, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:38:32', '2022-03-24 14:10:26', 'Chennai local goverment', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', 'goverment', NULL, 42),
(39, 4, 8, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:38:33', '2022-03-24 14:10:26', 'Chennai local goverment', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', 'goverment', NULL, 42),
(40, 4, 9, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:38:33', '2022-03-24 14:10:26', 'Chennai local goverment', 'https://www.tn.gov.in/', 'https://www.tn.gov.in/', '13145364565', 'sdgsdfgsdhsghsghsghsdghghb', 'goverment', NULL, 42),
(41, 1, 3, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:38:40', '2022-03-24 13:52:37', 'Tamil Nadu Government', 'https://www.tn.gov.in/job_opportunity', 'https://www.tn.gov.in/job_opportunity', '0223672717', 'lipsim data', 'goverment', 'regular sponser', 38),
(42, 1, 4, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:38:40', '2022-03-24 13:52:37', 'Tamil Nadu Government', 'https://www.tn.gov.in/job_opportunity', 'https://www.tn.gov.in/job_opportunity', '0223672717', 'lipsim data', 'goverment', 'regular sponser', 38),
(43, 5, 1, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:42:47', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'provate', NULL, 43),
(44, 5, 2, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:42:49', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'provate', NULL, 43),
(45, 5, 3, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:42:49', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'provate', NULL, 43),
(46, 5, 4, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:44:20', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43),
(47, 5, 5, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:44:21', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43),
(48, 5, 6, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:44:21', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43),
(49, 6, 1, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:44:58', '2022-03-24 14:44:58', 'hcl', NULL, NULL, NULL, NULL, 'goverment', NULL, 44),
(50, 6, 2, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:45:00', '2022-03-24 14:44:58', 'hcl', NULL, NULL, NULL, NULL, 'goverment', NULL, 44),
(51, 6, 3, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 14:45:00', '2022-03-24 14:44:58', 'hcl', NULL, NULL, NULL, NULL, 'goverment', NULL, 44),
(52, 6, 4, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 14:45:10', '2022-03-24 14:44:58', 'hcl', NULL, NULL, NULL, NULL, 'goverment', NULL, 44),
(53, 6, 5, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 16:40:38', '2022-03-24 14:44:58', 'hcl', NULL, NULL, NULL, NULL, 'private', NULL, 44),
(54, 6, 6, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 16:40:40', '2022-03-24 14:44:58', 'hcl', NULL, NULL, NULL, NULL, 'private', NULL, 44),
(55, 6, 7, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 16:40:40', '2022-03-24 14:44:58', 'hcl', NULL, NULL, NULL, NULL, 'private', NULL, 44),
(56, 5, 7, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 16:40:49', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43),
(57, 5, 8, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 16:40:51', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43),
(58, 5, 9, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 16:40:51', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43),
(59, 5, 10, 0, 0, 1, 1, 0, 'Custom\\Sponsor', '2022-03-24 16:40:54', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43),
(60, 5, 11, 1, 0, 1, 1, 1, 'Custom\\Sponsor', '2022-03-24 16:40:54', '2022-03-24 14:42:47', 'TheHindu', 'https://www.thehindu.com/', 'https://www.thehindu.com/', '3213516', 'gjhfdjhghjh', 'private', NULL, 43);

-- --------------------------------------------------------

--
-- Table structure for table `custom_team`
--

CREATE TABLE `custom_team` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Team') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Team',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FacebookLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TwitterLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InstagramLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkinLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TeamPhotoID` int(11) NOT NULL DEFAULT 0,
  `TeamPageID` int(11) NOT NULL DEFAULT 0,
  `TeamAdminID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_team`
--

INSERT INTO `custom_team` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `Name`, `Description`, `FacebookLink`, `TwitterLink`, `InstagramLink`, `LinkinLink`, `TeamPhotoID`, `TeamPageID`, `TeamAdminID`) VALUES
(1, 'Custom\\Team', '2022-03-20 22:08:17', '2022-02-22 04:24:02', 19, 'Founder ', 'Rajesh Manivasakan', 'Every child deserves a quality life with love and care. Every child deserves to be happy, healthy, and safe. My dream is to provide them what they need, as a kid.', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 24, 0, 0),
(2, 'Custom\\Team', '2022-03-20 22:08:44', '2022-02-22 04:24:39', 16, 'Director-Operations', 'Sowbarnika Chandrasekar', 'Being a single parent is not easy in our society. Single mothers are juggling a lot to meet their needs financially. We are here to share their struggles on our shoulders.', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 25, 0, 0),
(3, 'Custom\\Team', '2022-03-20 22:09:05', '2022-02-22 04:25:12', 17, 'Director-Programmes', 'Balu Prasad', 'I really care for environment as same as I care for our kids. I strongly believe making our environment better is our duty as a citizen.', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 26, 0, 0),
(4, 'Custom\\Team', '2022-03-20 22:09:33', '2022-02-22 04:25:47', 22, 'Director-Internal Relations', 'Prabha Karan', 'We are a group of people who take care of society. I take care of our group while working for society.  ', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 27, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_teampage`
--

CREATE TABLE `custom_teampage` (
  `ID` int(11) NOT NULL,
  `Mailto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_teampage`
--

INSERT INTO `custom_teampage` (`ID`, `Mailto`, `SubmitText`) VALUES
(7, 'yathu.origami@gmail.com', '<p>Thank you for the submission&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `custom_teampage_live`
--

CREATE TABLE `custom_teampage_live` (
  `ID` int(11) NOT NULL,
  `Mailto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_teampage_live`
--

INSERT INTO `custom_teampage_live` (`ID`, `Mailto`, `SubmitText`) VALUES
(7, 'yathu.origami@gmail.com', '<p>Thank you for the submission&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `custom_teampage_versions`
--

CREATE TABLE `custom_teampage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Mailto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_teampage_versions`
--

INSERT INTO `custom_teampage_versions` (`ID`, `RecordID`, `Version`, `Mailto`, `SubmitText`) VALUES
(1, 7, 14, 'yathu.origami@gmail.com', '<p>Thank you for the submission&nbsp;</p>'),
(2, 7, 15, 'yathu.origami@gmail.com', '<p>Thank you for the submission&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `custom_team_live`
--

CREATE TABLE `custom_team_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Custom\\Team') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Team',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FacebookLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TwitterLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InstagramLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkinLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TeamPhotoID` int(11) NOT NULL DEFAULT 0,
  `TeamPageID` int(11) NOT NULL DEFAULT 0,
  `TeamAdminID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_team_live`
--

INSERT INTO `custom_team_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `Name`, `Description`, `FacebookLink`, `TwitterLink`, `InstagramLink`, `LinkinLink`, `TeamPhotoID`, `TeamPageID`, `TeamAdminID`) VALUES
(1, 'Custom\\Team', '2022-03-20 22:08:17', '2022-02-22 04:24:02', 19, 'Founder ', 'Rajesh Manivasakan', 'Every child deserves a quality life with love and care. Every child deserves to be happy, healthy, and safe. My dream is to provide them what they need, as a kid.', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 24, 0, 0),
(2, 'Custom\\Team', '2022-03-20 22:08:44', '2022-02-22 04:24:39', 16, 'Director-Operations', 'Sowbarnika Chandrasekar', 'Being a single parent is not easy in our society. Single mothers are juggling a lot to meet their needs financially. We are here to share their struggles on our shoulders.', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 25, 0, 0),
(3, 'Custom\\Team', '2022-03-20 22:09:05', '2022-02-22 04:25:12', 17, 'Director-Programmes', 'Balu Prasad', 'I really care for environment as same as I care for our kids. I strongly believe making our environment better is our duty as a citizen.', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 26, 0, 0),
(4, 'Custom\\Team', '2022-03-20 22:09:33', '2022-02-22 04:25:47', 22, 'Director-Internal Relations', 'Prabha Karan', 'We are a group of people who take care of society. I take care of our group while working for society.  ', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 27, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_team_versions`
--

CREATE TABLE `custom_team_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('Custom\\Team') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Team',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FacebookLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TwitterLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InstagramLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkinLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TeamPhotoID` int(11) NOT NULL DEFAULT 0,
  `TeamPageID` int(11) NOT NULL DEFAULT 0,
  `TeamAdminID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_team_versions`
--

INSERT INTO `custom_team_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Name`, `Description`, `FacebookLink`, `TwitterLink`, `InstagramLink`, `LinkinLink`, `TeamPhotoID`, `TeamPageID`, `TeamAdminID`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:24:02', '2022-02-22 04:24:02', 'Chief Executive Officer', 'Walter White', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 4, 0, 0),
(2, 1, 2, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:24:06', '2022-02-22 04:24:02', 'Chief Executive Officer', 'Walter White', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 4, 0, 0),
(3, 1, 3, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-02-22 04:24:06', '2022-02-22 04:24:02', 'Chief Executive Officer', 'Walter White', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 4, 0, 0),
(4, 2, 1, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:24:39', '2022-02-22 04:24:39', 'Product Manager', 'Sarah Jhonson', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 5, 0, 0),
(5, 2, 2, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:24:48', '2022-02-22 04:24:39', 'Product Manager', 'Sarah Jhonson', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 5, 0, 0),
(6, 2, 3, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-02-22 04:24:48', '2022-02-22 04:24:39', 'Product Manager', 'Sarah Jhonson', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 5, 0, 0),
(7, 3, 1, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:25:12', '2022-02-22 04:25:12', 'CTO', 'William Anderson', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 0, 0, 0),
(8, 3, 2, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:25:24', '2022-02-22 04:25:12', 'CTO', 'William Anderson', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 6, 0, 0),
(9, 3, 3, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:25:26', '2022-02-22 04:25:12', 'CTO', 'William Anderson', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 6, 0, 0),
(10, 3, 4, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-02-22 04:25:26', '2022-02-22 04:25:12', 'CTO', 'William Anderson', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 6, 0, 0),
(11, 4, 1, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:25:47', '2022-02-22 04:25:47', 'Accountant', 'Amanda Jepson', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 0, 0, 0),
(12, 4, 2, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:25:57', '2022-02-22 04:25:47', 'Accountant', 'Amanda Jepson', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 7, 0, 0),
(13, 4, 3, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:25:59', '2022-02-22 04:25:47', 'Accountant', 'Amanda Jepson', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 7, 0, 0),
(14, 4, 4, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-02-22 04:25:59', '2022-02-22 04:25:47', 'Accountant', 'Amanda Jepson', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 7, 0, 0),
(15, 4, 5, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-02-22 04:26:02', '2022-02-22 04:25:47', 'Accountant', 'Amanda Jepson', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 7, 0, 0),
(16, 4, 6, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-02-22 04:26:02', '2022-02-22 04:25:47', 'Accountant', 'Amanda Jepson', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 7, 0, 0),
(17, 1, 4, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-12 08:53:22', '2022-02-22 04:24:02', 'Chief Executive Officer', 'Rajesh', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 4, 0, 0),
(18, 1, 5, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-12 08:53:23', '2022-02-22 04:24:02', 'Chief Executive Officer', 'Rajesh', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 4, 0, 0),
(19, 1, 6, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-12 08:53:23', '2022-02-22 04:24:02', 'Chief Executive Officer', 'Rajesh', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 4, 0, 0),
(20, 1, 7, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 01:18:14', '2022-02-22 04:24:02', 'Chief Executive Officer', 'Rajesh Manivasakan', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 24, 0, 0),
(21, 1, 8, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 01:18:16', '2022-02-22 04:24:02', 'Chief Executive Officer', 'Rajesh Manivasakan', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 24, 0, 0),
(22, 1, 9, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 01:18:16', '2022-02-22 04:24:02', 'Chief Executive Officer', 'Rajesh Manivasakan', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 24, 0, 0),
(23, 2, 4, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:15:58', '2022-02-22 04:24:39', 'Product Manager', 'Sowbarnika Chandrasekar', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 25, 0, 0),
(24, 2, 5, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:15:58', '2022-02-22 04:24:39', 'Product Manager', 'Sowbarnika Chandrasekar', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 25, 0, 0),
(25, 2, 6, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:16:01', '2022-02-22 04:24:39', 'Product Manager', 'Sowbarnika Chandrasekar', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 25, 0, 0),
(26, 2, 7, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:16:01', '2022-02-22 04:24:39', 'Product Manager', 'Sowbarnika Chandrasekar', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 25, 0, 0),
(27, 3, 5, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:29:00', '2022-02-22 04:25:12', 'CTO', 'Balu Prasad', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 26, 0, 0),
(28, 3, 6, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:29:03', '2022-02-22 04:25:12', 'CTO', 'Balu Prasad', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 26, 0, 0),
(29, 3, 7, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:29:03', '2022-02-22 04:25:12', 'CTO', 'Balu Prasad', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 26, 0, 0),
(30, 4, 7, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:31:15', '2022-02-22 04:25:47', 'Accountant', 'Prabha Karan', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 27, 0, 0),
(31, 4, 8, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:31:16', '2022-02-22 04:25:47', 'Accountant', 'Prabha Karan', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 27, 0, 0),
(32, 4, 9, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:31:16', '2022-02-22 04:25:47', 'Accountant', 'Prabha Karan', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 27, 0, 0),
(33, 4, 10, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:31:18', '2022-02-22 04:25:47', 'Accountant', 'Prabha Karan', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 27, 0, 0),
(34, 4, 11, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:31:18', '2022-02-22 04:25:47', 'Accountant', 'Prabha Karan', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 27, 0, 0),
(35, 3, 8, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:32:51', '2022-02-22 04:25:12', 'Team Member', 'Balu Prasad', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 26, 0, 0),
(36, 3, 9, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:32:53', '2022-02-22 04:25:12', 'Team Member', 'Balu Prasad', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 26, 0, 0),
(37, 3, 10, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:32:53', '2022-02-22 04:25:12', 'Team Member', 'Balu Prasad', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 26, 0, 0),
(38, 2, 8, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:33:32', '2022-02-22 04:24:39', 'Team Member', 'Sowbarnika Chandrasekar', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 25, 0, 0),
(39, 2, 9, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:33:54', '2022-02-22 04:24:39', 'Team Member', 'Sowbarnika Chandrasekar', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 25, 0, 0),
(40, 2, 10, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:33:55', '2022-02-22 04:24:39', 'Team Member', 'Sowbarnika Chandrasekar', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 25, 0, 0),
(41, 1, 10, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:34:21', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 24, 0, 0),
(42, 1, 11, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:34:22', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 24, 0, 0),
(43, 1, 12, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:34:22', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', 'Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.', NULL, NULL, NULL, NULL, 24, 0, 0),
(44, 4, 12, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:34:41', '2022-02-22 04:25:47', 'Team Member', 'Prabha Karan', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 27, 0, 0),
(45, 4, 13, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:34:43', '2022-02-22 04:25:47', 'Team Member', 'Prabha Karan', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 27, 0, 0),
(46, 4, 14, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:34:43', '2022-02-22 04:25:47', 'Team Member', 'Prabha Karan', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 27, 0, 0),
(47, 2, 11, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:44:56', '2022-02-22 04:24:39', 'Director-Operations', 'Sowbarnika Chandrasekar', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 25, 0, 0),
(48, 2, 12, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:44:56', '2022-02-22 04:24:39', 'Director-Operations', 'Sowbarnika Chandrasekar', 'Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.', NULL, NULL, NULL, NULL, 25, 0, 0),
(49, 3, 11, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:45:12', '2022-02-22 04:25:12', 'Director-Programmes', 'Balu Prasad', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 26, 0, 0),
(50, 3, 12, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:45:13', '2022-02-22 04:25:12', 'Director-Programmes', 'Balu Prasad', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 26, 0, 0),
(51, 3, 13, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:45:13', '2022-02-22 04:25:12', 'Director-Programmes', 'Balu Prasad', 'Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.', NULL, NULL, NULL, NULL, 26, 0, 0),
(52, 4, 15, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:45:30', '2022-02-22 04:25:47', 'Director-Internal Relations', 'Prabha Karan', 'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid doloremque ut possimus ipsum officia.', NULL, NULL, NULL, NULL, 27, 0, 0),
(53, 1, 13, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:46:13', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', '\" To create awareness on various social issues, work towards a clean and green environment and enhance societal well-being\"', NULL, NULL, NULL, NULL, 24, 0, 0),
(54, 1, 14, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:46:15', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', '\" To create awareness on various social issues, work towards a clean and green environment and enhance societal well-being\"', NULL, NULL, NULL, NULL, 24, 0, 0),
(55, 1, 15, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:46:15', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', '\" To create awareness on various social issues, work towards a clean and green environment and enhance societal well-being\"', NULL, NULL, NULL, NULL, 24, 0, 0),
(56, 1, 16, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:46:38', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', '\" To create awareness on various social issues, work towards a clean and green environment and enhance societal well-being\"', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 24, 0, 0),
(57, 1, 17, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:46:41', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', '\" To create awareness on various social issues, work towards a clean and green environment and enhance societal well-being\"', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 24, 0, 0),
(58, 2, 13, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:48:21', '2022-02-22 04:24:39', 'Director-Operations', 'Sowbarnika Chandrasekar', 'This vast reduction in green cover has decreased the water table levels, reduced biodiversity, and even lowered the quality of the air we breathe daily.', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 25, 0, 0),
(59, 2, 14, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:48:22', '2022-02-22 04:24:39', 'Director-Operations', 'Sowbarnika Chandrasekar', 'This vast reduction in green cover has decreased the water table levels, reduced biodiversity, and even lowered the quality of the air we breathe daily.', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 25, 0, 0),
(60, 3, 14, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:49:16', '2022-02-22 04:25:12', 'Director-Programmes', 'Balu Prasad', 'Once the plantation is done seamlessly, methodologically, and regularly maintained for some time', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 26, 0, 0),
(61, 3, 15, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:49:17', '2022-02-22 04:25:12', 'Director-Programmes', 'Balu Prasad', 'Once the plantation is done seamlessly, methodologically, and regularly maintained for some time', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 26, 0, 0),
(62, 4, 16, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:49:37', '2022-02-22 04:25:47', 'Director-Internal Relations', 'Prabha Karan', 'it can be seen that the forest growth is 10x times faster and 30x times denser', NULL, NULL, NULL, NULL, 27, 0, 0),
(63, 4, 17, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:49:38', '2022-02-22 04:25:47', 'Director-Internal Relations', 'Prabha Karan', 'it can be seen that the forest growth is 10x times faster and 30x times denser', NULL, NULL, NULL, NULL, 27, 0, 0),
(64, 4, 18, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:49:38', '2022-02-22 04:25:47', 'Director-Internal Relations', 'Prabha Karan', 'it can be seen that the forest growth is 10x times faster and 30x times denser', NULL, NULL, NULL, NULL, 27, 0, 0),
(65, 4, 19, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 02:50:12', '2022-02-22 04:25:47', 'Director-Internal Relations', 'Prabha Karan', 'it can be seen that the forest growth is 10x times faster and 30x times denser', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 27, 0, 0),
(66, 4, 20, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 02:50:14', '2022-02-22 04:25:47', 'Director-Internal Relations', 'Prabha Karan', 'it can be seen that the forest growth is 10x times faster and 30x times denser', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 27, 0, 0),
(67, 1, 18, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 22:08:15', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', 'Every child deserves a quality life with love and care. Every child deserves to be happy, healthy, and safe. My dream is to provide them what they need, as a kid.', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 24, 0, 0),
(68, 1, 19, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 22:08:17', '2022-02-22 04:24:02', 'Founder ', 'Rajesh Manivasakan', 'Every child deserves a quality life with love and care. Every child deserves to be happy, healthy, and safe. My dream is to provide them what they need, as a kid.', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 'https://www.facebook.com/rajesh.manivasagan/', 24, 0, 0),
(69, 2, 15, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 22:08:42', '2022-02-22 04:24:39', 'Director-Operations', 'Sowbarnika Chandrasekar', 'Being a single parent is not easy in our society. Single mothers are juggling a lot to meet their needs financially. We are here to share their struggles on our shoulders.', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 25, 0, 0),
(70, 2, 16, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 22:08:44', '2022-02-22 04:24:39', 'Director-Operations', 'Sowbarnika Chandrasekar', 'Being a single parent is not easy in our society. Single mothers are juggling a lot to meet their needs financially. We are here to share their struggles on our shoulders.', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 'https://www.facebook.com/shakthi.sri.54', 25, 0, 0),
(71, 3, 16, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 22:09:03', '2022-02-22 04:25:12', 'Director-Programmes', 'Balu Prasad', 'I really care for environment as same as I care for our kids. I strongly believe making our environment better is our duty as a citizen.', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 26, 0, 0),
(72, 3, 17, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 22:09:05', '2022-02-22 04:25:12', 'Director-Programmes', 'Balu Prasad', 'I really care for environment as same as I care for our kids. I strongly believe making our environment better is our duty as a citizen.', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 'https://www.facebook.com/LBprasad', 26, 0, 0),
(73, 4, 21, 0, 0, 1, 1, 0, 'Custom\\Team', '2022-03-20 22:09:31', '2022-02-22 04:25:47', 'Director-Internal Relations', 'Prabha Karan', 'We are a group of people who take care of society. I take care of our group while working for society.  ', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 27, 0, 0),
(74, 4, 22, 1, 0, 1, 1, 1, 'Custom\\Team', '2022-03-20 22:09:33', '2022-02-22 04:25:47', 'Director-Internal Relations', 'Prabha Karan', 'We are a group of people who take care of society. I take care of our group while working for society.  ', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 'https://www.facebook.com/prabha.kutty.902', 27, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage`
--

CREATE TABLE `errorpage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errorpage`
--

INSERT INTO `errorpage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_live`
--

CREATE TABLE `errorpage_live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errorpage_live`
--

INSERT INTO `errorpage_live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_versions`
--

CREATE TABLE `errorpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `ErrorCode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errorpage_versions`
--

INSERT INTO `errorpage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 4, 2, 404),
(3, 5, 1, 500),
(4, 5, 2, 500),
(5, 6, 4, 400),
(6, 6, 5, 400),
(7, 4, 3, 404),
(8, 4, 4, 404);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `FileHash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 'SilverStripe\\Assets\\Folder', '2022-02-21 22:40:11', '2022-02-21 22:40:11', 2, 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(2, 'SilverStripe\\Assets\\Folder', '2022-02-21 23:36:09', '2022-02-21 23:36:09', 2, 'Inherit', 'Inherit', 'Hero-photos', 'Hero-photos', 1, 0, 1, NULL, NULL, NULL),
(3, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:21:39', '2022-02-22 04:21:39', 2, 'Inherit', 'Inherit', 'team-photos', 'team-photos', 1, 0, 1, NULL, NULL, NULL),
(4, 'SilverStripe\\Assets\\Image', '2022-02-22 04:24:06', '2022-02-22 04:24:00', 2, 'Inherit', 'Inherit', 'team-1-v2.jpg', 'team 1 v2', 1, 3, 1, 'b7f047be2174377dec078e764591dd4f2d579b9b', 'team-photos/team-1-v2.jpg', NULL),
(5, 'SilverStripe\\Assets\\Image', '2022-02-22 04:24:48', '2022-02-22 04:24:18', 2, 'Inherit', 'Inherit', 'team-2-v2.jpg', 'team 2 v2', 1, 3, 1, '1c76321f60efa09d5033f7d97a7c022354a45c21', 'team-photos/team-2-v2.jpg', NULL),
(6, 'SilverStripe\\Assets\\Image', '2022-02-22 04:25:26', '2022-02-22 04:25:22', 2, 'Inherit', 'Inherit', 'team-3-v2.jpg', 'team 3 v2', 1, 3, 1, '67671c25db2e0e305c6c5ccf5b097a92b1c44159', 'team-photos/team-3-v2.jpg', NULL),
(7, 'SilverStripe\\Assets\\Image', '2022-02-22 04:25:59', '2022-02-22 04:25:53', 2, 'Inherit', 'Inherit', 'team-4-v2.jpg', 'team 4 v2', 1, 3, 1, 'd6b5eaceee9095b97ad6ccc08218b583bdb3e004', 'team-photos/team-4-v2.jpg', NULL),
(8, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:29:16', '2022-02-22 04:29:16', 2, 'Inherit', 'Inherit', 'Blog-CoverPhotos', 'Blog-CoverPhotos', 1, 0, 1, NULL, NULL, NULL),
(9, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:29:16', '2022-02-22 04:29:16', 2, 'Inherit', 'Inherit', 'Author-Images', 'Author-Images', 1, 0, 1, NULL, NULL, NULL),
(10, 'SilverStripe\\Assets\\Image', '2022-02-22 04:32:32', '2022-02-22 04:32:17', 2, 'Inherit', 'Inherit', 'blog-1-v4.jpg', 'blog 1 v4', 1, 8, 1, 'f4ae1e60740adabdb4f212182d31720d04abd417', 'Blog-CoverPhotos/blog-1-v4.jpg', NULL),
(11, 'SilverStripe\\Assets\\Image', '2022-02-22 04:32:32', '2022-02-22 04:32:27', 2, 'Inherit', 'Inherit', 'blog-author-v4.jpg', 'blog author v4', 1, 9, 1, 'e7f2199405864d6e91fcf03fb5a534214dd9abd3', 'Author-Images/blog-author-v4.jpg', NULL),
(12, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:33:35', '2022-02-22 04:33:35', 2, 'Inherit', 'Inherit', 'region-photos', 'region-photos', 1, 0, 1, NULL, NULL, NULL),
(13, 'SilverStripe\\Assets\\Image', '2022-02-22 04:35:09', '2022-02-22 04:34:57', 2, 'Inherit', 'Inherit', '800px-Auckland_Region_map_EN.png', '800px Auckland Region map EN', 1, 12, 1, '57cc48f8611d55d530dd352b9c8782cd3f929c22', 'region-photos/800px-Auckland_Region_map_EN.png', NULL),
(14, 'SilverStripe\\Assets\\Image', '2022-02-22 04:37:24', '2022-02-22 04:37:17', 2, 'Inherit', 'Inherit', 'Position_of_Northland.png', 'Position of Northland', 1, 12, 1, '51ddf6fd6d903b5462fcb7be77680a630c0e1245', 'region-photos/Position_of_Northland.png', NULL),
(15, 'SilverStripe\\Assets\\Image', '2022-02-22 04:38:16', '2022-02-22 04:38:10', 2, 'Inherit', 'Inherit', 'Position_of_Waikato_Region.png', 'Position of Waikato Region', 1, 12, 1, 'f6b73754563714bd49c331a286c2c26b6716d37d', 'region-photos/Position_of_Waikato_Region.png', NULL),
(16, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:41:09', '2022-02-22 04:41:09', 2, 'Inherit', 'Inherit', 'property-photos', 'property-photos', 1, 0, 1, NULL, NULL, NULL),
(17, 'SilverStripe\\Assets\\Image', '2022-02-22 04:43:51', '2022-02-22 04:43:48', 2, 'Inherit', 'Inherit', 'values-1-v2.png', 'values 1 v2', 1, 16, 1, '253b29b3b872507a3c8e94df084b890498b65b68', 'property-photos/values-1-v2.png', NULL),
(18, 'SilverStripe\\Assets\\Image', '2022-02-23 04:01:03', '2022-02-23 03:59:36', 2, 'Inherit', 'Inherit', 'blog-4.jpg', 'blog 4', 1, 1, 1, '8f5b0a4f1af9a5056dd6337129a3c5d35cf43e7b', 'Uploads/blog-4.jpg', NULL),
(19, 'SilverStripe\\Assets\\Image', '2022-02-23 04:54:06', '2022-02-23 04:53:30', 2, 'Inherit', 'Inherit', 'comments-2.jpg', 'comments 2', 1, 1, 1, '12cc0e7bf8f2ae4fb969192879abda9371bdddd6', 'Uploads/comments-2.jpg', NULL),
(20, 'SilverStripe\\Assets\\Image', '2022-03-02 22:32:38', '2022-03-02 22:32:31', 2, 'Inherit', 'Inherit', 'values-2-v2.png', 'values 2 v2', 1, 16, 1, 'f2e7825c5d27ab0e05eaf31e7081c7fa4788d0c5', 'property-photos/values-2-v2.png', NULL),
(21, 'SilverStripe\\Assets\\Image', '2022-03-02 22:41:55', '2022-03-02 22:41:49', 2, 'Inherit', 'Inherit', 'values-3-v2.png', 'values 3 v2', 1, 16, 1, '7a93439e2752061df798b412dcfc1c7e982346e1', 'property-photos/values-3-v2.png', NULL),
(22, 'SilverStripe\\Assets\\Image', '2022-03-04 13:49:15', '2022-03-04 13:48:14', 2, 'Inherit', 'Inherit', 'Capture.PNG', 'Capture', 1, 16, 1, '875b9bd0fc60c3907abc81b8075a72b4464d974e', 'property-photos/Capture.PNG', NULL),
(23, 'SilverStripe\\Assets\\Image', '2022-03-13 03:50:54', '2022-03-13 03:50:54', 1, 'Inherit', 'Inherit', 'topRanked_large.png', 'topRanked large', 1, 2, 1, '87acc2b47c092ad6cf57c2bfd8ceeb73da823ee4', 'Hero-photos/topRanked_large.png', NULL),
(24, 'SilverStripe\\Assets\\Image', '2022-03-20 01:18:16', '2022-03-20 01:18:13', 2, 'Inherit', 'Inherit', 'team-1.jpg', 'team 1', 1, 3, 1, 'beb798f5d83fdb6f6e4b1b801c1e59184bdf6673', 'team-photos/team-1.jpg', NULL),
(25, 'SilverStripe\\Assets\\Image', '2022-03-20 02:15:58', '2022-03-20 02:15:56', 2, 'Inherit', 'Inherit', 'Sowbarnika.jpg', 'Sowbarnika', 1, 3, 1, '0c562db0a4a27907645efd5a9509380577d9cb45', 'team-photos/Sowbarnika.jpg', NULL),
(26, 'SilverStripe\\Assets\\Image', '2022-03-20 02:29:03', '2022-03-20 02:28:58', 2, 'Inherit', 'Inherit', 'Balu-Prasad.jpg', 'Balu Prasad', 1, 3, 1, '41773860a782515ef9573c689ece723281f64dbd', 'team-photos/Balu-Prasad.jpg', NULL),
(27, 'SilverStripe\\Assets\\Image', '2022-03-20 02:31:16', '2022-03-20 02:31:13', 2, 'Inherit', 'Inherit', 'Prabha-Karan.jpg', 'Prabha Karan', 1, 3, 1, '252692486465d7f764bd6cfc729672eaedef35ed', 'team-photos/Prabha-Karan.jpg', NULL),
(28, 'SilverStripe\\Assets\\Image', '2022-03-20 03:52:00', '2022-03-20 03:51:55', 2, 'Inherit', 'Inherit', 'loren-joseph-jhu22nvxxCw-unsplash.jpg', 'loren joseph jhu22nvxxCw unsplash', 1, 16, 1, '568c7136fbed5026aef6a1402fc775df05373d6a', 'property-photos/loren-joseph-jhu22nvxxCw-unsplash.jpg', NULL),
(29, 'SilverStripe\\Assets\\Image', '2022-03-20 03:52:47', '2022-03-20 03:52:46', 2, 'Inherit', 'Inherit', 'service-1.jpg', 'service 1', 1, 16, 1, 'e3192e443fbd49ccde22a5c61d5f2fde453ae321', 'property-photos/service-1.jpg', NULL),
(30, 'SilverStripe\\Assets\\Image', '2022-03-20 03:56:15', '2022-03-20 03:56:11', 2, 'Inherit', 'Inherit', 'service-2.jpg', 'service 2', 1, 16, 1, '91e0b03bda0a714b1d276c33cb1a17bc811f64c9', 'property-photos/service-2.jpg', NULL),
(31, 'SilverStripe\\Assets\\Folder', '2022-03-20 04:51:20', '2022-03-20 04:51:20', 2, 'Inherit', 'Inherit', 'service-photos', 'service-photos', 1, 0, 1, NULL, NULL, NULL),
(32, 'SilverStripe\\Assets\\Image', '2022-03-20 05:31:47', '2022-03-20 05:30:41', 2, 'Inherit', 'Inherit', 'top_tree_icons_400px5-400x400.png', 'top tree icons 400px5 400x400', 1, 1, 1, 'ed7ded94aad1d65fd19f6aad6eb281c90e200ddc', 'Uploads/top_tree_icons_400px5-400x400.png', NULL),
(33, 'SilverStripe\\Assets\\Image', '2022-03-20 06:20:53', '2022-03-20 06:20:46', 2, 'Inherit', 'Inherit', '13533011_847686835336634_1153629925591850477_n-1.jpg', '13533011 847686835336634 1153629925591850477 n 1', 1, 31, 1, '9ab956ecbcbb1d042b4574a76e462db3917fe20b', 'service-photos/13533011_847686835336634_1153629925591850477_n-1.jpg', NULL),
(34, 'SilverStripe\\Assets\\Image', '2022-03-20 12:25:02', '2022-03-20 12:24:58', 2, 'Inherit', 'Inherit', 'clay-banks-LjqARJaJotc-unsplash.jpg', 'clay banks LjqARJaJotc unsplash', 1, 31, 1, 'cd2422f9c872273b00a8c86da73583631ff022b4', 'service-photos/clay-banks-LjqARJaJotc-unsplash.jpg', NULL),
(35, 'SilverStripe\\Assets\\Image', '2022-03-20 12:35:01', '2022-03-20 12:34:51', 2, 'Inherit', 'Inherit', 'eyoel-kahssay-FyCjvyPG9Pg-unsplash.jpg', 'eyoel kahssay FyCjvyPG9Pg unsplash', 1, 1, 1, 'dfad6f33febd87527b74f22c0537a32d03f1733b', 'Uploads/eyoel-kahssay-FyCjvyPG9Pg-unsplash.jpg', NULL),
(36, 'SilverStripe\\Assets\\Image', '2022-03-20 14:31:19', '2022-03-20 14:31:15', 2, 'Inherit', 'Inherit', 'replant.jpg', 'replant', 1, 1, 1, 'd6a7bb48c3e5e6b5ce7b04c576715798a7de52a3', 'Uploads/replant.jpg', NULL),
(37, 'SilverStripe\\Assets\\Folder', '2022-03-24 13:48:52', '2022-03-24 13:48:52', 2, 'Inherit', 'Inherit', 'Sponsers-Logo', 'Sponsers-Logo', 1, 0, 1, NULL, NULL, NULL),
(38, 'SilverStripe\\Assets\\Image', '2022-03-24 13:52:40', '2022-03-24 13:50:38', 2, 'Inherit', 'Inherit', 'client-1.png', 'client 1', 1, 37, 1, '829193d7eb118ecea451c8238468d00b9cd20d53', 'Sponsers-Logo/client-1.png', NULL),
(39, 'SilverStripe\\Assets\\Image', '2022-03-24 13:56:19', '2022-03-24 13:56:11', 2, 'Inherit', 'Inherit', 'client-1-v2.png', 'client 1 v2', 1, 37, 1, '829193d7eb118ecea451c8238468d00b9cd20d53', 'Sponsers-Logo/client-1-v2.png', NULL),
(40, 'SilverStripe\\Assets\\Image', '2022-03-24 14:08:51', '2022-03-24 14:08:00', 2, 'Inherit', 'Inherit', 'client-2.png', 'client 2', 1, 37, 1, 'c9d879f5aaa51359853bad5d462f93aa31104bde', 'Sponsers-Logo/client-2.png', NULL),
(41, 'SilverStripe\\Assets\\Image', '2022-03-24 14:09:24', '2022-03-24 14:09:06', 2, 'Inherit', 'Inherit', 'client-3.png', 'client 3', 1, 37, 1, 'ffadfad37aae35192b986f4b010502ecc15d8ca4', 'Sponsers-Logo/client-3.png', NULL),
(42, 'SilverStripe\\Assets\\Image', '2022-03-24 14:10:28', '2022-03-24 14:09:44', 2, 'Inherit', 'Inherit', 'client-4.png', 'client 4', 1, 37, 1, 'fec4878d197c12a7856c394c509605479548b659', 'Sponsers-Logo/client-4.png', NULL),
(43, 'SilverStripe\\Assets\\Image', '2022-03-24 14:42:49', '2022-03-24 14:41:53', 2, 'Inherit', 'Inherit', 'partner-1.png', 'partner 1', 1, 37, 1, '492da3e7be1920542d90ca98fc56ac389c92381e', 'Sponsers-Logo/partner-1.png', NULL),
(44, 'SilverStripe\\Assets\\Image', '2022-03-24 14:45:00', '2022-03-24 14:44:53', 2, 'Inherit', 'Inherit', 'partner-2.png', 'partner 2', 1, 37, 1, 'b4d3013037667c6a55bd79713723413f616ec1d3', 'Sponsers-Logo/partner-2.png', NULL),
(45, 'SilverStripe\\Assets\\Folder', '2022-03-24 15:46:46', '2022-03-24 15:46:46', 2, 'Inherit', 'Inherit', 'project-Image', 'project-Image', 1, 0, 1, NULL, NULL, NULL),
(46, 'SilverStripe\\Assets\\Image', '2022-03-24 15:52:06', '2022-03-24 15:51:59', 2, 'Inherit', 'Inherit', 'values-1.jpg', 'values 1', 1, 45, 1, 'c0941678a6b2a13d0888429a617ffd7eb4ac7961', 'project-Image/values-1.jpg', NULL),
(47, 'SilverStripe\\Assets\\Image', '2022-03-24 16:04:48', '2022-03-24 16:04:43', 2, 'Inherit', 'Inherit', 'values-2.jpg', 'values 2', 1, 45, 1, 'c33fa6d1852ea54827628ddd079690d5d7c5bf3a', 'project-Image/values-2.jpg', NULL),
(48, 'SilverStripe\\Assets\\Image', '2022-03-24 16:05:27', '2022-03-24 16:05:22', 2, 'Inherit', 'Inherit', 'values-3.jpg', 'values 3', 1, 45, 1, '8c799d8f517e2eb5d2c9569476ec8439ef05098e', 'project-Image/values-3.jpg', NULL),
(49, 'SilverStripe\\Assets\\Folder', '2022-03-24 17:56:27', '2022-03-24 17:56:27', 2, 'Inherit', 'Inherit', 'needs-photos', 'needs-photos', 1, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filelink`
--

CREATE TABLE `filelink` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Assets\\Shortcodes\\FileLink') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\Shortcodes\\FileLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('Custom\\Needs','Custom\\Project','Custom\\Service','Custom\\Sponsor','Custom\\Team','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SSFormCapture\\Model\\CapturedField','SSFormCapture\\Model\\CapturedFormSubmission','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\Widgets\\Model\\Widget','SilverStripe\\Widgets\\Model\\WidgetArea','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','Custom\\ContactPage','Custom\\HomePage','Custom\\NeedsSearchPage','Custom\\ServicesPage','Custom\\SponsoresPage','Custom\\TeamPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\Blog\\Widgets\\BlogArchiveWidget','SilverStripe\\Blog\\Widgets\\BlogCategoriesWidget','SilverStripe\\Blog\\Widgets\\BlogFeaturedPostsWidget','SilverStripe\\Blog\\Widgets\\BlogRecentPostsWidget','SilverStripe\\Blog\\Widgets\\BlogTagsCloudWidget','SilverStripe\\Blog\\Widgets\\BlogTagsWidget') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Needs'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `file_editorgroups`
--

CREATE TABLE `file_editorgroups` (
  `ID` int(11) NOT NULL,
  `FileID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `file_live`
--

CREATE TABLE `file_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `FileHash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_live`
--

INSERT INTO `file_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 'SilverStripe\\Assets\\Folder', '2022-02-21 22:40:11', '2022-02-21 22:40:11', 2, 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(2, 'SilverStripe\\Assets\\Folder', '2022-02-21 23:36:09', '2022-02-21 23:36:09', 2, 'Inherit', 'Inherit', 'Hero-photos', 'Hero-photos', 1, 0, 1, NULL, NULL, NULL),
(3, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:21:39', '2022-02-22 04:21:39', 2, 'Inherit', 'Inherit', 'team-photos', 'team-photos', 1, 0, 1, NULL, NULL, NULL),
(4, 'SilverStripe\\Assets\\Image', '2022-02-22 04:24:06', '2022-02-22 04:24:00', 2, 'Inherit', 'Inherit', 'team-1-v2.jpg', 'team 1 v2', 1, 3, 1, 'b7f047be2174377dec078e764591dd4f2d579b9b', 'team-photos/team-1-v2.jpg', NULL),
(5, 'SilverStripe\\Assets\\Image', '2022-02-22 04:24:48', '2022-02-22 04:24:18', 2, 'Inherit', 'Inherit', 'team-2-v2.jpg', 'team 2 v2', 1, 3, 1, '1c76321f60efa09d5033f7d97a7c022354a45c21', 'team-photos/team-2-v2.jpg', NULL),
(6, 'SilverStripe\\Assets\\Image', '2022-02-22 04:25:26', '2022-02-22 04:25:22', 2, 'Inherit', 'Inherit', 'team-3-v2.jpg', 'team 3 v2', 1, 3, 1, '67671c25db2e0e305c6c5ccf5b097a92b1c44159', 'team-photos/team-3-v2.jpg', NULL),
(7, 'SilverStripe\\Assets\\Image', '2022-02-22 04:25:59', '2022-02-22 04:25:53', 2, 'Inherit', 'Inherit', 'team-4-v2.jpg', 'team 4 v2', 1, 3, 1, 'd6b5eaceee9095b97ad6ccc08218b583bdb3e004', 'team-photos/team-4-v2.jpg', NULL),
(8, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:29:16', '2022-02-22 04:29:16', 2, 'Inherit', 'Inherit', 'Blog-CoverPhotos', 'Blog-CoverPhotos', 1, 0, 1, NULL, NULL, NULL),
(9, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:29:16', '2022-02-22 04:29:16', 2, 'Inherit', 'Inherit', 'Author-Images', 'Author-Images', 1, 0, 1, NULL, NULL, NULL),
(10, 'SilverStripe\\Assets\\Image', '2022-02-22 04:32:32', '2022-02-22 04:32:17', 2, 'Inherit', 'Inherit', 'blog-1-v4.jpg', 'blog 1 v4', 1, 8, 1, 'f4ae1e60740adabdb4f212182d31720d04abd417', 'Blog-CoverPhotos/blog-1-v4.jpg', NULL),
(11, 'SilverStripe\\Assets\\Image', '2022-02-22 04:32:32', '2022-02-22 04:32:27', 2, 'Inherit', 'Inherit', 'blog-author-v4.jpg', 'blog author v4', 1, 9, 1, 'e7f2199405864d6e91fcf03fb5a534214dd9abd3', 'Author-Images/blog-author-v4.jpg', NULL),
(12, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:33:35', '2022-02-22 04:33:35', 2, 'Inherit', 'Inherit', 'region-photos', 'region-photos', 1, 0, 1, NULL, NULL, NULL),
(13, 'SilverStripe\\Assets\\Image', '2022-02-22 04:35:09', '2022-02-22 04:34:57', 2, 'Inherit', 'Inherit', '800px-Auckland_Region_map_EN.png', '800px Auckland Region map EN', 1, 12, 1, '57cc48f8611d55d530dd352b9c8782cd3f929c22', 'region-photos/800px-Auckland_Region_map_EN.png', NULL),
(14, 'SilverStripe\\Assets\\Image', '2022-02-22 04:37:24', '2022-02-22 04:37:17', 2, 'Inherit', 'Inherit', 'Position_of_Northland.png', 'Position of Northland', 1, 12, 1, '51ddf6fd6d903b5462fcb7be77680a630c0e1245', 'region-photos/Position_of_Northland.png', NULL),
(15, 'SilverStripe\\Assets\\Image', '2022-02-22 04:38:16', '2022-02-22 04:38:10', 2, 'Inherit', 'Inherit', 'Position_of_Waikato_Region.png', 'Position of Waikato Region', 1, 12, 1, 'f6b73754563714bd49c331a286c2c26b6716d37d', 'region-photos/Position_of_Waikato_Region.png', NULL),
(16, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:41:09', '2022-02-22 04:41:09', 2, 'Inherit', 'Inherit', 'property-photos', 'property-photos', 1, 0, 1, NULL, NULL, NULL),
(17, 'SilverStripe\\Assets\\Image', '2022-02-22 04:43:51', '2022-02-22 04:43:48', 2, 'Inherit', 'Inherit', 'values-1-v2.png', 'values 1 v2', 1, 16, 1, '253b29b3b872507a3c8e94df084b890498b65b68', 'property-photos/values-1-v2.png', NULL),
(18, 'SilverStripe\\Assets\\Image', '2022-02-23 04:01:03', '2022-02-23 03:59:36', 2, 'Inherit', 'Inherit', 'blog-4.jpg', 'blog 4', 1, 1, 1, '8f5b0a4f1af9a5056dd6337129a3c5d35cf43e7b', 'Uploads/blog-4.jpg', NULL),
(19, 'SilverStripe\\Assets\\Image', '2022-02-23 04:54:06', '2022-02-23 04:53:30', 2, 'Inherit', 'Inherit', 'comments-2.jpg', 'comments 2', 1, 1, 1, '12cc0e7bf8f2ae4fb969192879abda9371bdddd6', 'Uploads/comments-2.jpg', NULL),
(20, 'SilverStripe\\Assets\\Image', '2022-03-02 22:32:38', '2022-03-02 22:32:31', 2, 'Inherit', 'Inherit', 'values-2-v2.png', 'values 2 v2', 1, 16, 1, 'f2e7825c5d27ab0e05eaf31e7081c7fa4788d0c5', 'property-photos/values-2-v2.png', NULL),
(21, 'SilverStripe\\Assets\\Image', '2022-03-02 22:41:55', '2022-03-02 22:41:49', 2, 'Inherit', 'Inherit', 'values-3-v2.png', 'values 3 v2', 1, 16, 1, '7a93439e2752061df798b412dcfc1c7e982346e1', 'property-photos/values-3-v2.png', NULL),
(22, 'SilverStripe\\Assets\\Image', '2022-03-04 13:49:15', '2022-03-04 13:48:14', 2, 'Inherit', 'Inherit', 'Capture.PNG', 'Capture', 1, 16, 1, '875b9bd0fc60c3907abc81b8075a72b4464d974e', 'property-photos/Capture.PNG', NULL),
(24, 'SilverStripe\\Assets\\Image', '2022-03-20 01:18:16', '2022-03-20 01:18:13', 2, 'Inherit', 'Inherit', 'team-1.jpg', 'team 1', 1, 3, 1, 'beb798f5d83fdb6f6e4b1b801c1e59184bdf6673', 'team-photos/team-1.jpg', NULL),
(25, 'SilverStripe\\Assets\\Image', '2022-03-20 02:15:58', '2022-03-20 02:15:56', 2, 'Inherit', 'Inherit', 'Sowbarnika.jpg', 'Sowbarnika', 1, 3, 1, '0c562db0a4a27907645efd5a9509380577d9cb45', 'team-photos/Sowbarnika.jpg', NULL),
(26, 'SilverStripe\\Assets\\Image', '2022-03-20 02:29:03', '2022-03-20 02:28:58', 2, 'Inherit', 'Inherit', 'Balu-Prasad.jpg', 'Balu Prasad', 1, 3, 1, '41773860a782515ef9573c689ece723281f64dbd', 'team-photos/Balu-Prasad.jpg', NULL),
(27, 'SilverStripe\\Assets\\Image', '2022-03-20 02:31:16', '2022-03-20 02:31:13', 2, 'Inherit', 'Inherit', 'Prabha-Karan.jpg', 'Prabha Karan', 1, 3, 1, '252692486465d7f764bd6cfc729672eaedef35ed', 'team-photos/Prabha-Karan.jpg', NULL),
(28, 'SilverStripe\\Assets\\Image', '2022-03-20 03:52:00', '2022-03-20 03:51:55', 2, 'Inherit', 'Inherit', 'loren-joseph-jhu22nvxxCw-unsplash.jpg', 'loren joseph jhu22nvxxCw unsplash', 1, 16, 1, '568c7136fbed5026aef6a1402fc775df05373d6a', 'property-photos/loren-joseph-jhu22nvxxCw-unsplash.jpg', NULL),
(29, 'SilverStripe\\Assets\\Image', '2022-03-20 03:52:47', '2022-03-20 03:52:46', 2, 'Inherit', 'Inherit', 'service-1.jpg', 'service 1', 1, 16, 1, 'e3192e443fbd49ccde22a5c61d5f2fde453ae321', 'property-photos/service-1.jpg', NULL),
(30, 'SilverStripe\\Assets\\Image', '2022-03-20 03:56:15', '2022-03-20 03:56:11', 2, 'Inherit', 'Inherit', 'service-2.jpg', 'service 2', 1, 16, 1, '91e0b03bda0a714b1d276c33cb1a17bc811f64c9', 'property-photos/service-2.jpg', NULL),
(31, 'SilverStripe\\Assets\\Folder', '2022-03-20 04:51:20', '2022-03-20 04:51:20', 2, 'Inherit', 'Inherit', 'service-photos', 'service-photos', 1, 0, 1, NULL, NULL, NULL),
(32, 'SilverStripe\\Assets\\Image', '2022-03-20 05:31:47', '2022-03-20 05:30:41', 2, 'Inherit', 'Inherit', 'top_tree_icons_400px5-400x400.png', 'top tree icons 400px5 400x400', 1, 1, 1, 'ed7ded94aad1d65fd19f6aad6eb281c90e200ddc', 'Uploads/top_tree_icons_400px5-400x400.png', NULL),
(33, 'SilverStripe\\Assets\\Image', '2022-03-20 06:20:53', '2022-03-20 06:20:46', 2, 'Inherit', 'Inherit', '13533011_847686835336634_1153629925591850477_n-1.jpg', '13533011 847686835336634 1153629925591850477 n 1', 1, 31, 1, '9ab956ecbcbb1d042b4574a76e462db3917fe20b', 'service-photos/13533011_847686835336634_1153629925591850477_n-1.jpg', NULL),
(34, 'SilverStripe\\Assets\\Image', '2022-03-20 12:25:02', '2022-03-20 12:24:58', 2, 'Inherit', 'Inherit', 'clay-banks-LjqARJaJotc-unsplash.jpg', 'clay banks LjqARJaJotc unsplash', 1, 31, 1, 'cd2422f9c872273b00a8c86da73583631ff022b4', 'service-photos/clay-banks-LjqARJaJotc-unsplash.jpg', NULL),
(35, 'SilverStripe\\Assets\\Image', '2022-03-20 12:35:01', '2022-03-20 12:34:51', 2, 'Inherit', 'Inherit', 'eyoel-kahssay-FyCjvyPG9Pg-unsplash.jpg', 'eyoel kahssay FyCjvyPG9Pg unsplash', 1, 1, 1, 'dfad6f33febd87527b74f22c0537a32d03f1733b', 'Uploads/eyoel-kahssay-FyCjvyPG9Pg-unsplash.jpg', NULL),
(36, 'SilverStripe\\Assets\\Image', '2022-03-20 14:31:19', '2022-03-20 14:31:15', 2, 'Inherit', 'Inherit', 'replant.jpg', 'replant', 1, 1, 1, 'd6a7bb48c3e5e6b5ce7b04c576715798a7de52a3', 'Uploads/replant.jpg', NULL),
(37, 'SilverStripe\\Assets\\Folder', '2022-03-24 13:48:52', '2022-03-24 13:48:52', 2, 'Inherit', 'Inherit', 'Sponsers-Logo', 'Sponsers-Logo', 1, 0, 1, NULL, NULL, NULL),
(38, 'SilverStripe\\Assets\\Image', '2022-03-24 13:52:40', '2022-03-24 13:50:38', 2, 'Inherit', 'Inherit', 'client-1.png', 'client 1', 1, 37, 1, '829193d7eb118ecea451c8238468d00b9cd20d53', 'Sponsers-Logo/client-1.png', NULL),
(39, 'SilverStripe\\Assets\\Image', '2022-03-24 13:56:19', '2022-03-24 13:56:11', 2, 'Inherit', 'Inherit', 'client-1-v2.png', 'client 1 v2', 1, 37, 1, '829193d7eb118ecea451c8238468d00b9cd20d53', 'Sponsers-Logo/client-1-v2.png', NULL),
(40, 'SilverStripe\\Assets\\Image', '2022-03-24 14:08:51', '2022-03-24 14:08:00', 2, 'Inherit', 'Inherit', 'client-2.png', 'client 2', 1, 37, 1, 'c9d879f5aaa51359853bad5d462f93aa31104bde', 'Sponsers-Logo/client-2.png', NULL),
(41, 'SilverStripe\\Assets\\Image', '2022-03-24 14:09:24', '2022-03-24 14:09:06', 2, 'Inherit', 'Inherit', 'client-3.png', 'client 3', 1, 37, 1, 'ffadfad37aae35192b986f4b010502ecc15d8ca4', 'Sponsers-Logo/client-3.png', NULL),
(42, 'SilverStripe\\Assets\\Image', '2022-03-24 14:10:28', '2022-03-24 14:09:44', 2, 'Inherit', 'Inherit', 'client-4.png', 'client 4', 1, 37, 1, 'fec4878d197c12a7856c394c509605479548b659', 'Sponsers-Logo/client-4.png', NULL),
(43, 'SilverStripe\\Assets\\Image', '2022-03-24 14:42:49', '2022-03-24 14:41:53', 2, 'Inherit', 'Inherit', 'partner-1.png', 'partner 1', 1, 37, 1, '492da3e7be1920542d90ca98fc56ac389c92381e', 'Sponsers-Logo/partner-1.png', NULL),
(44, 'SilverStripe\\Assets\\Image', '2022-03-24 14:45:00', '2022-03-24 14:44:53', 2, 'Inherit', 'Inherit', 'partner-2.png', 'partner 2', 1, 37, 1, 'b4d3013037667c6a55bd79713723413f616ec1d3', 'Sponsers-Logo/partner-2.png', NULL),
(45, 'SilverStripe\\Assets\\Folder', '2022-03-24 15:46:46', '2022-03-24 15:46:46', 2, 'Inherit', 'Inherit', 'project-Image', 'project-Image', 1, 0, 1, NULL, NULL, NULL),
(46, 'SilverStripe\\Assets\\Image', '2022-03-24 15:52:06', '2022-03-24 15:51:59', 2, 'Inherit', 'Inherit', 'values-1.jpg', 'values 1', 1, 45, 1, 'c0941678a6b2a13d0888429a617ffd7eb4ac7961', 'project-Image/values-1.jpg', NULL),
(47, 'SilverStripe\\Assets\\Image', '2022-03-24 16:04:48', '2022-03-24 16:04:43', 2, 'Inherit', 'Inherit', 'values-2.jpg', 'values 2', 1, 45, 1, 'c33fa6d1852ea54827628ddd079690d5d7c5bf3a', 'project-Image/values-2.jpg', NULL),
(48, 'SilverStripe\\Assets\\Image', '2022-03-24 16:05:27', '2022-03-24 16:05:22', 2, 'Inherit', 'Inherit', 'values-3.jpg', 'values 3', 1, 45, 1, '8c799d8f517e2eb5d2c9569476ec8439ef05098e', 'project-Image/values-3.jpg', NULL),
(49, 'SilverStripe\\Assets\\Folder', '2022-03-24 17:56:27', '2022-03-24 17:56:27', 2, 'Inherit', 'Inherit', 'needs-photos', 'needs-photos', 1, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_versions`
--

CREATE TABLE `file_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `FileHash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_versions`
--

INSERT INTO `file_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-02-21 22:40:11', '2022-02-21 22:40:11', 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(2, 1, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-02-21 22:40:11', '2022-02-21 22:40:11', 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(3, 2, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-02-21 23:36:09', '2022-02-21 23:36:09', 'Inherit', 'Inherit', 'Hero-photos', 'Hero-photos', 1, 0, 1, NULL, NULL, NULL),
(4, 2, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-02-21 23:36:09', '2022-02-21 23:36:09', 'Inherit', 'Inherit', 'Hero-photos', 'Hero-photos', 1, 0, 1, NULL, NULL, NULL),
(5, 3, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:21:39', '2022-02-22 04:21:39', 'Inherit', 'Inherit', 'team-photos', 'team-photos', 1, 0, 1, NULL, NULL, NULL),
(6, 3, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:21:39', '2022-02-22 04:21:39', 'Inherit', 'Inherit', 'team-photos', 'team-photos', 1, 0, 1, NULL, NULL, NULL),
(7, 4, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:24:00', '2022-02-22 04:24:00', 'Inherit', 'Inherit', 'team-1-v2.jpg', 'team 1 v2', 1, 3, 1, 'b7f047be2174377dec078e764591dd4f2d579b9b', 'team-photos/team-1-v2.jpg', NULL),
(8, 4, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:24:06', '2022-02-22 04:24:00', 'Inherit', 'Inherit', 'team-1-v2.jpg', 'team 1 v2', 1, 3, 1, 'b7f047be2174377dec078e764591dd4f2d579b9b', 'team-photos/team-1-v2.jpg', NULL),
(9, 5, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:24:18', '2022-02-22 04:24:18', 'Inherit', 'Inherit', 'team-2-v2.jpg', 'team 2 v2', 1, 3, 1, '1c76321f60efa09d5033f7d97a7c022354a45c21', 'team-photos/team-2-v2.jpg', NULL),
(10, 5, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:24:48', '2022-02-22 04:24:18', 'Inherit', 'Inherit', 'team-2-v2.jpg', 'team 2 v2', 1, 3, 1, '1c76321f60efa09d5033f7d97a7c022354a45c21', 'team-photos/team-2-v2.jpg', NULL),
(11, 6, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:25:22', '2022-02-22 04:25:22', 'Inherit', 'Inherit', 'team-3-v2.jpg', 'team 3 v2', 1, 3, 1, '67671c25db2e0e305c6c5ccf5b097a92b1c44159', 'team-photos/team-3-v2.jpg', NULL),
(12, 6, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:25:26', '2022-02-22 04:25:22', 'Inherit', 'Inherit', 'team-3-v2.jpg', 'team 3 v2', 1, 3, 1, '67671c25db2e0e305c6c5ccf5b097a92b1c44159', 'team-photos/team-3-v2.jpg', NULL),
(13, 7, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:25:53', '2022-02-22 04:25:53', 'Inherit', 'Inherit', 'team-4-v2.jpg', 'team 4 v2', 1, 3, 1, 'd6b5eaceee9095b97ad6ccc08218b583bdb3e004', 'team-photos/team-4-v2.jpg', NULL),
(14, 7, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:25:59', '2022-02-22 04:25:53', 'Inherit', 'Inherit', 'team-4-v2.jpg', 'team 4 v2', 1, 3, 1, 'd6b5eaceee9095b97ad6ccc08218b583bdb3e004', 'team-photos/team-4-v2.jpg', NULL),
(15, 8, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:29:16', '2022-02-22 04:29:16', 'Inherit', 'Inherit', 'Blog-CoverPhotos', 'Blog-CoverPhotos', 1, 0, 1, NULL, NULL, NULL),
(16, 8, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:29:16', '2022-02-22 04:29:16', 'Inherit', 'Inherit', 'Blog-CoverPhotos', 'Blog-CoverPhotos', 1, 0, 1, NULL, NULL, NULL),
(17, 9, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:29:16', '2022-02-22 04:29:16', 'Inherit', 'Inherit', 'Author-Images', 'Author-Images', 1, 0, 1, NULL, NULL, NULL),
(18, 9, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:29:16', '2022-02-22 04:29:16', 'Inherit', 'Inherit', 'Author-Images', 'Author-Images', 1, 0, 1, NULL, NULL, NULL),
(19, 10, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:32:17', '2022-02-22 04:32:17', 'Inherit', 'Inherit', 'blog-1-v4.jpg', 'blog 1 v4', 1, 8, 1, 'f4ae1e60740adabdb4f212182d31720d04abd417', 'Blog-CoverPhotos/blog-1-v4.jpg', NULL),
(20, 11, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:32:27', '2022-02-22 04:32:27', 'Inherit', 'Inherit', 'blog-author-v4.jpg', 'blog author v4', 1, 9, 1, 'e7f2199405864d6e91fcf03fb5a534214dd9abd3', 'Author-Images/blog-author-v4.jpg', NULL),
(21, 10, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:32:32', '2022-02-22 04:32:17', 'Inherit', 'Inherit', 'blog-1-v4.jpg', 'blog 1 v4', 1, 8, 1, 'f4ae1e60740adabdb4f212182d31720d04abd417', 'Blog-CoverPhotos/blog-1-v4.jpg', NULL),
(22, 11, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:32:32', '2022-02-22 04:32:27', 'Inherit', 'Inherit', 'blog-author-v4.jpg', 'blog author v4', 1, 9, 1, 'e7f2199405864d6e91fcf03fb5a534214dd9abd3', 'Author-Images/blog-author-v4.jpg', NULL),
(23, 12, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:33:35', '2022-02-22 04:33:35', 'Inherit', 'Inherit', 'region-photos', 'region-photos', 1, 0, 1, NULL, NULL, NULL),
(24, 12, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:33:35', '2022-02-22 04:33:35', 'Inherit', 'Inherit', 'region-photos', 'region-photos', 1, 0, 1, NULL, NULL, NULL),
(25, 13, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:34:57', '2022-02-22 04:34:57', 'Inherit', 'Inherit', '800px-Auckland_Region_map_EN.png', '800px Auckland Region map EN', 1, 12, 1, '57cc48f8611d55d530dd352b9c8782cd3f929c22', 'region-photos/800px-Auckland_Region_map_EN.png', NULL),
(26, 13, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:35:09', '2022-02-22 04:34:57', 'Inherit', 'Inherit', '800px-Auckland_Region_map_EN.png', '800px Auckland Region map EN', 1, 12, 1, '57cc48f8611d55d530dd352b9c8782cd3f929c22', 'region-photos/800px-Auckland_Region_map_EN.png', NULL),
(27, 14, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:37:17', '2022-02-22 04:37:17', 'Inherit', 'Inherit', 'Position_of_Northland.png', 'Position of Northland', 1, 12, 1, '51ddf6fd6d903b5462fcb7be77680a630c0e1245', 'region-photos/Position_of_Northland.png', NULL),
(28, 14, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:37:24', '2022-02-22 04:37:17', 'Inherit', 'Inherit', 'Position_of_Northland.png', 'Position of Northland', 1, 12, 1, '51ddf6fd6d903b5462fcb7be77680a630c0e1245', 'region-photos/Position_of_Northland.png', NULL),
(29, 15, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:38:10', '2022-02-22 04:38:10', 'Inherit', 'Inherit', 'Position_of_Waikato_Region.png', 'Position of Waikato Region', 1, 12, 1, 'f6b73754563714bd49c331a286c2c26b6716d37d', 'region-photos/Position_of_Waikato_Region.png', NULL),
(30, 15, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:38:16', '2022-02-22 04:38:10', 'Inherit', 'Inherit', 'Position_of_Waikato_Region.png', 'Position of Waikato Region', 1, 12, 1, 'f6b73754563714bd49c331a286c2c26b6716d37d', 'region-photos/Position_of_Waikato_Region.png', NULL),
(31, 16, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:41:09', '2022-02-22 04:41:09', 'Inherit', 'Inherit', 'property-photos', 'property-photos', 1, 0, 1, NULL, NULL, NULL),
(32, 16, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-02-22 04:41:09', '2022-02-22 04:41:09', 'Inherit', 'Inherit', 'property-photos', 'property-photos', 1, 0, 1, NULL, NULL, NULL),
(33, 17, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-22 04:43:48', '2022-02-22 04:43:48', 'Inherit', 'Inherit', 'values-1-v2.png', 'values 1 v2', 1, 16, 1, '253b29b3b872507a3c8e94df084b890498b65b68', 'property-photos/values-1-v2.png', NULL),
(34, 17, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-22 04:43:51', '2022-02-22 04:43:48', 'Inherit', 'Inherit', 'values-1-v2.png', 'values 1 v2', 1, 16, 1, '253b29b3b872507a3c8e94df084b890498b65b68', 'property-photos/values-1-v2.png', NULL),
(35, 18, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-23 03:59:36', '2022-02-23 03:59:36', 'Inherit', 'Inherit', 'blog-4.jpg', 'blog 4', 1, 1, 1, '8f5b0a4f1af9a5056dd6337129a3c5d35cf43e7b', 'Uploads/blog-4.jpg', NULL),
(36, 18, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-23 04:01:03', '2022-02-23 03:59:36', 'Inherit', 'Inherit', 'blog-4.jpg', 'blog 4', 1, 1, 1, '8f5b0a4f1af9a5056dd6337129a3c5d35cf43e7b', 'Uploads/blog-4.jpg', NULL),
(37, 19, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-02-23 04:53:30', '2022-02-23 04:53:30', 'Inherit', 'Inherit', 'comments-2.jpg', 'comments 2', 1, 1, 1, '12cc0e7bf8f2ae4fb969192879abda9371bdddd6', 'Uploads/comments-2.jpg', NULL),
(38, 19, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-02-23 04:54:06', '2022-02-23 04:53:30', 'Inherit', 'Inherit', 'comments-2.jpg', 'comments 2', 1, 1, 1, '12cc0e7bf8f2ae4fb969192879abda9371bdddd6', 'Uploads/comments-2.jpg', NULL),
(39, 20, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-02 22:32:31', '2022-03-02 22:32:31', 'Inherit', 'Inherit', 'values-2-v2.png', 'values 2 v2', 1, 16, 1, 'f2e7825c5d27ab0e05eaf31e7081c7fa4788d0c5', 'property-photos/values-2-v2.png', NULL),
(40, 20, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-02 22:32:38', '2022-03-02 22:32:31', 'Inherit', 'Inherit', 'values-2-v2.png', 'values 2 v2', 1, 16, 1, 'f2e7825c5d27ab0e05eaf31e7081c7fa4788d0c5', 'property-photos/values-2-v2.png', NULL),
(41, 21, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-02 22:41:49', '2022-03-02 22:41:49', 'Inherit', 'Inherit', 'values-3-v2.png', 'values 3 v2', 1, 16, 1, '7a93439e2752061df798b412dcfc1c7e982346e1', 'property-photos/values-3-v2.png', NULL),
(42, 21, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-02 22:41:55', '2022-03-02 22:41:49', 'Inherit', 'Inherit', 'values-3-v2.png', 'values 3 v2', 1, 16, 1, '7a93439e2752061df798b412dcfc1c7e982346e1', 'property-photos/values-3-v2.png', NULL),
(43, 22, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-04 13:48:14', '2022-03-04 13:48:14', 'Inherit', 'Inherit', 'Capture.PNG', 'Capture', 1, 16, 1, '875b9bd0fc60c3907abc81b8075a72b4464d974e', 'property-photos/Capture.PNG', NULL),
(44, 22, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-04 13:49:15', '2022-03-04 13:48:14', 'Inherit', 'Inherit', 'Capture.PNG', 'Capture', 1, 16, 1, '875b9bd0fc60c3907abc81b8075a72b4464d974e', 'property-photos/Capture.PNG', NULL),
(45, 23, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-13 03:50:54', '2022-03-13 03:50:54', 'Inherit', 'Inherit', 'topRanked_large.png', 'topRanked large', 1, 2, 1, '87acc2b47c092ad6cf57c2bfd8ceeb73da823ee4', 'Hero-photos/topRanked_large.png', NULL),
(46, 24, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 01:18:13', '2022-03-20 01:18:13', 'Inherit', 'Inherit', 'team-1.jpg', 'team 1', 1, 3, 1, 'beb798f5d83fdb6f6e4b1b801c1e59184bdf6673', 'team-photos/team-1.jpg', NULL),
(47, 24, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 01:18:16', '2022-03-20 01:18:13', 'Inherit', 'Inherit', 'team-1.jpg', 'team 1', 1, 3, 1, 'beb798f5d83fdb6f6e4b1b801c1e59184bdf6673', 'team-photos/team-1.jpg', NULL),
(48, 25, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 02:15:56', '2022-03-20 02:15:56', 'Inherit', 'Inherit', 'Sowbarnika.jpg', 'Sowbarnika', 1, 3, 1, '0c562db0a4a27907645efd5a9509380577d9cb45', 'team-photos/Sowbarnika.jpg', NULL),
(49, 25, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 02:15:58', '2022-03-20 02:15:56', 'Inherit', 'Inherit', 'Sowbarnika.jpg', 'Sowbarnika', 1, 3, 1, '0c562db0a4a27907645efd5a9509380577d9cb45', 'team-photos/Sowbarnika.jpg', NULL),
(50, 26, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 02:28:58', '2022-03-20 02:28:58', 'Inherit', 'Inherit', 'Balu-Prasad.jpg', 'Balu Prasad', 1, 3, 1, '41773860a782515ef9573c689ece723281f64dbd', 'team-photos/Balu-Prasad.jpg', NULL),
(51, 26, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 02:29:03', '2022-03-20 02:28:58', 'Inherit', 'Inherit', 'Balu-Prasad.jpg', 'Balu Prasad', 1, 3, 1, '41773860a782515ef9573c689ece723281f64dbd', 'team-photos/Balu-Prasad.jpg', NULL),
(52, 27, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 02:31:13', '2022-03-20 02:31:13', 'Inherit', 'Inherit', 'Prabha-Karan.jpg', 'Prabha Karan', 1, 3, 1, '252692486465d7f764bd6cfc729672eaedef35ed', 'team-photos/Prabha-Karan.jpg', NULL),
(53, 27, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 02:31:16', '2022-03-20 02:31:13', 'Inherit', 'Inherit', 'Prabha-Karan.jpg', 'Prabha Karan', 1, 3, 1, '252692486465d7f764bd6cfc729672eaedef35ed', 'team-photos/Prabha-Karan.jpg', NULL),
(54, 28, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 03:51:55', '2022-03-20 03:51:55', 'Inherit', 'Inherit', 'loren-joseph-jhu22nvxxCw-unsplash.jpg', 'loren joseph jhu22nvxxCw unsplash', 1, 16, 1, '568c7136fbed5026aef6a1402fc775df05373d6a', 'property-photos/loren-joseph-jhu22nvxxCw-unsplash.jpg', NULL),
(55, 28, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 03:52:00', '2022-03-20 03:51:55', 'Inherit', 'Inherit', 'loren-joseph-jhu22nvxxCw-unsplash.jpg', 'loren joseph jhu22nvxxCw unsplash', 1, 16, 1, '568c7136fbed5026aef6a1402fc775df05373d6a', 'property-photos/loren-joseph-jhu22nvxxCw-unsplash.jpg', NULL),
(56, 29, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 03:52:46', '2022-03-20 03:52:46', 'Inherit', 'Inherit', 'service-1.jpg', 'service 1', 1, 16, 1, 'e3192e443fbd49ccde22a5c61d5f2fde453ae321', 'property-photos/service-1.jpg', NULL),
(57, 29, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 03:52:47', '2022-03-20 03:52:46', 'Inherit', 'Inherit', 'service-1.jpg', 'service 1', 1, 16, 1, 'e3192e443fbd49ccde22a5c61d5f2fde453ae321', 'property-photos/service-1.jpg', NULL),
(58, 30, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 03:56:11', '2022-03-20 03:56:11', 'Inherit', 'Inherit', 'service-2.jpg', 'service 2', 1, 16, 1, '91e0b03bda0a714b1d276c33cb1a17bc811f64c9', 'property-photos/service-2.jpg', NULL),
(59, 30, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 03:56:15', '2022-03-20 03:56:11', 'Inherit', 'Inherit', 'service-2.jpg', 'service 2', 1, 16, 1, '91e0b03bda0a714b1d276c33cb1a17bc811f64c9', 'property-photos/service-2.jpg', NULL),
(60, 31, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-03-20 04:51:20', '2022-03-20 04:51:20', 'Inherit', 'Inherit', 'service-photos', 'service-photos', 1, 0, 1, NULL, NULL, NULL),
(61, 31, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-03-20 04:51:20', '2022-03-20 04:51:20', 'Inherit', 'Inherit', 'service-photos', 'service-photos', 1, 0, 1, NULL, NULL, NULL),
(62, 32, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 05:30:41', '2022-03-20 05:30:41', 'Inherit', 'Inherit', 'top_tree_icons_400px5-400x400.png', 'top tree icons 400px5 400x400', 1, 1, 1, 'ed7ded94aad1d65fd19f6aad6eb281c90e200ddc', 'Uploads/top_tree_icons_400px5-400x400.png', NULL),
(63, 32, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 05:31:47', '2022-03-20 05:30:41', 'Inherit', 'Inherit', 'top_tree_icons_400px5-400x400.png', 'top tree icons 400px5 400x400', 1, 1, 1, 'ed7ded94aad1d65fd19f6aad6eb281c90e200ddc', 'Uploads/top_tree_icons_400px5-400x400.png', NULL),
(64, 33, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 06:20:46', '2022-03-20 06:20:46', 'Inherit', 'Inherit', '13533011_847686835336634_1153629925591850477_n-1.jpg', '13533011 847686835336634 1153629925591850477 n 1', 1, 31, 1, '9ab956ecbcbb1d042b4574a76e462db3917fe20b', 'service-photos/13533011_847686835336634_1153629925591850477_n-1.jpg', NULL),
(65, 33, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 06:20:53', '2022-03-20 06:20:46', 'Inherit', 'Inherit', '13533011_847686835336634_1153629925591850477_n-1.jpg', '13533011 847686835336634 1153629925591850477 n 1', 1, 31, 1, '9ab956ecbcbb1d042b4574a76e462db3917fe20b', 'service-photos/13533011_847686835336634_1153629925591850477_n-1.jpg', NULL),
(66, 34, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 12:24:58', '2022-03-20 12:24:58', 'Inherit', 'Inherit', 'clay-banks-LjqARJaJotc-unsplash.jpg', 'clay banks LjqARJaJotc unsplash', 1, 31, 1, 'cd2422f9c872273b00a8c86da73583631ff022b4', 'service-photos/clay-banks-LjqARJaJotc-unsplash.jpg', NULL),
(67, 34, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 12:25:02', '2022-03-20 12:24:58', 'Inherit', 'Inherit', 'clay-banks-LjqARJaJotc-unsplash.jpg', 'clay banks LjqARJaJotc unsplash', 1, 31, 1, 'cd2422f9c872273b00a8c86da73583631ff022b4', 'service-photos/clay-banks-LjqARJaJotc-unsplash.jpg', NULL),
(68, 35, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 12:34:51', '2022-03-20 12:34:51', 'Inherit', 'Inherit', 'eyoel-kahssay-FyCjvyPG9Pg-unsplash.jpg', 'eyoel kahssay FyCjvyPG9Pg unsplash', 1, 1, 1, 'dfad6f33febd87527b74f22c0537a32d03f1733b', 'Uploads/eyoel-kahssay-FyCjvyPG9Pg-unsplash.jpg', NULL),
(69, 35, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 12:35:01', '2022-03-20 12:34:51', 'Inherit', 'Inherit', 'eyoel-kahssay-FyCjvyPG9Pg-unsplash.jpg', 'eyoel kahssay FyCjvyPG9Pg unsplash', 1, 1, 1, 'dfad6f33febd87527b74f22c0537a32d03f1733b', 'Uploads/eyoel-kahssay-FyCjvyPG9Pg-unsplash.jpg', NULL),
(70, 36, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-20 14:31:15', '2022-03-20 14:31:15', 'Inherit', 'Inherit', 'replant.jpg', 'replant', 1, 1, 1, 'd6a7bb48c3e5e6b5ce7b04c576715798a7de52a3', 'Uploads/replant.jpg', NULL),
(71, 36, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-20 14:31:19', '2022-03-20 14:31:15', 'Inherit', 'Inherit', 'replant.jpg', 'replant', 1, 1, 1, 'd6a7bb48c3e5e6b5ce7b04c576715798a7de52a3', 'Uploads/replant.jpg', NULL),
(72, 37, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-03-24 13:48:52', '2022-03-24 13:48:52', 'Inherit', 'Inherit', 'Sponsers-Logo', 'Sponsers-Logo', 1, 0, 1, NULL, NULL, NULL),
(73, 37, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-03-24 13:48:52', '2022-03-24 13:48:52', 'Inherit', 'Inherit', 'Sponsers-Logo', 'Sponsers-Logo', 1, 0, 1, NULL, NULL, NULL),
(74, 38, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 13:50:38', '2022-03-24 13:50:38', 'Inherit', 'Inherit', 'client-1.png', 'client 1', 1, 37, 1, '829193d7eb118ecea451c8238468d00b9cd20d53', 'Sponsers-Logo/client-1.png', NULL),
(75, 38, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 13:52:40', '2022-03-24 13:50:38', 'Inherit', 'Inherit', 'client-1.png', 'client 1', 1, 37, 1, '829193d7eb118ecea451c8238468d00b9cd20d53', 'Sponsers-Logo/client-1.png', NULL),
(76, 39, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 13:56:11', '2022-03-24 13:56:11', 'Inherit', 'Inherit', 'client-1-v2.png', 'client 1 v2', 1, 37, 1, '829193d7eb118ecea451c8238468d00b9cd20d53', 'Sponsers-Logo/client-1-v2.png', NULL),
(77, 39, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 13:56:19', '2022-03-24 13:56:11', 'Inherit', 'Inherit', 'client-1-v2.png', 'client 1 v2', 1, 37, 1, '829193d7eb118ecea451c8238468d00b9cd20d53', 'Sponsers-Logo/client-1-v2.png', NULL),
(78, 40, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 14:08:00', '2022-03-24 14:08:00', 'Inherit', 'Inherit', 'client-2.png', 'client 2', 1, 37, 1, 'c9d879f5aaa51359853bad5d462f93aa31104bde', 'Sponsers-Logo/client-2.png', NULL),
(79, 40, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 14:08:51', '2022-03-24 14:08:00', 'Inherit', 'Inherit', 'client-2.png', 'client 2', 1, 37, 1, 'c9d879f5aaa51359853bad5d462f93aa31104bde', 'Sponsers-Logo/client-2.png', NULL),
(80, 41, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 14:09:06', '2022-03-24 14:09:06', 'Inherit', 'Inherit', 'client-3.png', 'client 3', 1, 37, 1, 'ffadfad37aae35192b986f4b010502ecc15d8ca4', 'Sponsers-Logo/client-3.png', NULL),
(81, 41, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 14:09:24', '2022-03-24 14:09:06', 'Inherit', 'Inherit', 'client-3.png', 'client 3', 1, 37, 1, 'ffadfad37aae35192b986f4b010502ecc15d8ca4', 'Sponsers-Logo/client-3.png', NULL),
(82, 42, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 14:09:44', '2022-03-24 14:09:44', 'Inherit', 'Inherit', 'client-4.png', 'client 4', 1, 37, 1, 'fec4878d197c12a7856c394c509605479548b659', 'Sponsers-Logo/client-4.png', NULL),
(83, 42, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 14:10:28', '2022-03-24 14:09:44', 'Inherit', 'Inherit', 'client-4.png', 'client 4', 1, 37, 1, 'fec4878d197c12a7856c394c509605479548b659', 'Sponsers-Logo/client-4.png', NULL),
(84, 43, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 14:41:53', '2022-03-24 14:41:53', 'Inherit', 'Inherit', 'partner-1.png', 'partner 1', 1, 37, 1, '492da3e7be1920542d90ca98fc56ac389c92381e', 'Sponsers-Logo/partner-1.png', NULL),
(85, 43, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 14:42:49', '2022-03-24 14:41:53', 'Inherit', 'Inherit', 'partner-1.png', 'partner 1', 1, 37, 1, '492da3e7be1920542d90ca98fc56ac389c92381e', 'Sponsers-Logo/partner-1.png', NULL),
(86, 44, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 14:44:53', '2022-03-24 14:44:53', 'Inherit', 'Inherit', 'partner-2.png', 'partner 2', 1, 37, 1, 'b4d3013037667c6a55bd79713723413f616ec1d3', 'Sponsers-Logo/partner-2.png', NULL),
(87, 44, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 14:45:00', '2022-03-24 14:44:53', 'Inherit', 'Inherit', 'partner-2.png', 'partner 2', 1, 37, 1, 'b4d3013037667c6a55bd79713723413f616ec1d3', 'Sponsers-Logo/partner-2.png', NULL),
(88, 45, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-03-24 15:46:46', '2022-03-24 15:46:46', 'Inherit', 'Inherit', 'project-Image', 'project-Image', 1, 0, 1, NULL, NULL, NULL),
(89, 45, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-03-24 15:46:46', '2022-03-24 15:46:46', 'Inherit', 'Inherit', 'project-Image', 'project-Image', 1, 0, 1, NULL, NULL, NULL),
(90, 46, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 15:51:59', '2022-03-24 15:51:59', 'Inherit', 'Inherit', 'values-1.jpg', 'values 1', 1, 45, 1, 'c0941678a6b2a13d0888429a617ffd7eb4ac7961', 'project-Image/values-1.jpg', NULL),
(91, 46, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 15:52:06', '2022-03-24 15:51:59', 'Inherit', 'Inherit', 'values-1.jpg', 'values 1', 1, 45, 1, 'c0941678a6b2a13d0888429a617ffd7eb4ac7961', 'project-Image/values-1.jpg', NULL),
(92, 47, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 16:04:43', '2022-03-24 16:04:43', 'Inherit', 'Inherit', 'values-2.jpg', 'values 2', 1, 45, 1, 'c33fa6d1852ea54827628ddd079690d5d7c5bf3a', 'project-Image/values-2.jpg', NULL),
(93, 47, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 16:04:48', '2022-03-24 16:04:43', 'Inherit', 'Inherit', 'values-2.jpg', 'values 2', 1, 45, 1, 'c33fa6d1852ea54827628ddd079690d5d7c5bf3a', 'project-Image/values-2.jpg', NULL),
(94, 48, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2022-03-24 16:05:22', '2022-03-24 16:05:22', 'Inherit', 'Inherit', 'values-3.jpg', 'values 3', 1, 45, 1, '8c799d8f517e2eb5d2c9569476ec8439ef05098e', 'project-Image/values-3.jpg', NULL),
(95, 48, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2022-03-24 16:05:27', '2022-03-24 16:05:22', 'Inherit', 'Inherit', 'values-3.jpg', 'values 3', 1, 45, 1, '8c799d8f517e2eb5d2c9569476ec8439ef05098e', 'project-Image/values-3.jpg', NULL),
(96, 49, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2022-03-24 17:56:27', '2022-03-24 17:56:27', 'Inherit', 'Inherit', 'needs-photos', 'needs-photos', 1, 0, 1, NULL, NULL, NULL),
(97, 49, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2022-03-24 17:56:27', '2022-03-24 17:56:27', 'Inherit', 'Inherit', 'needs-photos', 'needs-photos', 1, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_viewergroups`
--

CREATE TABLE `file_viewergroups` (
  `ID` int(11) NOT NULL,
  `FileID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formcapture_capturedfield`
--

CREATE TABLE `formcapture_capturedfield` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SSFormCapture\\Model\\CapturedField') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSFormCapture\\Model\\CapturedField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsInDetails` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `SubmissionID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formcapture_formsubmission`
--

CREATE TABLE `formcapture_formsubmission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SSFormCapture\\Model\\CapturedFormSubmission') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSFormCapture\\Model\\CapturedFormSubmission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Type` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\Group') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'SilverStripe\\Security\\Group', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'SilverStripe\\Security\\Group', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0),
(3, 'SilverStripe\\Security\\Group', '2022-02-23 01:57:54', '2022-02-23 01:57:54', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1),
(5, 2, 2),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `group_roles`
--

CREATE TABLE `group_roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  `PermissionRoleID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

CREATE TABLE `loginattempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\LoginAttempt') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailHashed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginattempt`
--

INSERT INTO `loginattempt` (`ID`, `ClassName`, `LastEdited`, `Created`, `Email`, `EmailHashed`, `Status`, `IP`, `MemberID`) VALUES
(1, 'SilverStripe\\Security\\LoginAttempt', '2022-02-21 22:29:28', '2022-02-21 22:29:28', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(2, 'SilverStripe\\Security\\LoginAttempt', '2022-02-22 04:21:28', '2022-02-22 04:21:28', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(3, 'SilverStripe\\Security\\LoginAttempt', '2022-02-23 01:41:10', '2022-02-23 01:41:10', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(4, 'SilverStripe\\Security\\LoginAttempt', '2022-02-23 04:49:54', '2022-02-23 04:49:54', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(5, 'SilverStripe\\Security\\LoginAttempt', '2022-02-23 04:55:18', '2022-02-23 04:55:18', NULL, '4790d6448fd14e13da0b72813a64c945cc18e958', 'Failure', '::1', 2),
(6, 'SilverStripe\\Security\\LoginAttempt', '2022-02-23 04:55:28', '2022-02-23 04:55:28', NULL, '4790d6448fd14e13da0b72813a64c945cc18e958', 'Failure', '::1', 2),
(7, 'SilverStripe\\Security\\LoginAttempt', '2022-02-23 04:56:30', '2022-02-23 04:56:30', NULL, '4790d6448fd14e13da0b72813a64c945cc18e958', 'Success', '::1', 2),
(8, 'SilverStripe\\Security\\LoginAttempt', '2022-02-25 03:34:21', '2022-02-25 03:34:21', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(9, 'SilverStripe\\Security\\LoginAttempt', '2022-02-28 03:48:56', '2022-02-28 03:48:56', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(10, 'SilverStripe\\Security\\LoginAttempt', '2022-02-28 20:48:06', '2022-02-28 20:48:06', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(11, 'SilverStripe\\Security\\LoginAttempt', '2022-03-02 22:30:54', '2022-03-02 22:30:54', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(12, 'SilverStripe\\Security\\LoginAttempt', '2022-03-04 00:21:38', '2022-03-04 00:21:38', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(13, 'SilverStripe\\Security\\LoginAttempt', '2022-03-04 13:05:21', '2022-03-04 13:05:21', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(14, 'SilverStripe\\Security\\LoginAttempt', '2022-03-04 13:45:36', '2022-03-04 13:45:36', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(15, 'SilverStripe\\Security\\LoginAttempt', '2022-03-04 14:22:36', '2022-03-04 14:22:36', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(16, 'SilverStripe\\Security\\LoginAttempt', '2022-03-06 21:15:30', '2022-03-06 21:15:30', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(17, 'SilverStripe\\Security\\LoginAttempt', '2022-03-12 05:57:30', '2022-03-12 05:57:30', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(18, 'SilverStripe\\Security\\LoginAttempt', '2022-03-12 07:20:05', '2022-03-12 07:20:05', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Failure', '::1', 1),
(19, 'SilverStripe\\Security\\LoginAttempt', '2022-03-12 07:20:13', '2022-03-12 07:20:13', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(20, 'SilverStripe\\Security\\LoginAttempt', '2022-03-13 03:49:27', '2022-03-13 03:49:27', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Failure', '::1', 1),
(21, 'SilverStripe\\Security\\LoginAttempt', '2022-03-13 03:49:38', '2022-03-13 03:49:38', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(22, 'SilverStripe\\Security\\LoginAttempt', '2022-03-20 00:13:34', '2022-03-20 00:13:34', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(23, 'SilverStripe\\Security\\LoginAttempt', '2022-03-20 04:28:17', '2022-03-20 04:28:17', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(24, 'SilverStripe\\Security\\LoginAttempt', '2022-03-20 14:00:28', '2022-03-20 14:00:28', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(25, 'SilverStripe\\Security\\LoginAttempt', '2022-03-20 21:50:56', '2022-03-20 21:50:56', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(26, 'SilverStripe\\Security\\LoginAttempt', '2022-03-24 11:53:42', '2022-03-24 11:53:42', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loginsession`
--

CREATE TABLE `loginsession` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\SessionManager\\Models\\LoginSession') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\SessionManager\\Models\\LoginSession',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LastAccessed` datetime DEFAULT NULL,
  `IPAddress` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserAgent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Persistent` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginsession`
--

INSERT INTO `loginsession` (`ID`, `ClassName`, `LastEdited`, `Created`, `LastAccessed`, `IPAddress`, `UserAgent`, `Persistent`, `MemberID`) VALUES
(2, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-02-23 00:59:14', '2022-02-22 04:21:28', '2022-02-23 00:59:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 0, 1),
(4, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-02-23 05:09:55', '2022-02-23 04:49:54', '2022-02-23 05:09:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 0, 1),
(5, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-02-23 05:09:00', '2022-02-23 04:56:30', '2022-02-23 05:09:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.56', 0, 2),
(6, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-02-25 05:12:46', '2022-02-25 03:34:21', '2022-02-25 05:12:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 0, 1),
(7, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-02-28 05:38:21', '2022-02-28 03:48:56', '2022-02-28 05:38:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 0, 1),
(8, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-01 05:12:28', '2022-02-28 20:48:06', '2022-03-01 05:12:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 0, 1),
(9, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-02 23:20:15', '2022-03-02 22:30:54', '2022-03-02 23:20:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, 1),
(10, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-04 05:07:27', '2022-03-04 00:21:38', '2022-03-04 05:07:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, 1),
(11, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-04 13:44:06', '2022-03-04 13:05:21', '2022-03-04 13:44:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, 1),
(12, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-04 13:55:57', '2022-03-04 13:45:36', '2022-03-04 13:55:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, 1),
(13, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-04 15:02:47', '2022-03-04 14:22:36', '2022-03-04 15:02:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, 1),
(14, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-07 05:48:35', '2022-03-06 21:15:30', '2022-03-07 05:48:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, 1),
(15, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-12 06:47:10', '2022-03-12 05:57:30', '2022-03-12 06:47:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, 1),
(16, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-12 11:42:10', '2022-03-12 07:20:13', '2022-03-12 11:42:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, 1),
(17, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-13 07:47:08', '2022-03-13 03:49:38', '2022-03-13 07:47:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, 1),
(18, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-20 03:58:27', '2022-03-20 00:13:34', '2022-03-20 03:58:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 0, 1),
(19, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-20 12:58:48', '2022-03-20 04:28:17', '2022-03-20 12:58:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 0, 1),
(20, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-20 16:57:47', '2022-03-20 14:00:28', '2022-03-20 16:57:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 0, 1),
(21, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-21 06:43:24', '2022-03-20 21:50:56', '2022-03-21 06:43:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 0, 1),
(22, 'SilverStripe\\SessionManager\\Models\\LoginSession', '2022-03-24 18:21:04', '2022-03-24 11:53:42', '2022-03-24 18:21:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\Member') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BlogProfileSummary` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT 0,
  `BlogProfileImageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `BlogProfileSummary`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `BlogProfileImageID`) VALUES
(1, 'SilverStripe\\Security\\Member', '2022-03-24 18:20:52', '2022-02-21 22:28:57', 'default-admin', NULL, 'Default Admin', NULL, 'admin', '77beaf2e59e69e4d1a2317d8ffdd12f52b023b4c', '2022-03-27 12:53:42', NULL, NULL, NULL, 'none', NULL, NULL, NULL, 'en_US', 0, 0),
(2, 'SilverStripe\\Security\\Member', '2022-02-23 04:56:30', '2022-02-23 04:54:06', 'yathursan-gunaratnam', 'Developer', 'Yathursan', 'Gunaratnam', 'yathursan.gunaratnam@origami-brand.com', 'b17396ad3f37c3bffe1751e9905a0e5449716e1e', '2022-02-26 04:56:30', '$2y$10$556bf75e3854cf82c75e2uO1lxfbYpLRS5IxfL5Pb9eXaZBFndEHG', NULL, NULL, 'blowfish', '10$556bf75e3854cf82c75e26', NULL, NULL, 'en_US', 0, 19),
(3, 'SilverStripe\\Security\\Member', '2022-03-24 18:19:55', '2022-03-24 18:19:55', 'default-admin-1', NULL, 'Default Admin', NULL, 'yathu', NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, 'en_US', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `memberpassword`
--

CREATE TABLE `memberpassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\MemberPassword') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `memberpassword`
--

INSERT INTO `memberpassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'SilverStripe\\Security\\MemberPassword', '2022-02-21 22:28:57', '2022-02-21 22:28:57', NULL, NULL, 'none', 1),
(2, 'SilverStripe\\Security\\MemberPassword', '2022-02-23 04:54:06', '2022-02-23 04:54:06', '$2y$10$eb5d1e98c3da217feae01OIPjoXLHhEIpiwOiTVJ9WXSokEb.o4.C', '10$eb5d1e98c3da217feae01a', 'blowfish', 2),
(3, 'SilverStripe\\Security\\MemberPassword', '2022-02-23 04:56:12', '2022-02-23 04:56:12', '$2y$10$556bf75e3854cf82c75e2uO1lxfbYpLRS5IxfL5Pb9eXaZBFndEHG', '10$556bf75e3854cf82c75e26', 'blowfish', 2),
(4, 'SilverStripe\\Security\\MemberPassword', '2022-03-24 18:19:55', '2022-03-24 18:19:55', NULL, NULL, 'none', 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\Permission') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 1,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'SilverStripe\\Security\\Permission', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'SilverStripe\\Security\\Permission', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'SilverStripe\\Security\\Permission', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'SilverStripe\\Security\\Permission', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'SilverStripe\\Security\\Permission', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'ADMIN', 0, 1, 2),
(6, 'SilverStripe\\Security\\Permission', '2022-02-23 01:57:54', '2022-02-23 01:57:54', 'CMS_ACCESS_CMSMain', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permissionrole`
--

CREATE TABLE `permissionrole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\PermissionRole') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissionrolecode`
--

CREATE TABLE `permissionrolecode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\PermissionRoleCode') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage`
--

CREATE TABLE `redirectorpage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_live`
--

CREATE TABLE `redirectorpage_live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_versions`
--

CREATE TABLE `redirectorpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rememberloginhash`
--

CREATE TABLE `rememberloginhash` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\RememberLoginHash') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\RememberLoginHash',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `DeviceID` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hash` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `LoginSessionID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE `siteconfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\SiteConfig\\SiteConfig') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\SiteConfig\\SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FacebookLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TwitterLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InstagramLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `YouTubeLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkinLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FooterContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Copyright` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'LoggedInUsers',
  `PoptinConfig` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `FacebookLink`, `TwitterLink`, `InstagramLink`, `YouTubeLink`, `LinkinLink`, `PhoneNumber`, `Email`, `FooterContent`, `Address`, `Copyright`, `Title`, `Tagline`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `PoptinConfig`) VALUES
(1, 'SilverStripe\\SiteConfig\\SiteConfig', '2022-03-20 12:50:20', '2022-02-21 22:28:56', 'https://www.facebook.com/kuzalosai', NULL, 'https://www.instagram.com/kuzhalosai_/', NULL, NULL, '+91 78453 87565', 'kuzalosai2015@gmail.com', 'If you have an idea to help others or any other social activities Kuzhalosai must welcome you. WE CAN DO MORE TO ORPHAN CHILDS\r\n          ', '4, Chennai Tiruvallur High Rd, Padi, Chennai, Tamil Nadu 600050, India', NULL, 'Kuzhalosai', 'The Rythm of helping minds.', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_createtoplevelgroups`
--

CREATE TABLE `siteconfig_createtoplevelgroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_editorgroups`
--

CREATE TABLE `siteconfig_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_viewergroups`
--

CREATE TABLE `siteconfig_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree`
--

CREATE TABLE `sitetree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','Custom\\ContactPage','Custom\\HomePage','Custom\\NeedsSearchPage','Custom\\ServicesPage','Custom\\SponsoresPage','Custom\\TeamPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT 0,
  `URLSegment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ReportClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Version`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 'Custom\\HomePage', '2022-03-24 12:27:30', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 21, 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-20 06:28:35', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 10, 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(3, 'Custom\\ContactPage', '2022-03-12 06:08:25', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 16, 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(4, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-03-24 18:15:58', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 4, 'page-not-found', 'Page not found', NULL, '<p class=\"pt-5\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 0),
(5, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-02-21 22:28:58', '2022-02-21 22:28:58', 'Inherit', 'Inherit', 2, 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 0),
(7, 'Custom\\TeamPage', '2022-03-20 16:43:47', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 15, 'team', 'New Members', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(10, 'Custom\\ServicesPage', '2022-03-24 15:25:07', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 21, 'our-services', 'Our services', NULL, '<p>We are more than 100 friends with the same wavelength, joined together to establish the trust \"KUZHALOSAI\" for helping children, especially ORPHAN KIDS AND SINGLE PARENT’S CHILDREN. We are committed to taking care of the kids by providing food, quality education, as well as Love and care.</p><p>We also make a positive impact on our society by providing guidance in various situations, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible.</p><p>WE AIM TO PROVIDE A GOOD QUALITY OF LIFE TO ALL THE KIDS WE CARE FOR.</p><p>We welcome anyone with the same thoughts, to join our Kuzhalosai family.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(11, 'Custom\\NeedsSearchPage', '2022-03-24 17:58:18', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 13, 'urgent-needs', 'Urgent Needs', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(16, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 14:31:19', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 9, 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sitetreelink`
--

CREATE TABLE `sitetreelink` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTreeLink') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\CMS\\Model\\SiteTreeLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('Custom\\Needs','Custom\\Project','Custom\\Service','Custom\\Sponsor','Custom\\Team','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SSFormCapture\\Model\\CapturedField','SSFormCapture\\Model\\CapturedFormSubmission','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\Blog\\Model\\BlogCategory','SilverStripe\\Blog\\Model\\BlogTag','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\Widgets\\Model\\Widget','SilverStripe\\Widgets\\Model\\WidgetArea','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','Custom\\ContactPage','Custom\\HomePage','Custom\\NeedsSearchPage','Custom\\ServicesPage','Custom\\SponsoresPage','Custom\\TeamPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','SilverStripe\\Blog\\Widgets\\BlogArchiveWidget','SilverStripe\\Blog\\Widgets\\BlogCategoriesWidget','SilverStripe\\Blog\\Widgets\\BlogFeaturedPostsWidget','SilverStripe\\Blog\\Widgets\\BlogRecentPostsWidget','SilverStripe\\Blog\\Widgets\\BlogTagsCloudWidget','SilverStripe\\Blog\\Widgets\\BlogTagsWidget') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Custom\\Needs'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_editorgroups`
--

CREATE TABLE `sitetree_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_live`
--

CREATE TABLE `sitetree_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','Custom\\ContactPage','Custom\\HomePage','Custom\\NeedsSearchPage','Custom\\ServicesPage','Custom\\SponsoresPage','Custom\\TeamPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT 0,
  `URLSegment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ReportClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitetree_live`
--

INSERT INTO `sitetree_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Version`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 'Custom\\HomePage', '2022-03-24 12:27:30', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 21, 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-20 06:28:33', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 10, 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(3, 'Custom\\ContactPage', '2022-03-12 06:08:25', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 16, 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(4, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-03-24 18:15:58', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 4, 'page-not-found', 'Page not found', NULL, '<p class=\"pt-5\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 0),
(5, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-02-21 22:28:58', '2022-02-21 22:28:58', 'Inherit', 'Inherit', 2, 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 0),
(7, 'Custom\\TeamPage', '2022-03-20 16:43:47', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 15, 'team', 'New Members', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(10, 'Custom\\ServicesPage', '2022-03-24 15:25:07', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 21, 'our-services', 'Our services', NULL, '<p>We are more than 100 friends with the same wavelength, joined together to establish the trust \"KUZHALOSAI\" for helping children, especially ORPHAN KIDS AND SINGLE PARENT’S CHILDREN. We are committed to taking care of the kids by providing food, quality education, as well as Love and care.</p><p>We also make a positive impact on our society by providing guidance in various situations, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible.</p><p>WE AIM TO PROVIDE A GOOD QUALITY OF LIFE TO ALL THE KIDS WE CARE FOR.</p><p>We welcome anyone with the same thoughts, to join our Kuzhalosai family.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(11, 'Custom\\NeedsSearchPage', '2022-03-24 17:58:18', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 13, 'urgent-needs', 'Urgent Needs', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(16, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 14:31:19', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 9, 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_versions`
--

CREATE TABLE `sitetree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','Custom\\ContactPage','Custom\\HomePage','Custom\\NeedsSearchPage','Custom\\ServicesPage','Custom\\SponsoresPage','Custom\\TeamPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\Blog\\Model\\Blog','SilverStripe\\Blog\\Model\\BlogPost','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage','Custom\\PropertySearchPage','Custom\\ArticleHolder','Custom\\ArticlePage','Custom\\RegionsPage','Custom\\GetlocationsPage','','Custom\\GetlocationPage','Fractas\\ContactPage\\ContactPage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `URLSegment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ReportClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitetree_versions`
--

INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 1, 1, 0, 0, 1, 0, 0, 'Page', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 1, 2, 1, 0, 1, 0, 0, 'Page', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(3, 2, 1, 0, 0, 1, 0, 0, 'Page', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(4, 2, 2, 1, 0, 1, 0, 0, 'Page', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(5, 3, 1, 0, 0, 1, 0, 0, 'Page', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(6, 3, 2, 1, 0, 1, 0, 0, 'Page', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(7, 4, 1, 0, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 0),
(8, 4, 2, 1, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-02-21 22:28:57', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 0),
(9, 5, 1, 0, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-02-21 22:28:58', '2022-02-21 22:28:58', 'Inherit', 'Inherit', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(10, 5, 2, 1, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-02-21 22:28:58', '2022-02-21 22:28:58', 'Inherit', 'Inherit', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(11, 3, 3, 0, 0, 1, 1, 0, 'Fractas\\ContactPage\\ContactPage', '2022-02-21 22:39:38', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(12, 3, 4, 1, 0, 1, 1, 1, 'Fractas\\ContactPage\\ContactPage', '2022-02-21 22:39:45', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(13, 3, 5, 0, 0, 1, 1, 0, 'Fractas\\ContactPage\\ContactPage', '2022-02-21 22:41:12', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(14, 3, 6, 1, 0, 1, 1, 1, 'Fractas\\ContactPage\\ContactPage', '2022-02-21 22:41:19', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(15, 3, 7, 0, 0, 1, 1, 0, 'Fractas\\ContactPage\\ContactPage', '2022-02-21 22:41:28', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(16, 3, 8, 1, 0, 1, 1, 1, 'Fractas\\ContactPage\\ContactPage', '2022-02-21 22:41:41', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(17, 1, 3, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-02-21 23:36:02', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(18, 1, 4, 1, 0, 1, 1, 1, 'Custom\\HomePage', '2022-02-21 23:36:06', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(19, 1, 5, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-02-21 23:36:40', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(20, 1, 6, 1, 0, 1, 1, 1, 'Custom\\HomePage', '2022-02-21 23:36:45', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(21, 3, 9, 0, 0, 1, 1, 0, 'Custom\\ContactPage', '2022-02-21 23:39:58', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(22, 3, 10, 1, 0, 1, 1, 1, 'Custom\\ContactPage', '2022-02-21 23:40:01', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(23, 6, 1, 0, 0, 1, 1, 0, 'Page', '2022-02-22 03:01:18', '2022-02-22 03:01:18', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 2),
(24, 6, 2, 0, 0, 1, 1, 0, 'Page', '2022-02-22 03:01:30', '2022-02-22 03:01:18', 'Inherit', 'Inherit', 'sub-nav', 'sub nav', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 2),
(25, 6, 3, 1, 0, 1, 1, 1, 'Page', '2022-02-22 03:01:33', '2022-02-22 03:01:18', 'Inherit', 'Inherit', 'sub-nav', 'sub nav', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 2),
(26, 7, 1, 0, 0, 1, 1, 0, 'Page', '2022-02-22 04:26:18', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(27, 7, 2, 0, 0, 1, 1, 0, 'Page', '2022-02-22 04:26:36', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(28, 7, 3, 0, 0, 1, 1, 0, 'Custom\\TeamPage', '2022-02-22 04:26:47', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(29, 7, 4, 1, 0, 1, 1, 1, 'Custom\\TeamPage', '2022-02-22 04:26:51', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(30, 8, 1, 0, 0, 1, 1, 0, 'Page', '2022-02-22 04:27:54', '2022-02-22 04:27:54', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(31, 8, 2, 0, 0, 1, 1, 0, 'Page', '2022-02-22 04:28:09', '2022-02-22 04:27:54', 'Inherit', 'Inherit', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(32, 8, 3, 0, 0, 1, 1, 0, 'Custom\\ArticleHolder', '2022-02-22 04:28:44', '2022-02-22 04:27:54', 'Inherit', 'Inherit', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(33, 8, 4, 1, 0, 1, 1, 1, 'Custom\\ArticleHolder', '2022-02-22 04:28:48', '2022-02-22 04:27:54', 'Inherit', 'Inherit', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(34, 9, 1, 0, 0, 1, 1, 0, 'Custom\\ArticlePage', '2022-02-22 04:29:15', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 8),
(35, 9, 2, 0, 0, 1, 1, 0, 'Custom\\ArticlePage', '2022-02-22 04:31:56', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'dolorum-optio-tempore-voluptas-dignissimos-cumque-fuga-qui-quibusdam-quia', 'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia', NULL, '<p>Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta. Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.</p><p>Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate cupiditate.</p><blockquote>\n<p>Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.</p>\n</blockquote><p>Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil quaerat. Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque. Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.</p><h3>Et quae iure vel ut odit alias.</h3><p>Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui. Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est libero eum nesciunt aliquid qui. Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima. Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam rerum dolores sint consequatur quidem ea. Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem. Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.</p><p><img class=\"img-fluid\" src=\"assets/img/blog/blog-inside-post.jpg\" alt=\"\"></p><h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3><p>Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore. Autem facilis hic dolorum dolores vel. Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam ut illum ut a quam vitae.</p><p>Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 8),
(36, 9, 3, 1, 0, 1, 1, 1, 'Custom\\ArticlePage', '2022-02-22 04:31:56', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'dolorum-optio-tempore-voluptas-dignissimos-cumque-fuga-qui-quibusdam-quia', 'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia', NULL, '<p>Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta. Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.</p><p>Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate cupiditate.</p><blockquote>\n<p>Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.</p>\n</blockquote><p>Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil quaerat. Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque. Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.</p><h3>Et quae iure vel ut odit alias.</h3><p>Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui. Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est libero eum nesciunt aliquid qui. Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima. Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam rerum dolores sint consequatur quidem ea. Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem. Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.</p><p><img class=\"img-fluid\" src=\"assets/img/blog/blog-inside-post.jpg\" alt=\"\"></p><h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3><p>Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore. Autem facilis hic dolorum dolores vel. Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam ut illum ut a quam vitae.</p><p>Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 8),
(37, 9, 4, 0, 0, 1, 1, 0, 'Custom\\ArticlePage', '2022-02-22 04:32:29', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'dolorum-optio-tempore-voluptas-dignissimos-cumque-fuga-qui-quibusdam-quia', 'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia', NULL, '<p>Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta. Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.</p><p>Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate cupiditate.</p><blockquote>\n<p>Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.</p>\n</blockquote><p>Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil quaerat. Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque. Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.</p><h3>Et quae iure vel ut odit alias.</h3><p>Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui. Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est libero eum nesciunt aliquid qui. Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima. Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam rerum dolores sint consequatur quidem ea. Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem. Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.</p><p><img class=\"img-fluid\" src=\"assets/img/blog/blog-inside-post.jpg\" alt=\"\"></p><h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3><p>Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore. Autem facilis hic dolorum dolores vel. Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam ut illum ut a quam vitae.</p><p>Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 8),
(38, 9, 5, 1, 0, 1, 1, 1, 'Custom\\ArticlePage', '2022-02-22 04:32:32', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'dolorum-optio-tempore-voluptas-dignissimos-cumque-fuga-qui-quibusdam-quia', 'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia', NULL, '<p>Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta. Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.</p><p>Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate cupiditate.</p><blockquote>\n<p>Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.</p>\n</blockquote><p>Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil quaerat. Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque. Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.</p><h3>Et quae iure vel ut odit alias.</h3><p>Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui. Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est libero eum nesciunt aliquid qui. Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima. Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam rerum dolores sint consequatur quidem ea. Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem. Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.</p><p><img class=\"img-fluid\" src=\"assets/img/blog/blog-inside-post.jpg\" alt=\"\"></p><h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3><p>Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore. Autem facilis hic dolorum dolores vel. Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam ut illum ut a quam vitae.</p><p>Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 8),
(39, 10, 1, 0, 0, 1, 1, 0, 'Page', '2022-02-22 04:32:53', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(40, 10, 2, 0, 0, 1, 1, 0, 'Custom\\RegionsPage', '2022-02-22 04:33:20', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(41, 10, 3, 1, 0, 1, 1, 1, 'Custom\\RegionsPage', '2022-02-22 04:33:22', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(42, 10, 4, 0, 0, 1, 1, 0, 'Custom\\RegionsPage', '2022-02-22 04:36:04', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'NZ Regions', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(43, 10, 5, 1, 0, 1, 1, 1, 'Custom\\RegionsPage', '2022-02-22 04:36:06', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'NZ Regions', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(44, 9, 6, 0, 0, 1, 1, 0, 'Custom\\ArticlePage', '2022-02-22 04:38:58', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'dolorum-optio-tempore-voluptas-dignissimos-cumque-fuga-qui-quibusdam-quia', 'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia', NULL, '<p>Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta. Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.</p><p>Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate cupiditate.</p><blockquote>\n<p>Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.</p>\n</blockquote><p>Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil quaerat. Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque. Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.</p><h3>Et quae iure vel ut odit alias.</h3><p>Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui. Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est libero eum nesciunt aliquid qui. Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima. Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam rerum dolores sint consequatur quidem ea. Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem. Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.</p><p><img class=\"img-fluid\" src=\"assets/img/blog/blog-inside-post.jpg\" alt=\"\"></p><h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3><p>Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore. Autem facilis hic dolorum dolores vel. Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam ut illum ut a quam vitae.</p><p>Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 8),
(45, 9, 7, 1, 0, 1, 1, 1, 'Custom\\ArticlePage', '2022-02-22 04:39:02', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'dolorum-optio-tempore-voluptas-dignissimos-cumque-fuga-qui-quibusdam-quia', 'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia', NULL, '<p>Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta. Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.</p><p>Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate cupiditate.</p><blockquote>\n<p>Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.</p>\n</blockquote><p>Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil quaerat. Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque. Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.</p><h3>Et quae iure vel ut odit alias.</h3><p>Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui. Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est libero eum nesciunt aliquid qui. Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima. Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam rerum dolores sint consequatur quidem ea. Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem. Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.</p><p><img class=\"img-fluid\" src=\"assets/img/blog/blog-inside-post.jpg\" alt=\"\"></p><h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3><p>Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore. Autem facilis hic dolorum dolores vel. Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam ut illum ut a quam vitae.</p><p>Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 8),
(46, 9, 8, 0, 0, 1, 1, 0, 'Custom\\ArticlePage', '2022-02-22 04:39:50', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'dolorum-optio-tempore-voluptas-dignissimos-cumque-fuga-qui-quibusdam-quia', 'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia', NULL, '<p>Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta. Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.</p><p>Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate cupiditate.</p><blockquote>\n<p>Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.</p>\n</blockquote><p>Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil quaerat. Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque. Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.</p><h3>Et quae iure vel ut odit alias.</h3><p>Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui. Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est libero eum nesciunt aliquid qui. Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima. Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam rerum dolores sint consequatur quidem ea. Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem. Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.</p><p><img class=\"img-fluid\" src=\"assets/img/blog/blog-inside-post.jpg\" alt=\"\"></p><h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3><p>Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore. Autem facilis hic dolorum dolores vel. Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam ut illum ut a quam vitae.</p><p>Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 8),
(47, 9, 9, 1, 0, 1, 1, 1, 'Custom\\ArticlePage', '2022-02-22 04:39:53', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'dolorum-optio-tempore-voluptas-dignissimos-cumque-fuga-qui-quibusdam-quia', 'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia', NULL, '<p>Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta. Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.</p><p>Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate cupiditate.</p><blockquote>\n<p>Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.</p>\n</blockquote><p>Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil quaerat. Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque. Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.</p><h3>Et quae iure vel ut odit alias.</h3><p>Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui. Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est libero eum nesciunt aliquid qui. Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima. Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam rerum dolores sint consequatur quidem ea. Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem. Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.</p><p><img class=\"img-fluid\" src=\"assets/img/blog/blog-inside-post.jpg\" alt=\"\"></p><h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3><p>Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore. Autem facilis hic dolorum dolores vel. Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam ut illum ut a quam vitae.</p><p>Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 8),
(48, 11, 1, 0, 0, 1, 1, 0, 'Page', '2022-02-22 04:40:03', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(49, 11, 2, 0, 0, 1, 1, 0, 'Custom\\PropertySearchPage', '2022-02-22 04:40:13', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(50, 11, 3, 1, 0, 1, 1, 1, 'Custom\\PropertySearchPage', '2022-02-22 04:40:16', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'new-page-2', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(51, 11, 4, 0, 0, 1, 1, 0, 'Custom\\PropertySearchPage', '2022-02-22 04:40:45', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'new-page-2', 'Properties ', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(52, 11, 5, 1, 0, 1, 1, 1, 'Custom\\PropertySearchPage', '2022-02-22 04:40:48', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'new-page-2', 'Properties ', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(53, 12, 1, 0, 0, 1, 1, 0, 'Page', '2022-02-22 21:12:01', '2022-02-22 21:12:01', 'Inherit', 'Inherit', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(54, 12, 2, 0, 0, 1, 1, 0, 'Custom\\ArticleHolder', '2022-02-22 21:12:30', '2022-02-22 21:12:01', 'Inherit', 'Inherit', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(55, 12, 3, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\Blog', '2022-02-23 01:57:54', '2022-02-22 21:12:01', 'Inherit', 'Inherit', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(56, 12, 4, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\Blog', '2022-02-23 01:57:57', '2022-02-22 21:12:01', 'Inherit', 'Inherit', 'new-page-3', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(57, 13, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-02-23 01:58:07', '2022-02-23 01:58:07', 'Inherit', 'Inherit', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 12),
(58, 13, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-02-23 02:00:56', '2022-02-23 01:58:07', 'Inherit', 'Inherit', 'blog1', 'blog1', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 12),
(59, 13, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-02-23 02:01:00', '2022-02-23 01:58:07', 'Inherit', 'Inherit', 'blog1', 'blog1', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 12),
(60, 14, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-02-23 03:58:55', '2022-02-23 03:58:55', 'Inherit', 'Inherit', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 12),
(61, 14, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-02-23 04:00:59', '2022-02-23 03:58:55', 'Inherit', 'Inherit', 'new-blog-post', 'New Blog Post', NULL, '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply a dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 12),
(62, 14, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-02-23 04:01:03', '2022-02-23 03:58:55', 'Inherit', 'Inherit', 'new-blog-post', 'New Blog Post', NULL, '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply a dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 12),
(63, 7, 5, 0, 0, 1, 1, 0, 'Custom\\TeamPage', '2022-02-28 03:57:42', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(64, 7, 6, 1, 0, 1, 1, 1, 'Custom\\TeamPage', '2022-02-28 03:57:47', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(65, 3, 11, 0, 0, 1, 1, 0, 'Custom\\ContactPage', '2022-02-28 21:41:28', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(66, 3, 12, 1, 0, 1, 1, 1, 'Custom\\ContactPage', '2022-02-28 21:41:30', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(67, 6, 4, 0, 0, 1, 1, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-03-01 01:37:12', '2022-02-22 03:01:18', 'Inherit', 'Inherit', 'sub-nav', 'sub nav', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 2),
(68, 6, 5, 1, 0, 1, 1, 1, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-03-01 01:37:16', '2022-02-22 03:01:18', 'Inherit', 'Inherit', 'sub-nav', 'sub nav', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 2),
(69, 3, 13, 0, 0, 1, 1, 0, 'Custom\\ContactPage', '2022-03-01 01:37:38', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(70, 3, 14, 1, 0, 1, 1, 1, 'Custom\\ContactPage', '2022-03-01 01:37:50', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 0),
(71, 12, 5, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-01 01:38:32', '2022-02-22 21:12:01', 'Inherit', 'Inherit', 'std-page', 'Std Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(72, 12, 6, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-01 01:38:34', '2022-02-22 21:12:01', 'Inherit', 'Inherit', 'std-page', 'Std Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(73, 15, 1, 0, 0, 1, 1, 0, '', '2022-03-04 00:21:56', '2022-03-04 00:21:56', 'Inherit', 'Inherit', 'new-getlocation-page', 'New Getlocation Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(74, 15, 2, 0, 0, 1, 1, 0, '', '2022-03-04 00:22:24', '2022-03-04 00:21:56', 'Inherit', 'Inherit', 'getlocation', 'Getlocation Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(75, 15, 3, 1, 0, 1, 1, 1, 'SilverStripe\\CMS\\Model\\SiteTree', '2022-03-04 00:22:26', '2022-03-04 00:21:56', 'Inherit', 'Inherit', 'getlocation', 'Getlocation Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(76, 15, 4, 0, 0, 1, 1, 0, 'Custom\\GetlocationPage', '2022-03-04 00:28:16', '2022-03-04 00:21:56', 'Inherit', 'Inherit', 'getlocation', 'Getlocation Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(77, 15, 5, 1, 0, 1, 1, 1, 'Custom\\GetlocationPage', '2022-03-04 00:28:19', '2022-03-04 00:21:56', 'Inherit', 'Inherit', 'getlocation', 'Getlocation Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(78, 15, 6, 0, 0, 1, 1, 0, 'Custom\\GetlocationsPage', '2022-03-04 00:36:45', '2022-03-04 00:21:56', 'Inherit', 'Inherit', 'getlocation', 'Getlocation Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(79, 15, 7, 1, 0, 1, 1, 1, 'Custom\\GetlocationsPage', '2022-03-04 00:36:47', '2022-03-04 00:21:56', 'Inherit', 'Inherit', 'getlocation', 'Getlocation Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(80, 15, 8, 1, 1, 1, 1, 1, 'Custom\\GetlocationsPage', '2022-03-06 21:17:40', '2022-03-04 00:21:56', 'Inherit', 'Inherit', 'getlocation', 'Getlocation Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 0),
(81, 10, 6, 0, 0, 1, 1, 0, 'Custom\\RegionsPage', '2022-03-12 06:00:47', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(82, 10, 7, 1, 0, 1, 1, 1, 'Custom\\RegionsPage', '2022-03-12 06:00:50', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(83, 10, 8, 0, 0, 1, 1, 0, 'Custom\\RegionsPage', '2022-03-12 06:01:41', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(84, 10, 9, 1, 0, 1, 1, 1, 'Custom\\RegionsPage', '2022-03-12 06:02:14', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(85, 9, 10, 1, 1, 0, 1, 1, 'Custom\\ArticlePage', '2022-03-12 06:04:36', '2022-02-22 04:29:15', 'Inherit', 'Inherit', 'dolorum-optio-tempore-voluptas-dignissimos-cumque-fuga-qui-quibusdam-quia', 'Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia', NULL, '<p>Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta. Et eveniet enim. Qui velit est ea dolorem doloremque deleniti aperiam unde soluta. Est cum et quod quos aut ut et sit sunt. Voluptate porro consequatur assumenda perferendis dolore.</p><p>Sit repellat hic cupiditate hic ut nemo. Quis nihil sunt non reiciendis. Sequi in accusamus harum vel aspernatur. Excepturi numquam nihil cumque odio. Et voluptate cupiditate.</p><blockquote>\n<p>Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.</p>\n</blockquote><p>Sed quo laboriosam qui architecto. Occaecati repellendus omnis dicta inventore tempore provident voluptas mollitia aliquid. Id repellendus quia. Asperiores nihil magni dicta est suscipit perspiciatis. Voluptate ex rerum assumenda dolores nihil quaerat. Dolor porro tempora et quibusdam voluptas. Beatae aut at ad qui tempore corrupti velit quisquam rerum. Omnis dolorum exercitationem harum qui qui blanditiis neque. Iusto autem itaque. Repudiandae hic quae aspernatur ea neque qui. Architecto voluptatem magni. Vel magnam quod et tempora deleniti error rerum nihil tempora.</p><h3>Et quae iure vel ut odit alias.</h3><p>Officiis animi maxime nulla quo et harum eum quis a. Sit hic in qui quos fugit ut rerum atque. Optio provident dolores atque voluptatem rem excepturi molestiae qui. Voluptatem laborum omnis ullam quibusdam perspiciatis nulla nostrum. Voluptatum est libero eum nesciunt aliquid qui. Quia et suscipit non sequi. Maxime sed odit. Beatae nesciunt nesciunt accusamus quia aut ratione aspernatur dolor. Sint harum eveniet dicta exercitationem minima. Exercitationem omnis asperiores natus aperiam dolor consequatur id ex sed. Quibusdam rerum dolores sint consequatur quidem ea. Beatae minima sunt libero soluta sapiente in rem assumenda. Et qui odit voluptatem. Cum quibusdam voluptatem voluptatem accusamus mollitia aut atque aut.</p><p><img class=\"img-fluid\" src=\"assets/img/blog/blog-inside-post.jpg\" alt=\"\"></p><h3>Ut repellat blanditiis est dolore sunt dolorum quae.</h3><p>Rerum ea est assumenda pariatur quasi et quam. Facilis nam porro amet nostrum. In assumenda quia quae a id praesentium. Quos deleniti libero sed occaecati aut porro autem. Consectetur sed excepturi sint non placeat quia repellat incidunt labore. Autem facilis hic dolorum dolores vel. Consectetur quasi id et optio praesentium aut asperiores eaque aut. Explicabo omnis quibusdam esse. Ex libero illum iusto totam et ut aut blanditiis. Veritatis numquam ut illum ut a quam vitae.</p><p>Alias quia non aliquid. Eos et ea velit. Voluptatem maxime enim omnis ipsa voluptas incidunt. Nulla sit eaque mollitia nisi asperiores est veniam.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 8),
(86, 8, 5, 1, 1, 1, 1, 1, 'Custom\\ArticleHolder', '2022-03-12 06:04:36', '2022-02-22 04:27:54', 'Inherit', 'Inherit', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(87, 9, 11, 0, 1, 1, 1, 0, 'Custom\\ArticlePage', '2022-03-12 06:04:36', '2022-02-22 04:29:15', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(88, 8, 6, 0, 0, 1, 1, 0, 'Custom\\ArticleHolder', '2022-03-12 06:04:40', '2022-02-22 04:27:54', 'Inherit', 'Inherit', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0);
INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(89, 8, 7, 1, 1, 1, 1, 1, 'Custom\\ArticleHolder', '2022-03-12 06:05:12', '2022-02-22 04:27:54', 'Inherit', 'Inherit', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(90, 13, 4, 1, 1, 0, 1, 1, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-12 06:07:05', '2022-02-23 01:58:07', 'Inherit', 'Inherit', 'blog1', 'blog1', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 12),
(91, 14, 4, 1, 1, 0, 1, 1, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-12 06:07:05', '2022-02-23 03:58:55', 'Inherit', 'Inherit', 'new-blog-post', 'New Blog Post', NULL, '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply a dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 12),
(92, 12, 7, 1, 1, 1, 1, 1, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-12 06:07:05', '2022-02-22 21:12:01', 'Inherit', 'Inherit', 'std-page', 'Std Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(93, 13, 5, 0, 1, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-12 06:07:05', '2022-02-23 01:58:07', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(94, 14, 5, 0, 1, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-12 06:07:05', '2022-02-23 03:58:55', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(95, 7, 7, 0, 0, 1, 1, 0, 'Custom\\TeamPage', '2022-03-12 06:07:41', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 2),
(96, 7, 8, 0, 0, 1, 1, 0, 'Custom\\TeamPage', '2022-03-12 06:07:41', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 2),
(97, 7, 9, 0, 0, 1, 1, 0, 'Custom\\TeamPage', '2022-03-12 06:07:48', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(98, 7, 10, 0, 0, 1, 1, 0, 'Custom\\TeamPage', '2022-03-12 06:07:48', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(99, 11, 6, 0, 0, 1, 1, 0, 'Custom\\PropertySearchPage', '2022-03-12 06:07:56', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'new-page-2', 'Properties ', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(100, 3, 15, 0, 0, 1, 1, 0, 'Custom\\ContactPage', '2022-03-12 06:08:00', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(101, 7, 11, 1, 0, 1, 1, 1, 'Custom\\TeamPage', '2022-03-12 06:08:18', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'Team', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(102, 11, 7, 1, 0, 1, 1, 1, 'Custom\\PropertySearchPage', '2022-03-12 06:08:21', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'new-page-2', 'Properties ', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(103, 3, 16, 1, 0, 1, 1, 1, 'Custom\\ContactPage', '2022-03-12 06:08:25', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(104, 1, 7, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-03-12 06:15:59', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(105, 1, 8, 1, 0, 1, 1, 1, 'Custom\\HomePage', '2022-03-12 06:16:01', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(106, 1, 9, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-03-12 06:16:15', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(107, 1, 10, 1, 0, 1, 1, 1, 'Custom\\HomePage', '2022-03-12 06:16:17', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(108, 11, 8, 0, 0, 1, 1, 0, 'Custom\\PropertySearchPage', '2022-03-12 07:33:59', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'urgent-needs', 'Urgent Needs', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(109, 11, 9, 1, 0, 1, 1, 1, 'Custom\\PropertySearchPage', '2022-03-12 07:33:59', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'urgent-needs', 'Urgent Needs', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(110, 11, 10, 0, 0, 1, 1, 0, 'Custom\\PropertySearchPage', '2022-03-12 08:06:07', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'urgent-needs', 'Urgent Needs', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(111, 11, 11, 1, 0, 1, 1, 1, 'Custom\\PropertySearchPage', '2022-03-12 08:06:10', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'urgent-needs', 'Urgent Needs', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(112, 10, 10, 0, 0, 1, 1, 0, 'Custom\\RegionsPage', '2022-03-12 08:06:18', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(113, 6, 6, 1, 1, 1, 1, 1, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-03-12 08:06:39', '2022-02-22 03:01:18', 'Inherit', 'Inherit', 'sub-nav', 'sub nav', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 2),
(114, 2, 3, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-12 08:08:09', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(115, 2, 4, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-12 08:08:14', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(116, 2, 5, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-12 08:08:47', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'about-us', 'News', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(117, 2, 6, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-12 08:08:47', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'about-us', 'News', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(118, 10, 11, 1, 0, 1, 1, 1, 'Custom\\RegionsPage', '2022-03-12 08:17:22', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(119, 7, 12, 0, 0, 1, 1, 0, 'Custom\\TeamPage', '2022-03-12 08:19:37', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'New Members', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(120, 7, 13, 1, 0, 1, 1, 1, 'Custom\\TeamPage', '2022-03-12 08:19:38', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'New Members', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(121, 1, 11, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-03-12 08:32:04', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(122, 1, 12, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-03-12 08:41:56', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(123, 1, 13, 1, 0, 1, 1, 1, 'Custom\\HomePage', '2022-03-12 08:41:59', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(124, 1, 14, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-03-13 03:50:58', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(125, 1, 15, 1, 0, 1, 1, 1, 'Custom\\HomePage', '2022-03-13 03:50:59', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(126, 1, 16, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-03-13 06:31:57', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(127, 1, 17, 1, 0, 1, 1, 1, 'Custom\\HomePage', '2022-03-13 06:31:59', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(128, 1, 18, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-03-20 00:14:11', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(129, 1, 19, 1, 0, 1, 1, 1, 'Custom\\HomePage', '2022-03-20 00:14:14', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(130, 10, 12, 0, 0, 1, 1, 0, 'Custom\\ServicesPage', '2022-03-20 04:51:03', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(131, 10, 13, 1, 0, 1, 1, 1, 'Custom\\ServicesPage', '2022-03-20 04:51:05', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'new-page', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(132, 10, 14, 0, 0, 1, 1, 0, 'Custom\\ServicesPage', '2022-03-20 05:06:06', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'our-services', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(133, 10, 15, 1, 0, 1, 1, 1, 'Custom\\ServicesPage', '2022-03-20 05:06:08', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'our-services', 'Our services', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(134, 16, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 05:28:18', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 2),
(135, 16, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 05:31:47', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2),
(136, 16, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 05:31:47', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2),
(137, 2, 7, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-20 06:25:50', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'news', 'News', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(138, 2, 8, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-20 06:25:52', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'news', 'News', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(139, 2, 9, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-20 06:28:33', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(140, 2, 10, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\Blog', '2022-03-20 06:28:33', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(141, 16, 4, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 06:29:18', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2),
(142, 16, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 06:29:19', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2),
(143, 16, 6, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 12:34:59', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2),
(144, 16, 7, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 12:35:01', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2),
(145, 16, 8, 0, 0, 1, 1, 0, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 14:31:18', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2),
(146, 16, 9, 1, 0, 1, 1, 1, 'SilverStripe\\Blog\\Model\\BlogPost', '2022-03-20 14:31:19', '2022-03-20 05:28:18', 'Inherit', 'Inherit', 'our-tree-planting-program', 'Our tree planting program', NULL, '<p><span>Our tree planting program helps reforest land and expands orangutan habitat areas. Receive a personalized Adopt a Tree certificate for your planted trees, for as little as Rs10 per tree.</span></p><p>Trees can, like sponges, help sequester carbon and thereby reduce the impact of man-made CO<sub>2</sub><span>&nbsp;</span>emissions. Locally, trees provide habitat for wildlife, food for people and animals, and stabilize the soil. A gift of a tree lasts for generations.</p><p>Working in conjunction with its Indonesian partners, Orang Utan Republik Foundation (OURF) is offering the opportunity to support the planting and maintenance of trees in Sumatra through an Adopt-a-Tree Certificate Program. Planting trees to contribute towards the reforestation of land adjacent to orangutan habitat. The Orangutan Caring Club of North Sumatra has permission from the Forestry Department to plant trees on 100 hectares of degraded land next to Gunung Leuser National Park.</p><p>You can help OURF support the tree planting activities being carried out by the Orangutan Caring Club. You can choose how many trees to plant and the recipient of the tree-planting certificate. All certificates, along with the letter and photographs if applicable, will be delivered electronically. Your trees will be planted in/near Gunung Leuser National Park, Sumatra.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 2),
(147, 7, 14, 0, 0, 1, 1, 0, 'Custom\\TeamPage', '2022-03-20 16:43:45', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'New Members', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(148, 7, 15, 1, 0, 1, 1, 1, 'Custom\\TeamPage', '2022-03-20 16:43:47', '2022-02-22 04:26:18', 'Inherit', 'Inherit', 'team', 'New Members', NULL, '<p>sfdgdfshsjjshgsghg</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(149, 1, 20, 0, 0, 1, 1, 0, 'Custom\\HomePage', '2022-03-24 11:54:56', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(150, 1, 21, 1, 0, 1, 1, 1, 'Custom\\HomePage', '2022-03-24 12:27:30', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! TWelcome to SilverStripe. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(151, 10, 16, 0, 0, 1, 1, 0, 'Custom\\ServicesPage', '2022-03-24 14:51:59', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'our-services', 'Our services', NULL, '<p>our service content</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(152, 10, 17, 1, 0, 1, 1, 1, 'Custom\\ServicesPage', '2022-03-24 14:52:00', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'our-services', 'Our services', NULL, '<p>our service content</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(153, 10, 18, 0, 0, 1, 1, 0, 'Custom\\ServicesPage', '2022-03-24 15:15:52', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'our-services', 'Our services', NULL, '<p>We are more than 100 friends with the same wavelength, joined together to establish the trust \"KUZHALOSAI\" for helping children, especially ORPHAN KIDS AND SINGLE PARENT’S CHILDREN. We are committed to taking care of the kids by providing food, quality education, as well as Love and care.</p><p>We also make a positive impact on our society by providing guidance in various situations, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible.</p><p>WE AIM TO PROVIDE A GOOD QUALITY OF LIFE TO ALL THE KIDS WE CARE FOR.</p><p>We welcome anyone with the same thoughts, to join our Kuzhalosai family.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(154, 10, 19, 1, 0, 1, 1, 1, 'Custom\\ServicesPage', '2022-03-24 15:15:55', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'our-services', 'Our services', NULL, '<p>We are more than 100 friends with the same wavelength, joined together to establish the trust \"KUZHALOSAI\" for helping children, especially ORPHAN KIDS AND SINGLE PARENT’S CHILDREN. We are committed to taking care of the kids by providing food, quality education, as well as Love and care.</p><p>We also make a positive impact on our society by providing guidance in various situations, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible.</p><p>WE AIM TO PROVIDE A GOOD QUALITY OF LIFE TO ALL THE KIDS WE CARE FOR.</p><p>We welcome anyone with the same thoughts, to join our Kuzhalosai family.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(155, 10, 20, 0, 0, 1, 1, 0, 'Custom\\ServicesPage', '2022-03-24 15:25:05', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'our-services', 'Our services', NULL, '<p>We are more than 100 friends with the same wavelength, joined together to establish the trust \"KUZHALOSAI\" for helping children, especially ORPHAN KIDS AND SINGLE PARENT’S CHILDREN. We are committed to taking care of the kids by providing food, quality education, as well as Love and care.</p><p>We also make a positive impact on our society by providing guidance in various situations, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible.</p><p>WE AIM TO PROVIDE A GOOD QUALITY OF LIFE TO ALL THE KIDS WE CARE FOR.</p><p>We welcome anyone with the same thoughts, to join our Kuzhalosai family.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(156, 10, 21, 1, 0, 1, 1, 1, 'Custom\\ServicesPage', '2022-03-24 15:25:07', '2022-02-22 04:32:53', 'Inherit', 'Inherit', 'our-services', 'Our services', NULL, '<p>We are more than 100 friends with the same wavelength, joined together to establish the trust \"KUZHALOSAI\" for helping children, especially ORPHAN KIDS AND SINGLE PARENT’S CHILDREN. We are committed to taking care of the kids by providing food, quality education, as well as Love and care.</p><p>We also make a positive impact on our society by providing guidance in various situations, by raising awareness of social events, by protecting the environment, by guiding the poor in the right direction, by saving lives from emergencies, and by making the next generation of human beings better socially responsible.</p><p>WE AIM TO PROVIDE A GOOD QUALITY OF LIFE TO ALL THE KIDS WE CARE FOR.</p><p>We welcome anyone with the same thoughts, to join our Kuzhalosai family.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(157, 11, 12, 0, 0, 1, 1, 0, 'Custom\\NeedsSearchPage', '2022-03-24 17:58:17', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'urgent-needs', 'Urgent Needs', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(158, 11, 13, 1, 0, 1, 1, 1, 'Custom\\NeedsSearchPage', '2022-03-24 17:58:18', '2022-02-22 04:40:03', 'Inherit', 'Inherit', 'urgent-needs', 'Urgent Needs', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(159, 4, 3, 0, 0, 1, 1, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-03-24 18:15:56', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p class=\"pt-5\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 0),
(160, 4, 4, 1, 0, 1, 1, 1, 'SilverStripe\\ErrorPage\\ErrorPage', '2022-03-24 18:15:58', '2022-02-21 22:28:57', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p class=\"pt-5\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_viewergroups`
--

CREATE TABLE `sitetree_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialmedialink`
--

CREATE TABLE `socialmedialink` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('IQnection\\SocialMedia\\Model\\SocialMediaLink') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'IQnection\\SocialMedia\\Model\\SocialMediaLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `URL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage`
--

CREATE TABLE `virtualpage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_live`
--

CREATE TABLE `virtualpage_live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_versions`
--

CREATE TABLE `virtualpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Widgets\\Model\\Widget','SilverStripe\\Blog\\Widgets\\BlogArchiveWidget','SilverStripe\\Blog\\Widgets\\BlogCategoriesWidget','SilverStripe\\Blog\\Widgets\\BlogFeaturedPostsWidget','SilverStripe\\Blog\\Widgets\\BlogRecentPostsWidget','SilverStripe\\Blog\\Widgets\\BlogTagsCloudWidget','SilverStripe\\Blog\\Widgets\\BlogTagsWidget') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Widgets\\Model\\Widget',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `widgetarea`
--

CREATE TABLE `widgetarea` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Widgets\\Model\\WidgetArea') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Widgets\\Model\\WidgetArea',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `widgetarea_live`
--

CREATE TABLE `widgetarea_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Widgets\\Model\\WidgetArea') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Widgets\\Model\\WidgetArea',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `widgetarea_versions`
--

CREATE TABLE `widgetarea_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\Widgets\\Model\\WidgetArea') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Widgets\\Model\\WidgetArea',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `widget_live`
--

CREATE TABLE `widget_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Widgets\\Model\\Widget','SilverStripe\\Blog\\Widgets\\BlogArchiveWidget','SilverStripe\\Blog\\Widgets\\BlogCategoriesWidget','SilverStripe\\Blog\\Widgets\\BlogFeaturedPostsWidget','SilverStripe\\Blog\\Widgets\\BlogRecentPostsWidget','SilverStripe\\Blog\\Widgets\\BlogTagsCloudWidget','SilverStripe\\Blog\\Widgets\\BlogTagsWidget') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Widgets\\Model\\Widget',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `widget_versions`
--

CREATE TABLE `widget_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\Widgets\\Model\\Widget','SilverStripe\\Blog\\Widgets\\BlogArchiveWidget','SilverStripe\\Blog\\Widgets\\BlogCategoriesWidget','SilverStripe\\Blog\\Widgets\\BlogFeaturedPostsWidget','SilverStripe\\Blog\\Widgets\\BlogRecentPostsWidget','SilverStripe\\Blog\\Widgets\\BlogTagsCloudWidget','SilverStripe\\Blog\\Widgets\\BlogTagsWidget') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Widgets\\Model\\Widget',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blogarchivewidget`
--
ALTER TABLE `blogarchivewidget`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogarchivewidget_live`
--
ALTER TABLE `blogarchivewidget_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogarchivewidget_versions`
--
ALTER TABLE `blogarchivewidget_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogcategorieswidget`
--
ALTER TABLE `blogcategorieswidget`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogcategorieswidget_live`
--
ALTER TABLE `blogcategorieswidget_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogcategorieswidget_versions`
--
ALTER TABLE `blogcategorieswidget_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogcategory`
--
ALTER TABLE `blogcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogfeaturedpostswidget`
--
ALTER TABLE `blogfeaturedpostswidget`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogfeaturedpostswidget_live`
--
ALTER TABLE `blogfeaturedpostswidget_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogfeaturedpostswidget_versions`
--
ALTER TABLE `blogfeaturedpostswidget_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogpost`
--
ALTER TABLE `blogpost`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PublishDate` (`PublishDate`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `blogpost_authors`
--
ALTER TABLE `blogpost_authors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `blogpost_categories`
--
ALTER TABLE `blogpost_categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogCategoryID` (`BlogCategoryID`);

--
-- Indexes for table `blogpost_live`
--
ALTER TABLE `blogpost_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PublishDate` (`PublishDate`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `blogpost_tags`
--
ALTER TABLE `blogpost_tags`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogTagID` (`BlogTagID`);

--
-- Indexes for table `blogpost_versions`
--
ALTER TABLE `blogpost_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PublishDate` (`PublishDate`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `blogrecentpostswidget`
--
ALTER TABLE `blogrecentpostswidget`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogrecentpostswidget_live`
--
ALTER TABLE `blogrecentpostswidget_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogrecentpostswidget_versions`
--
ALTER TABLE `blogrecentpostswidget_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogtag`
--
ALTER TABLE `blogtag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogtagscloudwidget`
--
ALTER TABLE `blogtagscloudwidget`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogtagscloudwidget_live`
--
ALTER TABLE `blogtagscloudwidget_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogtagscloudwidget_versions`
--
ALTER TABLE `blogtagscloudwidget_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogtagswidget`
--
ALTER TABLE `blogtagswidget`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogtagswidget_live`
--
ALTER TABLE `blogtagswidget_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blogtagswidget_versions`
--
ALTER TABLE `blogtagswidget_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `BlogID` (`BlogID`);

--
-- Indexes for table `blog_contributors`
--
ALTER TABLE `blog_contributors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `blog_editors`
--
ALTER TABLE `blog_editors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `blog_live`
--
ALTER TABLE `blog_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blog_versions`
--
ALTER TABLE `blog_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `blog_writers`
--
ALTER TABLE `blog_writers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `changeset`
--
ALTER TABLE `changeset`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `State` (`State`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `PublisherID` (`PublisherID`);

--
-- Indexes for table `changesetitem`
--
ALTER TABLE `changesetitem`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ObjectUniquePerChangeSet` (`ObjectID`,`ObjectClass`,`ChangeSetID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ChangeSetID` (`ChangeSetID`),
  ADD KEY `Object` (`ObjectID`,`ObjectClass`);

--
-- Indexes for table `changesetitem_referencedby`
--
ALTER TABLE `changesetitem_referencedby`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ChangeSetItemID` (`ChangeSetItemID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `contactinquiry`
--
ALTER TABLE `contactinquiry`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `contactpage`
--
ALTER TABLE `contactpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `TermsPageID` (`TermsPageID`),
  ADD KEY `PrivacyPageID` (`PrivacyPageID`);

--
-- Indexes for table `contactpage_live`
--
ALTER TABLE `contactpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `TermsPageID` (`TermsPageID`),
  ADD KEY `PrivacyPageID` (`PrivacyPageID`);

--
-- Indexes for table `contactpage_versions`
--
ALTER TABLE `contactpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `TermsPageID` (`TermsPageID`),
  ADD KEY `PrivacyPageID` (`PrivacyPageID`);

--
-- Indexes for table `contentwidget`
--
ALTER TABLE `contentwidget`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contentwidget_live`
--
ALTER TABLE `contentwidget_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contentwidget_versions`
--
ALTER TABLE `contentwidget_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `custom_articlecategory`
--
ALTER TABLE `custom_articlecategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ArticleHolderID` (`ArticleHolderID`);

--
-- Indexes for table `custom_articlecomment`
--
ALTER TABLE `custom_articlecomment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ArticlePageID` (`ArticlePageID`);

--
-- Indexes for table `custom_articlepage`
--
ALTER TABLE `custom_articlepage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CoverPhotoID` (`CoverPhotoID`),
  ADD KEY `AuthorImageID` (`AuthorImageID`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `TeamID` (`TeamID`);

--
-- Indexes for table `custom_articlepage_categories`
--
ALTER TABLE `custom_articlepage_categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Custom_ArticlePageID` (`Custom_ArticlePageID`),
  ADD KEY `Custom_ArticleCategoryID` (`Custom_ArticleCategoryID`);

--
-- Indexes for table `custom_articlepage_live`
--
ALTER TABLE `custom_articlepage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CoverPhotoID` (`CoverPhotoID`),
  ADD KEY `AuthorImageID` (`AuthorImageID`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `TeamID` (`TeamID`);

--
-- Indexes for table `custom_articlepage_versions`
--
ALTER TABLE `custom_articlepage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CoverPhotoID` (`CoverPhotoID`),
  ADD KEY `AuthorImageID` (`AuthorImageID`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `TeamID` (`TeamID`);

--
-- Indexes for table `custom_contactpage`
--
ALTER TABLE `custom_contactpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custom_contactpage_live`
--
ALTER TABLE `custom_contactpage_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custom_contactpage_versions`
--
ALTER TABLE `custom_contactpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `custom_getlocations`
--
ALTER TABLE `custom_getlocations`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `custom_getlocations_live`
--
ALTER TABLE `custom_getlocations_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `custom_getlocations_versions`
--
ALTER TABLE `custom_getlocations_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `custom_homepage`
--
ALTER TABLE `custom_homepage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `custom_homepage_live`
--
ALTER TABLE `custom_homepage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `custom_homepage_versions`
--
ALTER TABLE `custom_homepage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `custom_needs`
--
ALTER TABLE `custom_needs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`);

--
-- Indexes for table `custom_needs_live`
--
ALTER TABLE `custom_needs_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`);

--
-- Indexes for table `custom_needs_versions`
--
ALTER TABLE `custom_needs_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`);

--
-- Indexes for table `custom_project`
--
ALTER TABLE `custom_project`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ProjectImageID` (`ProjectImageID`);

--
-- Indexes for table `custom_projectspage`
--
ALTER TABLE `custom_projectspage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custom_projectspage_live`
--
ALTER TABLE `custom_projectspage_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custom_projectspage_versions`
--
ALTER TABLE `custom_projectspage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `custom_project_live`
--
ALTER TABLE `custom_project_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ProjectImageID` (`ProjectImageID`);

--
-- Indexes for table `custom_project_versions`
--
ALTER TABLE `custom_project_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ProjectImageID` (`ProjectImageID`);

--
-- Indexes for table `custom_property`
--
ALTER TABLE `custom_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`),
  ADD KEY `ServiceID` (`ServiceID`);

--
-- Indexes for table `custom_property_live`
--
ALTER TABLE `custom_property_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`),
  ADD KEY `ServiceID` (`ServiceID`);

--
-- Indexes for table `custom_property_versions`
--
ALTER TABLE `custom_property_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`),
  ADD KEY `ServiceID` (`ServiceID`);

--
-- Indexes for table `custom_region`
--
ALTER TABLE `custom_region`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `RegionsPageID` (`RegionsPageID`);

--
-- Indexes for table `custom_region_live`
--
ALTER TABLE `custom_region_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `RegionsPageID` (`RegionsPageID`);

--
-- Indexes for table `custom_region_versions`
--
ALTER TABLE `custom_region_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `RegionsPageID` (`RegionsPageID`);

--
-- Indexes for table `custom_service`
--
ALTER TABLE `custom_service`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `ServicesPageID` (`ServicesPageID`);

--
-- Indexes for table `custom_servicespage`
--
ALTER TABLE `custom_servicespage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custom_servicespage_live`
--
ALTER TABLE `custom_servicespage_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custom_servicespage_versions`
--
ALTER TABLE `custom_servicespage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `custom_service_live`
--
ALTER TABLE `custom_service_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `ServicesPageID` (`ServicesPageID`);

--
-- Indexes for table `custom_service_versions`
--
ALTER TABLE `custom_service_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `ServicesPageID` (`ServicesPageID`);

--
-- Indexes for table `custom_sponsor`
--
ALTER TABLE `custom_sponsor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SponserLogoID` (`SponserLogoID`);

--
-- Indexes for table `custom_sponsor_live`
--
ALTER TABLE `custom_sponsor_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SponserLogoID` (`SponserLogoID`);

--
-- Indexes for table `custom_sponsor_versions`
--
ALTER TABLE `custom_sponsor_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SponserLogoID` (`SponserLogoID`);

--
-- Indexes for table `custom_team`
--
ALTER TABLE `custom_team`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `TeamPhotoID` (`TeamPhotoID`),
  ADD KEY `TeamPageID` (`TeamPageID`),
  ADD KEY `TeamAdminID` (`TeamAdminID`);

--
-- Indexes for table `custom_teampage`
--
ALTER TABLE `custom_teampage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custom_teampage_live`
--
ALTER TABLE `custom_teampage_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custom_teampage_versions`
--
ALTER TABLE `custom_teampage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `custom_team_live`
--
ALTER TABLE `custom_team_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `TeamPhotoID` (`TeamPhotoID`),
  ADD KEY `TeamPageID` (`TeamPageID`),
  ADD KEY `TeamAdminID` (`TeamAdminID`);

--
-- Indexes for table `custom_team_versions`
--
ALTER TABLE `custom_team_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `TeamPhotoID` (`TeamPhotoID`),
  ADD KEY `TeamPageID` (`TeamPageID`),
  ADD KEY `TeamAdminID` (`TeamAdminID`);

--
-- Indexes for table `errorpage`
--
ALTER TABLE `errorpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `FileHash` (`FileHash`);

--
-- Indexes for table `filelink`
--
ALTER TABLE `filelink`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `LinkedID` (`LinkedID`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `file_editorgroups`
--
ALTER TABLE `file_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FileID` (`FileID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `file_live`
--
ALTER TABLE `file_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `FileHash` (`FileHash`);

--
-- Indexes for table `file_versions`
--
ALTER TABLE `file_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `FileHash` (`FileHash`);

--
-- Indexes for table `file_viewergroups`
--
ALTER TABLE `file_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FileID` (`FileID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `formcapture_capturedfield`
--
ALTER TABLE `formcapture_capturedfield`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubmissionID` (`SubmissionID`);

--
-- Indexes for table `formcapture_formsubmission`
--
ALTER TABLE `formcapture_formsubmission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Created` (`Created`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `group_roles`
--
ALTER TABLE `group_roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `loginattempt`
--
ALTER TABLE `loginattempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `EmailHashed` (`EmailHashed`);

--
-- Indexes for table `loginsession`
--
ALTER TABLE `loginsession`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LastAccessed` (`LastAccessed`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Surname` (`Surname`),
  ADD KEY `FirstName` (`FirstName`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `BlogProfileImageID` (`BlogProfileImageID`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `memberpassword`
--
ALTER TABLE `memberpassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`);

--
-- Indexes for table `permissionrole`
--
ALTER TABLE `permissionrole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Title` (`Title`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indexes for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `rememberloginhash`
--
ALTER TABLE `rememberloginhash`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `LoginSessionID` (`LoginSessionID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `DeviceID` (`DeviceID`),
  ADD KEY `Hash` (`Hash`);

--
-- Indexes for table `siteconfig`
--
ALTER TABLE `siteconfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree`
--
ALTER TABLE `sitetree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`);

--
-- Indexes for table `sitetreelink`
--
ALTER TABLE `sitetreelink`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `LinkedID` (`LinkedID`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`);

--
-- Indexes for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`);

--
-- Indexes for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `socialmedialink`
--
ALTER TABLE `socialmedialink`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SortOrder` (`SortOrder`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `virtualpage`
--
ALTER TABLE `virtualpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `widgetarea`
--
ALTER TABLE `widgetarea`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `widgetarea_live`
--
ALTER TABLE `widgetarea_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `widgetarea_versions`
--
ALTER TABLE `widgetarea_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `widget_live`
--
ALTER TABLE `widget_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `widget_versions`
--
ALTER TABLE `widget_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogarchivewidget`
--
ALTER TABLE `blogarchivewidget`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogarchivewidget_live`
--
ALTER TABLE `blogarchivewidget_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogarchivewidget_versions`
--
ALTER TABLE `blogarchivewidget_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogcategorieswidget`
--
ALTER TABLE `blogcategorieswidget`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogcategorieswidget_live`
--
ALTER TABLE `blogcategorieswidget_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogcategorieswidget_versions`
--
ALTER TABLE `blogcategorieswidget_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogcategory`
--
ALTER TABLE `blogcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogfeaturedpostswidget`
--
ALTER TABLE `blogfeaturedpostswidget`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogfeaturedpostswidget_live`
--
ALTER TABLE `blogfeaturedpostswidget_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogfeaturedpostswidget_versions`
--
ALTER TABLE `blogfeaturedpostswidget_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogpost`
--
ALTER TABLE `blogpost`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blogpost_authors`
--
ALTER TABLE `blogpost_authors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogpost_categories`
--
ALTER TABLE `blogpost_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogpost_live`
--
ALTER TABLE `blogpost_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blogpost_tags`
--
ALTER TABLE `blogpost_tags`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogpost_versions`
--
ALTER TABLE `blogpost_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blogrecentpostswidget`
--
ALTER TABLE `blogrecentpostswidget`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogrecentpostswidget_live`
--
ALTER TABLE `blogrecentpostswidget_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogrecentpostswidget_versions`
--
ALTER TABLE `blogrecentpostswidget_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogtag`
--
ALTER TABLE `blogtag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogtagscloudwidget`
--
ALTER TABLE `blogtagscloudwidget`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogtagscloudwidget_live`
--
ALTER TABLE `blogtagscloudwidget_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogtagscloudwidget_versions`
--
ALTER TABLE `blogtagscloudwidget_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogtagswidget`
--
ALTER TABLE `blogtagswidget`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogtagswidget_live`
--
ALTER TABLE `blogtagswidget_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogtagswidget_versions`
--
ALTER TABLE `blogtagswidget_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_contributors`
--
ALTER TABLE `blog_contributors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_editors`
--
ALTER TABLE `blog_editors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_live`
--
ALTER TABLE `blog_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_versions`
--
ALTER TABLE `blog_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_writers`
--
ALTER TABLE `blog_writers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `changeset`
--
ALTER TABLE `changeset`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `changesetitem`
--
ALTER TABLE `changesetitem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `changesetitem_referencedby`
--
ALTER TABLE `changesetitem_referencedby`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `contactinquiry`
--
ALTER TABLE `contactinquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactpage`
--
ALTER TABLE `contactpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactpage_live`
--
ALTER TABLE `contactpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactpage_versions`
--
ALTER TABLE `contactpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contentwidget`
--
ALTER TABLE `contentwidget`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contentwidget_live`
--
ALTER TABLE `contentwidget_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contentwidget_versions`
--
ALTER TABLE `contentwidget_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_articlecategory`
--
ALTER TABLE `custom_articlecategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_articlecomment`
--
ALTER TABLE `custom_articlecomment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_articlepage`
--
ALTER TABLE `custom_articlepage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `custom_articlepage_categories`
--
ALTER TABLE `custom_articlepage_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_articlepage_live`
--
ALTER TABLE `custom_articlepage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `custom_articlepage_versions`
--
ALTER TABLE `custom_articlepage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `custom_contactpage`
--
ALTER TABLE `custom_contactpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_contactpage_live`
--
ALTER TABLE `custom_contactpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_contactpage_versions`
--
ALTER TABLE `custom_contactpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_getlocations`
--
ALTER TABLE `custom_getlocations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_getlocations_live`
--
ALTER TABLE `custom_getlocations_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_getlocations_versions`
--
ALTER TABLE `custom_getlocations_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_homepage`
--
ALTER TABLE `custom_homepage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_homepage_live`
--
ALTER TABLE `custom_homepage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_homepage_versions`
--
ALTER TABLE `custom_homepage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `custom_needs`
--
ALTER TABLE `custom_needs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_needs_live`
--
ALTER TABLE `custom_needs_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_needs_versions`
--
ALTER TABLE `custom_needs_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `custom_project`
--
ALTER TABLE `custom_project`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_projectspage`
--
ALTER TABLE `custom_projectspage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_projectspage_live`
--
ALTER TABLE `custom_projectspage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_projectspage_versions`
--
ALTER TABLE `custom_projectspage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_project_live`
--
ALTER TABLE `custom_project_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_project_versions`
--
ALTER TABLE `custom_project_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `custom_property`
--
ALTER TABLE `custom_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_property_live`
--
ALTER TABLE `custom_property_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_property_versions`
--
ALTER TABLE `custom_property_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `custom_region`
--
ALTER TABLE `custom_region`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_region_live`
--
ALTER TABLE `custom_region_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_region_versions`
--
ALTER TABLE `custom_region_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `custom_service`
--
ALTER TABLE `custom_service`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `custom_servicespage`
--
ALTER TABLE `custom_servicespage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `custom_servicespage_live`
--
ALTER TABLE `custom_servicespage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `custom_servicespage_versions`
--
ALTER TABLE `custom_servicespage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_service_live`
--
ALTER TABLE `custom_service_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `custom_service_versions`
--
ALTER TABLE `custom_service_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `custom_sponsor`
--
ALTER TABLE `custom_sponsor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_sponsor_live`
--
ALTER TABLE `custom_sponsor_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_sponsor_versions`
--
ALTER TABLE `custom_sponsor_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `custom_team`
--
ALTER TABLE `custom_team`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_teampage`
--
ALTER TABLE `custom_teampage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_teampage_live`
--
ALTER TABLE `custom_teampage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_teampage_versions`
--
ALTER TABLE `custom_teampage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_team_live`
--
ALTER TABLE `custom_team_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_team_versions`
--
ALTER TABLE `custom_team_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `errorpage`
--
ALTER TABLE `errorpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `filelink`
--
ALTER TABLE `filelink`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_editorgroups`
--
ALTER TABLE `file_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_live`
--
ALTER TABLE `file_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `file_versions`
--
ALTER TABLE `file_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `file_viewergroups`
--
ALTER TABLE `file_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formcapture_capturedfield`
--
ALTER TABLE `formcapture_capturedfield`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `formcapture_formsubmission`
--
ALTER TABLE `formcapture_formsubmission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `group_roles`
--
ALTER TABLE `group_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginattempt`
--
ALTER TABLE `loginattempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `loginsession`
--
ALTER TABLE `loginsession`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `memberpassword`
--
ALTER TABLE `memberpassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissionrole`
--
ALTER TABLE `permissionrole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rememberloginhash`
--
ALTER TABLE `rememberloginhash`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteconfig`
--
ALTER TABLE `siteconfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree`
--
ALTER TABLE `sitetree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sitetreelink`
--
ALTER TABLE `sitetreelink`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialmedialink`
--
ALTER TABLE `socialmedialink`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtualpage`
--
ALTER TABLE `virtualpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgetarea`
--
ALTER TABLE `widgetarea`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgetarea_live`
--
ALTER TABLE `widgetarea_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgetarea_versions`
--
ALTER TABLE `widgetarea_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widget_live`
--
ALTER TABLE `widget_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widget_versions`
--
ALTER TABLE `widget_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
