-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 10 Mai 2015 à 10:24
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
('11', '05', 'Dernier quartier', 'Racine', 'Semez des radis pour echelonner les recoltes.', 19),
('12', '05', 'Lune ascendante', 'Fleur', 'Si vous aimez sa saveur marquee, semez de la roquette.', 20),
('13', '05', 'Lune ascendante', 'Feuille', 'A decouvrir et a semer : la tetragone.', 21),
('14', '05', 'Lune ascendante', 'Feuille', 'Noeud lunaire. Semez des cardons.', 22),
('15', '05', 'Lune ascendante', 'Feuille', 'Lune en perigee', NULL),
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
  `Image` varchar(200) DEFAULT NULL,
  `Origine` varchar(50) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `DateDebut` varchar(50) DEFAULT NULL,
  `DateFin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `plante`
--

INSERT INTO `plante` (`id`, `Nom`, `Type`, `Saison`, `Climat`, `Image`, `Origine`, `Description`, `DateDebut`, `DateFin`) VALUES
(7, 'Aubergine', 'Legume', 'Printemps', 'Chaud', 'http://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Solanum_melongena_26_08_2012_%281%29.JPG/640px-Solanum_melongena_26_08_2012_%281%29.JPG', 'Afrique du Nord et Moyen-Orient', 'L aubergine (Solanum melongena L.) est une plante potagere annuelle de la famille des Solanacees.', '01/06', '30/04'),
(8, 'Chou-fleurs', 'Legume', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/7/7c/Cauliflower.jpg', 'Proche-orient', 'Le chou-fleur est une variete de chou de la famille des Brassicacees.', '15/03', '15/06'),
(9, 'Abricot', 'Fruit', 'Ete', 'Chaud', 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Apricot_tree.jpg/1024px-Apricot_tree.jpg', 'Chine', 'L''abricot est le fruit d''un arbre generalement de petite taille appele abricotier, de la famille des Rosaceae.', '01/06', '15/08'),
(10, 'Citron', 'Fruit', 'Hiver', 'Chaud', 'http://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Citrus_limonum_3.JPG/1024px-Citrus_limonum_3.JPG', 'Europe', 'Le citron est un agrume, fruit du citronnier qui a un pH de 2,5. Le citronnier (Citrus limon) est un arbuste de 5 a 10 m de haut, a feuilles persistantes, de la famille des Rutacees.', '01/02', '30/02'),
(11, 'Capucine', 'Fleur', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/a/af/Tropaeolum_minus2.jpg', 'Amerique du Sud', 'Le genre Tropaeolum regroupe plus de quatre-vingt-cinq especes de plantes herbacees, de la famille des Tropaeolacees, originaire d''Amerique du Sud.', '15/02', '15/05'),
(12, 'Violette', 'Fleur', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Viola_odorata_Morcenx.jpg/640px-Viola_odorata_Morcenx.jpg', 'Europe', 'Viola est un genre de plantes herbacees vivaces de la famille des Violaceae.', '15/03', '15/05'),
(13, 'Betterave', 'Legume', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Betterave.jpg/640px-Betterave.jpg', 'Europe', 'La betterave, Beta vulgaris subsp. vulgaris, est une sous-espece de plantes de la famille des Amaranthaceae.', '15/03', '15/07'),
(14, 'Courgette', 'Legume', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Courgette_Cucurbita_pepo_2.jpg/640px-Courgette_Cucurbita_pepo_2.jpg', 'Europe', 'La courgette est une plante de la famille des Cucurbitaceae.', '01/04', '30/04'),
(15, 'Haricot', 'Legume', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Haricots_grimpants_ph%C3%A9nom%C3%A8nes02.jpg/640px-Haricots_grimpants_ph%C3%A9nom%C3%A8nes02.jpg', 'Europe', 'Le Haricot, ou Haricot commun (Phaseolus vulgaris L.), est une espece de plantes annuelles de la famille des Fabaceae.', '01/04', '15/08'),
(16, 'Laitue d''ete', 'Legume', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/5/52/Lactuca_virosa_01012001.JPG', 'Europe', 'Les laitues (Lactuca), au sens botanique du terme, sont un genre de plantes annuelles de la famille des Asteracees', '15/04', '15/06'),
(17, 'Oignon', 'Legume', 'Ete', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/thumb/9/93/ARS_red_onion.jpg/640px-ARS_red_onion.jpg', 'Europe', 'L oignon, ou ognon (Allium cepa), est une espece de plante herbacee bisannuelle de la famille des Amaryllidaceae.', '01/08', '30/09'),
(18, 'Melon', 'Fruit', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Melon_plant.jpg/1024px-Melon_plant.jpg', 'Europe', 'Le Melon (Cucumis melo) est une plante herbacee annuelle originaire d''Afrique intertropicale, appartenant a la famille des Cucurbitacees.', '01/05', '30/05'),
(19, 'Radis', 'Legume', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Radis.JPG/1024px-Radis.JPG', 'Europe', 'Le radis, Raphanus sativus, dit ravanet en provencal, est une plante potagere bisannuelle, de la famille des Brassicacees.', '15/03', '15/09'),
(20, 'Roquette', 'Fleur', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/b/be/Arugula.jpg', 'Europe', 'La roquette (Eruca sativa) est une plante annuelle de la famille des Brassicacees.', '01/04', '30/05'),
(21, 'Tetragone', 'Feuille', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/0/09/Tetragonia_tetragonioides0.jpg', 'Europe', 'Tetragonia est un genre de plantes angiospermes, les tetragones, de la famille des Aizoaceae.', '15/03', '15/06'),
(22, 'Cardon', 'Feuille', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Cynara_cardunculus.jpg/640px-Cynara_cardunculus.jpg', 'Europe', 'Cynara cardunculus, le Cardon, est une plante herbacee bisannuelle de la famille des Asteracees', '01/04', '30/05'),
(23, 'Fenouil', 'Feuille', 'Printemps', 'Tempere', 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Foeniculum_vulgare.JPG/250px-Foeniculum_vulgare.JPG', 'Europe', 'Fenouil est un nom vernaculaire ambigu designant, en francais, une multitude de plantes de genres divers, notamment de la famille des Apiaceae.', '01/04', '05/08');

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
