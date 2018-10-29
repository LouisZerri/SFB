-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 29 Octobre 2018 à 17:47
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
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
(1, 1, 'SONORBOIS', 'ROUTE DE LISIEUX - BP SAINT GERMAIN VILLAGE ', '27505', 'PONT AUDEMER CEDEX', '0614154209', 'Recu le  10/04/18'),
(2, 2, 'BTA INTERNATIONAL', '31 RUE DE PARIS', '06000', 'NICE', '0607089968', ''),
(3, 3, 'SAS FORESTIERE BOURGINE', '55 ROUTE DE SAINT-COME', '78950', 'GAMBAIS', '0608236359', ''),
(4, 4, 'ETS GAUTIER LUC', 'LANCÉ', '44630', 'PLESSE', '0665009985', ''),
(5, 5, 'SARL BOIS MARNAND', 'BMS. - MARNAND', '71460', 'JONCY', '06 72 69 59 20', 'Recu le  10/03/18'),
(6, 6, 'HENRI MIOTTE SARL', '32 GRANDE RUE', '25380', 'COURT SAINT-MAURICE', '06 72 22 83 21', 'Recu le  10/03/18'),
(7, 7, 'TBE SAS', '1400 ROUTE DE LA VALLEE', '27680', 'ST OPPORTUNE LA MARE', 'Inconnue', 'Recu le  10/04/18'),
(8, 8, 'EXPLOITATION FORESTIERE DANIEL HUBERT ET CIE', '2 RUE DE LA RIGOLLE', '08200', 'ILLY', '06 88 81 97 79', 'Recu le  29/02/18'),
(9, 9, 'BEDOUET SARL', 'LA SENNEGONNIERE', '61570', 'MONTMERREI', '06 08 41 79 04', 'Recu le 18/04/18 et 14/07/18'),
(10, 10, 'SAS IDELOT PERE & FILS', '10 rue ernest roch', '02600', 'VILLERS-COTTERETS', '0608451425', 'Recu le  20/04/18'),
(11, 11, 'TRADE AND BUSINESS', 'L ALBODIERE - 10 RUE LAVAUX', '88300', 'HARMONVILLE', '0383250238', 'Recu le  20/04/18'),
(12, 12, 'STE CLAUDE SUEUR ET FILS', '2A RUE DE L EGLISE', '76340', 'REALCAMP', '0607908703', 'Recu le  21/04/18'),
(13, 13, 'SARL LA CHENAIE', '7 RUE DE METZ', '57530', 'SILLY SUR NIED', '06 19 22 67 48', 'Recu le  20/04/18'),
(14, 14, 'SELECQUE MICHAEL', '769 RUE DE CROIXMARE', '76510', 'ST NICOLAS ALIERMONT', '06 11 53 62 63 ', 'Recu le  21/04/18'),
(15, 15, 'SARL JEAN PIERRE NEY', '13 RUE DES ROSES', '54480', 'PETIMONT', '0383426410', 'Recu le  26/04/18'),
(16, 16, 'EXPLOITATION FORESTIERE CREVOISIER JEAN-CLAUDE', '12 ROUTE DE LA MER MELAY', '70270', 'TERNAY', '03 84 20 43 41', 'Recu le 26/04/18'),
(17, 17, 'FOURNIER DELAPLACE', '224 LE VAUCHEL', '76270', 'BULLY ', '0235930551', 'Recu le  26/04/18'),
(18, 18, 'FAUCON SAMUEL', '801 RUE DE L EGLISE ', '76190', 'CARVILLE LA FOLLETIERE', '0235917066', 'Recu le  26/04/18'),
(19, 19, 'EURL TRANSACBOIS LOPEZ', '11 BIS RUE DU FOUR', '55110', 'VILOSNES HARAUMONT', '0699659690', 'Recu le  26/04/18'),
(20, 20, 'FOREST SERVICE FRANCE', 'Z.A.E.  FOREST, CAMP DEL TOUR', '34330', 'LE SALVETAT SUR AGOUT', '06 70 13 09 01', 'Recu le  19/04/18'),
(21, 21, 'SJB BOIS', '15 RUE DE LAGNY', '77400', 'DAMPMART', '0608694349', 'Recu le  09/05/18'),
(22, 22, 'FORESTIERE DU THYMERAIS', 'ZI ROUTE DE BREZOLLES - BP 52', '28170', 'CHATEAUNEUF EN THYMERAY', '02 37 51 65 63', 'Recu le  15/05/18'),
(23, 23, 'GST BOIS', '110 ZA LES PERRIERES', '38480', 'PRESSINS', '0617676819', 'Recu le  18/05/18'),
(24, 24, 'CHRISTOPHE DELAPLACE', '34 IMPASSE POMMEREVAL', '76270', 'BULLY', '02 35 932765', 'Recu le 15/05/18'),
(25, 25, 'SARL DANY MANGIN / MANGIN FRERES', 'ZAC DE LA MACOTTE - 17 RUE JEANNE D ARC', '55200', 'VIGNOT', '0686688438', ''),
(26, 26, 'PRESCOB', '49 RUE DU MUGUET', '57570', 'BOUST', '0382531990', ''),
(27, 27, 'VALKRYBOIS', '10 LA CHAUSSÉE ', '54540', 'SAINTE-POLE', '0383741645', ''),
(28, 28, 'SYNDICAT DES EXPL FORESTIERS,SCIEURS ET INDUSTRIELS DU BOIS -REGION ACAL', 'ZAC DE LA MACOTTE - 17 RUE JEANNE D ARC', '55200', 'VIGNOT', '0686688438', ''),
(29, 29, 'SAS LEROY NEGOCE', '5 avenue du 21 eme bcp', '88110', 'RAON L ETAPE', '0680683639', ''),
(30, 30, 'S.E.F.E.', 'RUE DU MOULIN', '51520', 'SAINT-MARTIN SUR LE PRÉ', '0326709533', ''),
(31, 31, 'Henri Gérard et fils', '3 RUE SAINT GERMAIN', '55210', 'HEUDICOURT-SOUS-LES COTES', '0329893266', ''),
(32, 32, 'TRANSEST BOIS SARL', '92 ROUTE D ASPACH ', '68800', 'VIEUX-THANN', '0389373410', ''),
(33, 33, 'Frédéric Watrin', '26 CHEMIN DE LA FOURCHE', '55320', 'DIEUE-SUR MEUSE', '0607731521', ''),
(34, 34, 'SAS CHAMPION ANDRE', '67 RUE DU CHEMIN DE CHALONS ', '51800', 'VILLERS-EN-ARGONNE', '03 26 60 35 16', ''),
(35, 35, 'STE FORESTIERE DE L ORIENT', '10 ROUTE DE PINEY ', '10140', ' VENDEUVRE SUR BARSE', '0685219108', ''),
(36, 36, 'GF DE SAINT LOUIS', '41 AVENUE GAMBETTA', '92928', 'LA DEFENCE', '0609359157', 'Recu le  24/05/18'),
(37, 37, 'COMITE DES FORETS', '46 RUE PIERRE FONTAINE', '75009', 'PARIS', '01 48 74 31 40', 'Recu le  30/05/18'),
(38, 38, 'SFGO ( SOCIETE FORESTIERE DU GRAND OUEST )', 'LA CROIX ROUGE', '22230', 'TREMOREL', '06 83 99 71 10', 'Recu le  31/05/18'),
(39, 39, 'TRANSFER INTERNATIONAL', 'EUROPE BUILDING - QUAI DE L EUROPE', '76051', 'LE HAVRE CEDEX', '06 08 58 51 22', ''),
(40, 40, 'SARL FD FOR EST', '35 RUE DE LA GARE ', '57420', 'POMMERIEUX', '06 81 56 75 23', 'Recu le  18/06/18'),
(41, 41, 'TIMTRADE SARL', '17 RUE DAVAL', '75011', 'PARIS', '0607662681', 'Recu le  25/06/18'),
(42, 42, 'EXPLOITATIONS FORESTIERES HONORE', '46 RUE DU MONTOIR', '02380', 'COUCY LE CHÂTEAU', '06 07 37 86 77 / 03 23 52 70 01', 'Recu le 11/07/18'),
(43, 43, 'SAS SUD ABIES', '10 RUE CAMBOS', '81100', 'CASTRES', '05 63 62 65 55', 'Recu le  12/07/18'),
(44, 44, 'SAS THERY', '2 RUE DES TILLEULS ', '70190', 'CIREY', '03 84 91 93 35', 'Recu le  20/06/18'),
(45, 45, 'SARL DELANGLE JEAN JACQUES', 'BOIS DE LA ROCHE ', '71800', 'SAINT SYMPHORIEN DES BOIS', '06 08 61 24 44', 'Recu le 24/06/18'),
(46, 46, 'SAS BRULAT BOIS SERVICE', '242 LE GRAND FAHYS', '70220', 'FOUGEROLLES', '0384495764', 'Recu le  23/06/18'),
(47, 47, 'SAS DAHURON', '5 CHEMIN DE JONCHERAY', '72300', 'NOTRE DAME DU PE', '0680077508', 'Recu le 29/06/18'),
(48, 48, 'ETS PHAN ET BOIS', '13 RUE DU BMX1', '68290', 'DOLLEREN', '06 08 54 32 85', 'Recu le 14/08/18'),
(49, 49, 'SARL LNSB', '20 ROUTE DE CROISIL', '59145', 'SASSEGNIES', '0607812766', ''),
(50, 50, 'SARL DESACHY', '3 RUE ROGER SALENGRO', '02600', 'VILLERS COTTERETS', '06 08 71 34 92', ''),
(51, 51, 'LOCATELLI SAS', '12 AVENUE DU PRESIDENT KENNEDY ', '59610', 'FOURMIES', '0680991631', ''),
(52, 52, 'BOUSSEMART SAS', '256 RUE DES DRUMETZ', '59230', 'SAINT AMAND LES EAUX', '0684754074', ''),
(53, 53, 'DEQUECKER EXPLOITATION', 'COYOLLES - RUE DE QUEUE D HAM - BP 51', '02604', 'VILLERS-COTTERETS CEDEX', '0608168440', ''),
(54, 54, 'SARL YALCIN', '9 BIS RUE DE LA LIBERATION', '02600', 'VILLERS COTTERETS', '0642472670', ''),
(55, 55, 'D P EL BOSQUE', '34 RUE ANDRE BONVALET - HAMEAU DE CHAFOSSE', '02600', 'SAINT PIERRE AIGLE', '0323558570', ''),
(56, 56, 'EFL - EXPL FORESTIERE  LAONNOISE', '21 GRANDE RUE', '02840', 'PARFONDRU', '0323229693', ''),
(57, 57, 'SARL CROZAT FRERES', 'Inconnue', '02470', 'NEUILLY SAINT FRONT', '0323710234', ''),
(58, 58, 'SYLVEXPORT', '78 AVENUE RAYMOND POINCARÉ', '75116', 'PARIS', '06 08 27 08 81', ''),
(59, 59, 'SEFC', '55 RUE ESCUDIER', '92100', 'BOULOGNE BILLANCOURT', '01 71 54 71 35', ''),
(60, 60, 'FORESTIERE DE ROISSY', '3 BIS RUE DES NOYERS', '77220', 'LIVERDY EN BRIE', '0781190910', ''),
(61, 61, 'AAN ( ASSISTANCE ANTI NUISIBLES )', '21 bis RUE D HENNEMONT ', '78100', 'SAINT GERMAIN EN LAYE', '06 44 11 96 06', ''),
(62, 62, 'PARQUET NATURE FRANCE SARL', '30 AVENUE GALLIENI ', '94100', 'SAINT MAUR DES FOSSES', '06 20 83 26 63', ''),
(63, 63, 'FORET JARDIN MA PASSION', '16 RUE DES CLOS', '78550', 'GRESSEY', '0678098394', ''),
(64, 64, 'INDIVISION GAUTIER LA TRILLE FORETS', '79 RUE FONDARY', '75015', 'PARIS', '0607091462', ''),
(65, 65, 'TRAVAUX FORESTIERS BENARD', '1 BIS CHEMIN DE LA CLICHE', '51530', 'PIERRY', '03 26 54 99 21', ''),
(66, 66, 'TRANSPORTS MATHIEU JOSE ', '3 RUE HAUTE ST PRIX', '51270', 'ORBAIS L ABBAYE', '0326592480', ''),
(67, 67, 'BINDER CHRISTOPHE SARL', '7 RUE DE FRENZ', '68820', 'KRUTH', '0681447638', ''),
(68, 68, 'EURL Remy Lionel', '19 ALLEE DES BANGARDS ', '54600', ' VILLIERS-LÈS-NANCY', '0383326331', ''),
(69, 69, 'Ernest et fils', '7 RUE ANDRÉ BASTIDE', '08250', 'GRANDPRÉ', '0324309047', ''),
(70, 70, 'SARL OPTIBOIS', '47 RUE DE NOUZONVILLE', '08200', 'CHARLEVILLE MEZIERES', 'Inconnue', ''),
(71, 71, 'SARL HALBARDIER', '6 RUE FONTENELLE', '08250', 'SENUC', '03 24 30 90  45', ''),
(72, 72, 'EBPE', '11 ROUTE NATIONALE', '54380', 'SAIZERAIS', 'Inconnue', ''),
(73, 73, 'SARL PHILIBOIS', '3 les trayes', '88370', 'BELLEFONTAINE', 'Inconnue', ''),
(74, 74, 'SARL Lanz', '1 RUE DE L EUROPE', '88130', 'ESSEGNEY', '0329388255', ''),
(75, 75, 'SARL PATRICK MANGIN', '3 RUE DES GROS PRES', '54300', 'MARAINVILLER', 'Inconnue', ''),
(76, 76, 'MR SERGE RICHL', '1 BIS RUE DU CIMETIERE', '55100', 'CHARNY SUR MEUSE', 'Inconnue', ''),
(77, 77, 'FRANTZ BOIS', '21 RUE DE BETTBORN', '57930', 'HELLERING LES FENETRANGE', '0387078030', ''),
(78, 78, 'DSHWOOD France', '45 RUE DE L ALMA', '69400', 'VILLEFRANCHE S/SAONE', '0643070643', ''),
(79, 79, 'LEGNOBOIS SAS', '388 CHEMIN DE LA RAVOIRE', '74190', 'PASSY', '0634457786', ''),
(80, 80, 'LOGIYONNE', 'Port de gron - 1 rue du port au vin', '89100', 'GRON', '0778041033', ''),
(81, 81, 'SARL BOIS TRANSPORTS ANTOINE', '12 RUE DU BOURSET', '70200', 'MALBOUHANS', '03 84 20 02 50', ''),
(82, 82, 'PLANETE BOIS OPTIMUM (PBO)', '2 RUE GABRIEL MONOD', '76600', 'LE HAVRE', '0645623523', ''),
(83, 83, 'SARL JOUEN', '27 RUE DE PARIS', '27460', 'IGOVILLE', '0684490825', ''),
(84, 84, 'VOISIN ERIC, ARTISAN TRAVAUX FORESTIER', '1 rue de la hungerie', '27330', 'CHAMPIGNOLLES', '0675012782', ''),
(85, 85, 'ALAIN DELAPLACE', '34 IMPASSE POMMEREVAL', '76270', 'BULLY', '02 35 932765', ''),
(86, 86, 'SOVALEF ( STE VALORISATION EXPL FORET )', 'LE BUISSON', '61380', 'MAHERU', '01 34 86 13 18', ''),
(87, 87, 'ABATTAGE FORESTIER PIERRICK GARNIER', '17 RUE DE LA SIENNE', '50800', 'SAINTE CECILE', '0663946899', ''),
(88, 88, 'SARL CAUCHY', '8 RUE DU COLOMBIER', '76560', 'HERICOURT EN CAUX', '06 16 66 38 89', ''),
(89, 89, 'PATUREL  SARL', 'TECHNOPARC DES BOSQUETS - 75 ALLEE PAUL LANGEVIN - immeuble dulong', '76230', 'BOIS-GUILLAUME', '02 35 12 55 99', ''),
(90, 90, 'SAS LEGRAND', '900 RUE DE LA LIBERATION', '76940', 'LA MAILLERAY SUR SEINE', '0235371218', ''),
(91, 91, 'SARL LA FORESTIERE DE ST LAURENT', '210 CHEMIN DES CLOS', '27500', 'CORNEVILLE SUR RISLE', '0232415809', ''),
(92, 92, 'EXPLOITATION FORESTIERE POUPLIER', '3 AVENUE DE SEROUX', '27140', 'GISORS', '0623886357', ''),
(93, 93, 'SCHLUMBERGER EXPLOITATION FORESTIERE', 'LIEU DIT ROUGEMONT', '61190', 'CHAMPS', '0680679579', ''),
(94, 94, 'LOGISTIQUE CONSEILS SERVICES', '136 RUE VICTOR HUGO', '76600', 'LE HAVRE', '02 32 74 36 70', ''),
(95, 95, 'LESEIGNEUR ERIC', '6 IMPASSE LA MARE DUBOC', '27350', 'ROUGEMONTIER', '02 32 57 53 47', ''),
(96, 96, 'PULVERISATION EXPORT SAS', '11 BOULEVARD  MARITIME', '50270', 'BARNEVILLE', '02 33 04 18 80', ''),
(97, 97, 'SARL GAYLORD PIGEON', 'LA PECHERIE', '61400', 'COURGEON', '0680037205', ''),
(98, 98, 'V & WOOD', 'PARC TECHNOLOGIQUE DE SOYE - 15 RUE DE GALILEE', '56270', 'PLOEMER', '0660400042', ''),
(99, 99, 'SEFC CORMIER', '1 RUE DE LA PLANTE', '44660', 'SOULVACHE', '0676457871', ''),
(100, 100, 'EURL CHRISTOPHE LEROUX BOIS', 'LE BOURG DE SAINT FRAIMBAULT - 12 RUE BEL AIR ', '53110', 'LASSAY LES CHATEAUX', '07 25 64 61 05', ''),
(101, 101, 'SARL MENARD PERE ET FILS', 'ROUTE DU MANS', '53960', 'BONCHAMP LES LAVAL', '02 43 53 69 53', ''),
(102, 102, 'GF DES BOIS DE L ARGOAT', '3 BIS RUE DES CARMELITES', '22200', 'GUINGAMP', '06 07 58 84 27', ''),
(103, 103, 'GROUPEMENT FORESTIER DE BOURBEROUGE', 'LA MOTTE ', '53250', 'MADRE', '06 84 96 16 19', ''),
(104, 104, 'TRANS NEGOCE BOIS', 'LA CROIX ROUGE', '22230', 'TREMOREL', '0674713682', ''),
(105, 105, 'E.B.F. ( EXPLOITATION BOIS ET FORETS )', 'LA PEUPLERAIS - 4  LE VAL ', '35150', 'AMANLIS', '0648604367', ''),
(106, 106, 'ETS AGROUARCH (TF )', 'la lande au prince', '44530', 'GUENROUET', '006 20 47 16 12', ''),
(107, 107, 'EIRL BOIS ET FORETS/  PRESIDENT DE LANATEF', '155 L ISLE', '44390', 'NORT SUR ERDRE', '0618594728', ''),
(108, 108, 'ALLIANCE BOIS FORETS', '10 RUE GABRIEL LELONG', '28000', 'CHARTRES', '0645573524', ''),
(109, 109, 'SARL BERNAUD BOIS', 'LES PETITES LANDES', '72510', ' MANSIGNÉ', '0243461696', ''),
(110, 110, 'ETS GIRARD DAUDE', '27 RUE DE LA CROIX DES BORDES //(NEW  449 ROUTE DE CANDÉ  41120 LES MONTILS)', '41400', 'PONTLEVOY', '0607378680', ''),
(111, 111, 'SARL BILOTTA BOIS FORETS', '2 RUE JEAN SEGUREL', '19200', 'USSEL', '0555729442', ''),
(112, 112, 'TONNELLERIE LUDONNAISE ', '99 RUE LAFONT - LUDON MEDOC', '33290', 'BLANQUEFORT CEDEX', '0680124939', ''),
(113, 113, 'BFG SARL/ BOIS FRANCOIS GAASCH', '29 RUE DE Luxembourg', '3392-L', 'ROEDGEN /Luxembourg', '000 352 811 261', ''),
(114, 114, 'SUD GIRONDE FORET', '8 BIS PLACE DE L EGLISE ', '33125', 'SAINT-MAGNE', '06 86 72 51 81', ''),
(115, 115, 'ARGEFO', '8 BIS PLACE DE L EGLISE ', '33125', 'SAINT-MAGNE', '06 86 72 51 81', ''),
(116, 116, 'SARL SUJOBERT', '7 ROUTE DE CITEAUX', '21250', 'BONNENCONTRE', '06 87 20 84 17', ''),
(117, 117, 'SARL ETS CHADELAT', '32 AVENUE DE LA REPUBLIQUE', '15100', 'SAINT FLOUR', '06 85 53 06 97', ''),
(118, 118, 'OPTIFOR', '23 AVENUE DE LA REPUBLIQUE', '33730', 'PRECHAC', '06 32 15 17 57', ''),
(119, 119, 'SARL SO GO BOIS', 'AU BEAU PUY', '16360', 'CHANTILLAC', '05 45 78 47 64 ', ''),
(120, 120, 'MINVIELLE PATRICK EXPLOITATION FORESTIERE', 'Inconnue', '64390', 'OSSERAIN', '06 15 17 92 99 ', ''),
(121, 121, 'PROBOIS 43', 'AVENUE DE LA BROUSSILLONNE', '43200', 'YSSINGEAUX', '0679426085', ''),
(122, 122, 'ETS GUIGNARD ET FILS', '22 RUE DE MOULIERE CHARASSE', '86360', 'MONTAMISE', '0611307070', ''),
(123, 123, 'SARL GUILMIN', 'ZA DE BOUTHIRY - LE SAINT', '56110', 'GOURIN', '0607639978', ''),
(124, 124, 'CANADELL SAS ', 'ROUTE DE TARBES -', '65220', 'TRIE SUR BAISE', '0344271458', ''),
(125, 125, 'SYLVAIN PLUBEL', '13  RUE DE LA COUTELLERIE', '52200', ' LANGRES', '0325886021', ''),
(126, 126, 'CESSE ET FILS', '3 ROUTE ST GERMAIN', '72130', 'SAINT OUEN DE MIMBRE', '0680094838', ''),
(127, 127, 'CEVIK KAMBER', 'LA HERPINIERE', '61400', 'FEINGS', '0687716549', ''),
(128, 128, 'ETS DEROU', '7 LA BEAUMONDERIE', '50290', 'BREVILLE SUR MER', '0618006154', ''),
(129, 129, 'ETS FRONT', 'LD LA BORDERIE', '72600', 'VILLENEUVE EN PERSEIGNE', '0608319157', ''),
(130, 130, 'LEROULEY', 'ZONE INDUSTRIEL', '14330', ' LE MOLAY LITTRY', '0615454368', ''),
(131, 131, 'SARL HEMERY', 'GRANDE RUE', '27670', 'BOSNORMAND', '0674155004', ''),
(132, 132, 'SCIERIES DU MAINE', 'ROUTE D ARGENTRE ', '53960', 'BONCHAMP LES LAVAL', '0243530235', ''),
(133, 133, 'ETS ETIENNE COQUIN', '15 ROUTE DE CESSEVILLE', '27110', 'HECTOMARE', '0621195715', ''),
(134, 134, 'ETS ABN', 'Inconnue', 'Inconnue', 'Inconnue', '0685137878', ''),
(135, 135, 'SARL BRAY PERE ET FILS', 'LA PETITE JARRONNEE', '10160', 'BERULLE', '0325467863', ''),
(136, 136, 'NUTZ BOIS', '8 RUE DE L HOTEL DE VILLE', '10170', 'MERY SUR SEINE', '0325212091', ''),
(137, 137, 'SARL RICHARD', 'FERME DE SIGNAL - ', '10110', ' LOCHES SUR OURCE', '0631132591', ''),
(138, 138, 'FLORIAN DORE', '3 IMPASSE NOUE DU MOULIN', '10390', ' CLEREY', '0627241841', ''),
(139, 139, 'LALLEMENT FRERES', '46 RUE D EPINEUSE VAL - VILLIERS AUX BOIS', '52130', 'TROISFONTAINE LA VILLE', '0685775564', ''),
(140, 140, 'ETS PATRICK SCOTTEZ', '7 CHEMIN DES Français', '59740', 'FELLERIES', '06 21 94 22 95', ''),
(141, 141, 'LANDA JOSÉ', 'RUE DU  GAZOMETRE', '59132', 'TRELON', '03 27 59 73 19', ''),
(142, 142, 'EUROWOOD', '21 GRAND PLACE', '62000', 'ARRAS', 'Inconnue', ''),
(143, 143, 'SOCIETE FOREST VALLEE OISE', '1 IMPASSE DE ROCOURT', '02760', 'FRANCILLY SELENCY', '0323096375', ''),
(144, 144, 'SOTRANSBOIS', '2475 route de fumay', '08230', 'GUE D HOSSUS', '0324542266', ''),
(145, 145, 'BOIS ET SCIAGES SARL', '165 RUE GARE', '59144', 'GOMMEGNIES', '0327499999', ''),
(146, 146, 'SELEG', 'Inconnue', '59570', 'SAINT WAAST LA VALEE', 'Inconnue', ''),
(147, 147, 'SARL EXP F.T SYLVAIN LOTTIN', '7 RUE DE  BELLEVUE', '02500', 'LEUZE', '0607972475', ''),
(148, 148, 'Ciolli Frères', '34 ROUTE DE SEICHEPREY FOND DE LA VAU', '54470', 'BEAUMONT', '0383231264', ''),
(149, 149, 'SARL Piskorski et fils', '8 AVENUE DE VERDUN', '55110', 'BRIEULLES -SUR-MEUSE', '0329808090', ''),
(150, 150, 'INTER BOIS LORRAIN', '6 ROUTE DE LIGNY EN BARROIS', '55500', 'MENIL SUR SAULX', '0329786135', ''),
(151, 151, 'SCIAGES ET MAT C', 'ROUTE DU CHESNOIS', '54800', ' BRAINVILLE', '0382338475', ''),
(152, 152, 'Inconnue', 'Inconnue', 'Inconnue', 'Inconnue', 'Inconnue', ''),
(153, 153, 'Inconnue', 'Inconnue', 'Inconnue', 'Inconnue', 'Inconnue', ''),
(154, 154, 'Inconnue', 'Inconnue', 'Inconnue', 'Inconnue', 'Inconnue', ''),
(155, 155, 'SYLVARGONNE', '9 RUE EUGENE DELACROIX', '51330', ' GIVRY EN ARGONNE', '03 26 60 00 18', ''),
(156, 156, 'ECB NOTA', '26 GRANDE RUE', '51320', ' ST OUEN DOMPROT', 'Inconnue', ''),
(157, 157, 'SARL RICHARD', '59 RUE DU MARECHAL LECLERC', '51340', 'MAURUPT LE MONTOIS', '0326730694', ''),
(158, 158, 'EXPL FORST KARAKOC SALIM', '12 RUE DU CANAL MEZIRE', '90120', 'MORVILLARS', '0608269203', ''),
(159, 159, 'OLIVIER ALLARD', '16 RUE DU CHAMPS DES TAILLIS', '60500', 'SAINT-PAUL', 'Inconnue', ''),
(160, 160, 'EURL BOIS ET FORET DE L ANDELLE', '103 ROUTE DE L ESSARD', '27380', 'DOUVILLE SUR ANDELLE', '0617374192', ''),
(161, 161, 'ALAIN DELAPLACE', '34 IMPASSE POMMEREVAL', '76270', 'BULLY', '0681868789', ''),
(162, 162, 'ETS DELAVAUX BENOIT', 'LES GRANDES DALLES', '14490', ' PLANQUERY', '0607190447', ''),
(163, 163, 'EXA BOIS SARL', 'LA VALMIERE', '61210', 'MENIL HERMEI', 'Inconnue', ''),
(164, 164, 'PHILIPPE LECERF', '8 RUE  CORBLIN', '76320', 'CAUDEBEC EN CAUX', '0235876150', ''),
(165, 165, 'SARL LEJEUNE', '2 CHEMIN DU FOSSE SES ROIS', '76390', 'RONCHOIS', '0674842309', ''),
(166, 166, 'PREVOST DIDIER', '520 LE MAUPAS', '76480', 'DUCLAIR', '0235370288', ''),
(167, 167, 'KUSTER SARL', 'Inconnue', 'Inconnue', 'Inconnue', '0623946165', ''),
(168, 168, 'QUESNEL LAURENT', 'Inconnue', 'Inconnue', 'Inconnue', '0620467951', ''),
(169, 169, 'BOUDIN LAURENT', 'Inconnue', '80880', 'ST QUENTIN LA  MOTTE', '0608930731', ''),
(170, 170, 'SARL PROLOGS', '52 RUE LEPREVOST BEAUMONT', '27300', 'BERNAY', '0232442795', ''),
(171, 171, 'ETS SANNIER', '7 RUE DU LIEUTENANT  MASQUENEL', '76270', 'SAINT GERMAIN SUR EAULNE', '0235931107', ''),
(172, 172, 'EURL ETFN', '364 ROUTE DE NEUFBOSC', '76190', 'BLACQUEVILLE', '06 50 64 19 92 ', ''),
(173, 173, 'SARL TFM', 'ROUTE D ORMOY LE DAVIEN', '60117', 'GONDREVILLE', '0344885229', ''),
(174, 174, 'SARL  E.F.C.', '5 RUE DU BUISSON', '77760', 'VILLERS SOUS GRETZ', '0164242551', ''),
(175, 175, 'SARL WOODSTOCK', '15 AVENUE DE POURPRIX - LA GARE', '45220', ' ST GERMAIN DES PRES', '0238946740', ''),
(176, 176, 'MICHEL DE VASSELOT', '46 RUE PIERRE FONTAINE', '75009', 'PARIS', '0687173049', ''),
(177, 177, 'SOCIETE IMMOBILIERE DE L OUEST', 'PAVILLON DE LA FORET', '35130', 'RANNEE', '02 99 96 31 67', ''),
(178, 178, 'GF DU MONT D HART', '46 RUE PIERRE FONTAINE', '75009', 'PARIS', '0148747438', ''),
(179, 179, 'GF D ARAIZE', '46 RUE PIERRE FONTAINE', '75009', 'PARIS', '0148747439', ''),
(180, 180, 'GF DU BOIS DES 3 CHENES & DE DROIZELLES', '3 RUE DU MOULIN DROIZELLES ', '60440', 'VERSIGNY', '06 07 70 84 06', ''),
(181, 181, 'FORESTIERE BOIS 28', '4 RUE CANAUX', '28190', 'COURVILLE SUR EURE', '0237238265', ''),
(182, 182, 'SARL MERRANDERIE', '4 RUE DES MARES', '71270', 'POURLANS', '0616281588', ''),
(183, 183, 'ETS PEREIRA ET FILS', '28 RUE DU DESSOUS', '02300', 'MANICAMP', '0607122343', ''),
(184, 184, 'SYLCOBOIS', '102 RUE DE CRENANS', '01140', 'THOISSEY', '0683790339', ''),
(185, 185, 'COLLOT GABRIEL', '121 LA PEROUZE', '01350', 'LAVOURS', '0479421657', ''),
(186, 186, 'COMPAGNIE FORESTIERE DU HAUT BUGEY ', '14 DERRIERE LA CHAPELLE', '01430', 'SAINT-MARTIN-DU-FRENE', '0474765096', ''),
(187, 187, 'FRED O BOIS', '425 ROUTE  DE DANCIA', '01250', 'MONTAGNAT', '04 74 51 70 64', ''),
(188, 188, 'GUILLUMMETTE BENOIT', '8 RUE MALVOISINE', '02300', 'BEAUMONT-EN-BEINE', '03 23 39 64 22', ''),
(189, 189, 'ALLIOT FRANCK', '12 RUE DU 8 MAI 1945', '02630', 'WASSIGNY', '03 23 60 62 05', ''),
(190, 190, 'BRASSET XAVIER SARL', '3 RUE DE LA MAIRIE', '02880', 'CROUY', '06 82 16 65 54', ''),
(191, 191, 'COMPAGNIE LAW SARL', 'CHÂTEAU DE FRIERES', '02700', 'TERGNIER', '0323525435', ''),
(192, 192, 'DELACHAMBRE SARL', '35 RUE DES BŒUFS', '02140', 'HAUTION', '0686941385', ''),
(193, 193, 'JACQUELIN FRANCK', '17 CHEMIN DE LA PATTE D OIE', '02300', 'BEAUMONT-EN-BEINE', '0670706932', ''),
(194, 194, 'LAMBERT', '38 BIS ROUTE NATIONALE', '02350', 'LIESSE-NOTRE-DAME', '03 23 22 03 74', ''),
(195, 195, 'LANZIBOIS EURL', '35 ROUTE DE DALLON', '02100', 'SAINT-QUENTIN', '0983011915', ''),
(196, 196, 'STE EXPLOITATION FORESTIER DE CHAMPS', '29 RUE JEAN JAURES', '02670', 'CHAMPS', '0323388339', ''),
(197, 197, 'STE FORESTIERE DE LA VALLEE DE L OISE', '11 IMPASSE DE ROCOURT', '02760', 'HOLNON', '0608771203', ''),
(198, 198, 'THOUANT SARL', '14 RUE PRINCIPALE', '02350', 'LIESSE-NOTRE-DAME', '0685714376', ''),
(199, 199, 'LINDRON SARL', 'ROUTE DE MONTLUCON BP 26', '03390', 'MONTMARAULT', '0685437035', ''),
(200, 200, 'OUDOT RONDEAU', '7 RUE DU CHAMP LONG', '03110', 'NERIS-LES-BAINS', 'Inconnue', ''),
(201, 201, 'ETS DOMINIQUE MONFROY', 'CHEMIN DE LA HAUTE HAYETTE', '08090', 'AIGLEMONT', '0324592284', ''),
(202, 202, 'COLLET FRANCOIS', 'RUE LALOBBE', '09460', 'LE PLA', '0670655573', ''),
(203, 203, 'FEDELE BOIS', '1 RUE DU PORT', '08400', 'AURE', '0680104461', ''),
(204, 204, 'GRANCHER JULIEN', '1 RUE DE BELLEVOLLEE', '08450', 'OMICOURT', '06 31 50 42 87', ''),
(205, 205, 'LC BOIS', '12 RUE ANATOLE France', '08270', 'WIGNICOURT', '06 15 36 27 82', ''),
(206, 206, 'MARCHAND PHILIPPE', '3 RUE NOIZET', '08300', 'RETHEL', '0324755699', ''),
(207, 207, 'MARTIN JEAN FRANCOIS', '19 RUE DES PEUPLIERS', '08110', 'CARIGNAN', '0324222400', ''),
(208, 208, 'SOGEFA SARL', 'LA PLATINERIE - 35 RN', '08140', 'BAZEILLES', '0324263000', ''),
(209, 209, 'BOISSON ENTREPRISE', 'ROUTE DE SOUVIGNE', '16140', 'LES GOURS', '0545317133', ''),
(210, 210, 'SARL RIBEIRO ET FILS', '85 AVENUE DU THEIL ', '19200', 'USSEL', '06 73 39 90 04', ''),
(211, 211, 'COUTURIER FRANCOIS', 'LA LOZE', '23000', 'GUERET', '05 55 51 03 54', ''),
(212, 212, 'LC BOIS', '4 PLACE DU DS COUDERE ', '23150', 'SAINT-MARTIAL-LE-MONT', '06 88 94 23 97', ''),
(213, 213, 'SEBSO ( STE EXPLOITATION BOIS DU SUD OUEST )', 'RUE PRESIDENT SARRAGAT BP 99', '31802', 'SAINT-GAUDENS', '05 61 94 76 28 ', ''),
(214, 214, 'BRUNET PASCAL', '8 RUE BASSE DU MOUHET', '36400', 'LA CHATRE', '06 99 27 14 10', ''),
(215, 215, 'LEJEUNE JC SARL', '291 ROUTE DE GLAUDE', '40090', 'BOUGUE', '06 16 86 72 99', ''),
(216, 216, 'EN-TRA-FO', '30 RUE MAGDELEINE', '41300', 'SALBRIS', 'Inconnue', ''),
(217, 217, 'SIGMA BOIS', '1 ROUTE DE FOUGERE', '41120', 'CANDE-SUR-BEUVRON', '06 87 03 46 00', ''),
(218, 218, 'FESSY JEAN LUC ', 'PIERRAGOT', '42470', 'NEAUX', '06 85 94 37 70', ''),
(219, 219, 'GUICHARD FRANCOIS', 'LIEU DIT MONICHARD', '42570', 'SAINT LAURENT DE LA SALANQUE', '09 74 76 66 02', ''),
(220, 220, 'MULLER PETR', '56 BIS AVENUE DE GAFFARD', '42500', 'CHAMBON-FEUGEROLLES', '09 54 93 05 32', ''),
(221, 221, 'NOES BOIS', 'MARYMBE', '42370', 'RENAISON', '06 11 45 69 52', ''),
(222, 222, 'ROUX ALAIN', 'LIEU DIT PETITS MURCINS', '42370', 'RENAISON', '04 77 65 88 95', ''),
(223, 223, 'CASTANIE GOBBA SARL', 'LIEU DIT PAUTE', '43190', 'TENCE', '09 79 65 17 15', ''),
(224, 224, 'FORESTIERE LAURENT MUSSON', 'ZONE ACTIPARC DE JUMELLES', '49160', 'LONGUE-JUMELLES', '06 87 70 78 77', ''),
(225, 225, 'LEMEE CHRISTOPHE', 'EAU HAMEL', '50320', 'SAINT-JEAN-DES-CHAMPS', '02 33 90 67 58', ''),
(226, 226, 'POSTAIRE GERARD', '11 ROUTE DES BUTS DORES', '50360', 'BEUZEVILLE-LA-BASTILLE', '02 33 40 07 88', ''),
(227, 227, 'NORD EST BOIS', '15 RUE DES MIRACLES ', '51300', 'VITRY-LE-FRANCOIS', '06 88 74 88 68', ''),
(228, 228, 'BERTHE XAVIER', '55 RUE DES 15 ECUS', '52700', 'FORCEY', '06 08 64 07 58', ''),
(229, 229, 'FRANCO FABRICE', '1 RUE VIAOLOT ', '52500', 'FAYL-BILLOT', '06 07 15 11 27', ''),
(230, 230, 'COLIN BOIS BOURGOGNE', '1 RUE DE LA MAIRIE ', '58300', 'DECIZE', '03 86 77 17 40', ''),
(231, 231, 'DELAUNAY GILLES', 'LE BOURG', '61160', 'MONTREUIL-LA-CAMBE', '06 07 83 37 43', ''),
(232, 232, 'DESSAIGNE EXPLOITATION FORESTIERE', 'LIEU DIT SUARGUES', '63940', 'AUBERGE LE PISE', '04 73 95 69 42', ''),
(233, 233, 'COUILLARD PHILIPPE', 'LA RENAUDIERE', '72330', 'CERANS FOULLETOURTE', '02 43 87 40 74', ''),
(234, 234, 'FORESTIERE DU LOIR', 'LA COURBE', '72650', 'SAINT-SATURNIN', '02 43 25 41 75', ''),
(235, 235, 'ROSSET-CAILLER ROLAND SARL', '477 CHEMIN DE LA BAUDE', '73360', 'LES ECHELLES', '04 79 36 65 40', ''),
(236, 236, 'BELLAVOINE JEAN MICHEL', '46 RUE DU PETIT MARAIS', '80100', 'ABBEVILLE', '03 22 24 65 79', ''),
(237, 237, 'BOIS DU SANTERRE', '19 RUE DU HAUT', '80500', 'HARGICOURT', '03 22 78 14 73', ''),
(238, 238, 'PICARDIE FORET ENVIRONNEMENT', 'FERME DE TENFOL', '80310', 'SAINT-VAAST-EN-CHAUSSEE', '03 22 51 48 81', ''),
(239, 239, 'BICHON FRANCK', '14 PLACE DE LA BLAISERIE', '86000', 'POITIERS', '06 22 28 28 61', ''),
(240, 240, 'SARL HERNANDEZ ', '6 ROUTE DE VILLENEUVE', '89500', 'VILLENEUVE-SUR-YONNE', '03 86 87 07 29', ''),
(241, 241, 'SARL EXTRAF', '57 RUE DE PARIS', '91570', 'BIEVRES', '01 60 19 20 46', ''),
(242, 242, 'LEVASSEUR YVES', '1 RUE COTE BIJIN', '08250', 'MOURON', '0324711528', ''),
(243, 243, 'BEURET ALAIN', '14 LIEU DIT ROGIVILLE', '08460', 'SIGNY-L ABBAYE', '06 89 45 55 28', ''),
(244, 244, 'LATHUILLIERE SARL', 'LIEU-DIT ROCHES', '01350', 'LAVOURS', '04 79 87 91 27', ''),
(245, 245, 'BUFFAULT JOEL', 'LIEU DIT VILLETTE', '03360', 'LETELON', '04 70 06 96 93', ''),
(246, 246, 'DECLOITRE MICHEL', 'EPALLE', '03250', 'LE MAYET-DE-MONTAGNE', '0470564010', ''),
(247, 247, 'DICHAMP PAUL', '28 CHEMIN ALLIER', '03270', 'SAINT-YORRE', '0470592373', ''),
(248, 248, 'ROCHE JACQUES-OLIVIER', 'MOULIN MAGNET', '03250', 'LE MAYET-DE-MONTAGNE', '0470597220', ''),
(249, 249, 'BAREIRO FRANCISCO', 'SAINTE MARIE', '31510', 'BARBAZAN', '05 61 95 77 28', '');

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
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `representant`
--

