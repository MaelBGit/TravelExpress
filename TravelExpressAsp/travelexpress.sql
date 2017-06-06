-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 06 Juin 2017 à 18:22
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `travelexpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `car`
--

CREATE TABLE `car` (
  `id_car` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `places` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `registration` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `car`
--

INSERT INTO `car` (`id_car`, `id_user`, `brand`, `model`, `type`, `places`, `year`, `registration`) VALUES
(1, 1, 'toyota', 'jesaispas', 'coupé', 5, 2016, '4848wwew'),
(4, 1, 'toyota', 'erre', 'Citadine', 5, 1992, 'wewew'),
(5, 1, 'toyota', 'erre', 'Citadine', 5, 1992, 'wewew'),
(6, 1, 'toyota', 'erre', 'Citadine', 5, 1992, 'wewew'),
(9, 2, 'et', 'et', 'Citadine', 25, 5, 'et'),
(10, 2, 'ddd', 'dddd', 'Citadine', 5, 3, 'er'),
(11, 2, 'eee', 'rrr', 'Citadine', 5, 5, 'rrr'),
(12, 5, 'toyota', 'verso', 'Citadine', 6, 2015, '525KIL455'),
(13, 6, 'Citroen', 'C4', 'Citadine', 5, 2012, '54 LOI 25');

-- --------------------------------------------------------

--
-- Structure de la table `preference`
--

CREATE TABLE `preference` (
  `id_preference` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `smoke` tinyint(1) NOT NULL,
  `other` varchar(300) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `preference`
--

INSERT INTO `preference` (`id_preference`, `id_user`, `smoke`, `other`) VALUES
(1, 4, 1, 'qqq'),
(2, 1, 1, 'pas de je sais pas quoi'),
(3, 5, 0, 'i listen to music'),
(4, 6, 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_journey` int(11) NOT NULL,
  `places` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `travel`
--

CREATE TABLE `travel` (
  `id_journey` int(11) NOT NULL,
  `start` varchar(40) NOT NULL,
  `end` varchar(40) NOT NULL,
  `date` varchar(10) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `arrival` varchar(10) NOT NULL,
  `places` int(11) NOT NULL,
  `price` float NOT NULL,
  `id_car` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `travel`
--

INSERT INTO `travel` (`id_journey`, `start`, `end`, `date`, `departure`, `arrival`, `places`, `price`, `id_car`) VALUES
(2, 'quebec', 'montreal', '6-7-2017', '6h00', '14h', 4, 8, 12),
(3, 'Chicoutimi', 'Quebec', '6-15-2017', '8h00', '14h00', 4, 12, 13);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `town` varchar(30) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_user`, `first_name`, `last_name`, `address`, `town`, `telephone`, `pseudo`, `mail`, `password`) VALUES
(1, 'John', 'Smith', '123 main street', 'new ark', '222 333 4445', 'johny', 'ato@truc.fr', 'test'),
(2, 'et', 'et', 'et', 'te', 'et', 'et', 'et', 'et'),
(3, 'Re', 're', 're', 're', 're', 're', 're', 're'),
(4, 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q'),
(5, 'john', 'doe', '3 main road albania', 'albania city', '01 23 45 67 89 ', 'john', 'jonhdoe@aol.com', 'doe'),
(6, 'michael', 'truc', '4 rue national', 'quebec', '98 78 45 36 20', 'mike67', 'mike@gmail.com', 'toto');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id_car`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`id_preference`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_journey` (`id_journey`);

--
-- Index pour la table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id_journey`),
  ADD KEY `id_car` (`id_car`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `car`
--
ALTER TABLE `car`
  MODIFY `id_car` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `preference`
--
ALTER TABLE `preference`
  MODIFY `id_preference` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `travel`
--
ALTER TABLE `travel`
  MODIFY `id_journey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `preference`
--
ALTER TABLE `preference`
  ADD CONSTRAINT `preference_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`id_journey`) REFERENCES `travel` (`id_journey`);

--
-- Contraintes pour la table `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_ibfk_1` FOREIGN KEY (`id_car`) REFERENCES `car` (`id_car`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
