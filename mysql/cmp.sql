-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2017 at 06:06 AM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) NOT NULL,
  `memberid` bigint(20) NOT NULL,
  `award` enum('Hall of Honor','Hall of Fame','Horizon Award','Lifetime Achievement Award') NOT NULL,
  `year` year(4) NOT NULL,
  `status` enum('active','delete') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `memberid`, `award`, `year`, `status`) VALUES
(1, 1, 'Hall of Honor', 2010, 'active'),
(2, 2, 'Hall of Fame', 1996, 'active'),
(3, 3, 'Hall of Fame', 2006, 'active'),
(4, 4, 'Hall of Honor', 2003, 'active'),
(5, 4, 'Hall of Fame', 2008, 'active'),
(6, 5, 'Hall of Fame', 2002, 'active'),
(7, 6, 'Hall of Honor', 2004, 'active'),
(8, 7, 'Hall of Fame', 2007, 'active'),
(9, 8, 'Hall of Honor', 2001, 'active'),
(10, 9, 'Hall of Fame', 2004, 'active'),
(11, 10, 'Hall of Fame', 2004, 'active'),
(12, 11, 'Hall of Honor', 2009, 'active'),
(13, 12, 'Hall of Honor', 2008, 'active'),
(14, 12, 'Hall of Fame', 2009, 'active'),
(15, 13, 'Hall of Honor', 2005, 'active'),
(16, 14, 'Hall of Honor', 2005, 'active'),
(17, 15, 'Hall of Fame', 1998, 'active'),
(18, 16, 'Hall of Honor', 2005, 'active'),
(19, 17, 'Hall of Honor', 2010, 'active'),
(20, 18, 'Hall of Fame', 1999, 'active'),
(21, 19, 'Hall of Fame', 1977, 'active'),
(22, 20, 'Hall of Fame', 1993, 'active'),
(23, 21, 'Hall of Fame', 1994, 'active'),
(24, 22, 'Hall of Fame', 1991, 'active'),
(25, 23, 'Hall of Fame', 1973, 'active'),
(26, 24, 'Hall of Fame', 2003, 'active'),
(27, 25, 'Hall of Honor', 2005, 'active'),
(28, 26, 'Hall of Fame', 1981, 'active'),
(29, 27, 'Hall of Honor', 2002, 'active'),
(30, 28, 'Hall of Honor', 2004, 'active'),
(31, 29, 'Hall of Fame', 1996, 'active'),
(32, 30, 'Hall of Honor', 2012, 'active'),
(33, 31, 'Hall of Fame', 2000, 'active'),
(34, 32, 'Hall of Honor', 2007, 'active'),
(35, 33, 'Hall of Fame', 1994, 'active'),
(36, 34, 'Hall of Honor', 2010, 'active'),
(37, 35, 'Hall of Honor', 2008, 'active'),
(38, 36, 'Hall of Fame', 2007, 'active'),
(39, 37, 'Hall of Honor', 2007, 'active'),
(40, 38, 'Hall of Fame', 1987, 'active'),
(41, 39, 'Hall of Honor', 2003, 'active'),
(42, 40, 'Hall of Honor', 2005, 'active'),
(43, 40, 'Hall of Fame', 2011, 'active'),
(44, 41, 'Hall of Honor', 2006, 'active'),
(45, 41, 'Hall of Fame', 2012, 'active'),
(46, 42, 'Hall of Honor', 2004, 'active'),
(47, 43, 'Hall of Honor', 2004, 'active'),
(48, 44, 'Hall of Fame', 1985, 'active'),
(49, 45, 'Hall of Honor', 2003, 'active'),
(50, 46, 'Lifetime Achievement Award', 2012, 'active'),
(51, 47, 'Hall of Honor', 2007, 'active'),
(52, 48, 'Hall of Fame', 1985, 'active'),
(58, 49, 'Hall of Honor', 2007, 'active'),
(59, 50, 'Hall of Honor', 2007, 'active'),
(60, 51, 'Hall of Honor', 2009, 'active'),
(61, 52, 'Hall of Fame', 1976, 'active'),
(62, 53, 'Hall of Fame', 2000, 'active'),
(63, 54, 'Hall of Fame', 2000, 'active'),
(65, 55, 'Hall of Fame', 1988, 'active'),
(66, 56, 'Hall of Fame', 1989, 'active'),
(67, 57, 'Hall of Fame', 1997, 'active'),
(68, 58, 'Hall of Honor', 2003, 'active'),
(69, 59, 'Hall of Fame', 1995, 'active'),
(70, 60, 'Hall of Fame', 1981, 'active'),
(71, 61, 'Hall of Honor', 2003, 'active'),
(72, 62, 'Hall of Fame', 1988, 'active'),
(73, 63, 'Hall of Fame', 1979, 'active'),
(74, 64, 'Hall of Fame', 1995, 'active'),
(75, 65, 'Hall of Fame', 1978, 'active'),
(76, 66, 'Hall of Fame', 1997, 'active'),
(77, 67, 'Hall of Honor', 2005, 'active'),
(78, 68, 'Hall of Fame', 1998, 'active'),
(79, 69, 'Hall of Honor', 2007, 'active'),
(80, 70, 'Hall of Honor', 2005, 'active'),
(81, 71, 'Hall of Fame', 2004, 'active'),
(82, 72, 'Hall of Honor', 2003, 'active'),
(83, 73, 'Hall of Honor', 2005, 'active'),
(84, 74, 'Hall of Fame', 1995, 'active'),
(85, 75, 'Hall of Fame', 1991, 'active'),
(86, 76, 'Hall of Honor', 2000, 'active'),
(87, 77, 'Hall of Fame', 1984, 'active'),
(88, 78, 'Hall of Fame', 1990, 'active'),
(89, 79, 'Hall of Fame', 2007, 'active'),
(90, 80, 'Hall of Honor', 2003, 'active'),
(91, 81, 'Hall of Honor', 2010, 'active'),
(92, 82, 'Hall of Fame', 1986, 'active'),
(93, 83, 'Hall of Honor', 2008, 'active'),
(94, 84, 'Hall of Fame', 2001, 'active'),
(95, 85, 'Hall of Honor', 2010, 'active'),
(96, 86, 'Hall of Fame', 1996, 'active'),
(97, 87, 'Hall of Honor', 2009, 'active'),
(98, 88, 'Horizon Award', 2011, 'active'),
(99, 89, 'Hall of Honor', 2006, 'active'),
(100, 89, 'Hall of Fame', 2008, 'active'),
(101, 90, 'Hall of Fame', 2005, 'active'),
(102, 91, 'Hall of Fame', 1995, 'active'),
(103, 92, 'Hall of Honor', 2012, 'active'),
(104, 93, 'Hall of Fame', 2000, 'active'),
(105, 94, 'Hall of Honor', 2005, 'active'),
(106, 95, 'Hall of Honor', 2005, 'active'),
(107, 96, 'Hall of Honor', 2005, 'active'),
(108, 97, 'Hall of Fame', 2001, 'active'),
(109, 98, 'Hall of Honor', 2003, 'active'),
(110, 99, 'Hall of Honor', 1999, 'active'),
(111, 100, 'Hall of Fame', 1991, 'active'),
(112, 101, 'Hall of Honor', 2004, 'active'),
(113, 102, 'Hall of Fame', 1997, 'active'),
(114, 103, 'Hall of Fame', 1990, 'active'),
(115, 104, 'Hall of Fame', 1992, 'active'),
(116, 105, 'Hall of Honor', 2009, 'active'),
(117, 106, 'Hall of Honor', 2001, 'active'),
(118, 107, 'Hall of Honor', 2000, 'active'),
(119, 108, 'Hall of Fame', 1993, 'active'),
(120, 109, 'Hall of Honor', 2001, 'active'),
(121, 110, 'Hall of Fame', 1994, 'active'),
(122, 111, 'Hall of Honor', 2001, 'active'),
(123, 112, 'Hall of Fame', 1983, 'active'),
(124, 113, 'Hall of Fame', 1998, 'active'),
(125, 114, 'Hall of Fame', 1986, 'active'),
(126, 115, 'Hall of Honor', 2011, 'active'),
(127, 116, 'Hall of Fame', 2002, 'active'),
(128, 117, 'Hall of Honor', 2011, 'active'),
(129, 118, 'Hall of Fame', 1987, 'active'),
(130, 119, 'Hall of Fame', 1994, 'active'),
(131, 120, 'Hall of Fame', 1988, 'active'),
(132, 121, 'Hall of Honor', 2012, 'active'),
(133, 122, 'Hall of Honor', 2008, 'active'),
(134, 122, 'Hall of Fame', 2009, 'active'),
(135, 123, 'Hall of Honor', 2003, 'active'),
(136, 124, 'Hall of Honor', 2009, 'active'),
(137, 124, 'Lifetime Achievement Award', 2011, 'active'),
(138, 125, 'Hall of Fame', 1985, 'active'),
(139, 126, 'Hall of Honor', 2004, 'active'),
(140, 126, 'Hall of Fame', 2010, 'active'),
(141, 127, 'Hall of Fame', 1983, 'active'),
(142, 128, 'Hall of Fame', 1985, 'active'),
(143, 129, 'Hall of Fame', 2001, 'active'),
(144, 130, 'Hall of Honor', 2000, 'active'),
(145, 131, 'Hall of Fame', 1989, 'active'),
(146, 132, 'Hall of Honor', 2007, 'active'),
(147, 133, 'Hall of Honor', 2004, 'active'),
(148, 134, 'Hall of Fame', 1980, 'active'),
(149, 135, 'Hall of Honor', 2003, 'active'),
(150, 136, 'Hall of Honor', 2003, 'active'),
(151, 137, 'Hall of Fame', 1981, 'active'),
(152, 138, 'Hall of Honor', 2012, 'active'),
(153, 139, 'Hall of Fame', 1997, 'active'),
(154, 140, 'Hall of Fame', 1999, 'active'),
(156, 141, 'Hall of Fame', 2004, 'active'),
(157, 142, 'Hall of Honor', 2001, 'active'),
(158, 143, 'Hall of Honor', 2007, 'active'),
(159, 144, 'Hall of Fame', 2005, 'active'),
(160, 145, 'Hall of Honor', 2012, 'active'),
(161, 146, 'Hall of Fame', 1990, 'active'),
(162, 147, 'Hall of Honor', 2012, 'active'),
(163, 148, 'Hall of Fame', 2007, 'active'),
(164, 149, 'Hall of Fame', 1990, 'active'),
(165, 150, 'Hall of Fame', 1988, 'active'),
(166, 151, 'Hall of Fame', 1993, 'active'),
(167, 152, 'Hall of Fame', 1982, 'active'),
(168, 153, 'Hall of Honor', 2009, 'active'),
(169, 153, 'Hall of Fame', 2010, 'active'),
(170, 154, 'Hall of Honor', 2001, 'active'),
(171, 155, 'Hall of Honor', 2010, 'active'),
(172, 156, 'Hall of Fame', 2005, 'active'),
(173, 157, 'Hall of Honor', 2004, 'active'),
(174, 158, 'Hall of Fame', 1991, 'active'),
(175, 159, 'Hall of Fame', 1982, 'active'),
(176, 160, 'Hall of Honor', 2002, 'active'),
(177, 161, 'Hall of Fame', 2003, 'active'),
(178, 162, 'Hall of Honor', 2004, 'active'),
(179, 163, 'Hall of Honor', 2006, 'active'),
(180, 164, 'Hall of Fame', 1984, 'active'),
(181, 165, 'Hall of Fame', 1993, 'active'),
(182, 166, 'Hall of Honor', 2002, 'active'),
(183, 167, 'Hall of Fame', 1986, 'active'),
(184, 168, 'Hall of Honor', 2004, 'active'),
(185, 169, 'Hall of Fame', 1998, 'active'),
(186, 170, 'Hall of Honor', 2009, 'active'),
(187, 171, 'Hall of Honor', 2008, 'active'),
(188, 171, 'Hall of Fame', 2009, 'active'),
(189, 172, 'Hall of Fame', 1991, 'active'),
(190, 173, 'Hall of Honor', 2012, 'active'),
(191, 174, 'Hall of Honor', 2006, 'active'),
(192, 174, 'Hall of Fame', 2011, 'active'),
(193, 175, 'Hall of Honor', 2003, 'active'),
(194, 175, 'Hall of Honor', 2006, 'active'),
(195, 176, 'Hall of Honor', 2010, 'active'),
(196, 177, 'Hall of Fame', 1978, 'active'),
(197, 178, 'Hall of Honor', 2008, 'active'),
(198, 179, 'Hall of Honor', 2010, 'active'),
(199, 180, 'Hall of Fame', 1992, 'active'),
(200, 181, 'Hall of Honor', 2005, 'active'),
(201, 182, 'Hall of Honor', 2005, 'active'),
(202, 183, 'Hall of Honor', 2011, 'active'),
(203, 184, 'Hall of Fame', 2006, 'active'),
(204, 185, 'Hall of Fame', 1999, 'active'),
(205, 186, 'Hall of Honor', 2012, 'active'),
(206, 187, 'Hall of Honor', 2006, 'active'),
(207, 187, 'Hall of Fame', 2008, 'active'),
(208, 188, 'Hall of Honor', 2003, 'active'),
(209, 189, 'Hall of Fame', 2000, 'active'),
(210, 190, 'Hall of Honor', 2012, 'active'),
(211, 191, 'Hall of Honor', 2008, 'active'),
(212, 192, 'Hall of Honor', 2005, 'active'),
(213, 193, 'Hall of Fame', 1980, 'active'),
(214, 194, 'Hall of Honor', 2005, 'active'),
(215, 195, 'Hall of Honor', 2007, 'active'),
(216, 196, 'Hall of Fame', 1976, 'active'),
(217, 197, 'Hall of Honor', 2008, 'active'),
(218, 197, 'Hall of Fame', 2012, 'active'),
(219, 198, 'Hall of Honor', 2006, 'active'),
(220, 199, 'Hall of Honor', 2007, 'active'),
(221, 200, 'Hall of Honor', 2004, 'active'),
(222, 200, 'Hall of Fame', 2012, 'active'),
(223, 201, 'Hall of Honor', 2003, 'active'),
(224, 202, 'Hall of Honor', 2004, 'active'),
(225, 203, 'Hall of Fame', 2002, 'active'),
(226, 204, 'Hall of Fame', 1989, 'active'),
(227, 205, 'Hall of Honor', 2010, 'active'),
(228, 206, 'Hall of Fame', 1989, 'active'),
(229, 207, 'Hall of Fame', 1989, 'active'),
(230, 208, 'Hall of Fame', 1997, 'active'),
(231, 209, 'Hall of Honor', 2006, 'active'),
(232, 210, 'Hall of Honor', 2010, 'active'),
(233, 211, 'Hall of Honor', 2013, 'active'),
(234, 92, 'Hall of Fame', 2013, 'active'),
(235, 69, 'Hall of Fame', 2013, 'active'),
(236, 186, 'Hall of Fame', 2013, 'active'),
(237, 195, 'Hall of Fame', 2013, 'active'),
(238, 213, 'Hall of Honor', 2013, 'active'),
(239, 214, 'Hall of Honor', 2013, 'active'),
(240, 215, 'Hall of Honor', 2013, 'active'),
(241, 216, 'Hall of Honor', 2013, 'active'),
(242, 217, 'Hall of Honor', 2013, 'active'),
(243, 218, 'Hall of Honor', 2013, 'active'),
(244, 83, 'Hall of Fame', 2010, 'active'),
(245, 219, 'Hall of Fame', 1998, 'active'),
(246, 220, 'Hall of Honor', 2014, 'active'),
(247, 221, 'Hall of Honor', 2014, 'active'),
(248, 222, 'Hall of Honor', 2014, 'active'),
(249, 223, 'Hall of Honor', 2014, 'active'),
(250, 224, 'Hall of Honor', 2014, 'active'),
(251, 225, 'Hall of Honor', 2014, 'active'),
(252, 226, 'Hall of Honor', 2014, 'active'),
(253, 227, 'Hall of Honor', 2014, 'active'),
(254, 138, 'Hall of Fame', 2014, 'active'),
(255, 218, 'Hall of Fame', 2014, 'active'),
(256, 198, 'Hall of Fame', 2014, 'active'),
(257, 186, 'Lifetime Achievement Award', 2014, 'active'),
(258, 217, 'Hall of Fame', 2015, 'active'),
(259, 227, 'Hall of Fame', 2015, 'active'),
(260, 225, 'Hall of Fame', 2015, 'active'),
(261, 13, 'Lifetime Achievement Award', 2015, 'active'),
(262, 228, 'Hall of Honor', 2015, 'active'),
(263, 229, 'Hall of Honor', 2015, 'active'),
(264, 230, 'Hall of Honor', 2015, 'active'),
(265, 231, 'Hall of Honor', 2015, 'active'),
(266, 232, 'Hall of Honor', 2015, 'active'),
(267, 233, 'Hall of Honor', 2015, 'active'),
(268, 234, 'Horizon Award', 2015, 'active'),
(269, 235, 'Horizon Award', 2015, 'active'),
(270, 236, 'Horizon Award', 2015, 'active'),
(271, 237, 'Horizon Award', 2015, 'active'),
(272, 238, 'Hall of Honor', 2013, 'active'),
(273, 238, 'Hall of Fame', 2015, 'active'),
(274, 224, 'Hall of Fame', 2016, 'active'),
(275, 229, 'Hall of Fame', 2016, 'active'),
(276, 226, 'Hall of Fame', 2016, 'active'),
(277, 132, 'Hall of Fame', 2016, 'active'),
(278, 139, 'Lifetime Achievement Award', 2016, 'active'),
(279, 92, 'Lifetime Achievement Award', 2016, 'active'),
(280, 241, 'Hall of Honor', 2016, 'active'),
(281, 242, 'Hall of Honor', 2016, 'active'),
(282, 243, 'Hall of Honor', 2016, 'active'),
(283, 244, 'Hall of Honor', 2016, 'active'),
(284, 245, 'Hall of Honor', 2016, 'active'),
(285, 246, 'Hall of Honor', 2016, 'active'),
(286, 247, 'Hall of Honor', 2016, 'active'),
(287, 248, 'Hall of Honor', 2016, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `band`
--

CREATE TABLE `band` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `tag` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `band`
--

INSERT INTO `band` (`id`, `name`, `tag`) VALUES
(1, 'Donna and The Country Mystics', 'donna and the country mystics'),
(2, 'Alderhollow Band', 'alderhollow band'),
(3, 'Doc Weismore with Real Country', 'doc weismore with real country'),
(4, 'Dirt Road Express', 'dirt road express'),
(5, 'Tom Gilbo & The Blue Suedes', 'tom gilbo & the blue suedes'),
(6, 'Nelson Brothers', 'nelson brothers'),
(7, 'Aiken Heart', NULL),
(8, 'Gary Morley & Hard Ride', NULL),
(9, 'Ray Randall & The Rhythm Aires', NULL),
(10, 'North of Nashville Band', 'north of nashville band'),
(11, 'Just Us', NULL),
(12, 'Country Express', 'country express'),
(13, 'Merle Matts & New York Country', 'merle matts & new york country'),
(15, 'Karen Starr with Black Rose', NULL),
(16, 'North Ridge', NULL),
(17, 'Phoenix', NULL),
(18, 'Dakota Moon', NULL),
(19, 'Kaitlyn Jackson & Hometown', 'kaitlyn jackson'),
(20, 'Fiddle De Divas & Dudes', 'fiddle de divas & dudes'),
(21, 'Double Chase', 'double chase'),
(22, 'Silver Eagle Band', NULL),
(23, 'Chain Reaction', 'chain reaction'),
(24, 'Arica Harris & Crossroads', 'arica harris & crossroads'),
(25, 'Dean Goble & Band', NULL),
(26, 'Steve Wickam & Country Magic', NULL),
(27, 'Jack Ellis & Keepin\' it Country', NULL),
(28, 'J & J Klassics', NULL),
(29, 'Terry Grimes', NULL),
(30, 'Gamblers Dream', NULL),
(31, 'Matt Chase & Thunder Canyon', NULL),
(32, 'Tink Bennett & Tailor Made', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bandwebsites`
--

CREATE TABLE `bandwebsites` (
  `id` bigint(20) NOT NULL,
  `bandid` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `type` enum('website','facebook','youtube','reverbnation','soundcloud') NOT NULL DEFAULT 'website'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bandwebsites`
--

INSERT INTO `bandwebsites` (`id`, `bandid`, `address`, `type`) VALUES
(1, 1, 'http://www.donnaandthecountrymystics.com/', 'website'),
(2, 1, 'https://www.facebook.com/donnathecountrymystics', 'facebook'),
(3, 3, 'http://docweismorewithrealcountry.com/', 'website'),
(4, 2, 'http://www.alderhollow.com/id5.html', 'website'),
(5, 7, 'https://www.facebook.com/pages/Aiken-heart/197462540324219', 'facebook'),
(6, 7, 'http://www.reverbnation.com/aikenheart', 'reverbnation'),
(7, 7, 'http://www.aikenheart.com/', 'website'),
(8, 5, 'https://www.facebook.com/pages/Tom-Gilbo-The-Blue-Suedes/156130064464315', 'facebook'),
(9, 3, 'https://www.facebook.com/docweismorewithrealcountry', 'facebook'),
(10, 2, 'https://www.facebook.com/pages/Alderhollow-Band/136980479730134', 'facebook'),
(11, 12, 'http://www.countryexpressmusic.com/', 'website'),
(12, 12, 'https://www.facebook.com/pages/Country-Express/203531111589', 'facebook'),
(13, 5, 'http://www.tomgilboandthebluesuedes.com/', 'website'),
(14, 10, 'https://www.facebook.com/northofnashvilleband', 'facebook'),
(15, 15, 'https://www.youtube.com/channel/UCXIDBKvzNhGFJintBnNoE7w', 'youtube'),
(16, 4, 'https://www.facebook.com/pages/The-Dirt-Road-Express/375897382557482', 'facebook'),
(17, 18, 'http://dakotamooncountry.wix.com/dakotamoon', 'website'),
(18, 18, 'https://www.reverbnation.com/dakotamoonreturn', 'reverbnation'),
(19, 18, 'https://www.facebook.com/DakotamoonBand', 'facebook'),
(20, 19, 'http://kaitlynjacksonmusic.com', 'website'),
(21, 19, 'https://www.facebook.com/kaitlynjacksonmusic', 'facebook'),
(22, 19, 'http://www.reverbnation.com/kaitlynjackson', 'reverbnation'),
(23, 19, 'https://www.youtube.com/channel/UCLBXGt9UhiQtB8hLRGnJD7A', 'youtube'),
(24, 20, 'https://www.facebook.com/pages/Fiddle-De-Divas-Dudes/202962026571984', 'facebook'),
(25, 20, 'https://www.reverbnation.com/fiddlededivasthedudes', 'reverbnation'),
(26, 20, 'https://www.youtube.com/channel/UCTq-YEFuwWlItObltUi4LxQ', 'youtube'),
(27, 21, 'http://thundercanyonband.net/dchase/double_chase.html', 'website'),
(28, 21, 'https://www.facebook.com/Double-Chase-325088564322455/', 'facebook'),
(29, 22, 'http://silvereagleband.net/index.html', 'website'),
(30, 22, 'https://www.reverbnation.com/silvereagleband3', 'reverbnation'),
(31, 22, 'https://www.youtube.com/channel/UCvSWy42-JAlJJ6SKnHcGvnQ', 'youtube'),
(32, 17, 'http://www.phoenixny.org/', 'website'),
(33, 23, 'https://www.facebook.com/ChainReactionBand/', 'facebook'),
(34, 11, 'https://www.facebook.com/The-JUST-US-Band-143936192471603/?ref=all_category_pyml_rhc', 'facebook'),
(35, 24, 'https://www.facebook.com/AricaHarrisandCrossroads/', 'facebook'),
(36, 24, 'https://www.reverbnation.com/arniefriends', 'reverbnation'),
(37, 24, 'https://soundcloud.com/thecrossroadsband', 'soundcloud'),
(38, 6, 'https://www.facebook.com/NelsonBrothersBand', 'facebook'),
(39, 25, 'http://www.dgafb.com/', 'website'),
(40, 25, 'https://www.facebook.com/deangobleandfriends', 'facebook'),
(41, 25, 'https://www.youtube.com/channel/UCKXJ1A64Uy2tzMyR9vOrAfg', 'youtube'),
(42, 22, 'https://www.youtube.com/channel/UCisQwh4O34P6jBgiAThhRKg/videos', 'youtube'),
(43, 22, 'https://www.bandmix.com/kenny-derr/', 'website'),
(44, 32, 'http://tailormade.vpweb.com/', 'website'),
(45, 32, 'https://www.facebook.com/tailor.made.16/', 'facebook'),
(46, 32, 'https://www.youtube.com/channel/UCK5a_OLaEScRyyQ0Ompg5KQ', 'youtube'),
(47, 31, 'http://www.thundercanyonband.net/', 'website'),
(48, 31, 'https://www.facebook.com/MattChaseandTheThunderCanyonBand/', 'facebook'),
(49, 31, 'https://www.youtube.com/playlist?list=PL67654036C390C67F', 'youtube'),
(50, 27, 'https://www.facebook.com/guitar.jack', 'facebook'),
(51, 29, 'https://www.reverbnation.com/terrygrimes', 'reverbnation'),
(52, 29, 'https://www.youtube.com/channel/UCf4MJhTi-9-D4wCh978VDaQ', 'youtube');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `icon` varchar(200) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` enum('show','feature','meeting','other','closed','membership') NOT NULL DEFAULT 'show',
  `cancelled` smallint(1) NOT NULL DEFAULT '0',
  `soldout` smallint(6) NOT NULL DEFAULT '0',
  `limitedtickets` smallint(1) NOT NULL DEFAULT '0',
  `status` enum('active','delete') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `date`, `title`, `description`, `icon`, `modified`, `type`, `cancelled`, `soldout`, `limitedtickets`, `status`) VALUES
(1, '2013-12-01 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:47:26', 'show', 0, 0, 0, 'active'),
(2, '2013-12-02 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:07:18', 'other', 0, 0, 0, 'active'),
(3, '2013-12-05 00:00:00', 'Donna and The Country Mystics Christmas Show', '<p>\r\nFrom listening and singing along to all your favorite Christmas songs to Rockin’ around the Christmas tree, you truly will be inspired by this great Christmas show. No time like the holidays to participate in the spirit of Christmas.\r\n</p>\r\n\r\n<p>\r\nDinner will be Ham with all the trimmings <br />\r\nTime is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m. \r\nSORRY NO DANCING DURING THE SHOW \r\nCome early!! The Hall of Fame is open at 11 a.m.<br /> \r\nAdmission $27.50\r\n</p>\r\n\r\n<p>\r\nFor Reservations call Betsy at 607-336-1992 or e-mail me at <br /> route66band@citlink.net \r\nRemember, get your reservations in early as 2012 shows were all sold out and we had to turn people away.\r\n</p>', NULL, '2014-01-04 22:03:32', 'show', 0, 0, 0, 'active'),
(4, '2013-12-07 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:48:53', 'show', 0, 0, 0, 'active'),
(5, '2013-12-08 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:49:23', 'show', 0, 0, 0, 'active'),
(6, '2013-12-09 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:07:27', 'other', 0, 0, 0, 'active'),
(7, '2013-12-10 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 22:07:04', 'meeting', 0, 0, 0, 'active'),
(8, '2013-12-14 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:52:00', 'show', 0, 0, 0, 'active'),
(9, '2013-12-15 00:00:00', 'Merle Matts with the Hall of Fame Band', 'Christmas Party<br />\r\nbring a dish to pass at 12 PM<br />\r\nMusic 2-6 PM.<br />\r\nLast dance before New Years Eve.<br />', NULL, '0000-00-00 00:00:00', 'show', 0, 0, 0, 'active'),
(10, '2013-12-16 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:07:39', 'other', 0, 0, 0, 'active'),
(11, '2013-12-21 00:00:00', 'Closed', 'Merry Christmas', NULL, '2014-01-04 20:25:03', 'closed', 0, 0, 0, 'active'),
(12, '2013-12-22 00:00:00', 'Closed', 'Merry Christmas', NULL, '2014-01-04 20:25:12', 'closed', 0, 0, 0, 'active'),
(13, '2013-12-28 00:00:00', 'Closed', 'Happy New Year !', NULL, '2014-01-04 20:25:18', 'closed', 0, 0, 0, 'active'),
(14, '2013-12-29 00:00:00', 'Closed', 'Happy New Year !', NULL, '2014-01-04 20:25:40', 'closed', 0, 0, 0, 'active'),
(15, '2013-12-31 00:00:00', 'Alderhollow Band - Happy New Year ! ', 'from<br />\r\n7 pm \'till 1 am<br />\r\nRound & Square Dancing<br />\r\nBuffet by Phil\'s Chicken House<br />\r\nAdmission $30 Each<br /> \r\nPlease Bring a dessert to pass.', NULL, '2014-01-26 13:47:40', 'feature', 0, 0, 0, 'active'),
(18, '2014-05-08 00:00:00', 'ROCK & ROLL FEVER', '<p>\r\nPerformed by Donna and the Country Mystics\r\nCome dance to the music of the 50’s & 60’s. We’ll ROCK AROUND THE CLOCK in our BLUE SUEDE SHOES. If you have a poodle skirt, wear it. It’s all in fun. You won’t be able to sit in your seats. You’ll want to jitterbug and dance close to all the songs that you grew up with.\r\n</p>\r\nRoast Beef Dinner with all the trimmings<br />\r\nTime is 1-5 p.m. Dinner at 1:00; Show to follow dinner\r\nAdmission $28.50  \r\n<p> For Reservations call Betsy at 607-336-1992</p>\r\nCome early!! The Hall of Fame is open at 12 p.m. <br />\r\nRemember, get your reservations in early as 2013 shows were all sold out and we had to turn people away.\r\n', NULL, '2013-12-08 19:23:06', 'feature', 0, 0, 0, 'active'),
(19, '2014-06-19 00:00:00', 'A TRIBUTE TO THE GOLDEN AGE OF COUNTRY MUSIC', '<p>Performed by Doc Weismore with Real Country\r\nSpecial Guest: Teresa Backo\r\n</p>\r\n<p>\r\nCome listen to the country hits of the 50’s and 60’s. Hear songs like Folsom Prison Blues, Green Green Grass of Home, Once a Day, Fraulein, I’ve Forgotten More Than You’ll Ever Know About Him, Kaw-Li-Ga and many, many more.\r\n</p>\r\n\r\nChicken Corden Bleu Dinner with all the trimmings<br />\r\nTime is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<p>\r\n<b>SORRY NO DANCING DURING THE SHOW</b>\r\n<br /> Admission $28.50\r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /> Come early!! The Hall of Fame is open at 11 a.m.\r\n</p>\r\n<p> \r\nRemember, get your reservations in early as 2013 shows were all sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2014-03-15 15:48:28', 'feature', 0, 0, 1, 'active'),
(20, '2014-06-12 00:00:00', 'A TRIBUTE TO THE GOLDEN AGE OF COUNTRY MUSIC', '<p>Performed by Doc Weismore with Real Country\r\nSpecial Guest: Teresa Backo\r\n</p>\r\n<p>\r\nCome listen to the country hits of the 50’s and 60’s. Hear songs like Folsom Prison Blues, Green Green Grass of Home, Once a Day, Fraulein, I’ve Forgotten More Than You’ll Ever Know About Him, Kaw-Li-Ga and many, many more.\r\n</p>\r\n\r\nChicken Corden Bleu Dinner with all the trimmings<br />\r\nTime is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<p>\r\n<b>SORRY NO DANCING DURING THE SHOW</b>\r\n<br /> Admission $28.50\r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /> Come early!! The Hall of Fame is open at 11 a.m.\r\n</p>\r\n<p> \r\n</p>\r\n', NULL, '2014-03-15 15:46:42', 'feature', 0, 0, 1, 'active'),
(21, '0000-00-00 00:00:00', '', NULL, NULL, '2013-12-08 19:23:06', 'feature', 0, 0, 0, 'active'),
(22, '2014-08-21 00:00:00', 'A TRIBUTE TO ELVIS DINNER DANCE ELVIS IS BACK BY POPULAR DEMAND', '<p>Performed by Tom Gilbo & the Blue Suedes\r\n</p>\r\n<p>\r\nThis man has a fantastic voice. He really does Elvis justice.\r\nHe has the crowd screaming just like the old days as he goes around the audience with scarves and places them around the women’s necks. There are a few kisses here and there also. \r\n</p>\r\n\r\nDinner will be Turkey with all the trimmings<br />\r\n\r\nTime is 1-5 p.m. / Dinner 1 p.m. / Show starts after dinner with dancing all afternoon<br />\r\n\r\n<p>\r\nAdmission $28.50    \r\n<br />For Reservations call Betsy at 607-336-1992\r\n<br />Come early!! The Hall of Fame is open at 12 p.m.\r\n</p>\r\n<p> \r\nRemember, get your reservations in early as 2013 shows were all sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2014-04-15 11:39:40', 'feature', 0, 0, 1, 'active'),
(23, '2014-09-11 00:00:00', 'A TRIBUTE TO THE HALL OF FAME DINNER SHOW', '<p>Performed by Merle Matts and Donna and the Country Mystics\r\n</p>\r\n\r\n<p>\r\nThere will be many of our New York State Country Music Hall of Fame inductees performing many of the hits of country music all through the years. Learn how these songs originated and details you might not know about a country artist and the talented singing of these Country Music Hall of Fame Inductees. It’s a show you won’t want to miss.\r\n</p>\r\nPork Dinner with all the trimmings<br />\r\n\r\n<p>\r\nTime is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n<br />Admission $28.50    \r\n<br />For Reservations call Betsy at 607-336-1992\r\n</p>\r\n<p>\r\nCome early!! The Hall of Fame is open at 11 p.m. <br />\r\nRemember, get your reservations in early as 2013 shows were all sold out and we had to turn people away.\r\n</p>', NULL, '2014-01-14 11:58:08', 'feature', 0, 0, 0, 'active'),
(25, '2014-12-04 00:00:00', 'DONNA AND THE COUNTRY MYSTICS CHRISTMAS SHOW', '<b>(Back by Popular Demand)</b><br />\r\n\r\n<p>\r\nFrom listening and singing along to all your favorite Christmas songs to Rockin’ around the Christmas tree, you truly will be inspired by this great Christmas show. No time like the holidays to participate in the spirit of Christmas.\r\n</p>\r\n\r\n<p>\r\nDinner will be Ham with all the trimmings\r\n<br />\r\nTime is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br /> Admission $28.50 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2013 show was sold out and we had to turn people away.\r\n</p>', NULL, '2014-12-14 16:37:16', 'feature', 0, 0, 1, 'active'),
(26, '2014-01-04 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:52:20', 'show', 0, 0, 0, 'active'),
(27, '2014-01-05 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:52:36', 'show', 0, 0, 0, 'active'),
(28, '2014-02-14 00:00:00', 'Spaghetti Dinner Dance', 'Music By Donna and The Country Mystics \r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free ', NULL, '2014-01-25 16:53:54', 'show', 0, 0, 0, 'active'),
(29, '2014-01-11 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:52:50', 'show', 0, 0, 0, 'active'),
(30, '2014-01-12 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:53:15', 'show', 0, 0, 0, 'active'),
(31, '2014-01-18 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:47:49', 'show', 0, 0, 0, 'active'),
(32, '2014-01-19 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:47:58', 'show', 0, 0, 0, 'active'),
(33, '2014-01-25 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:54:04', 'show', 0, 0, 0, 'active'),
(34, '2014-01-26 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:54:38', 'show', 0, 0, 0, 'active'),
(35, '2014-02-01 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:54:54', 'show', 0, 0, 0, 'active'),
(36, '2014-04-05 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-13 13:22:03', 'show', 0, 0, 0, 'active'),
(37, '2014-02-08 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:55:12', 'show', 0, 0, 0, 'active'),
(38, '2014-02-09 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:48:08', 'show', 0, 0, 0, 'active'),
(39, '2014-02-15 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:48:19', 'show', 0, 0, 0, 'active'),
(40, '2014-02-16 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:57:37', 'show', 0, 0, 0, 'active'),
(41, '2014-02-22 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:57:49', 'show', 0, 0, 0, 'active'),
(42, '2014-02-23 00:00:00', 'Mardi Gras and Cabin Fever Jamboree', 'Donna and the Country Mystics, and Doc Weismore with Real Country\r\n\r\n<p>\r\nEarn your beads by purchasing drinks. \r\n<br />Admission $6.00\r\n</p>\r\nfrom<br />\r\n2 pm \'till 6 pm', NULL, '2014-01-25 16:46:52', 'show', 0, 0, 0, 'active'),
(43, '2014-03-01 00:00:00', 'Joel Kane & Uptown Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:58:06', 'show', 0, 0, 0, 'active'),
(44, '2014-03-08 00:00:00', 'Closed for Private party', 'NO DANCE', NULL, '2014-01-10 13:28:58', 'show', 0, 0, 0, 'active'),
(45, '2014-03-09 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:48:30', 'show', 0, 0, 0, 'active'),
(46, '2014-03-15 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:48:41', 'show', 0, 0, 0, 'active'),
(47, '2014-03-16 00:00:00', 'MARCH MADNESS COUNTRY JAMBOREE', '2-3 p.m. – Doc Weismore with Real Country<br />\r\n3:30-5:00 p.m. – Donna and the Country Mystics<br />\r\n5-6 p.m. – Remembering the Music of Cal Smith, Patti Page, Ray Price and George Jones\r\n\r\n<p>\r\nLuncheon Served at 1:00 p.m.<br />\r\nHam and Cabbage or Corned Beef and Cabbage Dinner Available to purchase for $7.00\r\n</p>\r\n\r\n<p>\r\nTo win prizes wear your best ORANGE outfit. 1st, 2nd and 3rd prizes will be awarded to the best ORANGE outfits. Let’s have the Park turn ORANGE for this event. Come and join the fun!\r\n</p>\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-06 13:16:14', 'show', 0, 0, 0, 'active'),
(48, '2014-01-10 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free ', NULL, '2014-01-25 16:54:40', 'show', 0, 0, 0, 'active'),
(49, '2014-03-21 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free \r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive a free pass to any regular show (Saturdays or Sundays).\r\n</p>', NULL, '2014-02-25 11:06:36', 'membership', 0, 0, 0, 'active'),
(50, '2014-03-22 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive a free pass to any regular show (Saturdays or Sundays).\r\n</p>', NULL, '2014-02-25 11:06:45', 'membership', 0, 0, 0, 'active'),
(51, '2014-03-23 00:00:00', 'Just Us', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:44:14', 'show', 0, 0, 0, 'active'),
(52, '2014-03-29 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:08:43', 'show', 0, 0, 0, 'active'),
(53, '2014-03-30 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-03-22 15:02:01', 'show', 0, 0, 0, 'active'),
(54, '2014-04-06 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:08:56', 'show', 0, 0, 0, 'active'),
(55, '2014-04-12 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:48:52', 'show', 0, 0, 0, 'active'),
(56, '2014-04-13 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:09:26', 'show', 0, 0, 0, 'active'),
(57, '2014-04-19 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:09:39', 'show', 0, 0, 0, 'active'),
(58, '2014-04-20 00:00:00', 'Happy Easter - Closed', NULL, NULL, '2014-01-04 20:25:26', 'closed', 0, 0, 0, 'active'),
(59, '2014-04-26 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:09:49', 'show', 0, 0, 0, 'active'),
(60, '2014-04-27 00:00:00', 'Spring Fling Country Jamboree', 'Music by Doc Weismore with Real Country & Donna and The Country Mystics<br /><br />\r\nRaffle & 50/50 Raffle / Crazy Hat Contest<br />\r\nDinner will be available to purchase 1 p.m. <br />2-6 p.m. for dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-04-07 11:16:59', 'show', 0, 0, 0, 'active'),
(61, '2014-05-03 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-05-02 05:05:09', 'show', 0, 0, 0, 'active'),
(62, '2014-05-04 00:00:00', 'Merle Matts & New York Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-04-07 11:19:39', 'show', 0, 0, 0, 'active'),
(63, '2014-05-10 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-08 14:21:41', 'show', 0, 0, 0, 'active'),
(64, '2014-05-11 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-08 14:21:50', 'show', 0, 0, 0, 'active'),
(65, '2014-05-17 00:00:00', 'Aiken Heart,\r\n<br /> Special Guest: Ellen Harrington', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-05-07 02:38:03', 'show', 0, 0, 0, 'active'),
(66, '2014-05-18 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Ham, Mashed Potatoes with Mushroom Gravy, Peas, Salad, Roll and Carrot Cupcakes for dessert.\r\n</p>\r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive one free pass to any regular show (Saturdays or Sundays).\r\n</p>', NULL, '2014-05-17 01:42:45', 'membership', 0, 0, 0, 'active'),
(67, '2014-05-24 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:11:15', 'show', 0, 0, 0, 'active'),
(68, '2014-05-25 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Baked Chicken, Roasted Potatoes, Baked Ziti, Tossed Salad, Roll, Chocolate Chip Cookies.\r\n</p>', NULL, '2014-05-17 01:43:36', 'show', 0, 0, 0, 'active'),
(69, '2014-05-30 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free\r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive one free pass to any regular show (Saturdays or Sundays).\r\n</p> ', NULL, '2014-05-04 14:10:33', 'membership', 0, 0, 0, 'active'),
(70, '2014-05-31 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive one free pass to any regular show (Saturdays or Sundays).\r\n</p>', NULL, '2014-05-04 14:11:13', 'membership', 0, 0, 0, 'active'),
(71, '2014-06-01 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Lasagna, Salad, Roll, Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-05-30 10:42:01', 'show', 0, 0, 0, 'active'),
(72, '2014-06-08 00:00:00', 'Salute to Veterans Dinner Dance & Show  ', '<p>\r\nMusic by Donna and The Country Mystics \r\n<br />Chicken & Biscuit Dinner\r\n</p>\r\nAdmission $15.00\r\n<br /> Time 12 pm till 6 pm \r\n', NULL, '2014-01-04 22:05:58', 'show', 0, 0, 0, 'active'),
(73, '2014-06-07 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:12:08', 'show', 0, 0, 0, 'active'),
(74, '2014-06-14 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-06-01 22:48:44', 'closed', 0, 0, 0, 'active'),
(75, '2014-06-15 00:00:00', 'Father\'s Day Dance', 'Music by North of Nashville Band and special guest Merle Matts<br /><br />\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\nTo all Dad\'s, we will be giving a free gift certificate to a local restaurant to the OLDEST DAD present at the dance. So bring your DAD\'S or who knows you might be the oldest DAD. Let\'s all celebrate Father\'s Day together.\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Ham & Scalloped Potatoes, Corn, Salad, Roll, Dessert\r\n<br />$7.50\r\n</p>\r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive one free pass to any regular show (Saturdays or Sundays).\r\n</p>', NULL, '2014-05-30 21:05:05', 'membership', 0, 0, 0, 'active'),
(76, '2014-06-21 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive one free pass to any regular show (Saturdays or Sundays).\r\n</p>', NULL, '2014-05-04 14:13:25', 'membership', 0, 0, 0, 'active'),
(77, '2014-06-22 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Carved Turkey, Stuffing, Mashed Potatoes, Corn, Salad, Roll, Dessert\r\n<br />$7.50\r\n</p>\r\n', NULL, '2014-05-30 10:45:54', 'show', 0, 0, 0, 'active'),
(78, '2014-06-27 00:00:00', 'Spaghetti Dinner Dance', 'Music By North of Nashville Band\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free ', NULL, '2014-02-08 14:22:20', 'show', 0, 0, 0, 'active'),
(79, '2014-06-28 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-03-22 15:04:25', 'show', 0, 0, 0, 'active'),
(80, '2014-06-29 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Meatloaf, Mashed Potatoes & Gravy, Corn, Salad, Roll, Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-05-30 10:47:18', 'show', 0, 0, 0, 'active'),
(81, '2014-07-05 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-08 14:22:44', 'show', 0, 0, 0, 'active'),
(82, '2014-07-06 00:00:00', 'Merle Matts & New York Country', '<p>\r\nWith Merle Matts, Jay Crapo, Wade Jacobson, Larry VanEtten and special guests: Terry Grimes on bass and Freddie Veitch on steel guitar.\r\n</p>\r\n<br />\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Baked Ziti with meat sauce, Tossed Salad, Bread & Butter, and Dessert.\r\n<br />$7.50\r\n</p>', NULL, '2014-08-25 12:06:08', 'show', 0, 0, 0, 'active'),
(83, '2014-07-12 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:13:02', 'show', 0, 0, 0, 'active'),
(84, '2014-07-13 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Chicken with veggies in a cream sauce over rice, Tossed Salad, Bread & Butter, and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-07-02 11:12:44', 'show', 0, 0, 0, 'active'),
(85, '2014-07-19 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:44:39', 'show', 0, 0, 0, 'active'),
(86, '2014-07-20 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive one free pass to any regular show (Saturdays or Sundays).\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Beef Stroganoff over buttered noodles, Veggie, Tossed Salad, Bread & Butter, and Dessert\r\n<br />$7.50\r\n</p> \r\n', NULL, '2014-07-02 11:14:19', 'membership', 0, 0, 0, 'active'),
(87, '2014-07-25 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free\r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive one free pass to any regular show (Saturdays or Sundays).\r\n</p> \r\n ', NULL, '2014-05-28 08:43:50', 'membership', 0, 0, 0, 'active'),
(88, '2014-07-26 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>New Membership Special!</b>\r\n<br />Sign up for a new membership to the Statewide Country Music Association and receive one free pass to any regular show (Saturdays or Sundays).\r\n</p> \r\n', NULL, '2014-05-28 08:43:56', 'membership', 0, 0, 0, 'active'),
(89, '2014-07-27 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Pork Chops, Applesauce, Roasted Potatoes, Veggie, Tossed Salad, Bread & Butter, and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-07-02 11:15:43', 'show', 0, 0, 0, 'active'),
(90, '2014-08-02 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:18:17', 'show', 0, 0, 0, 'active'),
(91, '2014-08-03 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br /> Southern Style Chicken with Cream Gravy, and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-08-01 01:15:32', 'show', 0, 0, 0, 'active'),
(92, '2014-08-09 00:00:00', 'Closed for Private party', 'NO DANCE', NULL, '2014-02-27 11:30:11', 'show', 0, 0, 0, 'active'),
(93, '2014-08-10 00:00:00', 'Merle Matts & New York Country', '<p>\r\nWith Merle Matts, Jay Crapo, Wade Jacobson, Larry VanEtten and special guests: Terry Grimes on bass and Freddie Veitch on steel guitar.\r\n</p>\r\n<br />\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Stuffed Shells with Antipasto, and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-08-25 12:06:23', 'show', 0, 0, 0, 'active'),
(94, '2014-08-15 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-25 16:56:28', 'show', 0, 0, 0, 'active'),
(95, '2014-08-16 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-08 14:23:03', 'show', 0, 0, 0, 'active'),
(96, '2014-08-17 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br /> Cheeseburger, Macaroni Salad, and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-08-01 01:17:46', 'show', 0, 0, 0, 'active'),
(97, '2014-08-23 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:22:00', 'show', 0, 0, 0, 'active'),
(98, '2014-08-24 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Open Face Roast Beef Sandwich, and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-08-01 01:19:03', 'show', 0, 0, 0, 'active'),
(99, '2014-08-30 00:00:00', 'Merle Matts & New York Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-07-25 12:25:58', 'show', 0, 0, 0, 'active'),
(100, '2014-08-31 00:00:00', 'Merle Matts & New York Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Beef Stew, and Dessert \r\n<br />$7.50\r\n</p>', NULL, '2014-08-25 11:57:24', 'show', 0, 0, 0, 'active'),
(101, '2014-09-06 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:23:04', 'show', 0, 0, 0, 'active'),
(102, '2014-09-07 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Lasagna, Salad, Roll and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-08-29 11:54:11', 'show', 0, 0, 0, 'active'),
(103, '2014-09-13 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-08 14:23:24', 'show', 0, 0, 0, 'active'),
(104, '2014-09-14 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Meatloaf, Mashed Potatoes, Salad, Roll and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-08-29 11:55:24', 'show', 0, 0, 0, 'active'),
(105, '2014-09-20 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:23:52', 'show', 0, 0, 0, 'active'),
(106, '2014-09-21 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Baked Ham, Potatoes, Veggie, Salad, Roll and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-08-29 11:56:15', 'show', 0, 0, 0, 'active'),
(108, '2014-09-28 00:00:00', 'Square Dance Sunday', 'Doc Weismore with Real Country\r\n<br />Guests: Merle Matts, Bruce Huggins, Donna Minnoe, Theresa Backo, John Wood, Sara Komanik & Randy Gillson\r\n<br />\r\n<br >\r\n\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />1/4 Roast Chicken, Potatoes, Veggie, Salad, Roll and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-08-29 11:57:24', 'show', 0, 0, 0, 'active'),
(109, '2014-10-04 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:25:35', 'show', 0, 0, 0, 'active'),
(110, '2014-10-05 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Baked Ziti, Antipasto, Bread & Butter, dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-10-01 11:48:24', 'show', 0, 0, 0, 'active'),
(111, '2014-10-11 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-19 22:31:53', 'show', 0, 0, 0, 'active'),
(112, '2014-10-12 00:00:00', 'Dirt Road Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br /> Salisbury Steak, Mashed Potatoes, Salad, Veggie, Bread & Butter, dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-10-01 11:49:42', 'show', 0, 0, 0, 'active'),
(113, '2014-10-18 00:00:00', 'North Ridge Ramblers', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-10-06 12:16:49', 'show', 0, 0, 0, 'active'),
(114, '2014-10-19 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Chicken Parmesan with a side of pasta, Tossed Salad, Bread & Butter, and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-10-01 11:51:08', 'show', 0, 0, 0, 'active'),
(115, '2014-10-25 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-08 14:23:43', 'show', 0, 0, 0, 'active'),
(116, '2014-10-26 00:00:00', 'Annual Hall of Fame Dinner & Dance', '<p>\r\nMusic by North of Nashville Band\r\n</p>\r\n<p>\r\n<!--<b>Dinner Special</b>-->\r\nChicken and Biscuit\r\n<br />12-6 p.m.\r\n<br />Admission $15.00\r\n<br />For Tickets call\r\n<br />607-753-0377\r\n</p>\r\n\r\n', NULL, '2014-10-01 11:54:01', 'show', 0, 0, 0, 'active'),
(117, '2014-11-01 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-10-06 12:17:50', 'show', 0, 0, 0, 'active'),
(118, '2014-11-02 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Open Faced Turkey; Mashed Potatoes & Gravy; Veggie; Bread &                 Butter; Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-10-29 21:48:50', 'show', 0, 0, 0, 'active'),
(119, '2014-11-07 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free  ', NULL, '2014-01-25 16:56:38', 'show', 0, 0, 0, 'active'),
(120, '2014-11-08 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:27:01', 'show', 0, 0, 0, 'active'),
(121, '2014-11-09 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Chicken Pot Pie; French Fries; Bread & Butter; Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-10-29 21:45:32', 'show', 0, 0, 0, 'active'),
(122, '2014-11-15 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-06-24 01:36:45', 'show', 0, 0, 0, 'active'),
(123, '2014-11-16 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Lasagna Dinner; Antipasto Salad; Garlic Bread; Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-10-29 21:46:15', 'show', 0, 0, 0, 'active'),
(124, '2014-11-22 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:28:02', 'show', 0, 0, 0, 'active'),
(125, '2014-11-23 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Baked Fish; Potato Wedges; Coleslaw; Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-10-29 21:47:21', 'show', 0, 0, 0, 'active'),
(126, '2014-11-29 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-08 14:24:24', 'show', 0, 0, 0, 'active'),
(127, '2014-11-30 00:00:00', 'Merle Matts & New York Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Penne Pasta; Meatballs; Tossed Salad; Bread & Butter; Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-10-30 22:38:23', 'show', 0, 0, 0, 'active'),
(128, '2014-12-06 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:28:27', 'show', 0, 0, 0, 'active'),
(130, '2014-12-07 00:00:00', 'Merle Matts with North of Nashville Band', 'Christmas Party<br />\r\nbring a dish to pass \r\n<br />at 12 PM<br />\r\nMusic 2-6 PM.<br />\r\n', NULL, '2014-10-28 12:28:54', 'show', 0, 0, 0, 'active'),
(131, '2014-12-13 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-07-02 11:18:13', 'show', 0, 0, 0, 'active'),
(132, '2014-12-14 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n<br />Last Dance Before New Years Eve\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />Lasagna, Antipasto Salad, Bread & Butter, and Dessert\r\n<br />$7.50\r\n</p>', NULL, '2014-12-03 12:03:26', 'show', 0, 0, 0, 'active'),
(133, '2014-12-20 00:00:00', 'Closed', NULL, NULL, '2014-01-04 20:25:54', 'closed', 0, 0, 0, 'active'),
(134, '2014-12-21 00:00:00', 'Closed', NULL, NULL, '2014-01-04 20:26:02', 'closed', 0, 0, 0, 'active'),
(135, '2014-12-27 00:00:00', 'Closed', NULL, NULL, '2014-01-04 20:26:08', 'closed', 0, 0, 0, 'active'),
(136, '2014-12-28 00:00:00', 'Closed', NULL, NULL, '2014-01-04 20:26:15', 'closed', 0, 0, 0, 'active'),
(137, '2014-12-31 00:00:00', 'New Years Eve Party', 'Donna and the Country Mystics<br /><br />\r\n7 pm \'till 1 am<br />\r\nBuffet<br />\r\nAdmission $30.00 single / $60.00 couple<br /> \r\nPlease Bring a dessert to pass.', NULL, '2014-10-28 12:29:48', 'show', 0, 0, 0, 'active'),
(138, '2013-01-05 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:49:04', 'show', 0, 0, 0, 'active'),
(139, '2013-01-06 00:00:00', 'Aiken Heart', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:37:27', 'show', 0, 0, 0, 'active'),
(140, '2013-01-07 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(141, '2013-01-08 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '0000-00-00 00:00:00', 'meeting', 0, 0, 0, 'active'),
(142, '2013-01-11 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-10 13:35:13', 'show', 0, 0, 0, 'active'),
(143, '2013-01-12 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:37:45', 'show', 0, 0, 0, 'active'),
(144, '2013-01-13 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:49:15', 'show', 0, 0, 0, 'active'),
(145, '2013-01-14 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(146, '2013-01-19 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:49:27', 'show', 0, 0, 0, 'active'),
(147, '2013-01-20 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:38:53', 'show', 0, 0, 0, 'active'),
(148, '2013-01-21 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(149, '2013-01-26 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:39:08', 'show', 0, 0, 0, 'active'),
(150, '2013-01-27 00:00:00', 'Gary Morley & Hard Ride', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:39:21', 'show', 0, 0, 0, 'active'),
(151, '2013-01-28 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(152, '2013-02-02 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:49:37', 'show', 0, 0, 0, 'active'),
(153, '2013-02-03 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:39:46', 'show', 0, 0, 0, 'active'),
(154, '2013-02-04 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(155, '2013-02-09 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:39:59', 'show', 0, 0, 0, 'active'),
(156, '2013-02-10 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:49:48', 'show', 0, 0, 0, 'active'),
(157, '2013-02-11 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(158, '2013-02-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '0000-00-00 00:00:00', 'meeting', 0, 0, 0, 'active'),
(159, '2013-02-15 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-10 13:35:23', 'show', 0, 0, 0, 'active'),
(160, '2013-02-16 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:40:36', 'show', 0, 0, 0, 'active'),
(161, '2013-02-17 00:00:00', 'Old Time Country Jamboree', 'Donna and the Country Mystics<br />\r\nNelson Bros. Band<br />\r\nDoc Weismore with Real Country<br />\r\nOpen mike to sing or play with us from 5-6 p.m<p>\r\nfrom\r\n2 pm \'till 6 pm\r\n</p>', NULL, '2014-01-04 22:11:42', 'show', 0, 0, 0, 'active'),
(162, '2013-02-23 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:41:06', 'show', 0, 0, 0, 'active'),
(163, '2013-02-18 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(164, '2013-02-24 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:49:59', 'show', 0, 0, 0, 'active'),
(165, '2013-02-25 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(166, '2013-03-02 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:42:47', 'show', 0, 0, 0, 'active'),
(167, '2013-03-03 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:50:11', 'show', 0, 0, 0, 'active'),
(168, '2013-03-04 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(169, '2013-03-09 00:00:00', 'Private Party', NULL, NULL, '2013-12-22 22:58:01', 'show', 0, 0, 0, 'active'),
(170, '2013-03-10 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:43:25', 'show', 0, 0, 0, 'active'),
(171, '2013-03-11 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(172, '2013-03-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '0000-00-00 00:00:00', 'meeting', 0, 0, 0, 'active'),
(173, '2013-03-16 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:50:24', 'show', 0, 0, 0, 'active'),
(174, '2013-03-17 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\nWearing of The Green\r\nCONTEST !<br />\r\nDress for the occasion and\r\nsee who will win the $100.00 prize\r\n</p>', NULL, '2014-01-15 02:44:14', 'show', 0, 0, 0, 'active'),
(175, '2013-03-18 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(176, '2013-03-22 00:00:00', 'Spaghetti Dinner Dance', 'Music By Alderhollow Band\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-26 13:50:37', 'show', 0, 0, 0, 'active'),
(177, '2013-03-23 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:44:34', 'show', 0, 0, 0, 'active'),
(178, '2013-03-24 00:00:00', 'Gary Morley & Hard Ride', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:44:51', 'show', 0, 0, 0, 'active'),
(179, '2013-03-25 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(180, '2013-03-30 00:00:00', 'Aiken Heart', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:45:18', 'show', 0, 0, 0, 'active'),
(181, '2013-03-31 00:00:00', 'Closed for Easter', NULL, NULL, '2014-01-04 20:26:21', 'closed', 0, 0, 0, 'active'),
(182, '2013-04-01 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(183, '2013-04-06 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:46:31', 'show', 0, 0, 0, 'active'),
(184, '2013-04-07 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n<p>\r\nGospel Sunday\r\n</p>', NULL, '2014-01-26 13:50:57', 'show', 0, 0, 0, 'active'),
(185, '2013-04-08 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(187, '2013-04-16 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(188, '2013-04-13 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:51:11', 'show', 0, 0, 0, 'active'),
(189, '2013-04-14 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:48:18', 'show', 0, 0, 0, 'active'),
(190, '2013-04-15 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active');
INSERT INTO `events` (`id`, `date`, `title`, `description`, `icon`, `modified`, `type`, `cancelled`, `soldout`, `limitedtickets`, `status`) VALUES
(191, '2013-04-19 00:00:00', 'Spaghetti Dinner Dance', 'Music By Donna and The Country mystics\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-10 13:35:42', 'show', 0, 0, 0, 'active'),
(192, '2013-04-20 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:48:31', 'show', 0, 0, 0, 'active'),
(193, '2013-04-21 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:51:23', 'show', 0, 0, 0, 'active'),
(194, '2013-04-22 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(195, '2013-04-27 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:49:21', 'show', 0, 0, 0, 'active'),
(196, '2013-04-28 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:49:37', 'show', 0, 0, 0, 'active'),
(197, '2013-04-29 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(198, '2013-05-04 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:54:48', 'show', 0, 0, 0, 'active'),
(199, '2013-05-05 00:00:00', 'Dirt Road Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:55:09', 'show', 0, 0, 0, 'active'),
(200, '2013-05-06 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(201, '2013-05-09 00:00:00', 'Tribute to the Legends of Country Music', '1950-1970\'s<br />\r\n\r\nDoc Weismore with Real Country', NULL, '2013-12-22 23:46:57', 'feature', 0, 0, 0, 'active'),
(202, '2013-05-11 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:51:34', 'show', 0, 0, 0, 'active'),
(203, '2013-05-12 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:51:46', 'show', 0, 0, 0, 'active'),
(204, '2013-05-13 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(205, '2013-05-14 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(206, '2013-05-17 00:00:00', 'Irish Hooley', NULL, NULL, '2013-12-22 23:49:37', 'show', 0, 0, 0, 'active'),
(207, '2013-05-18 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:56:10', 'show', 0, 0, 0, 'active'),
(208, '2013-05-19 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:51:57', 'show', 0, 0, 0, 'active'),
(209, '2013-05-20 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(210, '2013-05-25 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:52:10', 'show', 0, 0, 0, 'active'),
(211, '2013-05-26 00:00:00', 'Veteran\'s DINNER SHOW', '<p>\r\nMusic By Doc Weismore\r\nwith Real Country\r\n</p>\r\n\r\n<p>\r\nfrom\r\n12 pm \'till 6 pm\r\n</p>\r\n\r\n<p>Chicken & Biscuit\r\ndinner<br />\r\n$15 per person\r\n</p>\r\n\r\n<p>\r\nPurchase Your\r\nTickets\r\nin <b>ADVANCE</b>\r\n</p>', NULL, '2013-12-22 23:55:36', 'show', 0, 0, 0, 'active'),
(212, '2013-05-31 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-10 13:35:51', 'show', 0, 0, 0, 'active'),
(213, '2013-06-01 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:52:21', 'show', 0, 0, 0, 'active'),
(214, '2013-06-02 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:57:32', 'show', 0, 0, 0, 'active'),
(215, '2013-06-03 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(216, '2013-06-08 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:57:52', 'show', 0, 0, 0, 'active'),
(217, '2013-06-09 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:52:32', 'show', 0, 0, 0, 'active'),
(218, '2013-06-10 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(219, '2013-06-11 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(220, '2013-06-14 00:00:00', 'Spaghetti Dinner Dance', 'Music By Alderhollow Band\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-26 13:52:48', 'show', 0, 0, 0, 'active'),
(221, '2013-06-15 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:58:27', 'show', 0, 0, 0, 'active'),
(223, '2013-06-16 00:00:00', 'Fathers Day Music Fest', '<p>Donna and The Country Mystics Father\'s\r\nDay Music Festival\r\n<br />With the Alderhollow Band,\r\n<br />Dick Dee (2012 Lifetime Achievement Award Winner)\r\n<br />Lois Pam,  \r\n<br />and Ton Sorendo.\r\n</p>\r\n<p>\r\n$6.00 Admission. \r\n<br />Turkey Dinner with trimmings available for\r\nseparate purchase 12-6pm.\r\n</p>\r\n\r\n<p>\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n</p>', NULL, '2014-01-04 22:12:38', 'show', 0, 0, 0, 'active'),
(224, '2013-06-22 00:00:00', 'Ray Randall & The Rhythm Aires', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:58:51', 'show', 0, 0, 0, 'active'),
(225, '2013-06-23 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:59:08', 'show', 0, 0, 0, 'active'),
(226, '2013-06-29 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:59:30', 'show', 0, 0, 0, 'active'),
(227, '2013-06-17 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(228, '2013-06-24 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(229, '2013-06-30 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 02:59:46', 'show', 0, 0, 0, 'active'),
(230, '2013-07-01 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(231, '2013-07-06 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:00:16', 'show', 0, 0, 0, 'active'),
(232, '2013-07-07 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:53:22', 'show', 0, 0, 0, 'active'),
(233, '2013-07-08 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(234, '2013-07-09 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(235, '2013-07-13 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:01:39', 'show', 0, 0, 0, 'active'),
(236, '2013-07-14 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:02:05', 'show', 0, 0, 0, 'active'),
(237, '2013-07-15 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(238, '2013-07-19 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-10 13:36:21', 'show', 0, 0, 0, 'active'),
(239, '2013-07-20 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:02:44', 'show', 0, 0, 0, 'active'),
(240, '2013-07-21 00:00:00', 'Ray Randall & The Rhythm Aires', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:03:04', 'show', 0, 0, 0, 'active'),
(241, '2013-07-22 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(242, '2013-07-24 00:00:00', 'A TRIBUTE TO THE GRAND OLE OPRY With Alderhollow Band', '<p>\r\nSit back and relax. Close your eyes. You will believe that you are at the Grand Ole Opry.\r\n<br />This band has successfully done several Grand Ole Opry shows, each different than the last.\r\n<br /> Each as entertaining, and each with the people asking for more, and promising to return.\r\n<br /><b>Don\'t miss it.</b>\r\n</p>\r\n\r\n<p>\r\nDinner will be Pulled Pork with all the trimmings\r\n<br />Time is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br />SORRY NO DANCING DURING THE SHOW\r\n<br />Come early!! The Hall of Fame is open at 11 a.m.\r\n<br /><b>Admission $27.50</b>\r\n</p>\r\n\r\n<p>\r\nFor Bus Reservations call Betsy at 607-336-1992 or e-mail me at route66band@citlink.net\r\n<br />Individual Reservations call 607-753-0377\r\n<br />Remember, get your reservations in early as 2012 shows were all sold out and we had to\r\nturn people away.\r\n</p>', NULL, '2014-01-26 13:53:41', 'feature', 0, 0, 0, 'active'),
(243, '2013-07-31 00:00:00', 'A TRIBUTE TO THE GRAND OLE OPRY With Alderhollow Band', '<p>\r\nSit back and relax. Close your eyes. You will believe that you are at the Grand Ole Opry.\r\n<br />This band has successfully done several Grand Ole Opry shows, each different than the last.\r\n<br /> Each as entertaining, and each with the people asking for more, and promising to return.\r\n<br /><b>Don\'t miss it.</b>\r\n</p>\r\n\r\n<p>\r\nDinner will be Pulled Pork with all the trimmings\r\n<br />Time is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br />SORRY NO DANCING DURING THE SHOW\r\n<br />Come early!! The Hall of Fame is open at 11 a.m.\r\n<br /><b>Admission $27.50</b>\r\n</p>\r\n\r\n<p>\r\nFor Bus Reservations call Betsy at 607-336-1992 or e-mail me at route66band@citlink.net\r\n<br />Individual Reservations call 607-753-0377\r\n<br />Remember, get your reservations in early as 2012 shows were all sold out and we had to\r\nturn people away.\r\n</p>', NULL, '2014-01-26 13:53:51', 'feature', 0, 0, 0, 'active'),
(244, '2013-07-27 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:55:32', 'show', 0, 0, 0, 'active'),
(245, '2013-07-28 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:03:36', 'show', 0, 0, 0, 'active'),
(246, '2013-07-29 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(247, '2013-08-03 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:04:13', 'show', 0, 0, 0, 'active'),
(248, '2013-08-04 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:55:40', 'show', 0, 0, 0, 'active'),
(249, '2013-08-05 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(250, '2013-08-10 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:05:22', 'show', 0, 0, 0, 'active'),
(251, '2013-08-11 00:00:00', 'Closed for Private party', 'from<br />\r\n2 pm \'till 6 pm', NULL, '2014-01-04 20:26:28', 'closed', 0, 0, 0, 'active'),
(252, '2013-08-12 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(253, '2013-08-13 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(254, '2013-08-16 00:00:00', 'Spaghetti Dinner Dance', 'Music By Alderhollow Band\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-26 13:55:50', 'show', 0, 0, 0, 'active'),
(255, '2013-08-17 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:56:09', 'show', 0, 0, 0, 'active'),
(256, '2013-08-18 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:05:59', 'show', 0, 0, 0, 'active'),
(257, '2013-08-19 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(258, '2013-08-22 00:00:00', 'A Tribute to ELVIS Dinner Show', 'Tom Gilbo & The Blue Suedes\r\n<br />Chicken Cordon Bleu with\r\nall the trimmings.\r\n\r\n<p>\r\nfrom\r\n<br />1 pm \'till 5 pm\r\n</p>', NULL, '2013-12-30 18:34:25', 'show', 0, 0, 0, 'active'),
(259, '2013-08-24 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:06:42', 'show', 0, 0, 0, 'active'),
(260, '2013-08-25 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:07:19', 'show', 0, 0, 0, 'active'),
(261, '2013-08-26 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(262, '2013-08-31 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:07:36', 'show', 0, 0, 0, 'active'),
(263, '2013-09-01 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:07:54', 'show', 0, 0, 0, 'active'),
(264, '2013-09-02 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(265, '2013-09-07 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:56:22', 'show', 0, 0, 0, 'active'),
(266, '2013-09-08 00:00:00', 'Jamboree', 'Doc Weismore with Real, \r\n<br />Country & Donna &\r\nThe Country Mystic, \r\n<br />Merle Matts, \r\n<br /> and Theresa Backo\r\n<br />Open Mike 5-6pm. \r\n<p>\r\nTime is 2-6pm.\r\n</p>', NULL, '2013-12-30 20:28:57', 'show', 0, 0, 0, 'active'),
(267, '2013-09-09 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(268, '2013-09-10 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(269, '2013-09-12 00:00:00', 'A TRIBUTE TO Lorretta Lynn & Charlie Pride', '<p>\r\nDonna Minnoe & Terry Grime with The Country Band\r\n</p>\r\n\r\n<p>\r\nDon\'t miss this show. \r\n<br />Not only does Donna do fantastic job lorretta Lynn, but Teryy is the real Charley Pride.\r\n<br /> The Show is phenomenal. You\'ll be "Going to San Anton", to pick those "Old Cotton Black Fields Back Home" before you get your "Crystal Chandeliers".\r\n<br /> And this "Coal Miner\'s Daughter" said "Don\'t Come Home A Drinkin\' (with loving on your mind)",\r\n<br /> because I\'m a "Blue Kentucky Girl" who already told her "She Aint Women Enough To Take my Man".\r\n</p>\r\n\r\n<p>\r\nDinner will be turkey with all the trimmings\r\n<br />Time is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br />SORRY NO DANCING DURING THE SHOW\r\n<br />Come early!! The Hall of Fame is open at 11 a.m.\r\n<br />Admission $27.50\r\n</p>\r\n\r\n<p>\r\nFor Reservations call Betsy at 607-336-1992 or e-mail me at\r\n<br />route66band@citlink.net\r\n<br />Remember, get your reservations in early as\r\n</p>', NULL, '2013-12-30 20:44:03', 'show', 0, 0, 0, 'active'),
(270, '2013-09-19 00:00:00', 'A TRIBUTE TO Lorretta Lynn & Charlie Pride', '<p>\r\nDonna Minnoe & Terry Grime with The Country Band\r\n</p>\r\n\r\n<p>\r\nDon\'t miss this show. \r\n<br />Not only does Donna do fantastic job lorretta Lynn, but Teryy is the real Charley Pride.\r\n<br /> The Show is phenomenal. You\'ll be "Going to San Anton", to pick those "Old Cotton Black Fields Back Home" before you get your "Crystal Chandeliers".\r\n<br /> And this "Coal Miner\'s Daughter" said "Don\'t Come Home A Drinkin\' (with loving on your mind)",\r\n<br /> because I\'m a "Blue Kentucky Girl" who already told her "She Aint Women Enough To Take my Man".\r\n</p>\r\n\r\n<p>\r\nDinner will be turkey with all the trimmings\r\n<br />Time is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br />SORRY NO DANCING DURING THE SHOW\r\n<br />Come early!! The Hall of Fame is open at 11 a.m.\r\n<br />Admission $27.50\r\n</p>\r\n\r\n<p>\r\nFor Reservations call Betsy at 607-336-1992 or e-mail me at\r\n<br />route66band@citlink.net\r\n<br />Remember, get your reservations in early as\r\n</p>', NULL, '2013-12-30 20:44:03', 'show', 0, 0, 0, 'active'),
(271, '2013-09-14 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:08:58', 'show', 0, 0, 0, 'active'),
(272, '2013-09-15 00:00:00', 'Alderhollow Band', '<b>Sock Hop</b><br />\r\nfrom<br />\r\n2 pm \'till 6 pm', NULL, '2014-01-26 13:56:33', 'show', 0, 0, 0, 'active'),
(273, '2013-09-16 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(274, '2013-09-21 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:09:24', 'show', 0, 0, 0, 'active'),
(275, '2013-09-22 00:00:00', 'Joel Kane & Uptown Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:09:44', 'show', 0, 0, 0, 'active'),
(276, '2013-09-23 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(277, '2013-09-27 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-10 13:39:26', 'show', 0, 0, 0, 'active'),
(278, '2013-09-28 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:10:21', 'show', 0, 0, 0, 'active'),
(279, '2013-09-29 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:56:42', 'show', 0, 0, 0, 'active'),
(280, '2013-09-30 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(281, '2013-10-05 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:56:53', 'show', 0, 0, 0, 'active'),
(282, '2013-10-06 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:14:51', 'show', 0, 0, 0, 'active'),
(283, '2013-10-07 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(284, '2013-10-08 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(285, '2013-10-12 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:14:21', 'show', 0, 0, 0, 'active'),
(286, '2013-10-13 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:57:02', 'show', 0, 0, 0, 'active'),
(287, '2013-10-14 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(288, '2013-10-19 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:57:13', 'show', 0, 0, 0, 'active'),
(289, '2013-10-20 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:57:23', 'show', 0, 0, 0, 'active'),
(290, '2013-10-21 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(291, '2013-10-26 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:13:58', 'show', 0, 0, 0, 'active'),
(292, '2013-10-27 00:00:00', 'HALL of FAME SHOW', 'Donna and The Country Mystics with Merle Matts\r\n<br />Roast Beef Dinner 12-6 pm\r\n<br />Admission $15.00\r\n<br />For tickets call 607-753-0377', NULL, '2014-01-04 22:13:50', 'show', 0, 0, 0, 'active'),
(293, '2013-10-28 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(294, '2013-11-02 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:57:34', 'show', 0, 0, 0, 'active'),
(295, '2013-11-03 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:57:45', 'show', 0, 0, 0, 'active'),
(296, '2013-11-04 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(297, '2013-11-07 00:00:00', 'Alderhollow Band Tribute To Hee haw Show', 'Meatloaf Dinner\r\n<br />from\r\n<br /> 12 \'till 5pm', NULL, '2014-01-26 13:57:59', 'show', 0, 0, 0, 'active'),
(298, '2013-11-09 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:12:53', 'show', 0, 0, 0, 'active'),
(299, '2013-11-10 00:00:00', 'Country Harvest Jamboree', 'Donna and The Country Mystics \r\n<br />with guest bands\r\n<br />Doc Weismore & Real Country\r\n<br />and Just Us\r\n<p>\r\nwelcomes everyone to a\r\nCountry kickin’ good time !\r\nJoin us for a\r\nCountry Harvest Jamboree\r\n</p>\r\n\r\n<p>\r\n1 PM - 6 PM\r\n<br />$6 cover charge\r\n<br />Food & Refreshments Available\r\n</p>\r\n', NULL, '2014-01-04 22:14:06', 'show', 0, 0, 0, 'active'),
(300, '2013-11-11 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(301, '2013-11-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(302, '2013-11-15 00:00:00', 'Spaghetti Dinner Dance', 'Music By Alderhollow Band\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-26 13:58:10', 'show', 1, 0, 0, 'active'),
(303, '2013-11-16 00:00:00', 'Alderhollow Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:58:22', 'show', 0, 0, 0, 'active'),
(304, '2013-11-17 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:12:18', 'show', 0, 0, 0, 'active'),
(305, '2013-11-18 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(306, '2013-11-23 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:11:58', 'show', 0, 0, 0, 'active'),
(307, '2013-11-24 00:00:00', 'Alderhollow Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-26 13:58:32', 'show', 0, 0, 0, 'active'),
(308, '2013-11-25 00:00:00', 'Bingo Night', 'Doors open at 5 pm<br />\r\nBingo @ 6 pm<br />\r\nPlay Starts @ 6:45 pm<br />', NULL, '2013-12-22 22:22:42', 'other', 0, 0, 0, 'active'),
(309, '2013-11-30 00:00:00', 'Joel Kane & Uptown Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 03:11:15', 'show', 0, 0, 0, 'active'),
(310, '2014-01-14 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(311, '2014-02-11 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(312, '2014-03-11 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(313, '2014-04-08 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(314, '2014-05-13 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(315, '2014-06-10 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(316, '2014-07-08 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(317, '2014-08-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(318, '2014-09-09 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(319, '2014-10-14 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />', NULL, '2014-10-15 11:21:01', 'meeting', 1, 0, 0, 'active'),
(320, '2014-11-11 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(321, '2014-12-09 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>', NULL, '2014-12-09 20:40:05', 'meeting', 1, 0, 0, 'active'),
(322, '2014-02-02 00:00:00', 'Just Us', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-01-15 01:45:20', 'show', 0, 0, 0, 'active'),
(323, '2014-03-02 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-02-08 14:24:35', 'show', 0, 0, 0, 'active'),
(324, '2014-10-15 00:00:00', 'COUNTRY ROUNDUP DINNER SHOW', '<p>\r\nPerformed by Donna and the Country Mystics along with Doc Weismore with Real Country\r\n</p>\r\n\r\n<p>\r\nThis show is full of surprises. With these two bands corroborating together, the talent is enormous. Close your eyes, did you just hear Little Jimmy Dickens, Loretta Lynn, Charlie Pride, Grandpa Jones and wait until the ending when Donna comes in on her horse to celebrate our nation. Yes, you heard me, a real horse. Oh and did I forget the fun planned with the audience!!\r\n</p>\r\n\r\nChicken Barbecue Dinner with all the trimmings<br />\r\n\r\n<p>\r\nTime is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br /> <b>SORRY NO DANCING DURING THE SHOW</b>\r\n<br /> Admission $28.50\r\n<br /> For Reservations call Betsy at 607-336-1992\r\n</p>\r\n\r\n<p>\r\nCome early!! The Hall of Fame is open at 11 p.m.<br /> \r\nRemember, get your reservations in early as 2013 shows were all sold out and we had to turn people away.\r\n</p>', NULL, '2014-10-03 10:34:59', 'feature', 0, 0, 1, 'active'),
(325, '2014-12-10 00:00:00', 'DONNA AND THE COUNTRY MYSTICS CHRISTMAS SHOW', '<b>(Back by Popular Demand)</b><br />\r\n\r\n<p>\r\nFrom listening and singing along to all your favorite Christmas songs to Rockin’ around the Christmas tree, you truly will be inspired by this great Christmas show. No time like the holidays to participate in the spirit of Christmas.\r\n</p>\r\n\r\n<p>\r\nDinner will be Ham with all the trimmings\r\n<br />\r\nTime is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br /> Admission $28.50 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2013 show was sold out and we had to turn people away.\r\n</p>', NULL, '2014-12-14 16:37:54', 'feature', 0, 0, 1, 'active'),
(326, '2014-04-25 00:00:00', 'Spaghetti Dinner Dance', 'Music By North of Nashville Band\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free ', NULL, '2014-02-08 14:24:51', 'show', 0, 0, 0, 'active'),
(327, '2013-06-14 00:00:00', 'Spaghetti Dinner Dance', 'Music By Alderhollow Band\r\n<br />\r\n5 pm \'till 9 pm<br />\r\nAdmission $7.00 Ages 6-12 / 60 and over<br />\r\nUnder 60 $8.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-01-26 13:58:47', 'show', 0, 0, 0, 'active'),
(328, '2014-09-19 00:00:00', 'Spaghetti Dinner Dance', 'Music By North of Nashville Band\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free \r\n', NULL, '2014-02-08 14:25:10', 'show', 0, 0, 0, 'active'),
(329, '2014-07-10 00:00:00', 'COUNTRY HIT PARADE 1950 DINNER SHOW', 'Performed by North of Nashville Band<br />\r\nRemember back in the 50’s looking forward every week to tune into the Hit Parade on TV. Well now you can come to Cortland’s Country Music Park and hear “Country Hit Parade 1950” Dinner Show with such songs as “If You’ve Got The Money Honey, I’ve Got The Time; I’ll Sail My Ship Along and City Lights”.\r\n<br />\r\n<br />\r\nRoast Beef Dinner with all the trimmings\r\n<br />\r\nTime is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br />\r\n<br />\r\n<b>SORRY NO DANCING DURING THE SHOW</b>\r\n<br />\r\n<br />\r\nAdmission $28.50\r\n<br />\r\nFor Reservations call Betsy at 607-336-1992\r\n<br /><br />\r\nCome early!! The Hall of Fame is open at 11 p.m. \r\n\r\n<br />\r\n<br />\r\nRemember, get your reservations in early as 2013 shows were all sold out and we had to turn people away.', NULL, '2014-03-15 15:49:18', 'feature', 0, 0, 1, 'active'),
(330, '2014-11-13 00:00:00', 'REMEMBERING GEORGE JONES, RAY PRICE, CAL SMITH, KITTY WELLS & PATTI PAGE', 'Performed by Doc Weismore with Real Country <br /><br />\r\n2014 found us losing many of our favorite country singers. \r\n<br />Come and listen to great hits like:\r\n<br />George Jones’, “He Stopped Loving Her Today”\r\n<br />Ray Price’s, “For the Good Times”\r\n<br />Cal Smith’s, “Country Bumkin”\r\n<br />Kitty Well’s, “It Wasn’t God Who Made Honky Tonk Angels”\r\n<br />& Patti Page’s, “Tennesse Waltz” <br <br />plus many more by these famous Country Artists\r\n<br />\r\n<br />\r\nTurkey Dinner with all the trimmings\r\n<br />\r\nTime is 12-5 p.m. / Dancing 12-1 p.m. / Dinner 1 p.m. / Show starts 2:30 p.m.\r\n<br />\r\n<br />\r\n<b>SORRY NO DANCING DURING THE SHOW</b>\r\n<br />\r\n<br />\r\nAdmission $28.50\r\n<br />\r\nFor Reservations call Betsy at 607-336-1992\r\n<br />\r\n<br />\r\nCome early!! The Hall of Fame is open at 11 p.m.\r\n<br />\r\n<br />\r\nRemember, get your reservations in early as 2013 shows were all sold out and we had to turn people away.', NULL, '2014-03-15 15:56:01', 'feature', 0, 0, 0, 'active'),
(331, '2014-10-08 00:00:00', 'COUNTRY ROUNDUP DINNER SHOW', '<p>\r\nPerformed by Donna and the Country Mystics along with Doc Weismore with Real Country\r\n</p>\r\n\r\n<p>\r\nThis show is full of surprises. With these two bands corroborating together, the talent is enormous. Close your eyes, did you just hear Little Jimmy Dickens, Loretta Lynn, Charlie Pride, Grandpa Jones and wait until the ending when Donna comes in on her horse to celebrate our nation. Yes, you heard me, a real horse. Oh and did I forget the fun planned with the audience!!\r\n</p>\r\n\r\nChicken Barbecue Dinner with all the trimmings<br />\r\n\r\n<p>\r\nTime is 11-4 p.m. / Dancing 11-12 p.m. / Dinner 12 p.m. / Show starts 1:30 p.m.\r\n<br /> <b>SORRY NO DANCING DURING THE SHOW</b>\r\n<br /> Admission $28.50\r\n<br /> For Reservations call Betsy at 607-336-1992\r\n</p>\r\n\r\n<p>\r\nThe Hall of Fame is open at 11 p.m.\r\n</p>', NULL, '2014-10-03 10:33:55', 'feature', 0, 0, 1, 'active'),
(333, '2014-09-27 00:00:00', 'Merle Matts & New York Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-09-24 11:02:03', 'show', 0, 0, 0, 'active'),
(334, '2014-09-26 00:00:00', 'SCMA Membership Appreciation Dinner', '<p>Bring  a dish to pass. \r\n<br />The Park will provide Hamburgers and Hotdogs. \r\n</p>\r\n<p>\r\nYou must be a paid member in good standing in order to attend.\r\n<br />If only husband or wife is a member, the other one must join.\r\n</p>\r\n\r\n<p>Starts at 6 pm</p>', NULL, '2014-08-08 23:10:17', 'membership', 0, 0, 0, 'active'),
(335, '2015-01-03 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2015-01-03 20:32:33', 'show', 1, 0, 0, 'active'),
(336, '2015-01-04 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:13:42', 'show', 0, 0, 0, 'active'),
(337, '2015-01-10 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:14:21', 'show', 0, 0, 0, 'active'),
(338, '2015-01-11 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:15:17', 'show', 0, 0, 0, 'active'),
(339, '2015-01-16 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free  ', NULL, '2014-11-23 20:17:12', 'show', 0, 0, 0, 'active'),
(340, '2015-01-17 00:00:00', 'Doc Weismore with Real Countr', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:19:18', 'show', 0, 0, 0, 'active'),
(341, '2015-01-18 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:19:45', 'show', 0, 0, 0, 'active'),
(342, '2015-01-24 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:20:16', 'show', 0, 0, 0, 'active'),
(343, '2015-01-25 00:00:00', 'Merle Matts & New York Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:20:45', 'show', 0, 0, 0, 'active'),
(344, '2015-01-31 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2015-01-31 15:52:17', 'show', 0, 0, 0, 'active'),
(345, '2015-02-01 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:24:10', 'show', 0, 0, 0, 'active'),
(346, '2015-02-07 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:24:47', 'show', 0, 0, 0, 'active'),
(347, '2015-02-08 00:00:00', 'Cortland Country Music Park Winter Benefit Jamboree', 'Hosted by Donna and The Country Mystics\r\n<br />\r\nWith Doc Weismore with Real Country\r\n<br />\r\nand more...\r\n<br />\r\n\r\n\r\n<p>This jamboree is to benefit the Park and help with the winter bills.\r\n</p>\r\n<br />\r\n\r\nFrom<br />\r\n12 pm \'till ??\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>\r\n\r\n<p>\r\nChinese Auction, 50/50\'s and pull-tabs\r\n</p>', NULL, '2015-01-08 13:25:49', 'show', 0, 0, 0, 'active'),
(348, '2015-02-14 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:26:57', 'show', 0, 0, 0, 'active'),
(349, '2015-02-15 00:00:00', 'Merle Matts & New York Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:27:27', 'show', 0, 0, 0, 'active'),
(350, '2015-02-21 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2015-02-21 18:12:28', 'show', 1, 0, 0, 'active'),
(351, '2015-02-22 00:00:00', 'North of Nashville Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:28:38', 'show', 0, 0, 0, 'active'),
(352, '2015-02-28 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $6.00\r\n</p>', NULL, '2014-11-23 20:29:23', 'show', 0, 0, 0, 'active'),
(353, '2015-01-13 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(354, '2015-02-10 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(355, '2015-03-10 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(356, '2015-04-14 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(357, '2015-05-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(358, '2015-06-09 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2015-06-09 18:25:02', 'meeting', 1, 0, 0, 'active'),
(359, '2015-07-14 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(360, '2015-08-11 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(361, '2015-09-08 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(362, '2015-10-13 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(363, '2015-11-10 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(364, '2015-12-08 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(365, '2015-03-07 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:54:53', 'show', 0, 0, 0, 'active'),
(366, '2015-03-08 00:00:00', 'Merle Matts & New York Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:55:32', 'show', 0, 0, 0, 'active'),
(367, '2015-03-14 00:00:00', 'Closed for Private party', 'NO DANCE', NULL, '2015-02-06 11:32:07', 'show', 0, 0, 0, 'active'),
(368, '2015-03-15 00:00:00', 'Wearing of the Green', 'North of Nashville Band\r\n<br />\r\n\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br /> \r\nHam or Corned Beef, and Cabbage $7.50.\r\n</p>\r\n\r\n<p>\r\n<b>Wearing of the Green contest!</b>\r\n<br />1st prize is $30.00\r\n<br />2nd prize is $20.00\r\n<br />3rd prize is $10.00\r\n</p>\r\n', NULL, '2015-03-08 14:41:16', 'show', 0, 0, 0, 'active'),
(369, '2015-03-21 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:56:04', 'show', 0, 0, 0, 'active'),
(370, '2015-03-22 00:00:00', 'Dirt Road Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:56:15', 'show', 0, 0, 0, 'active'),
(371, '2015-03-28 00:00:00', 'North of Nashville Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:56:44', 'show', 0, 0, 0, 'active'),
(372, '2015-03-29 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:57:10', 'show', 0, 0, 0, 'active'),
(373, '2015-04-04 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:57:21', 'show', 0, 0, 0, 'active'),
(374, '2015-04-05 00:00:00', 'TBA', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:57:29', 'show', 0, 0, 0, 'active'),
(375, '2015-04-11 00:00:00', 'North Ridge', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-03-08 14:23:32', 'show', 0, 0, 0, 'active'),
(376, '2015-04-12 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:57:45', 'show', 0, 0, 0, 'active'),
(377, '2015-04-17 00:00:00', 'Spaghetti Dinner Dance', 'Music By North Ridge\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-04-12 17:46:54', 'show', 0, 0, 0, 'active'),
(378, '2015-04-18 00:00:00', 'North Ridge', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-04-12 17:47:14', 'show', 0, 0, 0, 'active'),
(379, '2015-04-19 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-04-16 18:51:15', 'show', 0, 0, 0, 'active'),
(380, '2015-04-25 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:58:26', 'show', 0, 0, 0, 'active'),
(381, '2015-04-26 00:00:00', 'Dirt Road Express featuring Merle Matts', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-04-25 04:11:41', 'show', 0, 0, 0, 'active'),
(382, '2015-04-05 00:00:00', 'Happy Easter - Closed', NULL, NULL, '2014-01-04 20:25:26', 'closed', 0, 0, 0, 'active'),
(383, '2015-05-02 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-04-12 17:48:35', 'show', 0, 0, 0, 'active'),
(384, '2015-05-03 00:00:00', 'Dakota Moon', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-04-12 17:49:12', 'show', 0, 0, 0, 'active'),
(385, '2015-05-09 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:58:54', 'show', 0, 0, 0, 'active'),
(386, '2015-05-10 00:00:00', 'Mother\'s Day Celebration', '<p>\r\n<b>Come Join Us For A Fun Mother\'s Day</b>\r\n</p>\r\nMusic by Doc Weismore with Real Country\r\n<br />\r\n\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br /> \r\nChicken \'n Biscuits, Mashed Potatoes, Peas and Brownie Sundae. <br />\r\n$7.50\r\n</p>\r\n\r\n<div class="dinnerDescription">\r\n<ul>\r\n<b>Prizes:</b>\r\n<li>Oldest Mother</li>\r\n<li>Youngest Mother</li>\r\n<li>Mother with most Children</li>\r\n<li>Mother with most Grandchildren</li>\r\n<li>Mother with the youngest children</li>\r\n<b>One prize per person</b>\r\n</ul>\r\n</div>\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>\r\n', NULL, '2015-04-18 16:47:31', 'show', 0, 0, 0, 'active'),
(387, '2015-05-16 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:59:13', 'show', 0, 0, 0, 'active'),
(388, '2015-05-17 00:00:00', 'North Ridge', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-03-08 14:24:28', 'show', 0, 0, 0, 'active'),
(389, '2015-05-23 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:59:28', 'show', 0, 0, 0, 'active'),
(390, '2015-05-24 00:00:00', 'Karen Starr with Black Rose', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-04-12 17:50:01', 'show', 0, 0, 0, 'active'),
(391, '2015-05-30 00:00:00', 'Phoenix', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:59:41', 'show', 0, 0, 0, 'active'),
(392, '2015-05-31 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:59:48', 'show', 0, 0, 0, 'active'),
(393, '2015-06-06 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 15:59:54', 'show', 0, 0, 0, 'active'),
(394, '2015-06-07 00:00:00', 'Salute to Veterans Dinner Dance & Show ', 'Music by Doc Weismore with Real Country\r\n<br />\r\n<br />\r\nDinner Special:\r\n<br />\r\nChicken \'n Biscuit\r\n\r\n<br />\r\nTime 12 pm till 6 pm \r\n\r\n', NULL, '2015-05-05 03:14:43', 'show', 0, 0, 0, 'active'),
(395, '2015-06-13 00:00:00', 'Ray Randall & The Rhythm Aires', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-05-05 03:15:40', 'show', 0, 0, 0, 'active'),
(396, '2015-06-14 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:00:13', 'show', 0, 0, 0, 'active'),
(397, '2015-06-20 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:00:17', 'show', 0, 0, 0, 'active');
INSERT INTO `events` (`id`, `date`, `title`, `description`, `icon`, `modified`, `type`, `cancelled`, `soldout`, `limitedtickets`, `status`) VALUES
(398, '2015-06-21 00:00:00', 'Father\'s Day Celebration', '<p>\r\n<b>Come Join Us For A Fun Father\'s Day</b>\r\n</p>\r\nMusic by Dirt Road Express\r\n<br />\r\n\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br /> \r\nChicken Cordon Bleu <br />\r\n$7.50\r\n</p>\r\n\r\n<div class="dinnerDescription">\r\n<ul>\r\n<b>Prizes:</b>\r\n<li>Oldest Father</li>\r\n<li>Youngest Father</li>\r\n<li>Father with most Children</li>\r\n<li>Father with most Grandchildren</li>\r\n<li>Father with the youngest children</li>\r\n<b>One prize per person</b>\r\n</ul>\r\n</div>\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>\r\n', NULL, '2015-05-05 03:21:18', 'show', 0, 0, 0, 'active'),
(399, '2015-06-27 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:00:27', 'show', 0, 0, 0, 'active'),
(400, '2015-06-28 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:00:33', 'show', 0, 0, 0, 'active'),
(401, '2015-07-04 00:00:00', 'JULY 4TH CELEBRATION & STRAWBERRY FESTIVAL', '\r\nAll day Chicken Barbecue; Crafters and all kinds of Strawberry desserts <p class="dinnerDescription">Strawberry shortcake, Strawberry sundaes, Strawberry cake, and more.</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 9 a.m.-11 p.m.</td></tr>\r\n<tr>\r\n<td class="time">9 a.m.-12 p.m.</td><td>Fishing Derby for Kids & all ages.<br /> <p class="dinnerDescription">Followed by Free hot dogs, potato chips and soda. <br />No Charge.</p></td>\r\n</tr>\r\n<tr>\r\n<td class="time">2-6 p.m.</td><td>Bluegrass on the outdoor stage<br />\r\n<p class="dinnerDescription">\r\nSalmon River Boys and <br/>\r\nFiddle De Divas & Dudes <br /> \r\nBring your own chairs.<br /> Admission $10.00</p></td>\r\n</tr>\r\n<tr>\r\n<td class="time">7-11 p.m.</td><td>Round and Square Dancing <p class="dinnerDescription">with Doc Weismore with Real Country. Admission $7.00</p></td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nCombination Admission $15.00 \r\n<br /> For tickets call 607-753-0377\r\n</p>', NULL, '2015-06-27 19:57:48', 'show', 0, 0, 0, 'active'),
(402, '2015-07-05 00:00:00', 'Fiddle De Divas & Dudes', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-06-27 19:58:16', 'show', 0, 0, 0, 'active'),
(403, '2015-07-11 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:00:49', 'show', 0, 0, 0, 'active'),
(404, '2015-07-12 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-07-06 17:56:17', 'show', 0, 0, 0, 'active'),
(405, '2015-07-18 00:00:00', 'Ray Randall & The Rhythm Aires', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-05-05 03:22:13', 'show', 0, 0, 0, 'active'),
(406, '2015-07-19 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:01:05', 'show', 0, 0, 0, 'active'),
(407, '2015-07-25 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:01:10', 'show', 0, 0, 0, 'active'),
(408, '2015-07-26 00:00:00', 'Bob Swarm & the Knight Riders', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-06-27 19:51:03', 'show', 0, 0, 0, 'active'),
(409, '2015-08-01 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:01:20', 'show', 0, 0, 0, 'active'),
(410, '2015-08-02 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:01:26', 'show', 0, 0, 0, 'active'),
(411, '2015-08-08 00:00:00', 'Dean Goble & Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2016-07-14 10:55:51', 'show', 0, 0, 0, 'active'),
(412, '2015-08-09 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:01:39', 'show', 0, 0, 0, 'active'),
(413, '2015-08-15 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:01:46', 'show', 0, 0, 0, 'active'),
(414, '2015-08-16 00:00:00', 'Double Chase Show & Dance\r\n', 'Featuring Matt & Thelma<br />\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-06-29 18:19:05', 'show', 0, 0, 0, 'active'),
(415, '2015-08-22 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:01:58', 'show', 0, 0, 0, 'active'),
(416, '2015-08-23 00:00:00', 'NelsonBros. Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-05-05 03:23:12', 'show', 0, 0, 0, 'active'),
(417, '2015-08-29 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:02:11', 'show', 0, 0, 0, 'active'),
(418, '2015-08-30 00:00:00', 'Jerry Irwin\'s County Line', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:31:43', 'show', 0, 0, 0, 'active'),
(419, '2015-09-05 00:00:00', 'Ray Randall & The Rhythm Aires', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-07-29 15:30:25', 'show', 0, 0, 0, 'active'),
(420, '2015-09-06 00:00:00', 'Ray Randall & The Rhythm Aires', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-09-03 05:06:41', 'show', 0, 0, 0, 'active'),
(421, '2015-09-12 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:02:42', 'show', 0, 0, 0, 'active'),
(422, '2015-09-13 00:00:00', 'Kaitlyn Jackson & Hometown', '<p>\r\nKaitlyn Jackson<br />\r\nAmerican Idol Contestant<br />\r\nNashville Recording Artist<br />\r\nwith the Hometown Band\r\n</p>\r\n\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-09-10 01:08:29', 'show', 0, 0, 0, 'active'),
(423, '2015-09-19 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:02:53', 'show', 0, 0, 0, 'active'),
(424, '2015-09-27 00:00:00', 'Karen Starr with Black Rose', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-07-29 15:30:45', 'show', 0, 0, 0, 'active'),
(425, '2015-09-26 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:03:06', 'show', 0, 0, 0, 'active'),
(426, '2015-09-20 00:00:00', 'Square Dance Sunday', 'Doc Weismore with Real Country\r\n<br />\r\n<b>Special Guests:</b><br/>\r\nJohn Wood, Theresa Backo, & Harry Orton<br />\r\n\r\n<p>\r\n<b>Dinner Special</b><br />\r\nScalloped Potatoes & Ham<br />\r\nGreen Beans, Roll, & Ice Cream Sundae <br />\r\n$7.50<br />\r\n</p>\r\n<br />\r\nDinner starts at 1pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-07-29 15:41:13', 'show', 0, 0, 0, 'active'),
(427, '2015-10-03 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:03:21', 'show', 0, 0, 0, 'active'),
(428, '2015-10-04 00:00:00', 'Donna and The Country Mystics<br />\r\nFund Raiser Jamboree', 'From<br />\r\n12 pm \'till 6 pm\r\n\r\n<p>\r\nGuest Bands\r\n<p class="dinnerDescription">\r\ninclude:<br />\r\nJerry Irwin and County Line<br />\r\n&<br />\r\nThe Silver Creek Band\r\n</p>\r\n</p>\r\n<p>\r\nAll proceeds to benefit a Therapeutic SureHands Lift for Disabled and Special needs people. \r\n</p>\r\n<p class="dinnerDescription">\r\nPublic Welcome! <br />\r\nFood & Refreshments Available.<br />\r\nDoors open at Noon<br />\r\nMusic Begins at 1pm<br />\r\nRaffles & Dancing!\r\n\r\n</p>\r\n<p>\r\nAdmission $7.00<br />\r\nFor More Info Call Donna at 315-224-9085\r\n</p>', NULL, '2015-08-29 23:58:52', 'show', 0, 0, 0, 'active'),
(429, '2015-10-10 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-05-23 17:44:47', 'show', 0, 0, 0, 'active'),
(430, '2015-10-11 00:00:00', 'Dirt Road Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:03:37', 'show', 0, 0, 0, 'active'),
(431, '2015-10-16 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-04-16 18:47:25', 'show', 0, 0, 0, 'active'),
(432, '2015-10-17 00:00:00', 'Phoenix', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:03:58', 'show', 0, 0, 0, 'active'),
(433, '2015-10-18 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:04:04', 'show', 0, 0, 0, 'active'),
(434, '2015-10-24 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:04:11', 'show', 0, 0, 0, 'active'),
(435, '2015-10-25 00:00:00', '39th Annual Hall of Fame Dinner & Dance', 'Music By Doc Weismore with Real Country\r\n<br />\r\n12-6 p.m.<br />\r\n<p>\r\n<b>Dinner Special</b><br />\r\nChicken \'n Biscuit Dinner<br />\r\n</p>\r\n<br />\r\nAdmission $15.00<br />\r\nFor Tickets call<br />\r\n607-753-0377 ', NULL, '2015-09-03 05:10:56', 'show', 0, 0, 0, 'active'),
(436, '2015-10-31 00:00:00', 'Halloween Party', 'Music by Doc Weismore with Real Country<br />\r\n\r\n7 - 11 pm<br />\r\nRound & Square Dancing\r\n<br />\r\nFree Cider & Donuts<br />\r\nCostume Prizes!\r\n<p class="dinnerDescription">\r\n<ul>\r\n<li>Funniest</li>\r\n<li>Scariest</li>\r\n<li>Best Couple</li>\r\n</ul>\r\n</p>\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-10-14 20:45:32', 'show', 0, 0, 0, 'active'),
(437, '2015-11-01 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:04:38', 'show', 0, 0, 0, 'active'),
(438, '2015-11-07 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:04:42', 'show', 0, 0, 0, 'active'),
(439, '2015-11-08 00:00:00', 'Double Chase Show & Dance', 'Featuring Matt & Thelma<br />\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-09-03 04:59:42', 'show', 0, 0, 0, 'active'),
(440, '2015-11-14 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:05:00', 'show', 0, 0, 0, 'active'),
(441, '2015-11-15 00:00:00', 'Chain Reaction', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-09-03 04:58:58', 'show', 0, 0, 0, 'active'),
(442, '2015-11-21 00:00:00', 'Blue Denim', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-09-03 04:58:40', 'show', 0, 0, 0, 'active'),
(443, '2015-11-22 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:05:18', 'show', 0, 0, 0, 'active'),
(444, '2015-11-28 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:05:23', 'show', 0, 0, 0, 'active'),
(445, '2015-11-29 00:00:00', 'Double Chase Show & Dance', 'Featuring Matt & Thelma<br />\r\n\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-09-03 04:58:07', 'show', 0, 0, 0, 'active'),
(446, '2015-12-05 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:05:33', 'show', 0, 0, 0, 'active'),
(447, '2015-12-06 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:05:37', 'show', 0, 0, 0, 'active'),
(448, '2015-12-12 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-05-05 03:45:07', 'show', 0, 0, 0, 'active'),
(449, '2015-12-13 00:00:00', 'Park Christmas Party', 'Music by Merle Matts, Bruce Huggins, Wade Jacobson, Terry Grimes & Ken Whitney\r\n<br />\r\n<br />\r\nBring a dish to pass \r\n<br />at 12 PM<br />\r\nMusic 2-6 PM.<br />\r\nLast Dance Before New Years Eve', NULL, '2015-11-10 11:51:17', 'show', 0, 0, 0, 'active'),
(450, '2015-12-19 00:00:00', 'Closed', NULL, NULL, '2014-12-10 21:55:45', 'closed', 0, 0, 0, 'active'),
(451, '2015-12-20 00:00:00', 'Closed', NULL, NULL, '2014-12-10 21:56:00', 'closed', 0, 0, 0, 'active'),
(452, '2015-12-26 00:00:00', 'Closed', NULL, NULL, '2014-12-10 21:56:10', 'closed', 0, 0, 0, 'active'),
(453, '2015-12-27 00:00:00', 'Closed', NULL, NULL, '2014-12-10 21:56:26', 'closed', 0, 0, 0, 'active'),
(454, '2015-12-31 00:00:00', 'New Years Eve Party', 'Music By Doc Weismore with Real Country\r\n<p>\r\n7 p.m. to 1 a.m.\r\n</p>\r\n<p>\r\n<b>Buffet</b><br />\r\nSliced Roast Beef,<br /> \r\nHoney Glazed Ham, <br />\r\nOven Roasted Chicken, <br />\r\nMashed Potatoes, <br />\r\nFiesta Corn, <br />\r\nBeef and Chicken Gravy, <br />\r\nManicotti with Red Sauce, <br />\r\nRoll & Butter, Tossed Salad (Ranch & Italian Dressing) <br />\r\nPlease bring a dessert to pass.\r\n</p>\r\n<p>\r\n$60.00 couple / $30.00 single\r\n</p>', NULL, '2015-12-09 01:10:05', 'show', 0, 0, 0, 'active'),
(455, '2015-05-07 00:00:00', 'A TRIBUTE TO THE LADIES OF THE GRAND OLE OPRY DINNER SHOW', 'Performed by Marie Petry\r\n<br />(former vocalist of the Route 66 Band)\r\n<br />\r\nwith Merle Matts & New York Country\r\n\r\n<p class="dinnerDescription">\r\nMarie, a very popular singer, formerly of the Route 66 Band, is coming from California to do a show about the Grand Ladies of the Grand Ole Opry. Loretta Lynn, Tammy Wynette, Patsy Cline, Connie Smith, Kitty Wells and more. You’ll hear songs like Crazy, Stand By Your Man, Coal Miner’s Daughter and not even realize that it isn’t the original performer singing. Also, Merle Matts will come out of retirement to join Marie on a couple of songs; Jackson and Wild Side of Life. She will be backed by a very professional band. It’s an afternoon you won’t forget as Marie & Merle were the band that originally started the Dinner Shows.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing to Merle Matts & New York Country</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Turkey Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2015-04-16 18:37:31', 'feature', 0, 0, 1, 'active'),
(456, '2015-06-11 00:00:00', 'CLASSIC COUNTRY JUBILEE (50’s thru 80’s) DINNER SHOW', 'Performed by Doc Weismore with Real Country<br />\r\nSpecial Guest: Bruce Huggins\r\n\r\n<p class="dinnerDescription">\r\nPut on your “White Sport Coat” and “If You’ve Got the Money Honey, I’ve Got the Time”. “On the Other Hand”, “It Wasn’t God Who Made Honky Tonk Angels” so think of that while you sing your “Folsom Prison Blues”. These are just a few of the hits of the 50’s thru 80’s that you’ll enjoy hearing during your afternoon. There will also be some comedy too. A show that will prove to be very entertaining.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing to Doc Weismore with Real Country</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Ham Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n\r\n', NULL, '2015-04-16 18:41:01', 'feature', 0, 0, 0, 'active'),
(457, '2015-06-18 00:00:00', 'CLASSIC COUNTRY MEMORY LANE DINNER SHOW', 'Performed by Donna and The Country Mystics\r\n\r\n<p class="dinnerDescription">\r\nGive me a “Hee Hah”; Give me a “Whoop, Whoop”. Yes, Donna and The Country Mystics are back again taking you down Memory Lane with Classic Country Music. Songs you will recognize the minute you hear them. Also be prepared for surprises. You never know what Donna may be up to. I’m sure this will be a show to remember.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Roast Beef Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2015-06-10 16:51:49', 'feature', 0, 0, 1, 'active'),
(458, '2015-07-09 00:00:00', 'COUNTRY MUSIC LEGENDS OF THE LONE STAR STATE DINNER SHOW', 'Performed by Donna and The Country Mystics\r\n\r\n<p class="dinnerDescription">\r\n“Waltz Across Texas” with Donna and The Country Mystics as they perform songs by George Strait, Ray Price, Willy Nelson, Bob Wills and more. You will hear songs like “City Lights”, “Funny How Time Slips Away” & “San Antonio Rose”, only to mention a few. This band will do a fabulous job for you.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing to Donna and The Country Mystics</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Chicken ‘n Biscuit Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2015-04-16 18:43:09', 'feature', 0, 0, 0, 'active'),
(460, '2015-08-20 00:00:00', 'A TRIBUTE TO ELVIS DINNER DANCE & SHOW\r\nELVIS IS BACK BY POPULAR DEMAND (3RD YEAR IN A ROW)', 'Performed by Tom Gilbo & the Blue Suedes\r\n\r\n<p class="dinnerDescription">\r\nThis man has a fantastic voice. He really does Elvis justice.\r\nHe has the crowd screaming just like the old days as he goes around the audience with scarves and places them around the women’s necks. There are a few kisses here and there also. This show does allow dancing.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 1-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Pulled Pork Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>', NULL, '2014-12-04 00:17:29', 'feature', 0, 0, 0, 'active'),
(461, '2015-09-10 00:00:00', 'A TRIBUTE TO CHARLEY PRIDE DINNER SHOW', 'Performed by Terry Grimes with Donna and The Country Mystics\r\n\r\n<p class="dinnerDescription">\r\nTerry Grimes is the perfect portrayer of Charley Pride. When he sings “Crystal Chandeliers” or “Kiss an Angel Good Mourning”, you will swear that it’s Charley Pride. The man is so personable, definitely a Country Gentleman. Hear more songs like “Does My Ring Hurt Your Finger (When You Go Out At Night)” & “Cotton Fields Back Home”. Believe me, you won’t want to miss this show.\r\n</p>\r\n\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing to Donna and The Country Mystics</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Ham Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2015-09-03 04:51:34', 'feature', 0, 0, 0, 'active'),
(462, '2015-10-01 00:00:00', 'COUNTRY MUSIC MEMORIES OF THE 50’s, 60’s & 70’s DINNER SHOW', 'Performed by Dirt Road Express\r\n\r\n<p class="dinnerDescription">\r\nListen to your favorite songs of the 50’s, 60’s & 70’s as only Dirt Road Express can do. Hear songs like “Four in the Morning”, “I Fall to Pieces”, “Heartaches by the Number” and songs by Merle Haggard, Jack Green, Tanya Tucker and many more. And do you like yodeling? Wait until you hear Ellen yodel. This show is definitely  going to leave you wanting to come back again.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing to Dirt Road Express</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Chicken ‘n Biscuit Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2014-12-04 00:26:50', 'feature', 0, 0, 0, 'active'),
(463, '2015-11-05 00:00:00', 'A TRIBUTE TO JOHNNY CASH DINNER SHOW', 'Performed by Bruce Huggins and Merle Matts & New York Country Band\r\n\r\n<p class="dinnerDescription">\r\n“Walk the Line” down to the Cortland Country Music Park to hear “Folsom Prison Blues”, “My Name is Sue”, “One Piece at a Time” and many, many more of your favorite Johnny Cash hits. This show is performed by two seasoned performers; Bruce Huggins and Merle Matts formerly of the Route 66 Band and Bruce also fronted the “Alderhollow&nbsp;Band” when Merle retired the Route 66 Band in 2010. The opening band, New York Country, will be just as entertaining as it will be danceable. You will also get to see Bruce perform his “Orange Blossom Special” on his fiddle. Come and have an enjoyable time.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing to the New York Country Band</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Meatloaf Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2015-01-31 16:34:43', 'feature', 0, 0, 1, 'active'),
(464, '2015-12-03 00:00:00', 'DONNA AND THE COUNTRY MYSTICS CHRISTMAS SHOW ', '<b>Back by Popular Demand (3rd Year in a Row)</b>\r\n\r\n<p class="dinnerDescription">\r\nFrom listening and singing along to all your favorite Christmas songs to Rockin’ around the Christmas tree, you truly will be inspired by this great Christmas show. No time like the holidays to participate in the spirit of Christmas. Be sure to get your reservations in early as I’m already adding an encore presentation as we have such a demand for the show. If you think you have already booked this show for next year, please be sure to contact me so I can double check my reservation book.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Turkey Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n\r\n', NULL, '2014-12-14 16:29:10', 'feature', 0, 0, 0, 'active'),
(465, '2015-12-09 00:00:00', 'DONNA AND THE COUNTRY MYSTICS CHRISTMAS SHOW ', '<b>Back by Popular Demand (3rd Year in a Row)</b>\r\n\r\n<p class="dinnerDescription">\r\nFrom listening and singing along to all your favorite Christmas songs to Rockin’ around the Christmas tree, you truly will be inspired by this great Christmas show. No time like the holidays to participate in the spirit of Christmas. Be sure to get your reservations in early as I’m already adding an encore presentation as we have such a demand for the show. If you think you have already booked this show for next year, please be sure to contact me so I can double check my reservation book.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Turkey Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n\r\n', NULL, '2014-12-14 16:28:56', 'feature', 0, 0, 0, 'active'),
(466, '2014-12-16 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2014-12-09 20:38:35', 'meeting', 0, 0, 0, 'active'),
(467, '2015-03-01 00:00:00', 'Dakota Moon', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $7.00\r\n</p>', NULL, '2015-01-31 16:06:41', 'show', 0, 0, 0, 'active'),
(468, '2015-01-05 00:00:00', 'Volunteer Meeting', '<p>\r\n7pm\r\n<br />\r\nAll volunteers please attend!\r\n</p>', NULL, '2014-12-20 01:08:02', 'meeting', 0, 0, 0, 'active'),
(469, '2015-02-27 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$8.00<br />\r\nAges 6-12 & Seniors- $7.00<br />\r\nChildren under 5 free  ', NULL, '2014-11-23 20:43:43', 'show', 0, 0, 0, 'active'),
(470, '2015-03-27 00:00:00', 'Spaghetti Dinner Dance', 'Music By Merle, Donna & Friends\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-01-31 15:58:05', 'show', 0, 0, 0, 'active'),
(471, '2015-05-14 00:00:00', 'A TRIBUTE TO THE LADIES OF THE GRAND OLE OPRY DINNER SHOW', 'Performed by Marie Petry\r\n<br />(former vocalist of the Route 66 Band)\r\n<br />\r\nwith Merle Matts & New York Country\r\n\r\n<p class="dinnerDescription">\r\nMarie, a very popular singer, formerly of the Route 66 Band, is coming from California to do a show about the Grand Ladies of the Grand Ole Opry. Loretta Lynn, Tammy Wynette, Patsy Cline, Connie Smith, Kitty Wells and more. You’ll hear songs like Crazy, Stand By Your Man, Coal Miner’s Daughter and not even realize that it isn’t the original performer singing. Also, Merle Matts will come out of retirement to join Marie on a couple of songs; Jackson and Wild Side of Life. She will be backed by a very professional band. It’s an afternoon you won’t forget as Marie & Merle were the band that originally started the Dinner Shows.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing to Merle Matts & New York Country</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Turkey Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2015-04-18 16:16:17', 'feature', 0, 0, 1, 'active'),
(472, '2015-08-14 00:00:00', 'Spaghetti Dinner Dance', 'Music By Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-01-31 15:58:05', 'show', 0, 0, 0, 'active'),
(473, '2015-11-12 00:00:00', 'A TRIBUTE TO JOHNNY CASH DINNER SHOW', 'Performed by Bruce Huggins and Merle Matts & New York Country Band\r\n\r\n<p class="dinnerDescription">\r\n“Walk the Line” down to the Cortland Country Music Park to hear “Folsom Prison Blues”, “My Name is Sue”, “One Piece at a Time” and many, many more of your favorite Johnny Cash hits. This show is performed by two seasoned performers; Bruce Huggins and Merle Matts formerly of the Route 66 Band and Bruce also fronted the “Alderhollow&nbsp;Band” when Merle retired the Route 66 Band in 2010. The opening band, New York Country, will be just as entertaining as it will be danceable. You will also get to see Bruce perform his “Orange Blossom Special” on his fiddle. Come and have an enjoyable time.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12-5 p.m.</td></tr>\r\n<tr>\r\n<td class="time">12-1 p.m.</td><td>Dancing to the New York Country Band</td>\r\n</tr>\r\n<tr>\r\n<td class="time">1 p.m.</td><td>Meatloaf Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:30 p.m.</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Reservations call Betsy at 607-336-1992\r\n<br /><b>SORRY NO DANCING DURING THE SHOW</b>\r\n</p>\r\n\r\n<p>Come early!! The Hall of Fame is open at 11 a.m.<br /> \r\nRemember, get your reservations in early as the 2014 show was sold out and we had to turn people away.\r\n</p>\r\n', NULL, '2015-01-31 16:34:43', 'feature', 0, 0, 0, 'active'),
(476, '2015-07-31 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-04-21 06:31:27', 'show', 0, 0, 0, 'active'),
(477, '2015-09-18 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-04-21 06:32:49', 'show', 0, 0, 0, 'active'),
(478, '2015-11-20 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-04-21 06:33:53', 'show', 0, 0, 0, 'active'),
(479, '2016-05-12 00:00:00', 'Rich Wilson\r\n<br />performs\r\n<br />Classic Country Music Favorites', 'Backed By Donna and The Country Mystics\r\n\r\n<p class="dinnerDescription">\r\nRich Wilson has been a ‘masterful’ entertainer for the past 40 years.  His show will leave the audience wanting for more as he performs Classic Country favorites with his pure baritone vocals; taking you down memory lane as he sings songs from yester year.  Mixing in some laughter and humor and who knows, maybe even a 50’s/60’s song here and there!\r\nCome enjoy a show you won’t want to miss!!  A brand new performer for the park this year!!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Roast Beef Dinner with all the Trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2015-12-09 00:36:52', 'feature', 0, 0, 0, 'active'),
(480, '2016-06-09 00:00:00', 'Superstars of Country Music', 'Performed by The Nelson Brothers Band\r\n\r\n<p class="dinnerDescription">\r\nCome hear your favorite songs as we listen to songs from great icons such as Johnny Cash, Willie Nelson, George Jones, Merle Haggard, Patsy Cline, Tammy Wynette, Loretta Lynn and so many others.  You’ll hear tunes such as Folsom Prison, Good Hearted Woman, He Stopped Loving Her Today, Okie from Muskogee and many more on the male side.  For the female icons, you’ll hear songs such as Sweet Dreams, Coal Miners Daughter, Apartment #9, just to name a few.\r\n\r\n<br/><br />A show guaranteed to be music to your ears!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:00pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Ham Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>\r\n', NULL, '2016-04-21 21:42:25', 'feature', 0, 0, 0, 'active'),
(481, '2016-07-14 00:00:00', 'Donna and The Country Mystics\r\n<br />presents\r\n<br />An Old Fashioned Country Music Hoedown', '<p class="dinnerDescription">\r\nWith fun for all as we’ll have your toe tappin’, hand clappin’ while we do some pickin’ and grinnin’ and some dancing in between.  Be sure to bring your yeehaa, cowboy boots and hats and Donna’s favorite WHOOP WHOOP!!\r\nSurprises in store all for pure fun!  You surely won’t want to miss this one!\r\n\r\n<br />YEEEEEEE HAAAAAAAAA!!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Variety Cold Plate Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SOME DANCING DURING THE SHOW*\r\n</p>\r\n', NULL, '2015-12-09 00:38:07', 'feature', 0, 0, 0, 'active'),
(482, '2016-08-18 00:00:00', 'A Tribute to Elvis\r\n<br />Dinner, Dance and Show', 'Elvis is Back By Popular Demand (4th Year in a Row)\r\n<br />Performed by\r\n<br />Tom Gilbo & The Blue Suedes\r\n\r\n<p class="dinnerDescription">\r\nThis man has a fantastic voice!  He really does Elvis justice.  He has the crowd screaming just like the old days as he goes around the audience with scarves and places them around the women’s necks.\r\nThere are a few kisses here and there also.  This show does allow dancing.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Chicken & Biscuit Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*There will be dancing during this show*\r\n</p>\r\n\r\n', NULL, '2015-12-09 00:39:04', 'feature', 0, 0, 0, 'active'),
(483, '2016-09-15 00:00:00', 'Classic Country Combo\r\n<br />with\r\n<br />Double Chase', 'Featuring Matt Chase & Thelma Chase\r\n\r\n<p class="dinnerDescription">\r\nA mother and son duo that is sure to entertain you with old-style country music of years gone by but not forgotten.  Enjoy Thelma as she sings you classic hits from Dolly Parton, Kitty Wells, Jeanne C. Riley and so many more of your favorite female country artists.\r\nOn the flip side will be Matt, remembering the great Ray Price, Willie Nelson, Gene Watson just to name a few.  Be sure to listen as I am sure there will be a duet or two as they team up to bring you an unforgettable show!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Turkey Dinner with all the Trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2015-12-09 00:40:02', 'feature', 0, 0, 0, 'active'),
(484, '2016-10-06 00:00:00', 'The Mystics Remember Merle Haggard', 'Whoop!  Whoop!\r\n\r\n<p class="dinnerDescription">\r\nDonna and The Country Mystics will perform #1 hits and many of the great country songs by Merle Haggard!  From Today I started Loving You Again to The Working Man Blues, The Warden (Sing Me Back Home), the very popular Okie from Muskogee and Tonight the Bottle Let Me Down, just to name a few,  with other great songs in between.  A show that will be memorable in many ways!\r\nCome whoop, whoop it up with us!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Roast Beef Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>\r\n', NULL, '2015-12-09 00:40:57', 'feature', 0, 0, 0, 'active'),
(485, '2016-11-10 00:00:00', 'The Silver Creek Band', '<p class="dinnerDescription">\r\nThe Silver Creek Band is full of showmanship and versatility.  Watch as this super group swaps instruments from steel guitar to lead guitar from bass to lead guitar and rhythm guitar to bass guitar!  This 4-piece group will be music to your ears with their abilities to sing tight harmonies and strong vocal presence.  The Silver Creek Band does songs from Classic Country artists such as George Jones, Vern Gosdin, Merle Haggard, Lee Roy Parnell to George Straight, The Desert Rose Band and Alan Jackson.  Its sure to be a fun and entertaining show for all to see!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Roast Pork Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>\r\n', NULL, '2016-09-07 23:11:37', 'feature', 1, 0, 0, 'active'),
(486, '2016-12-08 00:00:00', 'Donna and The Country Mystics\r\nChristmas Show', '<p class="dinnerDescription">\r\nA spectacular show that is back by popular demand (4th year in a row), you’ll be listening and singing along as you enjoy favorite Christmas songs to Rockin’ Around the Christmas Tree, White Christmas, Jingle Bells, Blue Christmas and so many more.  You’ll enjoy the highlights as we bring out Santa Claus, Santa Baby, Frosty and so much more!!!  A show you won’t want to miss to get in the Christmas Spirit!\r\n<br />HO! HO! HO!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Chicken Cordon Bleu Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2015-12-09 00:41:44', 'feature', 0, 0, 0, 'active'),
(487, '2016-12-15 00:00:00', 'Donna and The Country Mystics\r\nChristmas Show', '<p class="dinnerDescription">\r\nA spectacular show that is back by popular demand (4th year in a row), you’ll be listening and singing along as you enjoy favorite Christmas songs to Rockin’ Around the Christmas Tree, White Christmas, Jingle Bells, Blue Christmas and so many more.  You’ll enjoy the highlights as we bring out Santa Claus, Santa Baby, Frosty and so much more!!!  A show you won’t want to miss to get in the Christmas Spirit!\r\n<br />HO! HO! HO!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Chicken Cordon Bleu Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2015-12-09 00:42:56', 'feature', 0, 0, 0, 'active'),
(488, '2016-01-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(489, '2016-02-09 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(490, '2016-03-08 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(491, '2016-04-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2013-12-22 23:14:55', 'meeting', 0, 0, 0, 'active'),
(492, '2016-05-10 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2015-11-01 12:24:52', 'meeting', 0, 0, 0, 'active'),
(493, '2016-06-14 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2015-11-01 12:24:52', 'meeting', 0, 0, 0, 'active'),
(494, '2016-07-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2015-11-01 12:24:52', 'meeting', 0, 0, 0, 'active'),
(495, '2016-09-13 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2015-11-01 12:25:47', 'meeting', 0, 0, 0, 'active'),
(496, '2016-10-11 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2015-11-01 12:25:47', 'meeting', 0, 0, 0, 'active'),
(497, '2016-11-15 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-10-27 04:47:13', 'meeting', 0, 0, 0, 'active'),
(498, '2016-12-13 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2015-11-01 12:25:47', 'meeting', 0, 0, 0, 'active'),
(499, '2016-08-09 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2015-11-01 12:25:47', 'meeting', 0, 0, 0, 'active'),
(500, '2015-11-25 19:00:00', 'Thanksgiving Eve Dance', 'Donna and The Country Mystics\r\n<p>\r\nSpecial Guests: <br />\r\nKenny Derr on Bass &<br />\r\nDana LaFever on Steel Guitar<br />\r\n</p>\r\n<p>\r\nButterball Turkey Raffles!<br />\r\n50/50 Raffles <br />\r\nAll proceeds of raffles go to benefit the park!\r\n</p>\r\n<p>\r\nTime 7 PM - 11 PM \r\n<br />\r\nAdmission: $7.00\r\n\r\n</p>', NULL, '2015-11-11 13:32:23', 'show', 0, 0, 0, 'active'),
(501, '2016-01-02 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:06:25', 'show', 0, 0, 0, 'active'),
(502, '2016-01-03 00:00:00', 'Silver Creek Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-29 18:15:33', 'show', 0, 0, 0, 'active'),
(503, '2016-01-09 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:07:18', 'show', 0, 0, 0, 'active'),
(504, '2016-01-10 00:00:00', 'Arica Harris & Crossroads', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 16:08:01', 'show', 0, 0, 0, 'active'),
(505, '2016-01-15 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free', NULL, '2015-12-12 16:08:37', 'show', 0, 0, 0, 'active'),
(506, '2016-01-16 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:09:13', 'show', 0, 0, 0, 'active'),
(507, '2016-01-17 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 16:09:41', 'show', 0, 0, 0, 'active'),
(508, '2016-01-23 00:00:00', 'Rob Laing & Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:11:02', 'show', 0, 0, 0, 'active'),
(509, '2016-01-24 00:00:00', 'Billy J James & The Barnyard Saints', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 16:11:55', 'show', 0, 0, 0, 'active'),
(510, '2016-01-30 00:00:00', 'Dean Goble & Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-07-14 10:52:58', 'show', 0, 0, 0, 'active');
INSERT INTO `events` (`id`, `date`, `title`, `description`, `icon`, `modified`, `type`, `cancelled`, `soldout`, `limitedtickets`, `status`) VALUES
(511, '2016-01-31 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:15:29', 'show', 0, 0, 0, 'active'),
(512, '2016-02-06 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:15:54', 'show', 0, 0, 0, 'active'),
(513, '2016-02-07 00:00:00', 'Country Classics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-01-12 19:12:53', 'show', 0, 0, 0, 'active'),
(514, '2016-02-13 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:16:35', 'show', 0, 0, 0, 'active'),
(515, '2016-02-14 00:00:00', 'Cabin Fever Jamboree', 'Music By<br /> \r\nDonna and The Country Mystics<br />\r\nand<br />\r\nDoc Weismore with Real Country\r\n\r\n<p>\r\nBenefit for the Park\r\n<ul>\r\n<li>Chinese Auction</li>\r\n<li>50/50 Raffle</li>\r\n<li>Drawing for Magnavox 32" TV</li>\r\n</ul>\r\n</p>\r\n\r\nFrom<br />\r\n12 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-02-05 18:05:10', 'show', 0, 0, 0, 'active'),
(516, '2016-02-19 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-12-12 16:21:13', 'show', 0, 0, 0, 'active'),
(517, '2016-02-20 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:21:40', 'show', 0, 0, 0, 'active'),
(518, '2016-02-21 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:22:11', 'show', 0, 0, 0, 'active'),
(519, '2016-02-27 00:00:00', 'Phoenix', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 16:22:37', 'show', 0, 0, 0, 'active'),
(520, '2016-02-28 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:22:57', 'show', 0, 0, 0, 'active'),
(521, '2016-03-05 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:26:29', 'show', 0, 0, 0, 'active'),
(522, '2016-03-06 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:26:54', 'show', 0, 0, 0, 'active'),
(523, '2016-03-12 00:00:00', 'Closed', NULL, NULL, '2015-12-12 16:27:29', 'show', 0, 0, 0, 'active'),
(524, '2016-03-13 00:00:00', 'Jamboree', 'Music by<br />\r\nDonna and The Country Mystics<br />\r\nDoc Weismore with Real Country<br />\r\n\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:29:31', 'show', 0, 0, 0, 'active'),
(525, '2016-03-18 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-12-12 16:29:58', 'show', 0, 0, 0, 'active'),
(526, '2016-03-19 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:30:21', 'show', 0, 0, 0, 'active'),
(527, '2016-03-20 00:00:00', 'Easter Fun At the Park\r\n', 'Music By Donna and The Country Mystics <br />\r\nAdult: \r\n<ul>\r\n<li>Old Fashion Easter Bonnet </li>\r\n<li>Contest 1st & 2nd Prizes</li>\r\n</ul>\r\nChildren: \r\n<ul>\r\n<li>Coloring Contest </li>\r\n<li>1st & 2nd Prizes</li>\r\n</ul>\r\nGet your picture taken with the Easter Bunny and make your own frame to put it in.<br />\r\n$1.00 chance on Jelly Bean Jar Contest<br />\r\nHalf the proceeds to winner<br />\r\nDinner Available at 1:00 p.m.<br />\r\nHam & Scalloped Potatoes or Toasted Ham & Cheese with French Fries $5<br />\r\n\r\n\r\nFrom<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00<br />\r\n9-16 $4.00<br />\r\n8 and Under Free\r\n</p>', NULL, '2016-02-17 04:47:11', 'show', 0, 0, 0, 'active'),
(528, '2016-03-26 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:31:14', 'show', 0, 0, 0, 'active'),
(529, '2016-03-27 00:00:00', 'Closed', 'Happy Easter!', NULL, '2015-12-12 16:31:33', 'show', 0, 0, 0, 'active'),
(530, '2016-04-02 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:33:08', 'show', 0, 0, 0, 'active'),
(531, '2016-04-03 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:33:58', 'show', 0, 0, 0, 'active'),
(532, '2016-04-09 00:00:00', 'Blue Denim', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 16:34:29', 'show', 0, 0, 0, 'active'),
(533, '2016-04-10 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:34:58', 'show', 0, 0, 0, 'active'),
(534, '2016-04-15 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2015-12-12 16:35:23', 'show', 0, 0, 0, 'active'),
(535, '2016-04-16 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:35:45', 'show', 0, 0, 0, 'active'),
(536, '2016-04-17 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 16:36:08', 'show', 0, 0, 0, 'active'),
(537, '2016-04-23 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:36:32', 'show', 0, 0, 0, 'active'),
(538, '2016-04-24 00:00:00', 'Silver Creek Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-01-27 05:26:46', 'show', 0, 0, 0, 'active'),
(539, '2016-04-30 00:00:00', 'Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-04-20 15:56:40', 'show', 0, 0, 0, 'active'),
(540, '2016-05-01 00:00:00', 'Arica Harris & Crossroads', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-01-12 19:13:46', 'show', 0, 0, 0, 'active'),
(541, '2016-05-07 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:39:04', 'show', 0, 0, 0, 'active'),
(542, '2016-05-08 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:39:23', 'show', 0, 0, 0, 'active'),
(543, '2016-05-14 00:00:00', 'Donna and The Country Mystics\r\n', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:41:15', 'show', 0, 0, 0, 'active'),
(544, '2016-05-15 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:41:44', 'show', 0, 0, 0, 'active'),
(545, '2016-05-21 00:00:00', 'Starland Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-02-17 04:48:08', 'show', 0, 0, 0, 'active'),
(546, '2016-05-22 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:44:00', 'show', 0, 0, 0, 'active'),
(547, '2016-05-28 00:00:00', 'Blue Denim', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-01-27 05:28:15', 'show', 0, 0, 0, 'active'),
(548, '2016-05-29 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:46:01', 'show', 0, 0, 0, 'active'),
(549, '2016-06-04 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:47:47', 'show', 0, 0, 0, 'active'),
(550, '2016-06-05 00:00:00', 'Annual Veterans Show', 'Music By<br />\r\nDoc Weismore with Real Country<br />\r\nGuest Speakers: Todd Palmer and Ron Palmer<br /><br />\r\n\r\nChenango County Honor Guard,<br />\r\nVFW Post #2782, Norwich <br />\r\nWill be present. <br/>\r\n\r\nFrom<br />\r\n12 pm \'till 6 pm\r\n\r\n<br />\r\nChicken N\' Biscuit Dinner\r\n<p>\r\nAdmission $15.00\r\n<br />\r\nNeed not be a veteran! Open to the Public!\r\n</p>\r\n', NULL, '2016-05-31 05:15:11', 'show', 0, 0, 0, 'active'),
(551, '2016-06-11 15:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-05-25 10:45:36', 'show', 0, 0, 0, 'active'),
(552, '2016-06-12 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:50:31', 'show', 0, 0, 0, 'active'),
(553, '2016-06-18 00:00:00', 'Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-04-20 15:57:09', 'show', 0, 0, 0, 'active'),
(554, '2016-06-19 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:51:20', 'show', 0, 0, 0, 'active'),
(555, '2016-06-24 00:00:00', 'Spaghetti Dinner Dance', 'Merle, Donna, & Friends\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2016-01-27 05:28:54', 'show', 0, 0, 0, 'active'),
(556, '2016-06-25 00:00:00', 'Ray Randall & The Rhythm Aires', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-05-25 10:57:11', 'show', 0, 0, 0, 'active'),
(557, '2016-06-26 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:52:33', 'show', 0, 0, 0, 'active'),
(558, '2016-07-02 19:00:00', 'Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-06-24 10:09:35', 'show', 0, 0, 0, 'active'),
(559, '2016-07-03 00:00:00', 'Arica Harris & Crossroads', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2016-03-12 15:22:54', 'show', 0, 0, 0, 'active'),
(560, '2016-07-09 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:56:45', 'show', 0, 0, 0, 'active'),
(561, '2016-07-10 00:00:00', 'Merle Matts & Friends', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-05-25 10:59:45', 'show', 0, 0, 0, 'active'),
(562, '2016-07-16 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 16:58:33', 'show', 0, 0, 0, 'active'),
(563, '2016-07-17 00:00:00', 'Jamboree to Benefit Electrical Upgrade in our Campgrounds', 'Music by Donna and the Country Mystics / Gambler\'s Dream / Doc Weismore with Real Country\r\n<br /><br />\r\n\r\nFrom<br />\r\n12 pm \'till 6 pm\r\n<br /><br />\r\nChinese Auction  /  50/50 Raffle<br />\r\nDinner Available to Purchase\r\n<p>\r\nAdmission $8.00\r\n</p>\r\nDonations for Chinese Auction would be appreciated.', NULL, '2016-07-08 10:28:38', 'show', 0, 0, 0, 'active'),
(564, '2016-07-23 00:00:00', 'Closed', '', NULL, '2016-01-27 05:30:31', 'closed', 0, 0, 0, 'active'),
(565, '2016-07-24 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 16:59:53', 'show', 0, 0, 0, 'active'),
(566, '2016-07-30 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:00:16', 'show', 0, 0, 0, 'active'),
(567, '2016-07-31 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:00:42', 'show', 0, 0, 0, 'active'),
(568, '2016-08-06 00:00:00', 'Ray Randall & The Rhythm Aires', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-07-08 10:44:14', 'show', 0, 0, 0, 'active'),
(569, '2016-08-07 00:00:00', 'Starland Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2016-02-17 04:50:33', 'show', 0, 0, 0, 'active'),
(570, '2016-08-12 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-12-12 17:02:49', 'show', 0, 0, 0, 'active'),
(571, '2016-08-13 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:03:09', 'show', 0, 0, 0, 'active'),
(572, '2016-08-14 00:00:00', 'Silver Creek Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-03-12 15:18:31', 'show', 0, 0, 0, 'active'),
(573, '2016-08-20 00:00:00', 'Phoenix', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:04:19', 'show', 0, 0, 0, 'active'),
(574, '2016-08-21 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:04:37', 'show', 0, 0, 0, 'active'),
(575, '2016-08-27 00:00:00', 'Blue Denim', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:04:59', 'show', 0, 0, 0, 'active'),
(576, '2016-08-28 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 17:05:22', 'show', 0, 0, 0, 'active'),
(577, '2016-09-03 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:07:06', 'show', 0, 0, 0, 'active'),
(578, '2016-09-04 00:00:00', 'Starland Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2016-02-17 04:51:14', 'show', 0, 0, 0, 'active'),
(579, '2016-09-09 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  \r\n', NULL, '2015-12-12 17:07:48', 'show', 0, 0, 0, 'active'),
(580, '2016-09-10 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 17:08:07', 'show', 0, 0, 0, 'active'),
(581, '2016-09-11 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:08:32', 'show', 0, 0, 0, 'active'),
(582, '2016-09-17 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:09:10', 'show', 0, 0, 0, 'active'),
(583, '2016-09-18 00:00:00', 'Square Dance Sunday', 'Doc Weismore with Real Country\r\n<br />\r\n\r\n<p>\r\n<b>Dinner Special</b>\r\n<br />\r\nDinner starts at 1pm\r\n</p>\r\n\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-09-07 23:10:42', 'show', 0, 0, 0, 'active'),
(584, '2016-09-24 00:00:00', 'Country Express\r\n', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-04-20 11:03:59', 'show', 0, 0, 0, 'active'),
(585, '2016-09-25 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:12:46', 'show', 0, 0, 0, 'active'),
(586, '2016-10-01 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:14:50', 'show', 0, 0, 0, 'active'),
(587, '2016-10-02 00:00:00', 'Silver Creek Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2016-03-12 15:16:09', 'show', 0, 0, 0, 'active'),
(588, '2016-10-08 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:15:57', 'show', 0, 0, 0, 'active'),
(589, '2016-10-09 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:16:18', 'show', 0, 0, 0, 'active'),
(590, '2016-10-15 00:00:00', 'Blue Denim', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:16:53', 'show', 0, 0, 0, 'active'),
(591, '2016-10-16 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2015-12-12 17:17:17', 'show', 0, 0, 0, 'active'),
(592, '2016-10-21 00:00:00', 'Spaghetti Dinner Dance', 'Blue Denim\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  \r\n', NULL, '2015-12-12 17:23:05', 'show', 0, 0, 0, 'active'),
(593, '2016-10-22 00:00:00', 'Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-04-20 11:05:40', 'show', 0, 0, 0, 'active'),
(594, '2016-10-23 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:18:36', 'show', 0, 0, 0, 'active'),
(595, '2016-10-29 00:00:00', 'Dirt Road Express', '7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:19:10', 'show', 0, 0, 0, 'active'),
(596, '2016-10-30 00:00:00', '40th Annual Hall of Fame Dinner & Dance', 'Music By Donna and The Country Mystics\r\n<br />\r\n12-6 p.m.\r\n<p>\r\n<b>Roast Beef Dinner</b><br />\r\nAdmission $20\r\n</p><br />\r\nFor Tickets call<br />\r\n607-753-0377 ', NULL, '2016-05-25 11:09:16', 'show', 0, 0, 0, 'active'),
(597, '2016-11-04 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2015-12-12 17:24:42', 'show', 0, 0, 0, 'active'),
(598, '2016-11-05 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:25:11', 'show', 0, 0, 0, 'active'),
(599, '2016-11-06 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:25:31', 'show', 0, 0, 0, 'active'),
(600, '2016-11-12 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:26:25', 'show', 0, 0, 0, 'active'),
(601, '2016-11-13 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:26:43', 'show', 0, 0, 0, 'active'),
(602, '2016-11-19 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:27:11', 'show', 0, 0, 0, 'active'),
(603, '2016-11-20 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:27:38', 'show', 0, 0, 0, 'active'),
(604, '2016-11-23 19:00:00', 'Thanksgiving Eve Dance', 'Donna and The Country Mystics\r\n<p>\r\nWith Special Guests: \r\n<p>\r\nButterball Turkey Raffles!<br />\r\n50/50 Raffles <br />\r\nAll proceeds of raffles go to benefit the park!\r\n</p>\r\n<p>\r\nTime 7 PM - 11 PM \r\n<br />\r\nAdmission: $8.00\r\n\r\n</p>', NULL, '2015-11-11 13:32:23', 'show', 0, 0, 0, 'active'),
(605, '2016-11-26 00:00:00', 'Phoenix', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2017-04-26 02:18:06', 'show', 0, 0, 0, 'active'),
(606, '2016-11-27 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:30:19', 'show', 0, 0, 0, 'active'),
(607, '2016-12-02 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2015-12-12 17:32:24', 'show', 0, 0, 0, 'active'),
(608, '2016-12-03 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:32:45', 'show', 0, 0, 0, 'active'),
(609, '2016-12-04 00:00:00', 'Donna and The Country Jam Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2016-10-25 15:47:31', 'show', 0, 0, 0, 'active'),
(610, '2016-12-10 00:00:00', 'Dirt Road Express\r\n', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2015-12-12 17:33:51', 'show', 0, 0, 0, 'active'),
(611, '2016-12-11 00:00:00', 'Park Christmas Party', 'Music by Dean Goble & Band\r\n<br />\r\n<br />\r\nBring a dish to pass \r\n<br />at 12 PM<br />\r\nMusic 2-6 PM.<br />\r\nLast Dance Before New Years Eve<br /><br />\r\nAdmission: $8.00', NULL, '2016-09-14 21:54:27', 'show', 0, 0, 0, 'active'),
(612, '2016-12-17 00:00:00', 'Closed', NULL, NULL, '2015-12-12 17:37:14', 'show', 0, 0, 0, 'active'),
(613, '2016-12-18 00:00:00', 'Closed', NULL, NULL, '2015-12-12 17:37:32', 'show', 0, 0, 0, 'active'),
(614, '2016-12-24 00:00:00', 'Closed', NULL, NULL, '2015-12-12 17:37:59', 'show', 0, 0, 0, 'active'),
(615, '2016-12-25 00:00:00', 'Closed ', 'Merry Christmas', NULL, '2015-12-12 17:38:17', 'show', 0, 0, 0, 'active'),
(616, '2016-12-31 00:00:00', 'New Years Eve Party', 'Music By Donna and The Country Mystics\r\n<p>\r\n7 p.m. to 1 a.m.\r\n</p>\r\n<p>\r\n<b>Buffet by Dick and Janice Moore</b><br />\r\nPlease bring a dessert to pass.\r\n</p>\r\n<p>\r\n$60.00 couple / $30.00 single\r\n</p>', NULL, '2016-12-10 19:43:12', 'show', 0, 0, 0, 'active'),
(617, '2016-05-19 00:00:00', 'Rich Wilson\r\n<br />performs\r\n<br />Classic Country Music Favorites', 'Backed By Donna and The Country Mystics\r\n\r\n<p class="dinnerDescription">\r\nRich Wilson has been a ‘masterful’ entertainer for the past 40 years.  His show will leave the audience wanting for more as he performs Classic Country favorites with his pure baritone vocals; taking you down memory lane as he sings songs from yester year.  Mixing in some laughter and humor and who knows, maybe even a 50’s/60’s song here and there!\r\nCome enjoy a show you won’t want to miss!!  A brand new performer for the park this year!!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Roast Beef Dinner with all the Trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2015-12-09 00:36:52', 'feature', 0, 0, 0, 'active'),
(618, '2016-07-29 00:00:00', 'Spaghetti Dinner Dance', '\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  \r\n', NULL, '2016-07-08 10:40:02', 'show', 0, 0, 0, 'delete'),
(619, '2016-02-05 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:39:43', 'show', 0, 0, 0, 'active'),
(620, '2016-02-26 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:40:32', 'show', 0, 0, 0, 'active'),
(621, '2016-03-04 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:41:08', 'show', 0, 0, 0, 'active'),
(622, '2016-03-25 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:41:31', 'show', 0, 0, 0, 'active'),
(623, '2016-04-08 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:41:52', 'show', 0, 0, 0, 'active'),
(624, '2016-04-22 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:42:11', 'show', 0, 0, 0, 'active'),
(625, '2016-05-06 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:42:33', 'show', 0, 0, 0, 'active'),
(626, '2016-05-20 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:42:51', 'show', 0, 0, 0, 'active'),
(627, '2016-06-03 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:43:16', 'show', 0, 0, 0, 'active'),
(629, '2016-05-27 00:00:00', 'Spaghetti Dinner Dance', 'Double Chase\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free  ', NULL, '2016-04-21 21:44:14', 'show', 0, 0, 0, 'active'),
(630, '2016-05-13 19:00:00', 'Dean Goble & Band', 'From<br />\r\n7 pm \'till 11 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-07-14 10:54:01', 'show', 0, 0, 0, 'active'),
(631, '2016-06-10 19:00:00', 'Dean Goble & Band', 'From<br />\r\n7 pm \'till 11 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-07-14 10:54:20', 'show', 0, 0, 0, 'active'),
(632, '2016-06-11 08:00:00', 'Huge Garage Sale', '8 a.m. - 3 p.m.<br /> \r\nSomething for everyone.<br />\r\nFor information call the Park at 607-753-0377.', NULL, '2016-05-25 10:44:42', 'show', 0, 0, 0, 'active'),
(633, '2016-07-01 00:00:00', 'Open Mic Night', 'Donna and the Country Jam Band <br />\r\n\r\n<br />\r\n\r\nFrom<br />\r\n7 pm \'till 10 pm\r\n<br />\r\n\r\nAdmission $8.00. <br />\r\n½ price to entertainers.', NULL, '2016-01-27 05:43:16', 'show', 0, 0, 0, 'active'),
(634, '2016-07-02 09:00:00', 'Fishing Derby', 'From<br />\r\n9 am \'till 12 pm<br />\r\nPrizes, refreshments to follow Derby.\r\n', NULL, '2016-06-24 10:09:35', 'show', 0, 0, 0, 'active'),
(635, '2016-08-26 00:00:00', 'Fish Fry', 'Fish Fry to benefit electrical upgrade in the campgrounds<br /><br />\r\n\r\nMusic By Donna & the Country Jam Band\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Fish Fry 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n\r\n<p>\r\nAdmission: $12.00\r\n</p>\r\n ', NULL, '2016-07-14 11:00:25', 'show', 0, 0, 0, 'active'),
(636, '2016-08-03 00:00:00', 'Volunteer Appreciation Dinner', 'Starts at 6 pm<br />\r\nBring a dish to pass\r\n<p>The Park will provide Kentucky Fried Chicken and Chicken Wings.\r\n</p>\r\n<br />\r\nSee sign up sheet at the barn or let Esther know.', NULL, '2016-07-08 10:42:45', 'show', 0, 0, 0, 'active'),
(637, '2016-08-19 19:00:00', 'Dean Goble & Band', 'From<br />\r\n7 pm \'till 11 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-07-14 10:54:37', 'show', 0, 0, 0, 'active'),
(638, '2016-09-23 19:00:00', 'Dean Goble & Band', 'From<br />\r\n7 pm \'till 11 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-07-14 10:54:53', 'show', 0, 0, 0, 'active'),
(639, '2016-10-28 19:00:00', 'Dean Goble & Band', 'With Special Guest:<br />\r\nMarie Petry<br />\r\nFrom<br />\r\n7 pm \'till 11 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-10-25 15:47:48', 'show', 0, 0, 0, 'active'),
(640, '2016-11-11 17:00:00', 'Fish Fry Dinner Dance', 'Music by Donna & the Country Jam Band<br />\r\nDinner 5-7 p.m.<br />\r\nDance 6-9 p.m.<br />\r\nAdmission $12.00', NULL, '2016-11-04 20:47:17', 'show', 0, 0, 0, 'active'),
(641, '2017-02-14 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(642, '2017-03-14 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2017-03-14 15:11:31', 'meeting', 1, 0, 0, 'active'),
(643, '2017-04-11 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(644, '2017-05-09 00:00:00', 'SCMA Annual Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:43:40', 'meeting', 0, 0, 0, 'active'),
(645, '2017-06-13 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(646, '2017-07-11 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(647, '2017-08-08 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(648, '2017-09-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(649, '2017-10-10 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(650, '2017-11-14 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(651, '2017-12-12 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(652, '2017-01-10 00:00:00', 'SCMA Monthly Meeting', 'In Opry Barn at 7 pm', NULL, '2016-12-10 17:06:13', 'meeting', 0, 0, 0, 'active'),
(653, '2017-01-01 00:00:00', '', 'Closed', NULL, '2016-12-10 17:12:24', 'closed', 0, 0, 0, 'active'),
(654, '2017-01-07 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:13:07', 'show', 0, 0, 0, 'active'),
(655, '2017-01-08 00:00:00', '	\r\nDouble Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:13:43', 'show', 0, 0, 0, 'active'),
(656, '2017-01-14 00:00:00', 'Dean Goble & Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:14:15', 'show', 0, 0, 0, 'active'),
(657, '2017-01-15 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:14:51', 'show', 0, 0, 0, 'active'),
(658, '2017-01-20 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2016-12-10 17:16:18', 'show', 0, 0, 0, 'active'),
(659, '2017-01-21 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:17:09', 'show', 0, 0, 0, 'active'),
(660, '2017-01-22 00:00:00', 'Silver Eagle Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-01-17 02:13:27', 'show', 0, 0, 0, 'active'),
(661, '2017-01-28 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:19:54', 'show', 0, 0, 0, 'active'),
(662, '2017-01-29 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:18:53', 'show', 0, 0, 0, 'active'),
(663, '2017-02-04 00:00:00', 'Donna and The Country Mystics	', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:21:34', 'show', 0, 0, 0, 'active'),
(664, '2017-02-05 00:00:00', 'J & J Klassics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-01-17 01:58:36', 'show', 0, 0, 0, 'active'),
(665, '2017-02-11 00:00:00', 'Dean Goble & Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:22:28', 'show', 0, 0, 0, 'active'),
(666, '2017-02-12 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:24:00', 'show', 0, 0, 0, 'active'),
(667, '2017-02-17 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2016-12-10 17:24:56', 'show', 0, 0, 0, 'active'),
(668, '2017-02-18 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:25:17', 'show', 0, 0, 0, 'active'),
(669, '2017-02-19 00:00:00', 'Fundraising Jamboree', 'Music By<br /> \r\nTBA<br />\r\n\r\n\r\n<p>\r\nBenefit for the Park (Electric!)\r\n<br />\r\nAll proceeds go to the Park\r\n<ul>\r\n<li>Basket Raffles</li>\r\n<li>50/50 Raffle</li>\r\n<li>Any donation is appreciated!\r\n<br />If you would like to donate a basket please contact the office.</li>\r\n</ul>\r\n</p>\r\n\r\nFrom<br />\r\n12 pm \'till 6 pm\r\n<br />\r\nMusic From<br />\r\n1pm \'till 6pm\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-01-19 15:03:18', 'show', 0, 0, 0, 'active'),
(670, '2017-02-25 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\nRound & Square Dancing\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:26:19', 'show', 0, 0, 0, 'active'),
(671, '2017-02-26 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:26:39', 'show', 0, 0, 0, 'active'),
(672, '2017-03-04 00:00:00', 'Silver Eagle Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:04:00', 'show', 0, 0, 0, 'active'),
(673, '2017-03-05 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:28:15', 'show', 0, 0, 0, 'active'),
(674, '2017-03-11 00:00:00', 'Closed-Private', 'Turkey Federation', NULL, '2017-01-19 15:46:03', 'closed', 0, 0, 0, 'active'),
(675, '2017-03-12 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:30:45', 'show', 0, 0, 0, 'active'),
(676, '2017-03-18 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:04:13', 'show', 0, 0, 0, 'active'),
(677, '2017-03-19 00:00:00', 'Sock Hop!!!', 'Music By<br /> \r\nDonna and the High Tops!<br />\r\n\r\n\r\n<p>\r\nCome enjoy our 50\'s themed party!\r\n<br />\r\n50\'s & Country Music\r\n<ul>\r\n<li>Prizes for Best Dressed\r\n<br/> Wear your poodle Skirts, Saddle Shoes and Lettermen Jackets!</li>\r\n<li>Twist Contest</li>\r\n<li>Hula Hoop Contest</li>\r\n</ul>\r\n</p>\r\n\r\nFrom<br />\r\n12 pm \'til 6 pm\r\n<br />\r\nMusic From<br />\r\n2pm \'til 6pm\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-23 20:53:44', 'show', 0, 0, 0, 'active'),
(678, '2017-03-24 00:00:00', 'Spaghetti Dinner Dance', 'Donna & Country Jam Band\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2016-12-10 17:32:31', 'show', 0, 0, 0, 'active'),
(679, '2017-03-25 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:04:32', 'show', 0, 0, 0, 'active'),
(680, '2017-03-26 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:33:23', 'show', 0, 0, 0, 'active'),
(681, '2017-04-01 00:00:00', 'Donna and The Country Mystics	', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:04:47', 'show', 0, 0, 0, 'active'),
(682, '2017-04-02 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:36:47', 'show', 0, 0, 0, 'active'),
(683, '2017-04-08 00:00:00', 'Dean Goble & Band', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:05:02', 'show', 0, 0, 0, 'active'),
(684, '2017-04-09 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:37:32', 'show', 0, 0, 0, 'active'),
(685, '2017-04-15 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:05:16', 'show', 0, 0, 0, 'active'),
(686, '2017-04-16 00:00:00', '', 'Closed - Happy Easter', NULL, '2016-12-10 17:38:13', 'closed', 0, 0, 0, 'active'),
(687, '2017-04-21 00:00:00', 'Spaghetti Dinner Dance', 'Double Chase\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2016-12-10 17:38:46', 'show', 0, 0, 0, 'active'),
(688, '2017-04-22 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:06:03', 'show', 0, 0, 0, 'active'),
(689, '2017-04-23 00:00:00', 'Donna and The Country Mystics	', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:39:46', 'show', 0, 0, 0, 'active'),
(690, '2017-04-29 00:00:00', 'Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:06:14', 'show', 0, 0, 0, 'active'),
(691, '2017-04-30 00:00:00', 'Silver Eagle Band', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-01-17 02:08:00', 'show', 0, 0, 0, 'active'),
(692, '2017-05-06 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:06:22', 'show', 0, 0, 0, 'active'),
(693, '2017-05-07 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-05-07 16:35:04', 'show', 1, 0, 0, 'active'),
(694, '2017-05-11 00:00:00', 'The Nick Mulpagano Dinner Show', '<p class="dinnerDescription">\r\nNick Mulpagano is New York\'s foremost voice impersonator. He has been dubbed "The man of 1000 voices AND faces" as he transforms his voice and appearance into that of some of the most famous entertainers of all time. \r\n<br />Such as Neil Diamond, Elvis, Frank Sinatra, Dean Martin, Sammy Davis Jr., Willie Nelson and many many more.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">1:00 pm</td><td>Chicken n\' Biscuits</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2016-12-10 17:55:53', 'feature', 0, 0, 0, 'active'),
(695, '2017-05-13 00:00:00', 'Gamblers Dream', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-18 01:40:42', 'show', 0, 0, 0, 'active'),
(696, '2017-05-14 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 17:58:33', 'show', 0, 0, 0, 'active'),
(697, '2017-05-19 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2016-12-10 17:58:57', 'show', 0, 0, 0, 'active'),
(698, '2017-05-20 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:07:11', 'show', 0, 0, 0, 'active'),
(699, '2017-05-21 00:00:00', 'J & J Klassics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-10 19:32:17', 'show', 0, 0, 0, 'active'),
(700, '2017-05-27 00:00:00', 'Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:07:24', 'show', 0, 0, 0, 'active'),
(701, '2017-05-28 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:01:04', 'show', 0, 0, 0, 'active'),
(702, '2017-06-03 00:00:00', 'Donna and The Country Mystics	', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:07:47', 'show', 0, 0, 0, 'active'),
(703, '2017-06-04 00:00:00', 'Annual Veterans Show', 'Music By<br />\r\nDoc Weismore with Real Country\r\n<br /><br />\r\n\r\n\r\nFrom<br />\r\n12 pm \'till 6 pm\r\n\r\n<br />\r\nChicken N\' Biscuit Dinner\r\n<p>\r\nAdmission $15.00\r\n<br />\r\nAll Welcome! Open to the Public!\r\n</p>\r\n', NULL, '2017-04-10 19:33:23', 'show', 0, 0, 0, 'active'),
(704, '2017-06-08 00:00:00', 'Uncut Grass BlueGrass Festival', '4:30 pm - 10:30 pm\r\n\r\n', NULL, '2017-01-20 19:13:47', 'show', 1, 0, 0, 'delete'),
(705, '2017-06-09 00:00:00', 'Uncut Grass BlueGrass Festival', '10:30 am - ??', NULL, '2017-01-20 19:17:24', 'show', 1, 0, 0, 'delete'),
(706, '2017-06-10 00:00:00', 'Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-14 00:40:27', 'show', 0, 0, 0, 'active'),
(707, '2017-06-11 00:00:00', 'Terry Grimes', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-13 03:54:46', 'show', 0, 0, 0, 'active'),
(708, '2017-06-16 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2016-12-10 18:17:18', 'show', 0, 0, 0, 'active'),
(709, '2017-06-17 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:08:10', 'show', 0, 0, 0, 'active'),
(710, '2017-06-18 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-10 19:32:59', 'show', 0, 0, 0, 'active'),
(711, '2017-06-24 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:08:46', 'show', 0, 0, 0, 'active'),
(712, '2017-06-25 00:00:00', 'Just Us', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:19:38', 'show', 0, 0, 0, 'active'),
(713, '2017-07-01 00:00:00', '	', 'Closed', NULL, '2017-04-12 03:59:15', 'show', 0, 0, 0, 'active'),
(714, '2017-07-02 00:00:00', '', 'Closed', NULL, '2017-04-12 03:59:28', 'show', 0, 0, 0, 'active'),
(715, '2017-07-08 00:00:00', 'Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:09:38', 'show', 0, 0, 0, 'active'),
(716, '2017-07-09 00:00:00', 'Steve Wickam & Country Magic', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2016-12-10 18:23:06', 'show', 0, 0, 0, 'active'),
(717, '2017-07-15 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:11:38', 'show', 0, 0, 0, 'active'),
(718, '2017-07-16 00:00:00', 'J & J Klassics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-12 03:53:16', 'show', 0, 0, 0, 'active'),
(719, '2017-07-22 00:00:00', 'Phoenix', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-26 02:13:36', 'show', 0, 0, 0, 'active'),
(720, '2017-07-23 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:25:04', 'show', 0, 0, 0, 'active'),
(721, '2017-07-29 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2017-02-28 18:14:28', 'show', 0, 0, 0, 'active'),
(722, '2017-07-30 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:26:20', 'show', 0, 0, 0, 'active'),
(723, '2017-08-05 00:00:00', 'Donna and The Country Mystics	', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:15:33', 'show', 0, 0, 0, 'active'),
(724, '2017-08-06 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:28:38', 'show', 0, 0, 0, 'active'),
(725, '2017-08-10 00:00:00', 'A Tribute to Elvis\r\n<br />Dinner, Dance and Show', 'Elvis is Back By Popular Demand (5th Year in a Row)\r\n<br />Performed by\r\n<br />Tom Gilbo & The Blue Suedes\r\n\r\n<p class="dinnerDescription">\r\nThis man has a fantastic voice!  He really does Elvis justice.  He has the crowd screaming just like the old days as he goes around the audience with scarves and places them around the women’s necks.\r\nThere are a few kisses here and there also.  This show does allow dancing.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">1:00pm</td><td>Roast Beef Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*There will be dancing during this show*\r\n</p>\r\n\r\n', NULL, '2016-12-10 18:33:37', 'feature', 0, 0, 0, 'active'),
(726, '2017-08-12 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:15:51', 'show', 0, 0, 0, 'active');
INSERT INTO `events` (`id`, `date`, `title`, `description`, `icon`, `modified`, `type`, `cancelled`, `soldout`, `limitedtickets`, `status`) VALUES
(727, '2017-08-13 00:00:00', 'Terry Grimes', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2017-04-13 03:53:23', 'show', 0, 0, 0, 'active'),
(728, '2017-08-19 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:16:08', 'show', 0, 0, 0, 'active'),
(729, '2017-08-20 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:36:46', 'show', 0, 0, 0, 'active'),
(730, '2017-08-25 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2016-12-10 18:37:07', 'show', 0, 0, 0, 'active'),
(731, '2017-08-26 00:00:00', 'Jack Ellis & Keepin\' it Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:16:22', 'show', 0, 0, 0, 'active'),
(732, '2017-08-27 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:37:55', 'show', 0, 0, 0, 'active'),
(733, '2017-09-02 00:00:00', 'Donna and The Country Mystics	', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:16:43', 'show', 0, 0, 0, 'active'),
(734, '2017-09-03 00:00:00', 'TBA', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-14 13:00:12', 'show', 0, 0, 0, 'active'),
(735, '2017-09-09 00:00:00', 'Phoenix', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-26 02:15:59', 'show', 0, 0, 0, 'active'),
(736, '2017-09-10 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:41:23', 'show', 0, 0, 0, 'active'),
(737, '2017-09-14 00:00:00', 'Country Music Superstars of The 70\'s 80\'s And 90\'s\r\n<br />Performed By\r\n<br />Doc Weismore with Real Country', '<p class="dinnerDescription">\r\nTraditional country will never die but neither will the stars of the 70\'s, 80\'s, and 90\'s like George Strait, Randy Travis, The Judds, Reba Mcentire, and more. The days before screaming guitars. I even heard rumors that maybe Sonny and Cher might appear. \r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">1:00pm</td><td>Pork Roast Dinner with all the Trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2016-12-10 18:54:41', 'feature', 0, 0, 0, 'active'),
(738, '2017-09-16 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:21:17', 'show', 0, 0, 0, 'active'),
(739, '2017-09-17 00:00:00', 'Donna and The Country Mystics	', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:56:50', 'show', 0, 0, 0, 'active'),
(740, '2017-09-23 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:21:28', 'show', 0, 0, 0, 'active'),
(741, '2017-09-24 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2016-12-10 18:57:37', 'show', 0, 0, 0, 'active'),
(742, '2017-09-30 00:00:00', 'Matt Chase & Thunder Canyon', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-26 02:04:47', 'show', 0, 0, 0, 'active'),
(743, '2017-10-01 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 18:59:12', 'show', 0, 0, 0, 'active'),
(744, '2017-10-07 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:21:47', 'show', 0, 0, 0, 'active'),
(745, '2017-10-08 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 19:07:16', 'show', 0, 0, 0, 'active'),
(746, '2017-10-29 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-27 00:41:07', 'show', 0, 0, 0, 'active'),
(747, '2017-10-15 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 19:08:03', 'show', 0, 0, 0, 'active'),
(748, '2017-10-21 00:00:00', 'Tink Bennett & Tailor Made', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-26 01:41:54', 'show', 0, 0, 0, 'active'),
(749, '2017-10-22 00:00:00', 'Dirt Road Express', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2016-12-10 19:08:56', 'show', 0, 0, 0, 'active'),
(750, '2017-10-28 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:22:16', 'show', 0, 0, 0, 'active'),
(751, '2017-10-14 00:00:00', '41st Annual Hall of Fame Dinner & Dance', 'Music By Doc Weismore with Real Country\r\n<br />\r\n12-6 p.m.\r\n<p>\r\n<b>Chicken n\' Biscuits Dinner</b><br />\r\nAdmission $20\r\n</p><br />\r\nFor Tickets call<br />\r\n607-753-0377 ', NULL, '2017-04-27 00:41:24', 'show', 0, 0, 0, 'active'),
(752, '2017-10-05 00:00:00', 'Duets of Your Country Favorites<br />\r\nPerformed By<br />\r\nDonna and The Country Mystics', '\r\n<p class="dinnerDescription">\r\nThis is a show you won\'t wanna miss! As the Mystics Sing to you all the hits you\'ll find yourself remembering from Tammy Wynette and George Jones, Loretta Lynn and Conway Twitty, June Carter Cash and Johnny Cash and many more.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">1:00pm</td><td>Turkey Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>\r\n', NULL, '2016-12-10 19:20:58', 'feature', 0, 0, 0, 'active'),
(753, '2017-11-04 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:22:26', 'show', 0, 0, 0, 'active'),
(754, '2017-11-05 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 19:27:35', 'show', 0, 0, 0, 'active'),
(755, '2017-11-11 00:00:00', 'Country Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:22:48', 'show', 0, 0, 0, 'active'),
(756, '2017-11-12 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 19:28:17', 'show', 0, 0, 0, 'active'),
(757, '2017-11-17 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2016-12-10 19:28:41', 'show', 0, 0, 0, 'active'),
(758, '2017-11-18 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:23:01', 'show', 0, 0, 0, 'active'),
(759, '2017-11-19 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 19:29:24', 'show', 0, 0, 0, 'active'),
(760, '2017-11-25 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:23:16', 'show', 0, 0, 0, 'active'),
(761, '2017-11-26 00:00:00', 'TBA', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-04-12 03:50:44', 'show', 0, 0, 0, 'active'),
(762, '2017-12-01 00:00:00', 'Spaghetti Dinner Dance', 'Doc Weismore with Real Country\r\n<p>\r\nTime 5 PM - 9 PM \r\n<br />Spaghetti 5 PM - 7 PM \r\n<br />Dance 6 PM - 9PM\r\n</p>\r\n<br />\r\nAdmission \r\n<br />\r\nAdults-$9.00<br />\r\nAges 6-12 & Seniors- $8.00<br />\r\nChildren under 5 free ', NULL, '2016-12-10 19:32:20', 'show', 0, 0, 0, 'active'),
(763, '2017-12-02 00:00:00', 'Donna and The Country Mystics', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2017-02-28 18:23:26', 'show', 0, 0, 0, 'active'),
(764, '2017-12-03 00:00:00', 'Double Chase', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 19:33:28', 'show', 0, 0, 0, 'active'),
(765, '2017-12-09 00:00:00', 'Dirt Road Express', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2017-02-28 18:23:33', 'show', 0, 0, 0, 'active'),
(766, '2017-12-10 00:00:00', 'Nelson Brothers', 'From<br />\r\n2 pm \'till 6 pm\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>', NULL, '2016-12-10 19:34:34', 'show', 0, 0, 0, 'active'),
(767, '2017-12-16 00:00:00', 'Doc Weismore with Real Country', 'From<br />\r\n7 pm \'till 11 pm<br />\r\n\r\n<p>\r\nAdmission $8.00\r\n</p>\r\n', NULL, '2017-02-28 18:23:40', 'show', 0, 0, 0, 'active'),
(768, '2017-12-17 00:00:00', 'Park Christmas Party', 'Music by Doc Weismore with Real Country\r\n<br />\r\n<br />\r\nBring a dish to pass \r\n<br />at 12 PM<br />\r\nMusic 2-6 PM.<br />\r\nLast Dance Before New Years Eve<br /><br />\r\nAdmission: $8.00', NULL, '2016-09-14 21:54:27', 'show', 0, 0, 0, 'active'),
(769, '2017-12-23 00:00:00', '', 'Closed', NULL, '2016-12-10 19:37:29', 'closed', 0, 0, 0, 'active'),
(770, '2017-12-24 00:00:00', '', 'Closed', NULL, '2016-12-10 19:37:45', 'closed', 0, 0, 0, 'active'),
(771, '2017-12-30 00:00:00', '', 'Closed', NULL, '2016-12-10 19:38:06', 'closed', 0, 0, 0, 'active'),
(772, '2017-12-07 00:00:00', 'Donna and The Country Mystics\r\nChristmas Show', '<p class="dinnerDescription">\r\nA spectacular show that is back by popular demand (5th year in a row), you’ll be listening and singing along as you enjoy favorite Christmas songs to Rockin’ Around the Christmas Tree, White Christmas, Jingle Bells, Blue Christmas and so many more.  You’ll enjoy the highlights as we bring out Santa Claus, Santa Baby, Frosty and so much more!!!  A show you won’t want to miss to get in the Christmas Spirit!\r\n<br />HO! HO! HO!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">1:00pm</td><td>Ham Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2015-12-09 00:41:44', 'feature', 0, 0, 0, 'active'),
(773, '2017-12-14 00:00:00', 'Donna and The Country Mystics\r\nChristmas Show', '<p class="dinnerDescription">\r\nA spectacular show that is back by popular demand (5th year in a row), you’ll be listening and singing along as you enjoy favorite Christmas songs to Rockin’ Around the Christmas Tree, White Christmas, Jingle Bells, Blue Christmas and so many more.  You’ll enjoy the highlights as we bring out Santa Claus, Santa Baby, Frosty and so much more!!!  A show you won’t want to miss to get in the Christmas Spirit!\r\n<br />HO! HO! HO!\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">1:00pm</td><td>Ham Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2015-12-09 00:41:44', 'feature', 0, 0, 0, 'active'),
(774, '2017-12-31 00:00:00', 'New Years Eve Party', 'Music By Donna and The Country Mystics\r\n<p>\r\n7 p.m. to 1 a.m.\r\n</p>\r\n<p>\r\n<b>Buffet</b><br />\r\nPlease bring a dessert to pass.\r\n</p>\r\n<p>\r\n$60.00 couple / $30.00 single\r\n</p>', NULL, '2017-04-12 03:49:35', 'show', 0, 0, 0, 'active'),
(775, '2017-07-06 12:30:00', 'Christmas in July', '<p class="dinnerDescription">\r\nThe first ever Christmas in July with Donna & The Country Mystic. You’ll be listening and singing along as you enjoy favorite Christmas songs to Rockin’ Around the Christmas Tree, White Christmas, Jingle Bells, Blue Christmas and so many more.  You’ll enjoy the highlights as we bring out Santa Claus, Santa Baby, Frosty and so much more!!!  A show you won’t want to miss to get in the Christmas Spirit!\r\n<br />HO! HO! HO!\r\n<br />Come enjoy some Xmas Trivia, Xmas Basket giveaways, the Twelve Days of Xmas and lots more surprises with Donna & The Country Mystics.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Ham Dinner</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2017-01-17 02:05:09', 'feature', 0, 0, 0, 'active'),
(776, '2017-03-17 19:00:00', 'St. Patrick\'s Day Dinner Dance', '<p>\r\nMusic By: \r\n<br />J & J Klassics\r\n<br />\r\nwith Ham & Cabbage Dinner Available\r\n</p>\r\n<p>\r\nTime 5 PM - 11 PM  \r\n<br />Dinner 5 PM - 7 PM \r\n<br />Music 7 PM - 11 PM\r\n</p>\r\n</p>\r\n<p>\r\n<br />\r\nAdmission: $8.00\r\n<br />Ham & Cabbage Dinner: $8.00\r\n</p>', NULL, '2017-03-06 20:10:35', 'show', 0, 0, 0, 'active'),
(777, '2017-11-09 12:30:00', 'The "Bakersfield Sound"<br />\r\nPerformed By<br />\r\nDean Goble & Band', '\r\n<p class="dinnerDescription">\r\nBack in the 1950s and 60s, Nashville was producing a new country sound by blend-\r\ning silky orchestra strings to create a smoother Nashville sound. However at the\r\nsame time Bakersfield California was embracing a new era of electric guitars and be-\r\ngan producing music built around the “twang”. The Bakersfield sound produced\r\nmany legendary performers such as Buck Owens, Merle Haggard, Marty Stewart,\r\nDwight Yoakum and others. However the greatest Bakersfield influence would be the\r\nimpact on the individual musicians that would go onto reshape music worldwide and\r\nultimately infuse the Bakersfield sound and the Bakersfield magic into the music\r\nthat we enjoy today and think of as Nashville country music. Listen to Dean Goble & Band “accurately” create the magic and nostalgia in an inspirational tribute to\r\nthe historical and influential Bakersfield Sound.\r\n</p>\r\n\r\n<table class="times">\r\n<tr><td colspan="2">Time is 12:30-4:30pm</td></tr>\r\n<tr>\r\n<td class="time">12:30pm</td><td>Roast Beef Dinner with all the trimmings</td>\r\n</tr>\r\n<tr>\r\n<td class="time">2:00pm</td><td>Show Starts</td>\r\n</tr>\r\n<tr>\r\n<td class="time">11:00am</td><td>Hall of Fame Opens</td>\r\n</tr>\r\n</table>\r\n\r\n<p>\r\nAdmission $30.00 \r\n<br /> For Individual Reservations call the Park at 607-753-0377.\r\n<br /> For Bus Reservations call Donna Minnoe at 315-224-9085.\r\n<br />Get your reservations early as tickets go fast and we have to turn people away!\r\n</p>\r\n\r\n<p><b>Come Early!!  The Hall of Fame is open at 11:00am!!</b>\r\n<br /> \r\n*SORRY NO DANCING DURING THE SHOW*\r\n</p>', NULL, '2017-04-26 02:09:16', 'feature', 0, 0, 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `gallerysort`
--

CREATE TABLE `gallerysort` (
  `id` bigint(20) NOT NULL,
  `imageid` bigint(20) NOT NULL,
  `tagname` varchar(50) DEFAULT NULL,
  `weight` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallerysort`
--


-- --------------------------------------------------------

--
-- Table structure for table `halloffame`
--

CREATE TABLE `halloffame` (
  `id` bigint(20) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `deceased` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','delete') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `halloffame`
--

INSERT INTO `halloffame` (`id`, `lastname`, `firstname`, `deceased`, `status`) VALUES
(1, 'Aiken', 'Michael', 0, 'active'),
(2, 'Allen (Vandenberg)', 'Johann', 0, 'active'),
(3, 'Ardis', 'Roger', 1, 'active'),
(4, 'Austin', 'Francis (Fran)', 1, 'active'),
(5, 'Baldwin', 'John', 0, 'active'),
(6, 'Ball', 'Anne', 0, 'active'),
(7, 'Barnes', 'Richard', 0, 'active'),
(8, 'Becker', 'Debra L.', 0, 'active'),
(9, 'Blanchard', 'Jack', 0, 'active'),
(10, 'Blanchard', 'Misty Morgan', 0, 'active'),
(11, 'Boice', 'Clayton', 1, 'active'),
(12, 'Boise', 'Dick', 0, 'active'),
(13, 'Brandt', 'Ralph', 1, 'active'),
(14, 'Breslin', 'Jesse', 1, 'active'),
(15, 'Brown', 'Don', 0, 'active'),
(16, 'Brown', 'Jeff', 0, 'active'),
(17, 'Brumley', 'Richard', 0, 'active'),
(18, 'Burrows', 'Bruce', 0, 'active'),
(19, 'Carhart', 'Duane (Tom)', 1, 'active'),
(20, 'Case', 'Dave', 1, 'active'),
(21, 'Case', 'Lynda', 0, 'active'),
(22, 'Casey', 'Hal', 1, 'active'),
(23, 'Cast', 'Audie "Pappy"', 1, 'active'),
(24, 'Claflin', 'Malcolm', 0, 'active'),
(25, 'Clark', 'Donnie', 0, 'active'),
(26, 'Clemens', 'Alice', 1, 'active'),
(27, 'Coleman', 'David', 0, 'active'),
(28, 'Comstock', 'Lyle', 0, 'active'),
(29, 'Conroy', 'Odum (Steve Odum)', 0, 'active'),
(30, 'Cope', 'Keith', 0, 'active'),
(31, 'Covert', 'Bruce', 0, 'active'),
(32, 'Crapo', 'Jason', 0, 'active'),
(33, 'Crapo', 'Ken', 0, 'active'),
(34, 'Cristman', 'Joe', 0, 'active'),
(35, 'Curtis', 'Wayne', 0, 'active'),
(36, 'Custer', 'Donald', 0, 'active'),
(37, 'David', 'Merle', 0, 'active'),
(38, 'Decker', 'Jimmie', 1, 'active'),
(39, 'Dee', 'Brothers', 0, 'active'),
(40, 'Delany', 'Ray', 1, 'active'),
(41, 'Denman', 'Debby', 0, 'active'),
(42, 'DeRue', 'Howard', 0, 'active'),
(43, 'DeRue', 'Renee', 0, 'active'),
(44, 'Detrick', 'Alice', 0, 'active'),
(45, 'Dieffenbach', 'Bobby "Dee"', 1, 'active'),
(46, 'Dieffenbach', 'Dick', 0, 'active'),
(47, 'Dingey', 'L.J.', 0, 'active'),
(48, 'Dingler', 'Robert', 1, 'active'),
(49, 'Dittrich', 'John', 0, 'active'),
(50, 'Draper', 'J.D.', 0, 'active'),
(51, 'Eldridge', 'Karl', 0, 'active'),
(52, 'Elster', 'Donald (Big Don)', 1, 'active'),
(53, 'Ely', 'Bill', 0, 'active'),
(54, 'Ely', 'Dick', 1, 'active'),
(55, 'Everidge', 'Rubin', 1, 'active'),
(56, 'Falso', 'Al', 1, 'active'),
(57, 'Fauss', 'Allen (Bunny)', 0, 'active'),
(58, 'Figie', 'Gordon', 0, 'active'),
(59, 'Fish', 'Stan', 0, 'active'),
(60, 'Flansburg', 'Gladys', 0, 'active'),
(61, 'Fletcher', 'Tex', 1, 'active'),
(62, 'Forbes', 'Robert', 1, 'active'),
(63, 'Frisbie', 'Frank', 1, 'active'),
(64, 'Frost', 'Danny', 0, 'active'),
(65, 'Genson', 'Kathleen M.', 1, 'active'),
(66, 'George', 'Robert', 1, 'active'),
(67, 'Grant', 'Garry', 0, 'active'),
(68, 'Grant', 'Susan Storie', 0, 'active'),
(69, 'Grimes', 'Terry', 0, 'active'),
(70, 'Hacket', 'Bill', 0, 'active'),
(71, 'Harriger', 'George', 0, 'active'),
(72, 'Harriger', 'Joe', 0, 'active'),
(73, 'Haskins', 'Chuck', 0, 'active'),
(74, 'Haskins', 'Jerry', 0, 'active'),
(75, 'Hastings', 'Don (Don James)', 0, 'active'),
(76, 'Haxton', 'C.L. (Hack)', 0, 'active'),
(77, 'Higgins', 'Charles', 1, 'active'),
(78, 'Hitchcock', 'Betty', 1, 'active'),
(79, 'Holcomb', 'Jack', 0, 'active'),
(80, 'Holdridge', 'Frank', 1, 'active'),
(81, 'Hopkins', 'Brenda', 0, 'active'),
(82, 'Hopkins', 'Howard (Smilin\' Howie)', 1, 'active'),
(83, 'Hopkins', 'James', 0, 'active'),
(84, 'Huggins', 'Bruce Jr.', 0, 'active'),
(85, 'Hughes', 'Charlie', 0, 'active'),
(86, 'Hunter', 'Larry', 0, 'active'),
(87, 'Irwin', 'Jerry', 1, 'active'),
(88, 'Jackson', 'Kaitlyn', 0, 'active'),
(89, 'Jacobson', 'Wade', 0, 'active'),
(90, 'Jennings', 'Gary', 0, 'active'),
(91, 'Johnston', 'Pam', 0, 'active'),
(92, 'Jopson', 'Dick', 0, 'active'),
(93, 'Kane', 'Jacki', 0, 'active'),
(94, 'Keller', 'Howard', 0, 'active'),
(95, 'Ketchum', 'Hal', 0, 'active'),
(96, 'Kilgallon', 'Eddie', 0, 'active'),
(97, 'Kinney', '"Barefoot" Bob', 1, 'active'),
(98, 'Kister', '"Captain" Ed', 0, 'active'),
(99, 'Knight', 'Carl', 0, 'active'),
(100, 'Knowlton', 'Bill', 0, 'active'),
(101, 'Kowalski', 'Edward', 0, 'active'),
(102, 'Krauss', 'George "K"', 0, 'active'),
(103, 'Lainhart', 'Clinton', 0, 'active'),
(104, 'Lamb', 'George "C"', 0, 'active'),
(105, 'Lamoureux', 'Ray Lewis', 0, 'active'),
(106, 'Lance', 'J.W.', 0, 'active'),
(107, 'Leo', 'Joe Jr.', 0, 'active'),
(108, 'Lewis', 'Fred', 0, 'active'),
(109, 'Lewis', 'Larry Sr.', 1, 'active'),
(110, 'Lorows', 'Larry', 0, 'active'),
(111, 'Luther', 'Hadassah Joel', 0, 'active'),
(112, 'Madore', 'Jerry', 1, 'active'),
(113, 'Mannix', 'Charles', 0, 'active'),
(114, 'Marsella', '"Cowboy Red"', 1, 'active'),
(115, 'Martel', 'Marty', 0, 'active'),
(116, 'Mason', 'John K.', 0, 'active'),
(117, 'Mathews', 'Roy', 0, 'active'),
(118, 'Matts', 'Merle', 0, 'active'),
(119, 'McCann', 'Lorie', 1, 'active'),
(120, 'McLean', 'Freddie', 0, 'active'),
(121, 'McNeal', 'Ike', 0, 'active'),
(122, 'Meade', 'Frank (Dizzy)', 0, 'active'),
(123, 'Meese', 'Stuart Dee', 0, 'active'),
(124, 'Miller', 'Jim', 0, 'active'),
(125, 'Miller', 'Lois', 0, 'active'),
(126, 'Minnoe', 'Donna', 0, 'active'),
(127, 'Moffitt', 'Virgil', 1, 'active'),
(128, 'Moffitt', 'Richard', 1, 'active'),
(129, 'Moon', 'Francis (Bucky)', 1, 'active'),
(130, 'Musacchio', 'Bill (Billy Stuart)', 0, 'active'),
(131, 'Nascedka', 'Walt (Nash)', 0, 'active'),
(132, 'Odell', 'Howie', 1, 'active'),
(133, 'Oliver', 'Barry', 0, 'active'),
(134, 'Oliver', 'Glen', 1, 'active'),
(135, 'OneSong', 'Ron & Nancy', 0, 'active'),
(136, 'Osborn', 'Mason', 0, 'active'),
(137, 'O\'Shea', 'Smokie', 1, 'active'),
(138, 'Peck', 'Ray', 0, 'active'),
(139, 'Petry', 'Marie', 0, 'active'),
(140, 'Pitch', 'Phyllis', 0, 'active'),
(141, 'Pollard', 'George', 0, 'active'),
(142, 'Potter', 'Jerry', 1, 'active'),
(143, 'Potts', 'Wayne (Slim)', 0, 'active'),
(144, 'Prout', 'Brian', 0, 'active'),
(145, 'Randall', 'Raymond', 0, 'active'),
(146, 'Recor', 'Henry', 0, 'active'),
(147, 'Reid', 'Richard "Buck"', 0, 'active'),
(148, 'Reynolds', 'Merlin', 1, 'active'),
(149, 'Robarge', 'John (Tex Roe)', 1, 'active'),
(150, 'Rupert', 'Robert', 0, 'active'),
(151, 'Ryan', 'J.R.', 1, 'active'),
(152, 'Schram', 'Wayne', 1, 'active'),
(153, 'Schriver', '(Ramblin\') Lou', 1, 'active'),
(154, 'Scully', 'Edward', 0, 'active'),
(155, 'Seymour', 'Bobbe', 0, 'active'),
(156, 'Shaw', 'Victoria', 0, 'active'),
(157, 'Shea', 'Pat', 0, 'active'),
(158, 'Shepardson', 'John', 1, 'active'),
(159, 'Sherman', 'Bert', 1, 'active'),
(160, 'Sherwood', 'Carl', 0, 'active'),
(161, 'Shortself', 'Harold', 0, 'active'),
(162, 'Shortself', 'Lois', 0, 'active'),
(163, 'Smith', 'Lowell', 0, 'active'),
(164, 'Smith', 'Ronnie', 1, 'active'),
(165, 'Sparrow', 'Charles', 0, 'active'),
(166, 'Spinelli', 'Ray', 0, 'active'),
(167, 'Staats', 'Jim', 0, 'active'),
(168, 'Stiles', 'John', 0, 'active'),
(169, 'Storie', 'John', 0, 'active'),
(170, 'Story', 'Robert A.', 0, 'active'),
(171, 'Strauff', 'Lynn', 0, 'active'),
(172, 'Streater', 'Ed', 1, 'active'),
(173, 'Sutphin', 'Jerry', 0, 'active'),
(174, 'Swarm', 'Robert', 0, 'active'),
(175, 'Swartwood', 'Wayne', 1, 'active'),
(176, 'Swearingen', 'Bill', 0, 'active'),
(177, 'Talcott', 'Raymond', 1, 'active'),
(178, 'Taylor', 'Paul', 0, 'active'),
(179, 'Teachout', 'Loren', 0, 'active'),
(180, 'Thompson', 'Richard', 1, 'active'),
(181, 'Tooley', 'Jim', 0, 'active'),
(182, 'Tratt', 'Joseph C. Jr.', 0, 'active'),
(183, 'Truesdail', 'Daniel D. Jr.', 0, 'active'),
(184, 'Turk', 'John Robert (Bob)', 0, 'active'),
(185, 'Underwood', 'Leslie', 1, 'active'),
(186, 'Valli', '(Texas) Jean', 0, 'active'),
(187, 'VanTine', 'Bob', 0, 'active'),
(188, 'Verne', 'Robert S.', 1, 'active'),
(189, 'Veitch', 'Freddie', 0, 'active'),
(190, 'Vroman', 'Timothy', 0, 'active'),
(191, 'Walker', 'Edmund', 0, 'active'),
(192, 'Wallace', 'James', 0, 'active'),
(193, 'Warner', 'Kenneth', 0, 'active'),
(194, 'Waverly', 'Josie', 0, 'active'),
(195, 'Weismore', 'Bill (Doc)', 0, 'active'),
(196, 'Whitaker', 'James (Jim Ray)', 1, 'active'),
(197, 'Whitney', 'Ken', 0, 'active'),
(198, 'Wickman', 'Steve', 0, 'active'),
(199, 'Wightman', 'Alden', 0, 'active'),
(200, 'Wilkins', 'Craig', 0, 'active'),
(201, 'Williams', 'Del', 1, 'active'),
(202, 'Williams', 'Neil', 0, 'active'),
(203, 'Wilson', 'Raymond (Duane)', 1, 'active'),
(204, 'Withey', 'Harley', 1, 'active'),
(205, 'Woldt', 'Art', 0, 'active'),
(206, 'Wood', 'Cleo', 1, 'active'),
(207, 'Wood', 'John', 0, 'active'),
(208, 'Woodhull', 'Floyd (Woody)', 1, 'active'),
(209, 'Young', 'Vern', 0, 'active'),
(210, 'Zittel', 'Paul', 0, 'active'),
(213, 'Loucks', 'Clayt', 0, 'active'),
(214, 'Moore', 'Richard T.', 0, 'active'),
(215, 'Orton', 'Harry', 0, 'active'),
(216, 'Law Sisters', 'Carol & Aldena', 0, 'active'),
(217, 'Wilson', 'Rich', 0, 'active'),
(218, 'Minnoe', 'Mark', 0, 'active'),
(219, 'Storie', 'Sue', 1, 'active'),
(220, 'Bartelt', 'Ronald A.', 0, 'active'),
(221, 'Averill', 'Richard M.', 0, 'active'),
(222, 'Massey', 'Osborne "Ozzie" W.', 0, 'active'),
(223, 'Stark', 'Paul J.', 0, 'active'),
(224, 'Carr', 'Tim', 0, 'active'),
(225, 'Hackett', 'Kay', 0, 'active'),
(226, 'Kyle', 'Bonnie Lee', 0, 'active'),
(227, 'Tratt', 'Ron', 0, 'active'),
(228, 'DiSanto', 'Steve', 0, 'active'),
(229, 'Flower', 'Bob', 1, 'active'),
(230, 'Flower-Schleigh', 'Cathy', 0, 'active'),
(231, 'Pentzien', 'William J. (Billy J. James)', 0, 'active'),
(232, 'Spencer', 'Andrew (Slim Jim)', 0, 'active'),
(233, 'Wilson', 'Cecilia (Chi-Chi)', 0, 'active'),
(234, 'Caringi (Fiddle De Divas)', 'Adeline', 0, 'active'),
(235, 'Houser (Fiddle De Divas)', 'Lydia', 0, 'active'),
(236, 'Houser (Fiddle De Divas)', 'Danielle', 0, 'active'),
(237, 'Nelson', 'Brian', 0, 'active'),
(238, 'Hoffman (Law Sisters)', 'Carol', 1, 'active'),
(239, 'Eckel', 'Dr. John', 1, 'active'),
(240, 'Eckel', 'Dr. John', 1, 'active'),
(241, 'Burdick', 'Robert', 0, 'active'),
(242, 'Califano', 'Paulette', 0, 'active'),
(243, 'Califano', 'Sal', 0, 'active'),
(244, 'DeMille', 'John', 0, 'active'),
(245, 'Derr', 'Kenny', 0, 'active'),
(246, 'Ellis', 'Jack', 0, 'active'),
(247, 'Griswold', 'Richard R.', 0, 'active'),
(248, 'Hummel', 'Cynthia Huling', 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `name` varchar(50) NOT NULL,
  `component` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`name`, `component`) VALUES
('valentines show', 'gallery2'),
('route 66', 'gallery2'),
('christmas show', 'gallery2'),
('2013', 'gallery2'),
('tribute to hee haw show', 'gallery2'),
('2006', 'gallery2'),
('hall of fame show', 'gallery2'),
('veterans show', 'gallery2'),
('2011', 'gallery2'),
('archive', 'gallery2'),
('donna and the country mystics', 'gallery2'),
('alderhollow band', 'gallery2'),
('donna minnoe', 'gallery2'),
('howie odell', 'gallery2'),
('bruce edwin huggins', 'gallery2'),
('mark minnoe', 'gallery2'),
('terry grimes', 'gallery2'),
('jacki kane', 'gallery2'),
('merle matts', 'gallery2'),
('wade jacobson', 'gallery2'),
('rich wilson', 'gallery2'),
('richard t. moore', 'gallery2'),
('harry orton', 'gallery2'),
('dick jopson', 'gallery2'),
('bill "doc" weismore', 'gallery2'),
('"texas" jean valli', 'gallery2'),
('alden wightman', 'gallery2'),
('jim miller', 'gallery2'),
('esther metott', 'gallery2'),
('carol hoffman', 'gallery2'),
('carl metott', 'gallery2'),
('ken whitney', 'gallery2'),
('robert story', 'gallery2'),
('loren teachout', 'gallery2'),
('ellen harrington', 'gallery2'),
('ray peck', 'gallery2'),
('john storie', 'gallery2'),
('al harrington', 'gallery2'),
('don james', 'gallery2'),
('barry oliver', 'gallery2'),
('shenatel watrous', 'gallery2'),
('rick sterling', 'gallery2'),
('pamela jean', 'gallery2'),
('tony jean', 'gallery2'),
('carol jane', 'gallery2'),
('hall of fame', 'gallery2'),
('new years show', 'gallery2'),
('mardi gras cabin fever jamboree show', 'gallery2'),
('2014', 'gallery2'),
('doc weismore with real country', 'gallery2'),
('country express', 'gallery2'),
('march madness country jamboree show', 'gallery2'),
('sunday show', 'gallery2'),
('may', 'gallery2'),
('rock & roll fever', 'gallery2'),
('spring jam', 'gallery2'),
('a tribute to the golden age of country music', 'gallery2'),
('Teresa Backo', 'gallery2'),
('hot wings & cold feet', 'gallery2'),
('country hit parade 1950', 'gallery2'),
('north of nashville band', 'gallery2'),
('mike mcmullin', 'gallery2'),
('bob carlucci', 'gallery2'),
('larry vanetten', 'gallery2'),
('a tribute to elvis dinner dance', 'gallery2'),
('fans', 'gallery2'),
('dancing', 'gallery2'),
('food', 'gallery2'),
('tom gilbo & the blue suedes', 'gallery2'),
('tom gilbo', 'gallery2'),
('country roundup dinner show', 'gallery2'),
('buzz barber', 'gallery2'),
('ed kowalski', 'gallery2'),
('neil glassford', 'gallery2'),
('wearing of the green', 'gallery2'),
('tim carr', 'gallery2'),
('merle matts & new york country', 'gallery2'),
('dirt road express', 'gallery2'),
('bill linkroum', 'gallery2'),
('bonnie lee', 'gallery2'),
('kay hackett', 'gallery2'),
('steve wickman', 'gallery2'),
('richard averill', 'gallery2'),
('ron bartelt', 'gallery2'),
('ozzie massey', 'gallery2'),
('paul stark', 'gallery2'),
('jay crapo', 'gallery2'),
('mike aiken', 'gallery2'),
('durwood goodell', 'gallery2'),
('ron tratt', 'gallery2'),
('skip sayerle', 'gallery2'),
('charles mannix', 'gallery2'),
('ken crapo', 'gallery2'),
('remembering dinner show', 'gallery2'),
('debby fargnoli', 'gallery2'),
('christmas party', 'gallery2'),
('2015', 'gallery2'),
('kaitlyn jackson', 'gallery2'),
('tribute to the ladies of country music show', 'gallery2'),
('freddie vietch', 'gallery2'),
('marie petry', 'gallery2'),
('fiddle de divas & dudes', 'gallery2'),
('l.j. dingy', 'gallery2'),
('double chase', 'gallery2'),
('matt chase', 'gallery2'),
('thelma chase', 'gallery2'),
('chain reaction', 'gallery2'),
('a tribute to johnny cash dinner dance', 'gallery2'),
('country music memories of the 50\'s, 60\'s, and 70s ', 'gallery2'),
('arica harris & crossroads', 'gallery2'),
('bill boyd', 'gallery2'),
('arnie wheeler', 'gallery2'),
('arica harris', 'gallery2'),
('james potrzebowski', 'gallery2'),
('scott cowilich', 'gallery2'),
('easter fun at the Park', 'gallery2'),
('2016', 'gallery2'),
('rich wilson show', 'gallery2'),
('superstars of country music', 'gallery2'),
('nelson brothers', 'gallery2'),
('an old fashioned country music hoedown', 'gallery2'),
('classic country combo', 'gallery2'),
('betsy matts', 'gallery2'),
('decor', 'gallery2'),
('outdoors', 'gallery2'),
('santa', 'gallery2'),
('snowman', 'gallery2'),
('volunteers', 'gallery2');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL,
  `rid` bigint(20) NOT NULL,
  `tname` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--



-- --------------------------------------------------------



--
-- Table structure for table `tblimage`
--

CREATE TABLE `tblimage` (
  `id` bigint(20) NOT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `medium` varchar(100) DEFAULT NULL,
  `description` text,
  `for` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('edit','active','delete') NOT NULL DEFAULT 'active',
  `path` varchar(200) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `site` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'image2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblimage`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblimagerotate`
--

CREATE TABLE `tblimagerotate` (
  `imageid` bigint(20) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `degree` enum('10','5') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmeta`
--

CREATE TABLE `tblmeta` (
  `id` bigint(20) NOT NULL,
  `page` varchar(50) NOT NULL,
  `class` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `style` text NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','delete') NOT NULL DEFAULT 'active',
  `site` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmeta`
--

INSERT INTO `tblmeta` (`id`, `page`, `class`, `title`, `description`, `keywords`, `style`, `author`, `time`, `status`, `site`) VALUES
(1, 'index.php', '', 'Cortland Country Music Park & Campgrounds', '', '', '#right{\r\nwidth:50%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:40%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}', 'james', '2013-12-05 00:25:39', 'delete', 'cmp'),
(2, 'index.php', '', 'Cortland Country Music Park & Campgrounds', '', '', '#right{\r\nwidth:50%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:40%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\nwidth:150px;\r\n}', 'james', '2013-12-05 00:26:21', 'delete', 'cmp'),
(3, 'index.php', '', 'Cortland Country Music Park & Campgrounds', '', '', '#right{\r\nwidth:50%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:40%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\nwidth:450px;\r\n}', 'james', '2013-12-05 00:26:33', 'delete', 'cmp'),
(4, 'index.php', '', 'Cortland Country Music Park & Campgrounds', '', '', '#right{\r\nwidth:50%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:40%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\nwidth:500px;\r\n}', 'james', '2013-12-05 00:26:51', 'delete', 'cmp'),
(5, 'membership.php', '', 'Membership - Cortland Music Park', '', '', '#center img{\r\nwidth:200px;\r\n}', 'james', '2013-12-08 18:27:13', 'delete', 'cmp'),
(6, 'index.php', '', 'Cortland Country Music Park & Campgrounds', '', '', '#right{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2013-12-08 21:32:23', 'delete', 'cmp'),
(7, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Official site for the Cortland Country Music park &amp; Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame', '#right{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2013-12-17 23:03:35', 'delete', 'cmp'),
(8, 'calendar.php', '', 'Calendar - Cortland Music Park', 'Calendar of upcoming events for the Cortland Country Music Park & Campgrounds.', 'Cortland Country Music Calendar', '#center{\r\npadding:0px;\r\npadding-top:25px;\r\npadding-bottom:25px;\r\n}', 'james', '2013-12-17 23:05:45', 'delete', 'cmp'),
(9, 'calendar.php', '', 'Calendar - Cortland Music Park', 'Calendar of upcoming events for the Cortland Country Music Park &amp; Campgrounds.', 'Cortland Country Music Calendar', '#center{\r\npadding:0px;\r\npadding-top:25px;\r\npadding-bottom:25px;\r\n}', 'james', '2013-12-17 23:08:35', 'delete', 'cmp'),
(10, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Official site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds', '#right{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2013-12-17 23:09:06', 'delete', 'cmp'),
(11, 'oprybarn.php', '', 'Opry Barn & Stage - Cortland Music Park', 'The centerpiece of the Cortland Country Music Park is the Opry Barn. Among the many events that take place are our regular Saturday Round & Square Dances (7-11 p.m.) and the Sunday afternoon dances (2-6 p.m.).', 'Cortland Opry Barn, Cortland Country Music Park Opry Barn', '', 'james', '2013-12-17 23:10:59', 'delete', 'cmp'),
(12, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Welcome to the Country Music Park and Campgrounds. We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. \r\nOfficial site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds', '#right{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2013-12-17 23:11:41', 'delete', 'cmp'),
(13, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Welcome to the Country Music Park and Campgrounds. We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. Official site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds', '#right{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2013-12-17 23:11:56', 'delete', 'cmp'),
(14, 'halloffame.php', '', 'Hall of Fame - Cortland Music Park', 'The highlight of the Cortland Country Music Park is the New York State Country Music Hall of Fame, the original reason for the Cortland Country Music Park.', 'New York State Country Hall of Fame, NY Country Hall of Fame, Cortland Country Music Hall of Fame', '', 'james', '2013-12-17 23:15:35', 'active', 'cmp'),
(15, 'campgrounds.php', '', 'Campgrounds - Cortland Music Park', 'Our campground is set around a beautiful picturesque pond with a water spray in the middle of the pond. We have 106 campsites, water and electric are available for most sites. Toilets and showers are accessible in three different locations. Dumpsters and a dump station are also available. There are no sewer hook-ups, but we have a honey wagon available twice a week if you need it.', 'Cortland Campgrounds, Cortland Country Music Park Campgrounds', '#center{\r\nmin-height:700px;\r\n}\r\n\r\n.currency{\r\ntext-align:right;\r\n}', 'james', '2013-12-17 23:17:39', 'active', 'cmp'),
(16, 'gallery.php', '', 'Photos - Cortland Music Park', 'Photos from the Cortland Country Music Park.', 'Cortland Country Music Park Photos', '#center\r\n{\r\ntext-align:center;\r\npadding:0px;\r\n}\r\n.gallery2\r\n{\r\ndisplay:inline-block;\r\n}', 'james', '2013-12-17 23:19:36', 'active', 'cmp'),
(17, 'directions.php', '', 'Directions - Cortland Music Park', 'We are located in beautiful Cortland, New York. 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045.', '1824 New York 13, Cortland NY 13045, Directions Cortland Music Park, Cortland Music Park Directions', '#center{\r\nmin-height:700px;\r\ntext-align:center;\r\n}\r\n\r\n.map{\r\ndisplay:inline-block;\r\n}\r\n\r\n.map #map-container{\r\nwidth:600px;\r\n}', 'james', '2013-12-17 23:21:43', 'active', 'cmp'),
(18, 'contact.php', '', 'Contact - Cortland Music Park', 'Mailing Address: COUNTRY MUSIC PARK\r\nBox 402\r\nCortland, N.Y. 13045\r\n607-753-0377', 'Cortland Country Music Park Contact, Cortland Music Park Contact', '#center \r\n	{\r\n		text-align:center;\r\n	}\r\n	.component.text{\r\n		display:inline-block;\r\n		vertical-align:top;\r\n		text-align:left;\r\n		font-weight:bold;\r\n	}\r\n	.email\r\n	{\r\n		\r\n		text-align:left;\r\n		display:inline-block;\r\n	}\r\n	.email textarea\r\n	{\r\n		display:block;\r\n	}', 'james', '2013-12-17 23:22:51', 'active', 'cmp'),
(19, 'membership.php', '', 'Membership - Cortland Music Park', 'Any person interested in promoting and preserving good music (especially, "country music") may become a member of the Association.', 'New York Country Music Association, Cortland Country Music Association, Cortland Country Music Park Association, Cortland Music Park Association', '#center img{\r\nwidth:200px;\r\n}', 'james', '2013-12-17 23:24:37', 'delete', 'cmp'),
(20, 'membershipform.php', '', 'Membership Form - Cortland Music Park', 'Cortland Country Music park Association Membership form.', 'Country Music Association Membership Form, New York Country Music Association Membership form, Cortland Country Music Association Membership Form, Country Music Association Membership Form', '#center\r\n{\r\ntext-align:center;\r\n}\r\n\r\n.text\r\n{\r\ntext-align:left;\r\ndisplay:inline-block;\r\n}\r\n\r\n.address\r\n{\r\ndisplay:block;\r\ntext-align:center;\r\n}', 'james', '2013-12-17 23:28:20', 'active', 'cmp'),
(21, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Welcome to the Country Music Park and Campgrounds. We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. Official site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds, Country Music Association', '#right{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2013-12-17 23:29:01', 'delete', 'cmp'),
(22, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Welcome to the Country Music Park and Campgrounds. We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. Official site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds, Country Music Association, NY Country Music, New York Country Music', '#right{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2013-12-17 23:29:28', 'delete', 'cmp'),
(23, 'history.php', '', 'Cortland Country Music Park & Campgrounds', 'The Cortland Country Music Park is a nonprofit all volunteer organization, governed by elected officers and an elected board of directors. The park is the result of a dream of a local musician, named Merlin Reynolds. Merlin envisioned a locally based Hall of Fame for country western musicians from New York State. Merlin’s dream became a reality when Lake Mary Campgrounds went bankrupt in 1984 and with the influence and financial backing of Dr. John Eckel and his wife Loretta they purchased the property.', 'Cortland Country Music History, Cortland Country Music park History', '', 'james', '2013-12-17 23:30:50', 'active', 'cmp'),
(24, 'halloffamehonorlist.php', '', 'Hall of Fame Honor List - Cortland Music Park', 'List of members inducted into the Cortland Country Music Park Hall of Fame.', '', '#center\r\n{\r\ntext-align:center;\r\n}\r\n\r\n.hallTable{\r\ndisplay:inline-block;\r\ntext-align:left;\r\n}\r\n\r\ntable{\r\nborder-spacing:0px;\r\n}\r\n\r\n\r\ntable td.hcenter\r\n{\r\ntext-align:center;\r\n}\r\n\r\nth{\r\npadding-right:10px;\r\n}\r\n\r\n.headerSortDown\r\n{\r\npadding-left:15px;\r\nbackground:url(\'image/arrow_down.png\') no-repeat left;\r\n}\r\n\r\n.headerSortUp\r\n{\r\npadding-left:15px;\r\nbackground:url(\'image/arrow_up.png\') no-repeat left;\r\n}\r\n\r\ntd{\r\npadding:2px;\r\n}\r\n\r\ntr.modified td{\r\nbackground:#c0ddc0;\r\n}\r\n\r\ntr:hover td{\r\nbackground:#c0c0c0;\r\n}\r\n\r\n.editMember{\r\ntext-decoration:none;\r\nwidth:15px;\r\nmargin-right:4px;\r\ndisplay:inline-block;\r\nbackground: url(\'image/page_white_edit_grey.png\') no-repeat;\r\n}\r\n\r\n.editMember:hover{\r\nbackground: url(\'image/page_white_edit.png\') no-repeat;\r\n}\r\n\r\n.deleteAward{\r\ntext-decoration:none;\r\nwidth:15px;\r\nfloat:right;\r\nbackground: url(\'image/delete_grey.png\') no-repeat;\r\n}\r\n\r\n.deleteMember{\r\ntext-decoration:none;\r\nwidth:15px;\r\nmargin-right:4px;\r\ndisplay:inline-block;\r\nbackground: url(\'image/delete_grey.png\') no-repeat;\r\n}\r\n\r\n.deleteAward:hover , .deleteMember:hover{\r\nbackground: url(\'image/delete.png\') no-repeat;\r\n}', 'james', '2013-12-17 23:31:51', 'delete', 'cmp'),
(25, 'halloffamehonorlist.php', '', 'Hall of Fame Honor List - Cortland Music Park', 'List of members inducted into the Cortland Country Music Park Hall of Fame.', 'New York Country Hall of Fame, New York Country Hall of Fame members, Cortland Country Music Hall of Fame, Cortland Country Hall of fame members', '#center\r\n{\r\ntext-align:center;\r\n}\r\n\r\n.hallTable{\r\ndisplay:inline-block;\r\ntext-align:left;\r\n}\r\n\r\ntable{\r\nborder-spacing:0px;\r\n}\r\n\r\n\r\ntable td.hcenter\r\n{\r\ntext-align:center;\r\n}\r\n\r\nth{\r\npadding-right:10px;\r\n}\r\n\r\n.headerSortDown\r\n{\r\npadding-left:15px;\r\nbackground:url(\'image/arrow_down.png\') no-repeat left;\r\n}\r\n\r\n.headerSortUp\r\n{\r\npadding-left:15px;\r\nbackground:url(\'image/arrow_up.png\') no-repeat left;\r\n}\r\n\r\ntd{\r\npadding:2px;\r\n}\r\n\r\ntr.modified td{\r\nbackground:#c0ddc0;\r\n}\r\n\r\ntr:hover td{\r\nbackground:#c0c0c0;\r\n}\r\n\r\n.editMember{\r\ntext-decoration:none;\r\nwidth:15px;\r\nmargin-right:4px;\r\ndisplay:inline-block;\r\nbackground: url(\'image/page_white_edit_grey.png\') no-repeat;\r\n}\r\n\r\n.editMember:hover{\r\nbackground: url(\'image/page_white_edit.png\') no-repeat;\r\n}\r\n\r\n.deleteAward{\r\ntext-decoration:none;\r\nwidth:15px;\r\nfloat:right;\r\nbackground: url(\'image/delete_grey.png\') no-repeat;\r\n}\r\n\r\n.deleteMember{\r\ntext-decoration:none;\r\nwidth:15px;\r\nmargin-right:4px;\r\ndisplay:inline-block;\r\nbackground: url(\'image/delete_grey.png\') no-repeat;\r\n}\r\n\r\n.deleteAward:hover , .deleteMember:hover{\r\nbackground: url(\'image/delete.png\') no-repeat;\r\n}', 'james', '2013-12-17 23:34:27', 'active', 'cmp'),
(26, 'calendar.php', '', 'Calendar - Cortland Music Park', 'Calendar of upcoming events for the Cortland Country Music Park & Campgrounds.', 'Cortland Country Music Calendar, Cortland Country Music Calendar', '#center{\r\npadding:0px;\r\npadding-top:25px;\r\npadding-bottom:25px;\r\n}', 'james', '2013-12-17 23:37:26', 'delete', 'cmp'),
(27, 'calendar.php', '', 'Calendar - Cortland Music Park', 'Calendar of upcoming events for the Cortland Country Music Park & Campgrounds.', 'Cortland Country Music Calendar, Cortland Country Music Park Calendar, Cortland Country Music Park Events, Cortland Music Events', '#center{\r\npadding:0px;\r\npadding-top:25px;\r\npadding-bottom:25px;\r\n}', 'james', '2013-12-17 23:38:41', 'active', 'cmp'),
(28, 'oprybarn.php', '', 'Opry Barn & Stage - Cortland Music Park', 'The centerpiece of the Cortland Country Music Park is the Opry Barn. Among the many events that take place are our regular Saturday Round & Square Dances (7-11 p.m.) and the Sunday afternoon dances (2-6 p.m.).', 'Cortland Opry Barn, Cortland Country Music Park Opry Barn, Cortland Music Opry Barn', '', 'james', '2013-12-17 23:39:37', 'active', 'cmp'),
(29, 'membership.php', '', 'Membership - Cortland Music Park', 'Any person interested in promoting and preserving good music (especially, "country music") may become a member of the Association.', 'New York Country Music Association, Cortland Country Music Association, Cortland Country Music Park Association, Cortland Music Park Association', '', 'james', '2013-12-18 13:50:04', 'delete', 'cmp'),
(30, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Welcome to the Country Music Park and Campgrounds. We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. Official site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds, Country Music Association, NY Country Music, New York Country Music', '#right,#right2{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2014-01-11 16:44:18', 'delete', 'cmp'),
(31, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Welcome to the Country Music Park and Campgrounds. We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. Official site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds, Country Music Association, NY Country Music, New York Country Music', '#right,#right2{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2014-01-11 16:45:38', 'delete', 'cmp'),
(32, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Welcome to the Country Music Park and Campgrounds. We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. Official site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds, Country Music Association, NY Country Music, New York Country Music', '#right,#right2{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:5%;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}', 'james', '2014-01-25 14:40:35', 'delete', 'cmp'),
(33, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Welcome to the Country Music Park and Campgrounds. We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. Official site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds, Country Music Association, NY Country Music, New York Country Music', '#right,#right2{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:5%;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}\r\n.first{\r\nmargin-top:0px;\r\n}', 'james', '2014-01-27 13:07:09', 'delete', 'cmp'),
(34, 'membership.php', '', 'Membership - Cortland Music Park', 'Any person interested in promoting and preserving good music (especially, "country music") may become a member of the Association.', 'New York Country Music Association, Cortland Country Music Association, Cortland Country Music Park Association, Cortland Music Park Association', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}', 'james', '2014-02-25 11:32:08', 'active', 'cmp'),
(35, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}', 'james', '2014-03-15 14:39:49', 'delete', 'cmp'),
(36, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages img{\r\ndisplay:block;\r\n}', 'james', '2014-03-15 15:03:23', 'delete', 'cmp'),
(37, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\n}', 'james', '2014-03-15 15:03:54', 'delete', 'cmp'),
(38, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\n}', 'james', '2014-03-15 15:04:29', 'delete', 'cmp'),
(39, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:30%;\r\n}', 'james', '2014-03-15 15:05:23', 'delete', 'cmp'),
(40, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:90%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:30%;\r\n}', 'james', '2014-03-15 15:05:28', 'delete', 'cmp'),
(41, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:90%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:30%;\r\n}', 'james', '2014-03-15 15:05:30', 'delete', 'cmp'),
(42, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:30%;\r\n}', 'james', '2014-03-15 15:05:58', 'delete', 'cmp'),
(43, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:56%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:90%;\r\n}', 'james', '2014-03-15 15:06:08', 'delete', 'cmp'),
(44, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:50%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:90%;\r\n}', 'james', '2014-03-15 15:07:00', 'delete', 'cmp'),
(45, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:50%;\r\nmargin-left:6%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:10px;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:90%;\r\n}', 'james', '2014-03-15 15:07:32', 'delete', 'cmp'),
(46, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:50%;\r\nmargin-left:6%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:90%;\r\n}', 'james', '2014-03-15 15:08:14', 'delete', 'cmp'),
(47, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\nmargin-left:6%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:50%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:90%;\r\n}', 'james', '2014-03-15 15:08:41', 'delete', 'cmp'),
(48, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\nmargin-left:3%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:53%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:90%;\r\n}', 'james', '2014-03-15 15:09:00', 'delete', 'cmp'),
(49, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\nmargin-left:3%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:53%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:80%;\r\n}', 'james', '2014-03-15 15:09:16', 'delete', 'cmp'),
(50, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\nmargin-left:3%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:53%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\nwidth:300px;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:100%;\r\n}', 'james', '2014-03-15 15:09:51', 'delete', 'cmp'),
(51, 'dinnershows.php', '', 'Dinner Shows - Cortland Music Park', '', '', '#right,#right2{\r\nwidth:40%;\r\nmargin-left:3%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:53%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\n}\r\n\r\n.featuredimages{\r\ndisplay:inline-block;\r\ntext-align:center;\r\nwidth:280px;\r\n}\r\n.featuredimages img{\r\ndisplay:block;\r\nwidth:100%;\r\n}', 'james', '2014-03-15 15:10:10', 'active', 'cmp'),
(52, 'index.php', '', 'Cortland Country Music Park & Campgrounds', 'Welcome to the Country Music Park and Campgrounds. We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. Official site for the Cortland Country Music park & Campgrounds.', 'Cortland Country Music Park, Cortland Campgrounds, Music Park, Cortland Music, Cortland Camping, Country Music Hall of Fame, Cortland Country Music Park and Campgrounds, Country Music Association, NY Country Music, New York Country Music', '#right,#right2{\r\nwidth:48%;\r\ndisplay:inline-block;\r\n}\r\n\r\n#left{\r\nwidth:45%;\r\ndisplay:inline-block;\r\nvertical-align:top;\r\nmargin-left:5%;\r\n}\r\n\r\n#homeupcomingShowText, #homeThisWeek\r\n{\r\ntext-align:center;\r\n}\r\n\r\n#clear\r\n{\r\nclear:both;\r\n}\r\n\r\n.show\r\n{\r\nborder:1px solid #c0c0c0;\r\npadding-top:5px;\r\npadding-bottom:5px;\r\nbox-shadow:3px 3px 3px rgba(0,0,0,0.5);\r\n}\r\n.welcome\r\n{\r\nfont-size:15pt;\r\n}\r\n\r\n.calendar .list{\r\n}\r\n\r\n.calendar .list .event{\r\nmargin:0px;\r\nmargin-bottom:15px;\r\nmargin-right:10px;\r\n}\r\n\r\n.component.event{\r\nmin-width:0;\r\nmax-width:none;\r\nwidth:98%;\r\n}\r\n.notice{\r\nfont-size:18pt;\r\n}\r\n.notice ul li{\r\nfont-size:18pt;\r\n}\r\n.first{\r\nmargin-top:0px;\r\n}', 'james', '2015-02-06 11:37:31', 'active', 'cmp');

-- --------------------------------------------------------


--
-- Table structure for table `tbltext`
--

CREATE TABLE `tbltext` (
  `id` bigint(20) NOT NULL,
  `page` varchar(50) NOT NULL,
  `class` varchar(100) NOT NULL,
  `header` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `status` enum('active','delete') NOT NULL DEFAULT 'active',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `site` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltext`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `encryption` varchar(50) NOT NULL DEFAULT 'phpass',
  `type` enum('admin','edit','user') NOT NULL DEFAULT 'user',
  `status` enum('active','disabled') NOT NULL DEFAULT 'disabled',
  `group` varchar(50) NOT NULL,
  `site` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblvalidate`
--

CREATE TABLE `tblvalidate` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` enum('validate','forgotpass','forgotuser') NOT NULL DEFAULT 'validate',
  `code` varchar(50) NOT NULL,
  `status` enum('active','delete') NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblvalidate`
--

-- --------------------------------------------------------


--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bandwebsites`
--
ALTER TABLE `bandwebsites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallerysort`
--
ALTER TABLE `gallerysort`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halloffame`
--
ALTER TABLE `halloffame`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `tblimage`
--
ALTER TABLE `tblimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblimagerotate`
--
ALTER TABLE `tblimagerotate`
  ADD PRIMARY KEY (`imageid`);

--
-- Indexes for table `tblmeta`
--
ALTER TABLE `tblmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltext`
--
ALTER TABLE `tbltext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvalidate`
--
ALTER TABLE `tblvalidate`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT for table `band`
--
ALTER TABLE `band`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `bandwebsites`
--
ALTER TABLE `bandwebsites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;
--
-- AUTO_INCREMENT for table `gallerysort`
--
ALTER TABLE `gallerysort`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `halloffame`
--
ALTER TABLE `halloffame`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `tblimage`
--
ALTER TABLE `tblimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2132;
--
-- AUTO_INCREMENT for table `tblmeta`
--
ALTER TABLE `tblmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tbltext`
--
ALTER TABLE `tbltext`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `tblvalidate`
--
ALTER TABLE `tblvalidate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