INSERT INTO `representant` (`id_representant`, `nom`, `prenom`, `email`) VALUES
(1, 'CAILLOUEL', 'DAVID  ', 'sonorbois@orange.fr'),
(2, 'MOLA', 'CHARLIE ', 'btai@wanadoo.fr'),
(3, 'BOURGINE', 'BRUNO ', 'forestiere.bourgine@orange.fr'),
(4, 'BELLEE', 'SAMUEL  ', 'luc.gautier3@wanadoo.fr'),
(5, 'RICHARD', 'CHARLES ', 'boismarnand@orange.fr'),
(6, 'MIOTTE', 'JEAN-MICHEL ', 'henri-miotte@orange.fr'),
(7, 'CAILLOUEL', 'DAVID ', 'tbe27@orange.fr'),
(8, 'HUBERT', 'DAVID', 'hubertforet@gmail.com'),
(9, 'BEDOUET', 'MR', 'sbedouet@aol.com'),
(10, 'IDELOT', 'ANTOINE ', 'idelot.ipf@orange.fr - idelotpereetfils@aol.com,'),
(11, 'DUPUIS', 'OLIVIER ', 'mcpexport@yahoo.fr'),
(12, 'SUEUR', 'CLAUDE ', 'sueur.expl-forestiere@wanadoo.fr'),
(13, 'EVRARD ', 'HERVE', 'herve.evrard0890@orange.fr'),
(14, 'SELECQUE', 'MICHAEL ', 'selecquemichael@aol.com'),
(15, 'NEY', 'JEAN-PIERRE', 'ney.jeanpierre@wanadoo.fr - ney.romain@gmail.com'),
(16, 'CREVOISIER', 'JEAN-CLAUDE ', 'PAS DE MAIL /PAS DE FAX'),
(17, 'FOURNIER', 'BRUNO ', 'fournier0918@orange.fr'),
(18, 'FAUCON', 'SAMUEL ', 'samuel.faucon@orange.fr'),
(19, 'LOPEZ ', 'JORDAN', 'lopezbois@hotmail.fr'),
(20, 'MEIJBOOM', 'MR', 'w.meijboom@forestservicefrance.com'),
(21, 'LEDENT', 'HERVE ', 'bois.herve.l@orange.fr'),
(22, 'VACANDAR', 'JEROME ', 'thymerais@wanadoo.fr - vft.jerome@orange.fr'),
(23, 'TALPIN', 'MR', 'nt.gstbois@gmail.com'),
(24, 'DELAPLACE', 'CHRISTOPHE  ', 'christophe.delaplace7@orange.fr'),
(25, 'MANGIN', 'DANY ', 'sarldanymangin@gmail.com'),
(26, 'STEPHAN', 'ROBERT', 'prescob.rs@gmail.com'),
(27, 'KRYZS', 'ERIC ', 'valkrybois@free.fr'),
(28, 'MANGIN', 'DANY ', 'sarldanymangin@gmail.com'),
(29, 'LEROY', 'MATHIEU ', 'leroy.mathieu@live.com'),
(30, 'LEPERE', 'ETIENNE', 'sefe@wanadoo.fr'),
(31, 'GERARD', 'PATRICK', 'sarlgerard.h@wanadoo.fr'),
(32, 'FABRIZI', 'JEAN-LUC', 'transest.bois@wanadoo.fr'),
(33, 'WATRIN', 'FREDERIC', 'fredwatrin@orange.fr'),
(34, 'CHAMPION', 'THIERRY ', 'champion.a@orange.fr'),
(35, 'RENAUT', 'JEAN-FRANCOIS', 'loicrenaut@orange.fr'),
(36, 'RAYER', 'BENOIT ', 'benoit.rayer@fiducial.net'),
(37, 'BALOT', 'FRANCOIS ', 'wendy.mooken@gmail.com'),
(38, ' HAENTJENS', 'SEBASTIEN', 'sfgo@gmx.fr'),
(39, 'LEGARS', 'CYRIL ', 'cyril.legars@transfer-int.com'),
(40, 'DIEUDONNE', 'FABRICE ', 'fd-for-est@orange.fr'),
(41, 'PUYGRENIER', 'ERIC ', 'timtrade@wanadoo.fr'),
(42, 'HONORE', 'BERNARD ', 'honore-bois@wanadoo.fr'),
(43, 'MASSON', 'JEAN LOUIS ', 'jean-louis.masson@sudabies.fr - contact@sudabies.fr'),
(44, 'THERY', 'ARNAUD ', 'thery.arnaud@wanadoo.fr'),
(45, ' DELANGLE', 'JEAN-JACQUES', 'jj.delangle@wanadoo.fr'),
(46, 'BRULAT', 'MR', 'ericbrulat@sfr.fr'),
(47, ' DAHURON', 'PHILIPPE', 'phdahuron@gmail.com'),
(48, 'PHAN', 'MME', 'contact@phanetbois.fr'),
(49, 'LIENARD', 'JEAN CHRISTOPHE ', 'jmkn@hotmail.fr'),
(50, ' DESACHY', 'MARC', 'marc.desachy@wanadoo.fr - marc.desachy@outlook.fr'),
(51, 'LOCATELLI', 'PHILIPPE ', 'sas.locatelli@orange.fr'),
(52, 'BOUSSEMART', 'HENRI ', 'henri-gerard.boussemart@orange.fr'),
(53, 'DEQUECKER', 'JEAN-CLAUDE ', 'dequecker.exploitation@celestemail.com,dequecker.ex@orange.fr'),
(54, 'CAMDEVIREN', 'AYSEL ', 'yalcin.camdeviren@gmail.com'),
(55, 'DHUICQUE', 'PASCAL ', 'dhuicque.pascal@orange.fr'),
(56, 'DEBLED', 'REMY  ', 'exploitation-forestiere-laonnoise@orange.fr'),
(57, 'CROZAT', 'PHILIPPE ', 'philippe.crozat@wanadoo.fr'),
(58, 'LELEU', 'PATRICK ', 'contact@sylvexport.fr'),
(59, 'PAINVIN', 'MR', 'sefc@woodsefc.com'),
(60, 'DEBRAY', 'ERIC ', 'debray-eric@wanadoo.fr'),
(61, 'MAURER', 'CEDRIC ', 'aan@live.fr'),
(62, 'YI', 'CHUANLIN ', 'yilinfrance@gmail.com'),
(63, 'POUPART', 'MR JEAN MICHEL ', 'foretjmp@orange.fr'),
(64, 'GAUTIER', 'JEAN-CLAUDE ', 'forouest@gmail.com'),
(65, 'HONORÉ ', 'BERNARD ', 'PAS DE MAIL'),
(66, ' JOSÉ', 'MATHIEU', 'transbois.51@wanadoo.fr'),
(67, 'BINDER', 'CHRISTOPHE ', 'binder.ch@orange.fr'),
(68, 'REMY ', 'LIONEL', 'eurl-remy-lionel@wanadoo.fr'),
(69, 'ERNEST', ' PATRICK', 'patrick.ernest@wanadoo.fr'),
(70, 'FRANCOIS', 'VINCENT ', 'vincentfrancois_1@hotmail.com'),
(71, 'HALBARDIER ', 'ERIC', 'halbardier.bois@wanadoo.fr'),
(72, 'PITOISET', 'BRUNO ', 'sarlebpe@gmail.com'),
(73, 'PERRIN', 'PHILIPPE ', 'philibois@orange.fr'),
(74, 'LANZ ', 'CHRISTOPHE', 'christophe.lanz@wanadoo.fr'),
(75, 'MANGIN', 'PATRICK ', 'manginpatr@wanadoo.fr'),
(76, 'RICHL', 'SERGE ', 'PAS DE MAIL'),
(77, 'FRANTZ', 'THIERRY ', 'frantz.bois@orange.fr'),
(78, ' ROY', 'DAVID', 'dr@dshwood.com'),
(79, 'FABRIZIO', 'DELL RE ', 'legnobois@alice.it'),
(80, 'BUQUETER ', 'DAVID ', 'contact@logiyonne.com'),
(81, 'Inconnue', 'ANTOINE', 'bois.transport.antoine@wanadoo.fr'),
(82, 'BOULEAU', 'PIERRE ', 'pbouleau@pbofrance.com'),
(83, ' JOUEN', 'ALDRIC', 'jouen@orange.fr'),
(84, 'VOISIN', 'ERIC ', 'PAS DE MAIL'),
(85, 'DELAPLACE', 'ALAIN ', 'christophe.delaplace7@orange.fr'),
(86, ' COTREUIL', 'ANTOINE', 'accotreuil@cegetel.net'),
(87, 'GARNIER ', 'PIERRICK', 'veroniquegarnier@yahoo.fr'),
(88, 'CAUCHY', 'EMMANUEL', 's-a-r-l.cauchy@wanadoo.fr'),
(89, ' DENAZELLE', 'BENOIT', 'nazelle.paturel@wanadoo.fr - accueil.paturel@wanadoo.fr'),
(90, 'LEGRAND', 'MR', 'saslegrand@wanadoo.fr'),
(91, 'MARAIS', 'DANIEL ', 'daniel.marais@cegetel.net'),
(92, ' POUPLIER', 'DAVID', 'davidpouplier@yahoo.fr'),
(93, 'SCHLUMBERGER', 'CHRISTIAN ', 'brigitte.schlumberger@orange.fr'),
(94, 'MASURIER', 'MICHEL ', 'lcs.michelm@orange.fr'),
(95, ' LESEIGNEUR', 'ERIC', 'lajojodu27@hotmail.fr'),
(96, ' DEMARET', 'JAMES', 'traitement@pulverisation-export.com'),
(97, 'GAYLORD', 'PIGEON ', 'gaylord.pigeon@orange.fr'),
(98, 'ROUAT', 'MR', 'venceslas.rouat@v-and-wood.com'),
(99, 'CORMIER', 'MARCEL ', 'marcel.cormier@wanadoo.fr'),
(100, ' LEROUX', 'CHRISTOPHE', 'clxbois@gmail.com'),
(101, 'MENARD', 'MR', 'sdm@scieriesdumaine.com'),
(102, 'ALLANIC', 'ANDRE ', 'andre.allanic@wanadoo.fr'),
(103, ' DE THIEULLOY', 'CHRISTIAN', 'beaisjt@yahoo.fr'),
(104, 'BEGOT', 'MR', 'f.begot@orange.fr'),
(105, 'PINAULT', 'PHILIPPE ', 'ebf.philippe@gmail.com'),
(106, ' ARGOUARCH', 'JEAN LUC', 'argouarch@wanadoo.fr'),
(107, 'BAREL', 'ANTHONY ', 'contact@gestionforestiere.fr'),
(108, 'LASSAUSSOIS', 'GILLES ', 'allianceboisetforets@orange.fr'),
(109, 'BERNAUD', 'MR', 'bernaud.francis@wanadoo.fr'),
(110, 'DAUDE', 'JEAN LOUIS ', 'jl.daude@girarddaude.com'),
(111, 'BILOTTA', 'JEAN ', 'boisforets@wanadoo.fr'),
(112, 'NADALIE', 'STEPHANE ', 'nadaliestephane@nadalie.fr'),
(113, 'GAASCH', 'FRANCOIS ', 'FAX : 00 352 810 124'),
(114, 'BAZIN', 'MICHEL ', 'mbazin@sudgirondeforet.com'),
(115, 'BAZIN', 'MICHEL ', 'mbazin@argefo.com'),
(116, 'SUJOBERT', 'LAURENT ', 'sarlsujobert@neuf.fr'),
(117, 'CHADELAS', 'GILLES ', 'gilles.chadelat@wanadoo.fr'),
(118, 'LABROUSSE', 'MR', 'optifor@orange.fr'),
(119, 'GOICHON', 'CLAUDE  ', 'nicole.goich@gmail.com'),
(120, 'MINVIELLE', 'PATRICK ', 'patrick.minviellebois@live.fr'),
(121, 'DURSAP', 'SEBASTIEN ', 'sebastien.dursap@wanadoo.fr - probois43@orange.fr'),
(122, 'GUIGNARD', 'YVES ', 'guignardyves.etsguignardetfils@sfr.fr'),
(123, 'GUILMIN', 'PATRICE ', 'patrice.guilmin@guilmin.com'),
(124, 'CANADELL', 'FREDERIC ', 'fcnadell@canadell.com'),
(125, 'PLUBEL', 'SYLVAIN ', 'info@plubel.com'),
(126, 'CESSE', 'MR', 'claude.cesse@wanadoo.fr'),
(127, 'CEVIK', 'KAMBER ', 'cevik.kamber@orange.fr'),
(128, 'MADELINE', 'MR', 'derou.bois@orange.fr'),
(129, 'FRONT', 'MR', 'front.patrick@orange.fr'),
(130, 'LEROULEY', 'MR', 'scierieplg@gmail.com'),
(131, 'HEMERY', 'MR', 'hemery.freres@orange.fr'),
(132, 'MENARD', 'MR', 'sdm@scieriesdumaine.com'),
(133, 'COQUIN', 'ETIENNE', 'etienne.coquin@sfr.fr'),
(134, 'MADELINE', 'MR', 'abnsarl14@orange.fr'),
(135, 'BRAY', 'JEAN PIERRE ', 'jean-pierre.bray@orange.fr'),
(136, 'PHILIPPE ', ' NUTZ', 'philippenutz@orange.fr'),
(137, 'RICHARD', 'MR', 'michael_richard2002@yahoo.fr'),
(138, ' DORE', 'FLORIAN', 'floriandore@hotmail.fr'),
(139, ' LALLEMENT', 'JEROME', 'agnes.alllement@orange.fr'),
(140, 'SCOTTEZ', 'PATRICK ', 'patrick.scottez@orange.fr'),
(141, 'LANDA', 'JOSÉ ', 'jose.landa@orange.fr'),
(142, 'DALLE', 'CHRISTOPHE ', 'Inconnue'),
(143, ' WALTER', 'THIERRY', 'Inconnue'),
(144, 'Inconnue', 'Inconnue', 'sarl.sotransbois@wanadoo.fr'),
(145, 'ROUSSEAU', 'MR', 'rousseaufrance@orange.fr'),
(146, 'LEFEBVRE', 'ERIC ', 'Inconnue'),
(147, 'LOTTIN', 'SYLVAIN ', 'sylvain.lottin800@orange.fr'),
(148, 'CIOLLI ', 'CHRISTOPHE', 'scierie.ciolli@wanadoo.fr'),
(149, 'PISKORSKI', 'JEAN-FRANCOIS', 'jean-francois@piskorski.fr'),
(150, 'MATHIEU ', 'MICHEL', 'interbois.mathieu@wanadoo.fr'),
(151, 'ORLANDO', 'ROBERT ', 'orlando.robert@wanadoo.fr'),
(152, 'Inconnue', 'Inconnue', 'jean.platat@wanadoo.fr'),
(153, 'Inconnue', 'Inconnue', 'contact@parmentier-freres.com'),
(154, 'Inconnue', 'Inconnue', 'deyvillers@wanadoo.fr'),
(155, 'Inconnue', 'Inconnue', 'sylvargonne@orange.fr'),
(156, ' LOTTA', 'JEAN MICHEL', 'ecb.nota@hotmail.com'),
(157, 'RICHARD', 'MR', 'sarl.richard.forestier@orange.fr'),
(158, 'KARAKOC', 'SALIM ', 'karakocsalim@gmail.com'),
(159, 'ALLARD', 'OLIVIER ', 's.godin60@laposte.net'),
(160, 'Inconnue', 'Inconnue', 'chris-27@hotmail.fr'),
(161, 'DELAPLACE', 'ALAIN ', 'Inconnue'),
(162, 'DELAVAUX', 'BENOIT ', 'Inconnue'),
(163, 'Inconnue', 'Inconnue', 'exabois0322@orange.fr'),
(164, 'LECERF', 'PHILIPPE ', 'Inconnue'),
(165, 'Inconnue', 'Inconnue', 'eloisequemin@acgee.com'),
(166, 'PREVOST', 'DIDIER ', 'didier.prevost5@wanadoo.fr'),
(167, 'Inconnue', 'Inconnue', 'Inconnue'),
(168, 'QUESNEL', 'LAURENT ', 'Inconnue'),
(169, 'BOUDIN', 'LAURENT ', 'verstraete76@wanadoo.fr'),
(170, 'Inconnue', 'Inconnue', 'bertrand-bonnafous@wanadoo.fr'),
(171, 'SANNIER', 'MR', 'PAR FAX 02 35 93 77 83'),
(172, 'LOZIER', 'DAMIEN ', 'etfn_eurl@orange.fr'),
(173, 'Inconnue', 'Inconnue', 't.f.m.michel@wanadoo.fr'),
(174, 'CERAUDO', 'MR', 'efc.ceraudo@gmail.com'),
(175, 'Inconnue', 'Inconnue', 'sarlwoodstock@orange.fr'),
(176, 'DE VASSELOT', 'MICHEL ', 'michel.de.vasselot@gmail.com'),
(177, 'DE VASSELOT', 'MICHEL ', 'oliverdekermadec.sio@live.fr'),
(178, 'DE VASSELOT', 'MICHEL ', 'marc.verdier2@gmail.com'),
(179, 'DE VASSELOT', 'MICHEL ', 'michel.de.vasselot@gmail.com'),
(180, 'BACOT', 'FRANCOIS ', 'francois-d.bacot@orange.fr'),
(181, 'DAGUENET', 'MR', 'forestierebois28@hotmail.fr'),
(182, 'NAULOT', 'CHRISOPHE ', 'christophe.naulot@gmail.com'),
(183, 'PEREIRA', 'MR', 'abel.p@wanadoo.fr'),
(184, 'BULIDON', 'MR', 'pierre.bulidon@orange.fr'),
(185, 'COLLOT', 'GABRIEL ', 'rg.collot@orange.fr'),
(186, 'DEZECACHE', 'NICOLAS ', 'nicolas.conseilforestier@hotmail.fr'),
(187, 'BENIER', 'FREDERIC ', 'frederic.benier@orange.fr'),
(188, 'GUILLUMMETTE', 'BENOIT ', 'guillummette.benoit@neuf.fr'),
(189, 'ALLIOT', 'FRANCK ', 'alliot-wood@wanadoo.fr'),
(190, 'BRASSET', 'XAVIER ', 'xavierbrasset@yahoo.fr'),
(191, 'Inconnue', 'Inconnue', 'lawdelauriston@aol.com'),
(192, 'DELACHAMBRE', 'MR', 'delachambremaxime2@yahoo.fr'),
(193, 'JACQUELIN', 'FRANCK ', 'franck.jacquelin0531@orange.fr'),
(194, 'LAMBERT', 'CHRISTIAN ', 'christian.lambert40@orange.fr'),
(195, 'LANZILLO', 'BRUNO ', 'lanzibois@gmail.com'),
(196, 'Inconnue', 'Inconnue', 'forestiere.champ@wanadoo.fr'),
(197, 'Inconnue', 'Inconnue', 'sfvotwalter@orange.fr'),
(198, 'THOUANT', 'JEAN LUC ', 'jean-luc.thouant@alsatis.net'),
(199, 'LINDRON', 'GERALD ', 'gerald.lindron@orange.fr'),
(200, 'Inconnue', 'Inconnue', 'sas.oudeaurondeau@yahoo.fr'),
(201, 'MONTFROY', 'DOMINIQUE ', 'dominique.monfroy@orange.fr'),
(202, 'COLLET', 'FRANCOIS ', 'collet.francois@wanadoo.fr'),
(203, 'FEDELE', 'ANDRE ', 'fedele.a@wanadoo.fr'),
(204, 'GRANCHER', 'JULIEN ', 'julien.grancher08@orange.fr'),
(205, 'Inconnue', 'Inconnue', 'lcbois@hotmail.fr'),
(206, 'MARCHAND', 'PHILIPPE ', 'mayal1959@hotmail.fr'),
(207, 'MARTIN', 'JEAN FRANCOIS ', 'jeanfrancoismartin-jeanfrancoismartin08@orange.fr'),
(208, 'JACQUEMIN', 'EMMANUEL ', 'emmanuel-jacquemin@club-internet.fr'),
(209, 'BOISSON', 'JACKIE ', 'jackie.boisson@wanadoo.fr'),
(210, 'RIBEIRO', 'MR', 'ribeiro8@wanadoo.fr'),
(211, 'COUTURIER', 'FRANCOIS ', 'sarlcouturier@gmail.com'),
(212, 'Inconnue', 'Inconnue', 'lcbois@orange.fr'),
(213, 'BLANCHARD', 'DAVID ', 'david.blanchard@fibre-excellence.com'),
(214, 'BRUNET', 'PASCAL ', 'pascal.brunet0632@orange.fr'),
(215, 'LEJEUNE', 'MR', 'jc.lejeune40@yahoo.fr'),
(216, 'GRATAROLLI', 'MR', 'nicoveauvy@live.fr'),
(217, 'Inconnue', 'Inconnue', 'contact@sigmabois.fr'),
(218, 'FESSY', 'JEAN LUC ', 'jean-luc.fessy@wanadoo.fr'),
(219, 'GUICHARD', 'FRANCOIS ', 'fguichard1@free.fr'),
(220, 'PETR', 'MULLER ', 'contact@m-c-m.fr'),
(221, 'Inconnue', 'Inconnue', 'etf.prefol@wanadoo.fr'),
(222, 'ROUX', 'ALAIN ', 'alain.roux229@orange.fr'),
(223, 'Inconnue', 'Inconnue', 'enimie.gobba@orange.fr'),
(224, 'MUSSON', 'LAURENT ', 'romain.musson@orange.fr'),
(225, 'LEMEE', 'CHRISTOPHE ', 'l.lemeeforetstravconsgest@sfr.fr'),
(226, ' POSTAIRE', 'GERARD', 'gerard.postaire@orange.fr'),
(227, 'JEANRAT', 'HERVE ', 'herve.jeanrat@wanadoo.fr'),
(228, 'BERTHE', 'XAVIER ', 'xavierberthe@wanadoo.fr'),
(229, 'FABRICE', 'FRANCO ', 'franco.fabrice@orange.fr'),
(230, 'COLIN', 'XAVIER ', 'xavier.colin58@orange.fr'),
(231, 'DELAUNAY', 'GILLES ', 'gdelaunay@orange.fr'),
(232, 'Inconnue', 'Inconnue', 'ericd0589@orange.fr'),
(233, 'COUILLARD', 'PHILIPPE ', 'pcouillard@orange.fr'),
(234, 'Inconnue', 'Inconnue', 'laforestiere-duloir@orange.fr'),
(235, 'CAILLER', 'ROSSET ', 'christophe.rossetcailler@wanadoo.fr'),
(236, 'BELLAVOINE', 'JEAN MICHEL ', 'jm.bellavoine@orange.fr'),
(237, 'BREMENT', 'SERGE ', 'bois_du_santerre@alice.pro.fr'),
(238, 'Inconnue', 'Inconnue', 'isa.tenfol@gmail.com'),
(239, ' BICHON', 'FRANCK', 'bifranck@wanadoo.fr'),
(240, 'HERNANDEZ', 'MR', 'sarl.hernandez@wanadoo.fr'),
(241, 'LAFON', 'MR', 'paul.lafon@wanadoo.fr'),
(242, 'LEVASSEUR', 'YVES ', 'Inconnue'),
(243, 'BEURET', 'ALAIN ', 'Inconnue'),
(244, 'LATHUILLIERE', 'THIERRY ', 'Inconnue'),
(245, 'BUFFAULT', 'JOEL ', 'Inconnue'),
(246, 'DECLOITRE', 'MICHEL ', 'Inconnue'),
(247, 'DICHAMP', 'PAUL ', 'Inconnue'),
(248, 'ROCHE', 'JACQUES-OLIVER ', 'Inconnue'),
(249, 'BAREIRO', 'FRANCISCO ', 'Inconnue');

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
  MODIFY `id_adherent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `id_connexion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `representant`
--
ALTER TABLE `representant`
  MODIFY `id_representant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
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
