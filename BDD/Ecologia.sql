-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 08 Mai 2015 à 21:13
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `ecologia`
--
CREATE DATABASE IF NOT EXISTS `ecologia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecologia`;

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
(6, 'Hitonia', 'Fleurs', 'hiver', 'chaud', './images/rose.jpg', 'HackathonEnssat2015', 'La fleur des Gardens Of The Galaxy', '08/05', '10/05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
