-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2019 at 06:52 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Business', '2017-03-10 13:54:16'),
(2, 'Technology', '2017-03-10 13:54:16'),
(3, 'Science', '2017-03-10 14:26:33'),
(4, 'Politics', '2017-03-24 13:59:04'),
(5, 'Entertainment', '2017-03-27 10:32:49'),
(6, 'Hotels', '2017-03-27 10:33:28'),
(7, 'Tourism', '2017-03-27 10:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 6, 'sunny', 'sunday.okeile@suntosolutions.com', 'he light of a thousand stars Place your head on my beating heart I\'m thinking out loud And baby we found love right where we are', '2018-10-02 10:13:38'),
(2, 6, 'tonexxy', 'tonex@tonexcom', 'Take me into your loving arms Kiss me under the light of a thousand stars Place your head on my beating heart I\'m thinking out lou', '2018-10-02 10:38:50'),
(3, 7, 'osoeos', 'sunday.okeile@fastmail.com', 'lmqkdwdmk Take me into your loving arms Kiss me under the light of a thousand stars Place your head on my beating heart I\'m thinking out lou', '2018-10-02 10:51:57'),
(4, 7, 'sun', 'sun@sun.com', 'Hi there', '2019-04-08 13:24:03'),
(5, 7, 'sun', 'sun@sun.com', 'Hi there', '2019-04-08 13:24:03'),
(6, 7, 'sun', 'sun@sun.com', 'Hi there', '2019-04-08 13:24:03'),
(7, 7, 'tade', 'tade@tade.com', 'Tell me more...', '2019-04-08 13:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 6, 'HotelNg to be Listed on NSE', 'HotelNg-to-be-Listed-on-NSE', 'When your legs don\'t work like they used to before And I can\'t sweep you off of your feet Will your mouth still remember the taste of my love? Will your eyes still smile from your cheeks? And darling I will be loving you till you\'re 70 And baby my heart could still fall as hard at 23 And I\'m thinking about how People fall in love in mysterious ways Maybe just a touch of the hand For me, I fall in love with you every single day And I just wanna tell you where I am So honey, now Take me into your loving arms Kiss me under the light of a thousand stars Place your head on my beating heart I\'m thinking out loud And baby we found love right where we are ', '1425189147162.jpg', '2017-03-13 12:17:17'),
(2, 2, 'Andela Best Place to Work in Nigeria', 'Andela-Best-Place-to-Work-in-Nigeria', 'When your legs don\'t work like they used to before And I can\'t sweep you off of your feet Will your mouth still remember the taste of my love? Will your eyes still smile from your cheeks? And darling I will be loving you till you\'re 70 And baby my heart could still fall as hard at 23 And I\'m thinking about how People fall in love in mysterious ways Maybe just a touch of the hand For me, I fall in love with you every single day And I just wanna tell you where I am So honey, now Take me into your loving arms Kiss me under the light of a thousand stars Place your head on my beating heart I\'m thinking out loud And baby we found love right where we are ', '1425189145436.jpg', '2017-04-13 12:18:15'),
(3, 3, 'Over 20% Nigerians have Mental Disorder', 'Over-20-Nigerians-have-Mental-Disorder', 'When your legs don\'t work like they used to before And I can\'t sweep you off of your feet Will your mouth still remember the taste of my love? Will your eyes still smile from your cheeks? And darling I will be loving you till you\'re 70 And baby my heart could still fall as hard at 23 And I\'m thinking about how People fall in love in mysterious ways Maybe just a touch of the hand For me, I fall in love with you every single day And I just wanna tell you where I am So honey, now Take me into your loving arms Kiss me under the light of a thousand stars Place your head on my beating heart I\'m thinking out loud And baby we found love right where we are ', '1425190116616.jpg', '2017-03-13 12:19:13'),
(4, 1, 'MTN Listed on NSE', 'MTN-Listed-on-NSE', 'When your legs don\'t work like they used to before And I can\'t sweep you off of your feet Will your mouth still remember the taste of my love? Will your eyes still smile from your cheeks? And darling I will be loving you till you\'re 70 And baby my heart could still fall as hard at 23 And I\'m thinking about how People fall in love in mysterious ways Maybe just a touch of the hand For me, I fall in love with you every single day And I just wanna tell you where I am So honey, now Take me into your loving arms Kiss me under the light of a thousand stars Place your head on my beating heart I\'m thinking out loud And baby we found love right where we are ', 'noimage.jpg', '2017-03-13 12:20:37'),
(6, 1, 'Nigeria Excess Crude Oil Revenue Soars', 'Nigeria-Excess-Crude-Oil-Revenue-Soars', 'When your legs don\'t work like they used to before And I can\'t sweep you off of your feet Will your mouth still remember the taste of my love? Will your eyes still smile from your cheeks? And darling I will be loving you till you\'re 70 And baby my heart could still fall as hard at 23 And I\'m thinking about how People fall in love in mysterious ways Maybe just a touch of the hand For me, I fall in love with you every single day And I just wanna tell you where I am So honey, now Take me into your loving arms Kiss me under the light of a thousand stars Place your head on my beating heart I\'m thinking out loud And baby we found love right where we are ', 'test.jpg', '2017-03-13 12:42:47'),
(7, 1, 'Olam Take Over Dangote Flour', 'Olam-Take-Over-Dangote-Flour', 'OH When your legs don\'t work like they used to before And I can\'t sweep you off of your feet Will your mouth still remember the taste of my love? Will your eyes still smile from your cheeks? And darling I will be loving you till you\'re 70 And baby my heart could still fall as hard at 23 And I\'m thinking about how People fall in love in mysterious ways Maybe just a touch of the hand For me, I fall in love with you every single day And I just wanna tell you where I am So honey, now Take me into your loving arms Kiss me under the light of a thousand stars Place your head on my beating heart I\'m thinking out loud And baby we found love right where we are ', '1425190107784.jpg', '2017-03-13 12:43:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
