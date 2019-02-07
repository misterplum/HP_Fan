-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 07 Février 2019 à 12:33
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `HP_Fan`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id_film` int(11) UNSIGNED NOT NULL,
  `nom film` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id_film`, `nom film`) VALUES
(1, 'Harry potter à l\'école des sorciers'),
(2, 'Harry potter et la chambre des secrets'),
(3, 'Harry potter et le prisonnier d\'Azkaban'),
(4, 'Harry potter et la coupe de feu'),
(5, 'Harry potter et l\'ordre du phénix'),
(6, 'Harry potter et le prince de sang-mêlé'),
(7, 'Harry potter et les reliques de la mort, part1'),
(8, 'Harry potter et les reliques de la mort, part2');

-- --------------------------------------------------------

--
-- Structure de la table `maisons`
--

CREATE TABLE `maisons` (
  `id_maison` int(11) UNSIGNED NOT NULL,
  `maison` varchar(12) NOT NULL,
  `fondateur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `maisons`
--

INSERT INTO `maisons` (`id_maison`, `maison`, `fondateur`) VALUES
(1, 'Griffondor', 'Godric Griffondor'),
(2, 'Serpentar', 'Salazar Serpentar'),
(3, 'Serdaigle', 'Rowena Serdaigle'),
(4, 'poufsouffle', 'Helga Poufsouffle');

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `ID` int(11) UNSIGNED NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prénom` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  `film` varchar(50) NOT NULL,
  `maison` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnages`
--

INSERT INTO `personnages` (`ID`, `nom`, `prénom`, `age`, `film`, `maison`) VALUES
(1, 'Potter', 'James', 'décédé', 'Harry potter à l\'école des sorciers', 'Griffondor'),
(2, 'Dragonneau', 'Norbert', '131', 'les animaux fantastiques', 'Poufsouffle'),
(3, 'Severus', 'Rogue', 'décédé', 'Harry potter à l\'école des sorciers', 'Serpentar'),
(4, 'Flitwick', 'Filius', 'trop vieux', 'Harry potter à l\'école des sorciers', 'Serdaigle');

-- --------------------------------------------------------

--
-- Structure de la table `sorts`
--

CREATE TABLE `sorts` (
  `id_sorts` int(11) UNSIGNED NOT NULL,
  `sorts` varchar(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sorts`
--

INSERT INTO `sorts` (`id_sorts`, `sorts`) VALUES
(1, 'endoloris');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id_film`);

--
-- Index pour la table `maisons`
--
ALTER TABLE `maisons`
  ADD PRIMARY KEY (`id_maison`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `sorts`
--
ALTER TABLE `sorts`
  ADD PRIMARY KEY (`id_sorts`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id_film` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `maisons`
--
ALTER TABLE `maisons`
  MODIFY `id_maison` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `sorts`
--
ALTER TABLE `sorts`
  MODIFY `id_sorts` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD CONSTRAINT `personnages_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `maisons` (`id_maison`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
