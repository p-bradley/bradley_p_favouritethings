-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2019 at 04:08 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE db_favouritethings;
USE db_favouritethings;



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favouritethings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things`
--

CREATE TABLE `tbl_things` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Image1` varchar(30) NOT NULL,
  `Image2` varchar(30) NOT NULL,
  `Image3` varchar(30) NOT NULL,
  `ParaPast` varchar(500) NOT NULL,
  `ParaCurrent` varchar(500) NOT NULL,
  `FavID` int(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_things`
--

INSERT INTO `tbl_things` (`ID`, `Image1`, `Image2`, `Image3`, `ParaPast`, `ParaCurrent`, `FavID`) VALUES
(1, 'images/hockey1.jpg', 'images/hockey2.jpg', 'images/hockey3.jpg', 'I grew up watching hockey with my family, Every Saturday night we watched the Toronto Maple Leafs game, although I was not a Leafs fan. I became interested in the Calgary Flames because of the Flames jersey and because of my favourite player, Jarome Iginla. Hockey had a major impact on my childhood and it is the reason I continue to enjoy the sport.', 'Playing hockey today is refreshing as it keeps me active. Playing with a group of friends is always fun as we all share the same love for hockey, whether it be watching or playing.', 1),
(2, 'images/bubbletea1.jpg', 'images/bubbletea2.jpg', 'images/bubbletea3.jpg', 'I was introduced to bubble tea in 2016. My Vietnamese and Filipino friends raved about the drink and always recommended it to me. Bubble tea has always been a great way to go out and socialize with my friends.', 'Bubble tea is one of the reasons why I am always interested in trying new food and drinks. Bubble tea was something that I was hesitant to try, but has become one of my favourite drinks.', 2),
(3, 'images/pokemon1.png', 'images/pokemon2.png', 'images/pokemon3.jpg', 'Pokémon was a significant part of my childhood as it had so many fun things to offer whether it be pokemon cards, anime or the videogames.', 'Pokémon helped spark my love for videogames and it shows through my love for fighting games and anime.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things_preview`
--


CREATE TABLE `tbl_things_preview` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `icon` varchar(80) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_things_preview`
--

INSERT INTO `tbl_things_preview` (`ID`, `name`, `icon`, `description`) VALUES
(1, 'Hockey', 'HockeyIcon.jpg', 'Ice hockey is played between two teams of skaters on a large flat area of ice, using a three-inch-diameter (76.2 mm) vulcanized rubber disc called a puck. This puck is often frozen before high-level games to decrease the amount of bouncing and friction on the ice. The game is played all over North America, Europe and to varying extents in many other countries around the world.'),
(2, 'Bubble Tea', 'BubbleTeaIcon.jpg', 'The drink has a number of monikers, including pearl milk tea and tapioca tea, but it\'s most commonly referred to as bubble tea or milk tea. The term \"bubble tea\" is actually a reference to the milk froth that forms when the drink is shaken, not the chewy pearls in the drink that resemble bubbles, Quartz noted. The name \"boba,\" on the other hand, originates from a Taiwanese slang term for the pearls. '),
(3, 'Pokemon', 'PokemonIcon.jpg', 'The name Pokémon is the portmanteau of the Japanese brand Pocket Monsters. The term \"Pokémon\", in addition to referring to the Pokémon franchise itself, also collectively refers to the 823 fictional species that have made appearances in Pokémon.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
