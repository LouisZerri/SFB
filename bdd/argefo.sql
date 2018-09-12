-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 12 Septembre 2018 à 15:44
-- Version du serveur :  5.7.23-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `argefo`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `id_adherent` int(11) NOT NULL,
  `id_representant` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `code_postal` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `activite` text,
  `nb_salaries` int(11) DEFAULT NULL,
  `num_siret` varchar(255) DEFAULT NULL,
  `dernier_CA_ht_annuel` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adherent`
--

INSERT INTO `adherent` (`id_adherent`, `id_representant`, `nom`, `adresse`, `code_postal`, `ville`, `telephone`, `activite`, `nb_salaries`, `num_siret`, `dernier_CA_ht_annuel`) VALUES
(15, 4, 'InterCom', '15 boulevard des tulipes', '88000', 'Epinal', '0365478596', 'Secteur informatique', 150, '1234567890', 750369),
(16, 8, 'Pepperbay', '48 rue Montmartre', '75002', 'Paris', '0344123658', 'Intégration ERP', 25, '756432693', 84523),
(17, 6, 'Orange', '45 avenue Jean Moulin', '21000', 'DIjon', '0344736541', 'Secteur informatique', 123, '123682056', 98452),
(18, 5, 'Pepperbay', '48 rue Montmartre', '75002', 'Paris', '0344733658', 'Intégration ERP', 25, '1236984265', 74125),
(19, 7, 'Apple', '25 boulevard des roses', '80000', 'Amiens', '0344739651', 'Secteur marketing', 120682, '126576383', 96587),
(20, 21, 'Boucherie Sandoz', '12 avenue Jean Jaures', '75006', 'Paris', '0344736985', 'Secteur informatique', 156, '4569875338', 75036),
(21, 22, 'Pepperbay', '48 rue Montmartre', '75003', 'Paris', '0344156958', 'Secteur intégration ERP', 1200, '456987533', 74563),
(22, 23, 'MARECHAUX SAS', 'TTT', '75015', 'PARIS', '0102030405', 'BUCHERON', 3, '888999777', 100000);

-- --------------------------------------------------------

--
-- Structure de la table `representant`
--

CREATE TABLE `representant` (
  `id_representant` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `representant`
--

INSERT INTO `representant` (`id_representant`, `nom`, `prenom`, `telephone`, `mot_de_passe`, `email`) VALUES
(4, 'Bidulle', 'Toto', '0698745632', '$2y$10$EfYuw90xmaR7mJf6jwm6jOlU5mh6h6/AWxqFslI0xn8tbLgxXHqDu', 'toto.bidulle@hotmail.com'),
(5, 'Zerri', 'Louis', '0627503671', '$2y$10$KFpPXAWXBsAQgfjT9mYUvOuEjnk1cNiTgwGCxiHeXQCRN2/9wirDO', 'l.zerri@pepperbay.fr'),
(6, 'Villier', 'Jacques', '0365478965', '$2y$10$Zn4gALAyUvZoHZbT16bdXOy8n3LoIUg29XNXsP4UlbKPMfjYp8tne', 'j.villier@orange.fr'),
(7, 'Monsieur', 'Patatte', '0647896521', '$2y$10$9Hr/ftQRHYvsmw.zynThCOrpcqG9XM3pU/.WT0tF9LJ8SxWjFvVBC', 'monsieur.patatte@gmail.com'),
(8, 'Rolland', 'Benoit', '0654799324', '$2y$10$fEQ2foCTTSY.NnAF6SzOvOOPr2712EtlSzGK51IGj/ilD63tk.nVq', 'b.rolland@pepperbay.fr'),
(21, 'Doe', 'John', '0645987523', '$2y$10$KGlLC96IC1990VlcN5FRUehvLvvHRAbdDKlCTYzsTse4rz0hmPWIi', 'john.doe@gmail.com'),
(22, 'Pepperbay', 'Compte', '0123654789', '$2y$10$v4JMPF2rUW/ruzJYdgIpW.hIH54or2uPy8JR0RmRtIKV.LdScYdDO', 'pepperbay@gmail.com'),
(23, 'MARECHAUX', 'LAURENT', '0123456789', '$2y$10$hyDtuwpF58nB/u0R6W0wqufugRw5V4YZoEVpFeFGgmNryu/ChojKq', 'lmarechaux@hotmail.com');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`id_adherent`),
  ADD KEY `id_representant` (`id_representant`);

--
-- Index pour la table `representant`
--
ALTER TABLE `representant`
  ADD PRIMARY KEY (`id_representant`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adherent`
--
ALTER TABLE `adherent`
  MODIFY `id_adherent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `representant`
--
ALTER TABLE `representant`
  MODIFY `id_representant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD CONSTRAINT `adherent_ibfk_1` FOREIGN KEY (`id_representant`) REFERENCES `representant` (`id_representant`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
