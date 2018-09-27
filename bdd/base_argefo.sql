-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 27 Septembre 2018 à 16:34
-- Version du serveur :  5.7.23-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `base_argefo`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `id_adherent` int(11) NOT NULL,
  `id_representant` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `code_postal` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `bulletin_retourne` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adherent`
--

INSERT INTO `adherent` (`id_adherent`, `id_representant`, `nom`, `adresse`, `code_postal`, `ville`, `telephone`, `bulletin_retourne`) VALUES
(1, 1, 'SONORBOIS', 'Route de Lisieux-BP Saint Germain Village', '27505', 'Pont Audemer', '0614154209/0232412747', 'Recu le 10/04/18'),
(2, 2, 'BTA INTERNATIONAL', '31 Rue de Paris', '06000', 'Nice', '0607089968', NULL),
(3, 3, 'SAS FORESTIERE BOURGINE', '55 Route de Saint-Come', '78950', 'Gambais', '0608236359', NULL),
(4, 4, 'ETS GAUTIER LUC', 'Lancé', '44630', 'Plesse', '0665009985/0240796236', NULL),
(5, 5, 'SARL BOIS MARNAND', 'BMS.-Marnand', '71460', 'Joncy', '0672695920', 'Recu le 10/03/18'),
(6, 6, 'HENRI MIOTTE SARL', '32 Grande Rue', '25380', 'Court Saint-Maurice', '0672228321', 'Recu le 10/03/18'),
(7, 7, 'TBE SAS', '1400 Route de la Vallee', '27680', 'Saint Opportune La Mare', 'Pas de téléphone', 'Recu le 10/04/18'),
(8, 8, 'EXPLOITATION FORESTIERE DANIEL HUBERT ET CIE', '2 rue de la rigolle', '2 rue de la rigolle', 'Illy', '0688818779', 'Recu le 29/02/18'),
(9, 9, 'BEDOUET SARL', 'LA SENNEGONNIERE', '61570', 'Montmerrei', '0608417904', 'Recu le 18/04/18 + 14/07/18'),
(10, 10, 'SAS IDELOT PERE & FILS', '10 Rue Ernest Roch', '02600', 'Villers-Cotterets', '0608451425/0323960842', 'Recu le 20/04/18'),
(11, 11, 'TRADE AND BUSINESS', 'L\'Albodiere- 10 Rue Lavaux', '88300', 'Harmonville', '0383250238 / 0616509694', 'Recu le 20/04/18'),
(12, 12, 'STE CLAUDE SUEUR ET FILS', '2A Rue de l\'Eglise', '76340', 'Realcamp', '0607908703 /0235937534', 'Recu le 21/04/18'),
(13, 13, 'SARL LA CHENAIE', '7 Rue de Metz', '57530', 'Silly Sur Nied', '06 19 22 67 48', 'Recu le 20/04/18'),
(14, 14, 'SELECQUE MICHAEL', '769 Rue de Croixmare', '76510', 'Saint Nicolas Aliermont', '0611536263 / 0232901057', 'Recu le 21/04/18'),
(15, 15, 'SARL JEAN PIERRE NEY', '13 Rue des Roses', '54480', 'Petimont', '0673753051', 'Recu le 26/04/18'),
(16, 16, 'EXPLOITATION FORESTIERE CREVOISIER JEAN-CLAUDE', '12 Route de la mer melay', '70270', 'Ternay', '0384204341 / 0685919912', 'Recu le 26/04/18'),
(17, 17, 'FOURNIER DELAPLACE', '224 Le Vauchel', '76270', 'Bully', '0235930551/0683349792', 'Recu le 26/04/18'),
(18, 18, 'FAUCON SAMUEL', '801 Rue de l\'Eglise', '76190', 'Carville La Folletiere', '0235917066', 'Recu le 26/04/18'),
(19, 19, 'EURL TRANSACBOIS LOPEZ', '11Bis Rue du four', '55110', 'Vilosnes Haraumont', '0699659690', 'Recu le 26/04/18'),
(20, 20, 'FOREST SERVICE FRANCE', 'Z.A.E.  FOREST, CAMP DEL TOUR', '34330', 'Le Salvetat Sur Agout', '0670130901', 'Recu le 19/04/18'),
(21, 21, 'SJB BOIS', '15 Rue de Lagny', '77400', 'Dampmart', '0608694349', 'Recu le 09/05/18'),
(22, 22, 'FORESTIERE DU THYMERAIS', 'ZI Route De Brezolles - BP 52', '28170', 'Chateauneuf En Thymeray', '0237516563/ 0607121801', 'Recu le 15/05/18'),
(23, 23, 'GST BOIS', '110 , ZA Les Perrieres', '38480', 'Pressins', '0617676819', 'Recu le 18/05/18'),
(24, 24, 'CHRISTOPHE DELAPLACE', '34 Impasse Pommereval', '76270', 'Bully', '0235932765 / 0681335010', 'Recu le 15/05/18'),
(25, 25, 'SARL DANY MANGIN / MANGIN FRERES', 'ZAC De La Macotte - 17 Rue Jeanne D\'arc', '55200', 'Vignot', '0686688438', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `id_connexion` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `membre` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `connexion`
--

INSERT INTO `connexion` (`id_connexion`, `email`, `mot_de_passe`, `membre`) VALUES
(1, 'syndicat@gmail.com', '$2y$10$Jcs/IFgQuJvjOjoYfeKqAONiyLIXTKTLfMJd4f.oW.QuMsT8dwFOa', 1),
(2, 'pepperbay@gmail.com', '$2y$10$H3jCjtOx/HyRUobY5e2e4ujmAFdNg7QYuoUyM/xr0O/tE/7r/iRMW', 0),
(3, 'l.zerri@pepperbay.fr', '$2y$10$fInrxPTQpVlCUx7hRQ6s.ufU2vuYchkbTME6eE0zIxMql8NxNapom', 0);

-- --------------------------------------------------------

--
-- Structure de la table `representant`
--

CREATE TABLE `representant` (
  `id_representant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `representant`
