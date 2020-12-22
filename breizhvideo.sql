-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 22 déc. 2020 à 15:29
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `breizhvideo`
--

-- --------------------------------------------------------

--
-- Structure de la table `actor`
--

DROP TABLE IF EXISTS `actor`;
CREATE TABLE IF NOT EXISTS `actor` (
  `actor_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actor`
--

INSERT INTO `actor` (`actor_id`, `first_name`, `last_name`) VALUES
(1, 'PENELOPE', 'GUINESS'),
(2, 'NICK', 'WAHLBERG'),
(3, 'ED', 'CHASE'),
(5, 'JOHNNY', 'LOLLOBRIGIDA'),
(10, 'CHRISTIAN', 'GABLE'),
(12, 'KARL', 'BERRY'),
(13, 'UMA', 'WOOD'),
(19, 'BOB', 'FAWCETT'),
(20, 'LUCILLE', 'TRACY'),
(21, 'KIRSTEN', 'PALTROW'),
(22, 'ELVIS', 'MARX'),
(23, 'SANDRA', 'KILMER'),
(24, 'CAMERON', 'STREEP'),
(26, 'RIP', 'CRAWFORD'),
(27, 'JULIA', 'MCQUEEN'),
(28, 'WOODY', 'HOFFMAN'),
(29, 'ALEC', 'WAYNE'),
(30, 'SANDRA', 'PECK'),
(35, 'JUDY', 'DEAN'),
(36, 'BURT', 'DUKAKIS'),
(37, 'VAL', 'BOLGER'),
(40, 'JOHNNY', 'CAGE'),
(41, 'JODIE', 'DEGENERES'),
(43, 'KIRK', 'JOVOVICH'),
(45, 'REESE', 'KILMER'),
(51, 'GARY', 'PHOENIX'),
(52, 'CARMEN', 'HUNT'),
(53, 'MENA', 'TEMPLE'),
(55, 'FAY', 'KILMER'),
(57, 'JUDE', 'CRUISE'),
(59, 'DUSTIN', 'TAUTOU'),
(62, 'JAYNE', 'NEESON'),
(64, 'RAY', 'JOHANSSON'),
(68, 'RIP', 'WINSLET'),
(69, 'KENNETH', 'PALTROW'),
(75, 'BURT', 'POSEY'),
(77, 'CARY', 'MCCONAUGHEY'),
(81, 'SCARLETT', 'DAMON'),
(82, 'WOODY', 'JOLIE'),
(84, 'JAMES', 'PITT'),
(85, 'MINNIE', 'ZELLWEGER'),
(88, 'KENNETH', 'PESCI'),
(90, 'SEAN', 'GUINESS'),
(91, 'CHRISTOPHER', 'BERRY'),
(94, 'KENNETH', 'TORN'),
(96, 'GENE', 'WILLIS'),
(99, 'JIM', 'MOSTEL'),
(100, 'SPENCER', 'DEPP'),
(102, 'WALTER', 'TORN'),
(103, 'MATTHEW', 'LEIGH'),
(104, 'PENELOPE', 'CRONYN'),
(105, 'SIDNEY', 'CROWE'),
(108, 'WARREN', 'NOLTE'),
(109, 'SYLVESTER', 'DERN'),
(110, 'SUSAN', 'DAVIS'),
(114, 'MORGAN', 'MCDORMAND'),
(117, 'RENEE', 'TRACY'),
(123, 'JULIANNE', 'DENCH'),
(130, 'GRETA', 'KEITEL'),
(133, 'RICHARD', 'PENN'),
(136, 'ED', 'MANSFIELD'),
(137, 'MORGAN', 'WILLIAMS'),
(138, 'LUCILLE', 'DEE'),
(139, 'EWAN', 'GOODING'),
(142, 'JADA', 'RYDER'),
(144, 'ANGELA', 'WITHERSPOON'),
(146, 'ALBERT', 'JOHANSSON'),
(147, 'FAY', 'WINSLET'),
(155, 'IAN', 'TANDY'),
(157, 'GRETA', 'MALDEN'),
(159, 'LAURA', 'BRODY'),
(160, 'CHRIS', 'DEPP'),
(162, 'OPRAH', 'KILMER'),
(164, 'HUMPHREY', 'WILLIS'),
(167, 'LAURENCE', 'BULLOCK'),
(169, 'KENNETH', 'HOFFMAN'),
(170, 'MENA', 'HOPPER'),
(174, 'MICHAEL', 'BENING'),
(175, 'WILLIAM', 'HACKMAN'),
(176, 'JON', 'CHASE'),
(177, 'GENE', 'MCKELLEN'),
(180, 'JEFF', 'SILVERSTONE'),
(181, 'MATTHEW', 'CARREY'),
(185, 'MICHAEL', 'BOLGER'),
(187, 'RENEE', 'BALL'),
(188, 'ROCK', 'DUKAKIS'),
(191, 'GREGORY', 'GOODING'),
(192, 'JOHN', 'SUVARI'),
(194, 'MERYL', 'ALLEN'),
(197, 'REESE', 'WEST'),
(198, 'MARY', 'KEITEL'),
(200, 'THORA', 'TEMPLE');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Children'),
(4, 'Classics'),
(5, 'Comedy'),
(6, 'Documentary'),
(7, 'Drama'),
(8, 'Family'),
(9, 'Foreign'),
(10, 'Games'),
(11, 'Horror'),
(12, 'Music'),
(13, 'New'),
(14, 'Sci-Fi'),
(15, 'Sports'),
(16, 'Travel');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `film_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) NOT NULL,
  `release_year` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`film_id`, `description`, `length`, `release_year`, `title`) VALUES
(1, 'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies', 86, 2006, 'ACADEMY DINOSAUR'),
(2, 'A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China', 48, 2006, 'ACE GOLDFINGER'),
(3, 'A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory', 50, 2006, 'ADAPTATION HOLES'),
(4, 'A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank', 117, 2006, 'AFFAIR PREJUDICE'),
(5, 'A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico', 130, 2006, 'AFRICAN EGG'),
(6, 'A Intrepid Panorama of a Robot And a Boy who must Escape a Sumo Wrestler in Ancient China', 169, 2006, 'AGENT TRUMAN'),
(7, 'A Touching Saga of a Hunter And a Butler who must Discover a Butler in A Jet Boat', 62, 2006, 'AIRPLANE SIERRA'),
(8, 'A Epic Tale of a Moose And a Girl who must Confront a Monkey in Ancient India', 54, 2006, 'AIRPORT POLLOCK'),
(9, 'A Thoughtful Panorama of a Database Administrator And a Mad Scientist who must Outgun a Mad Scientist in A Jet Boat', 114, 2006, 'ALABAMA DEVIL'),
(10, 'A Action-Packed Tale of a Man And a Lumberjack who must Reach a Feminist in Ancient China', 63, 2006, 'ALADDIN CALENDAR'),
(11, 'A Boring Epistle of a Butler And a Cat who must Fight a Pastry Chef in A MySQL Convention', 126, 2006, 'ALAMO VIDEOTAPE'),
(12, 'A Fanciful Saga of a Hunter And a Pastry Chef who must Vanquish a Boy in Australia', 136, 2006, 'ALASKA PHANTOM'),
(13, 'A Action-Packed Drama of a Dentist And a Crocodile who must Battle a Feminist in The Canadian Rockies', 150, 2006, 'ALI FOREVER'),
(14, 'A Emotional Drama of a A Shark And a Database Administrator who must Vanquish a Pioneer in Soviet Georgia', 94, 2006, 'ALICE FANTASIA'),
(15, 'A Brilliant Drama of a Cat And a Mad Scientist who must Battle a Feminist in A MySQL Convention', 46, 2006, 'ALIEN CENTER'),
(16, 'A Fast-Paced Drama of a Robot And a Composer who must Battle a Astronaut in New Orleans', 180, 2006, 'ALLEY EVOLUTION'),
(17, 'A Fast-Paced Character Study of a Composer And a Dog who must Outgun a Boat in An Abandoned Fun House', 82, 2006, 'ALONE TRIP'),
(18, 'A Thoughtful Drama of a Composer And a Feminist who must Meet a Secret Agent in The Canadian Rockies', 57, 2006, 'ALTER VICTORY'),
(19, 'A Emotional Display of a Pioneer And a Technical Writer who must Battle a Man in A Baloon', 113, 2006, 'AMADEUS HOLY'),
(20, 'A Boring Drama of a Woman And a Squirrel who must Conquer a Student in A Baloon', 79, 2006, 'AMELIE HELLFIGHTERS');

-- --------------------------------------------------------

--
-- Structure de la table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
CREATE TABLE IF NOT EXISTS `film_actor` (
  `film_id` bigint(20) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  KEY `FKsr7lo9p4intei645cws4f9t4l` (`actor_id`),
  KEY `FK44uk58x166xx1qd03300206nr` (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `film_actor`
--

INSERT INTO `film_actor` (`film_id`, `actor_id`) VALUES
(1, 1),
(3, 2),
(17, 3),
(19, 5),
(1, 10),
(9, 10),
(16, 12),
(17, 12),
(17, 13),
(2, 19),
(3, 19),
(1, 20),
(6, 21),
(9, 22),
(6, 23),
(3, 24),
(9, 26),
(19, 27),
(14, 28),
(10, 29),
(1, 30),
(10, 35),
(15, 36),
(10, 37),
(12, 37),
(19, 37),
(1, 40),
(11, 40),
(4, 41),
(19, 43),
(18, 45),
(5, 51),
(20, 52),
(1, 53),
(9, 53),
(8, 55),
(16, 57),
(5, 59),
(6, 62),
(3, 64),
(10, 64),
(9, 68),
(15, 69),
(12, 75),
(13, 77),
(4, 81),
(11, 81),
(17, 82),
(19, 84),
(2, 85),
(14, 85),
(4, 88),
(2, 90),
(11, 90),
(13, 91),
(13, 94),
(8, 96),
(7, 99),
(17, 100),
(20, 102),
(5, 103),
(19, 104),
(12, 105),
(15, 105),
(1, 108),
(6, 108),
(9, 108),
(12, 109),
(8, 110),
(13, 114),
(10, 117),
(15, 117),
(3, 123),
(9, 130),
(7, 133),
(20, 136),
(6, 137),
(14, 137),
(8, 138),
(20, 139),
(10, 142),
(18, 142),
(18, 144),
(12, 146),
(16, 146),
(4, 147),
(20, 155),
(10, 157),
(20, 159),
(2, 160),
(17, 160),
(1, 162),
(4, 162),
(7, 162),
(18, 162),
(15, 164),
(17, 167),
(6, 169),
(7, 170),
(15, 170),
(11, 174),
(9, 175),
(13, 176),
(12, 177),
(12, 180),
(5, 181),
(7, 185),
(17, 187),
(1, 188),
(10, 188),
(14, 188),
(16, 191),
(16, 192),
(9, 194),
(6, 197),
(1, 198),
(5, 200);

-- --------------------------------------------------------

--
-- Structure de la table `film_category`
--

DROP TABLE IF EXISTS `film_category`;
CREATE TABLE IF NOT EXISTS `film_category` (
  `film_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  KEY `FKo1ve8mjm8cxf87g7r55w53rcj` (`category_id`),
  KEY `FKr4u0m4y199rhohqiy9gd46l7u` (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `film_category`
--

INSERT INTO `film_category` (`film_id`, `category_id`) VALUES
(19, 1),
(18, 2),
(14, 4),
(7, 5),
(1, 6),
(3, 6),
(5, 8),
(6, 9),
(11, 9),
(15, 9),
(16, 9),
(2, 11),
(4, 11),
(8, 11),
(9, 11),
(13, 11),
(12, 12),
(17, 12),
(20, 12),
(10, 15);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(34);

-- --------------------------------------------------------

--
-- Structure de la table `preference`
--

DROP TABLE IF EXISTS `preference`;
CREATE TABLE IF NOT EXISTS `preference` (
  `id` bigint(20) NOT NULL,
  `vote` int(11) NOT NULL,
  `film_id` bigint(20) DEFAULT NULL,
  `shows_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKduc97hau8biuv4wwem4nq1c26` (`film_id`),
  KEY `FKj9b48hiyp5krg0tmmccr8ff3a` (`shows_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `preference`
--

INSERT INTO `preference` (`id`, `vote`, `film_id`, `shows_id`) VALUES
(32, 0, NULL, NULL),
(33, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `shows`
--

DROP TABLE IF EXISTS `shows`;
CREATE TABLE IF NOT EXISTS `shows` (
  `id` bigint(20) NOT NULL,
  `release_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKavixqk0lr7jgfyc6os6wm1qnm` (`village_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `shows`
--

INSERT INTO `shows` (`id`, `release_date`, `village_id`) VALUES
(2, '21/12/2020', 1);

-- --------------------------------------------------------

--
-- Structure de la table `village`
--

DROP TABLE IF EXISTS `village`;
CREATE TABLE IF NOT EXISTS `village` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `village`
--

INSERT INTO `village` (`id`, `name`, `postal_code`) VALUES
(1, 'Rennes', '35000'),
(2, 'Nantes', '44000'),
(4, 'Paris', '93300');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film_actor`
--
ALTER TABLE `film_actor`
  ADD CONSTRAINT `FK44uk58x166xx1qd03300206nr` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`),
  ADD CONSTRAINT `FKsr7lo9p4intei645cws4f9t4l` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`);

--
-- Contraintes pour la table `film_category`
--
ALTER TABLE `film_category`
  ADD CONSTRAINT `FKo1ve8mjm8cxf87g7r55w53rcj` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `FKr4u0m4y199rhohqiy9gd46l7u` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`);

--
-- Contraintes pour la table `preference`
--
ALTER TABLE `preference`
  ADD CONSTRAINT `FKduc97hau8biuv4wwem4nq1c26` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`),
  ADD CONSTRAINT `FKj9b48hiyp5krg0tmmccr8ff3a` FOREIGN KEY (`shows_id`) REFERENCES `shows` (`id`);

--
-- Contraintes pour la table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `FKavixqk0lr7jgfyc6os6wm1qnm` FOREIGN KEY (`village_id`) REFERENCES `village` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
