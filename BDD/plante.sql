-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 09 Mai 2015 à 11:50
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ecologia`
--

-- --------------------------------------------------------

--
-- Structure de la table `plante`
--

CREATE TABLE IF NOT EXISTS `plante` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Saison` varchar(50) DEFAULT NULL,
  `Climat` varchar(50) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `Origine` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `DateDebut` varchar(50) DEFAULT NULL,
  `DateFin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `plante`
--

INSERT INTO `plante` (`id`, `Nom`, `Type`, `Saison`, `Climat`, `Image`, `Origine`, `Description`, `DateDebut`, `DateFin`) VALUES
(1, 'Test', 'Test', 'Test', 'Test', './images/rose.jpg', 'Test', 'Test', '12/12', '12/02'),
(2, 'Meep', 'Moop', 'Moop', 'Moop', './images/rose.jpg', 'Moop', 'Moop', 'Moop', 'Moop'),
(3, 'Printonia', 'Fleurs', 'printemps', 'chaud', './images/rose.jpg', 'HackathonEnssat2015', 'La fleur des Gardens Of The Galaxy', '08/05', '10/05'),
(4, 'Etonia', 'Fleurs', 'ete', 'chaud', './images/rose.jpg', 'HackathonEnssat2015', 'La fleur des Gardens Of The Galaxy', '08/05', '10/05'),
(5, 'Autonia', 'Fleurs', 'automne', 'chaud', './images/rose.jpg', 'HackathonEnssat2015', 'La fleur des Gardens Of The Galaxy', '08/05', '10/05'),
(6, 'Hitonia', 'Fleurs', 'hiver', 'chaud', './images/rose.jpg', 'HackathonEnssat2015', 'La fleur des Gardens Of The Galaxy', '08/05', '10/05'),
(7, 'Aubergine', 'Legume', 'Printemps', '?', './images/rose.jpg', 'Afrique du Nord et Moyen-Orient', 'Plante potagère annuelle de la famille des Solanac', '01/06', '30/04'),
(8, 'Chou-fleurs', 'Legume', 'Printemps', '?', './images/rose.jpg', 'Proche-orient', 'Variété de chou de la famille des Brassicacées, cu', '15/03', '15/06'),
(9, 'Abricot', 'Fruit', 'Ete', '?', './images/rose.jpg', 'Chine', 'L''abricot est le fruit d''un arbre généralement de ', '01/06', '15/08'),
(10, 'Citron', 'Fruit', 'Hiver', '?', './images/rose.jpg', 'Europe', 'Le citron est un agrume, fruit du citronnier qui a', '01/02', '30/02'),
(11, 'Capucine', 'Fleur', 'Printemps', '?', './images/rose.jpg', 'Amerique du Sud', 'Le genre Tropaeolum regroupe plus de quatre-vingt-', '15/02', '15/05'),
(12, 'Violette', 'Fleur', 'Printemps', '?', './images/rose.jpg', 'Europe', 'Viola est un genre de plantes herbacées vivaces de', '15/03', '15/05'),
(13, 'Betterave', 'Legume', 'Printemps', '?', './images/rose.jpg', 'Europe', 'La betterave, Beta vulgaris subsp. vulgaris, est u', '15/03', '15/07'),
(14, 'Courgette', 'Legume', 'Printemps', '?', './images/rose.jpg', '?', 'La courgette est une plante de la famille des Cucu', '01/04', '30/04'),
(15, 'Haricot nain a filets', 'Legume', 'Printemps', '?', './images/rose.jpg', '?', 'Le Haricot, ou Haricot commun (Phaseolus vulgaris ', '01/04', '15/08'),
(16, 'Laitue d''ete', 'Legume', 'Printemps', '?', './images/rose.jpg', '?', 'Les laitues (Lactuca), au sens botanique du terme,', '15/04', '15/06'),
(17, 'Oignon Blanc', 'Legume', 'Ete', '?', './images/rose.jpg', '?', 'L’oignon, ou ognonN 1 (Allium cepa), prononcé /?.?', '01/08', '30/09');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