--

INSERT INTO `representant` (`id_representant`, `nom`, `prenom`, `email`) VALUES
(1, 'Caillouel', 'David', 'sonorbois@orange.fr'),
(2, 'Mola', 'Charlie', 'btai@wanadoo.fr'),
(3, 'Bourgine', 'Bruno', 'forestiere.bourgine@orange.fr'),
(4, 'Bellee', 'Samuel', 'luc.gautier3@wanadoo.fr'),
(5, 'Richard', 'Charles', 'boismarnand@orange.fr'),
(6, 'Miotte', 'Jean-Michel', 'henri-miotte@orange.fr'),
(7, 'Caillouel', 'David', 'tbe27@orange.fr'),
(8, 'Hubert', 'Daniel', 'hubertforet@gmail.com'),
(9, 'Bedouet', 'Monsieur', 'sbedouet@aol.com'),
(10, 'Idelot', 'Antoine', 'idelot.ipf@orange.fr / idelotpereetfils@aol.com'),
(11, 'Dupuis', 'Olivier', 'mcpexport@yahoo.fr'),
(12, 'Sueur', 'Claude', 'sueur.expl-forestiere@wanadoo.fr'),
(13, 'Evrard', 'Hervé', 'herve.evrard0890@orange.fr'),
(14, 'Selecque', 'Michael', 'selecquemichael@aol.com'),
(15, 'Ney', 'Jean-Pierre', 'ney.jeanpierre@wanadoo.fr / ney.romain@gmail.com'),
(16, 'Crevoisier', 'Jean-Claude', 'Pas d\'email'),
(17, 'Fournier', 'Bruno', 'fournier0918@orange.fr'),
(18, 'Faucon', 'Samuel', 'samuel.faucon@orange.fr'),
(19, 'Lopez', 'Jordan', 'lopezbois@hotmail.fr'),
(20, 'Meijboom', 'Monsieur', 'w.meijboom@forestservicefrance.com'),
(21, 'Ledent', 'Herve', 'bois.herve.l@orange.fr'),
(22, 'Vacandar', 'Jerome', 'thymerais@wanadoo.fr / vft.jerome@orange.fr'),
(23, 'Talpin', 'Monsieur', 'nt.gstbois@gmail.com'),
(24, 'Delaplace', 'Christophe', 'christophe.delaplace7@orange.fr'),
(25, 'Mangin', 'Dany', 'danyvignot@gmail.com');

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
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD PRIMARY KEY (`id_connexion`);

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
  MODIFY `id_adherent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `id_connexion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `representant`
--
ALTER TABLE `representant`
  MODIFY `id_representant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
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
