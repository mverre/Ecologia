-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 09 Mai 2015 à 16:29
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
-- Structure de la table `jours`
--

CREATE TABLE IF NOT EXISTS `jours` (
  `numero` varchar(2) NOT NULL,
  `mois` varchar(2) NOT NULL,
  `etat_lunaire` varchar(50) DEFAULT NULL,
  `type_plante` varchar(50) DEFAULT NULL,
  `instruction` varchar(100) DEFAULT NULL,
  `plante_liee` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero`,`mois`),
  UNIQUE KEY `plante_liee` (`plante_liee`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jours`
--

INSERT INTO `jours` (`numero`, `mois`, `etat_lunaire`, `type_plante`, `instruction`, `plante_liee`) VALUES
('09', '05', 'Lune ascendante', 'Fruit', 'Essayez le semis de melon.', 18),
('10', '05', 'Lune ascendante', 'Racine', 'Semis de betterave.', 13),
('11', '05', 'Dernier quartier', 'Racine', 'Semez des radis pour échelonner les récoltes.', 19),
('12', '05', 'Lune ascendante', 'Fleur', 'Si vous aimez sa saveur marquée, semez de la roquette.', 20),
('13', '05', 'Lune ascendante', 'Feuille', 'A découvrir et à semer : la tétragone.', 21),
('14', '05', 'Lune ascendante', 'Feuille', 'Noeud lunaire. Semez des cardons.', 22),
('15', '05', 'Lune ascendante', 'Feuille', 'Lune en périgée.', NULL),
('16', '05', 'Lune ascendante', 'Feuille', 'Semez le fenouil.', 23);

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
  `Description` varchar(100) DEFAULT NULL,
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
(7, 'Aubergine', 'Legume', 'Printemps', 'Chaud', './images/rose.jpg', 'Afrique du Nord et Moyen-Orient', 'Plante potagère annuelle de la famille des Solanac', '01/06', '30/04'),
(8, 'Chou-fleurs', 'Legume', 'Printemps', 'Tempere', './images/rose.jpg', 'Proche-orient', 'Variété de chou de la famille des Brassicacées, cu', '15/03', '15/06'),
(9, 'Abricot', 'Fruit', 'Ete', 'Chaud', './images/rose.jpg', 'Chine', 'L''abricot est le fruit d''un arbre généralement de ', '01/06', '15/08'),
(10, 'Citron', 'Fruit', 'Hiver', 'Chaud', './images/rose.jpg', 'Europe', 'Le citron est un agrume, fruit du citronnier qui a', '01/02', '30/02'),
(11, 'Capucine', 'Fleur', 'Printemps', 'Tempere', './images/rose.jpg', 'Amerique du Sud', 'Le genre Tropaeolum regroupe plus de quatre-vingt-', '15/02', '15/05'),
(12, 'Violette', 'Fleur', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'Viola est un genre de plantes herbacées vivaces de', '15/03', '15/05'),
(13, 'Betterave', 'Legume', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'La betterave, Beta vulgaris subsp. vulgaris, est u', '15/03', '15/07'),
(14, 'Courgette', 'Legume', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'La courgette est une plante de la famille des Cucu', '01/04', '30/04'),
(15, 'Haricot nain a filets', 'Legume', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'Le Haricot, ou Haricot commun (Phaseolus vulgaris ', '01/04', '15/08'),
(16, 'Laitue d''ete', 'Legume', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'Les laitues (Lactuca), au sens botanique du terme,', '15/04', '15/06'),
(17, 'Oignon Blanc', 'Legume', 'Ete', 'Tempere', './images/rose.jpg', 'Europe', 'L’oignon, ou ognonN 1 (Allium cepa), prononcé /?.?', '01/08', '30/09'),
(18, 'Melon', 'Fruit', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'Le melon appartient à la famille des cucurbitacées', '01/05', '30/05'),
(19, 'Radis', 'Legume', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'Le radis, Raphanus sativus (du latin radix, radici', '15/03', '15/09'),
(20, 'Roquette', 'Fleur', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'La roquette (Eruca sativa) est une plante annuelle de la famille des Brassicacées.', '01/04', '30/05'),
(21, 'Tetragone', 'Feuille', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'Tetragonia est un genre de plantes angiospermes, les tétragones, de la famille des Aizoaceae.', '15/03', '15/06'),
(22, 'Cardon', 'Feuille', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'Cynara cardunculus, le Cardon, est une plante herbacée bisannuelle de la famille des Astéracées.', '01/04', '30/05'),
(23, 'Fenouil', 'Feuille', 'Printemps', 'Tempere', './images/rose.jpg', 'Europe', 'Le fenouil commun (nom scientifique Foeniculum vulgare, syn. Foeniculum officinale) est une variété ', '01/04', '05/08');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `jours`
--
ALTER TABLE `jours`
  ADD CONSTRAINT `liaison_plante` FOREIGN KEY (`plante_liee`) REFERENCES `plante` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
