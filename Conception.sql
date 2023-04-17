-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- HÃ´te : localhost:3306
-- GÃ©nÃ©rÃ© le : mer. 12 avr. 2023 Ã  13:47
-- Version du serveur : 5.7.24
-- Version de PHP : 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de donnÃ©es : `federation_sport`
--

-- --------------------------------------------------------

--
-- Structure de la table `admnistrateur`
--

CREATE TABLE `admnistrateur` (
  `id_admin` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- DÃ©chargement des donnÃ©es de la table `admnistrateur`
--

INSERT INTO `admnistrateur` (`id_admin`, `login`, `password`) VALUES
(1, 'Bichon', 'Petit1556'),
(2, 'Alin', 'Ray');

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `id_adresse` int(11) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `id_ville` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `assurances`
--

CREATE TABLE `assurances` (
  `id_assurance` int(11) NOT NULL,
  `assurance` varchar(50) NOT NULL,
  `Pays` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- DÃ©chargement des donnÃ©es de la table `assurances`
--

INSERT INTO `assurances` (`id_assurance`, `assurance`, `Pays`, `adresse`, `tel`) VALUES
(1, 'Assurix', 'France', '9 PLACE DES ECOLES, 86270 Coussay-les-bois', '+33 6 54 55 55 56'),
(2, 'VitalFish', 'Pays-Bas', 'Den Ham 23A, 2771 WX Boskoop', '+45 55 21 21 21');

-- --------------------------------------------------------

--
-- Structure de la table `club`
--

CREATE TABLE `club` (
  `id_club` int(11) NOT NULL,
  `club` varchar(50) NOT NULL,
  `id_adresse` int(11) DEFAULT NULL,
  `n_casier` varchar(50) NOT NULL,
  `n_salle` varchar(50) NOT NULL,
  `n_type_m` varchar(50) NOT NULL,
  `n_m_cardio` varchar(50) NOT NULL,
  `n_clims_s` varchar(50) NOT NULL,
  `n_clims_sp` varchar(50) NOT NULL,
  `n_toilettes` varchar(50) NOT NULL,
  `n_douches` varchar(50) NOT NULL,
  `n_saunas` varchar(50) NOT NULL,
  `n_place_p` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- DÃ©chargement des donnÃ©es de la table `club`
--

INSERT INTO `club` (`id_club`, `club`, `id_adresse`, `n_casier`, `n_salle`, `n_type_m`, `n_m_cardio`, `n_clims_s`, `n_clims_sp`, `n_toilettes`, `n_douches`, `n_saunas`, `n_place_p`) VALUES
(1, 'L.Santos mountain park', NULL, '200', '10 de 25mÂ²', '2*25', '40', '2', '10', '5', '10', '2', '50'),
(2, 'Fleeca fit', NULL, '100', '5 de 30mÂ²', '2*20', '30', '1', '5', '2', '2', '0', '5'),
(4, 'Diamond goal', NULL, '50', '5 de 30mÂ²', '2*15', '15', '1', '10', '3', '3', '1', '5');

-- --------------------------------------------------------

--
-- Structure de la table `code_postal`
--

CREATE TABLE `code_postal` (
  `id_code_postal` int(11) NOT NULL,
  `code_postale_sportif` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `medecins`
--

CREATE TABLE `medecins` (
  `id_medecin` int(11) NOT NULL,
  `medecin` varchar(50) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- DÃ©chargement des donnÃ©es de la table `medecins`
--

INSERT INTO `medecins` (`id_medecin`, `medecin`, `pays`, `adress`, `tel`, `mail`) VALUES
(1, 'Agatha Duggan', 'France', '6 Rue de la TisonniÃ¨re, 85500 Les Herbiers', '+33 6 78 54 32 89', 'A.Dug@gmail.com'),
(2, 'Karim Jonas', 'Pays-Bas', 'Busch 12, 1562 HH Krommenie', '+45 13 46 79 82', 'inconnu'),
(3, 'Sacha Martinez', 'France', 'La FrÃ©tiÃ¨re, 85500 Les Herbiers', '+33 6 11 56 84 93', 'Samar@hotmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `sportif`
--

CREATE TABLE `sportif` (
  `id_sportif` int(11) NOT NULL,
  `nom_sportif` varchar(30) NOT NULL,
  `prenom_sportif` varchar(30) NOT NULL,
  `telephone_sportif` varchar(155) NOT NULL,
  `mail_sportif` varchar(50) NOT NULL,
  `date_n` varchar(200) NOT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `id_medical` int(11) DEFAULT NULL,
  `id_adresse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- DÃ©chargement des donnÃ©es de la table `sportif`
--

INSERT INTO `sportif` (`id_sportif`, `nom_sportif`, `prenom_sportif`, `telephone_sportif`, `mail_sportif`, `date_n`, `statut`, `id_medical`, `id_adresse`) VALUES
(1, 'Clinton', 'Nicolas', '+33 6 42 06 97 55', 'musclefit@yahoo.com', '20/04/1995', 'coach diamond goal', NULL, NULL),
(2, 'Bellic', 'Lamar', '+45 11 52 75 63', 'imporage@gmail.com', '19/04/1978', 'premium international', NULL, NULL),
(3, 'Jakowski', 'Franklin', '+33 6 55 48 75 65', 'frajaski@aol.com', '09/04/1970', 'VIP', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `id_statut` int(11) NOT NULL,
  `statut` varchar(50) NOT NULL,
  `prix` varchar(50) NOT NULL,
  `n_mois` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- DÃ©chargement des donnÃ©es de la table `statut`
--

INSERT INTO `statut` (`id_statut`, `statut`, `prix`, `n_mois`) VALUES
(1, 'VIP', '200', '12'),
(2, 'premium version international', '175', '12'),
(3, 'premium', '150', '12'),
(4, 'cycliste international', '150', '12'),
(5, 'cycliste d\'eau douce', '100', '12'),
(6, 'le muscle est partout', '150', '12'),
(7, 'membre international', '135', '12'),
(8, 'brain-l fit international', '130', '12'),
(9, 'b less-fit', '125', '12'),
(10, 'membre', '100', '12'),
(11, 'coach', '50', '12'),
(12, 'agent de nettoyage et de sÃ©curitÃ©', 'null', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `temps_machine`
--

CREATE TABLE `temps_machine` (
  `id_temps_machines` int(11) NOT NULL,
  `horaire_d` varchar(15) NOT NULL,
  `horaire_f` varchar(15) NOT NULL,
  `id_club` int(11) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_machine` int(11) DEFAULT NULL,
  `nrj_generer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_ville` int(11) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `id_code_postal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables dÃ©chargÃ©es
--

--
-- Index pour la table `admnistrateur`
--
ALTER TABLE `admnistrateur`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id_adresse`),
  ADD KEY `fk_id_ville` (`id_ville`);

--
-- Index pour la table `assurances`
--
ALTER TABLE `assurances`
  ADD PRIMARY KEY (`id_assurance`);

--
-- Index pour la table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id_club`),
  ADD KEY `fk_id_adresse` (`id_adresse`);

--
-- Index pour la table `code_postal`
--
ALTER TABLE `code_postal`
  ADD PRIMARY KEY (`id_code_postal`);

--
-- Index pour la table `medecins`
--
ALTER TABLE `medecins`
  ADD PRIMARY KEY (`id_medecin`);

--
-- Index pour la table `sportif`
--
ALTER TABLE `sportif`
  ADD PRIMARY KEY (`id_sportif`),
  ADD KEY `fk_id_adresse_sportif` (`id_adresse`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`id_statut`);

--
-- Index pour la table `temps_machine`
--
ALTER TABLE `temps_machine`
  ADD PRIMARY KEY (`id_temps_machines`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`),
  ADD KEY `fk_id_code_postal` (`id_code_postal`);

--
-- AUTO_INCREMENT pour les tables dÃ©chargÃ©es
--

--
-- AUTO_INCREMENT pour la table `admnistrateur`
--
ALTER TABLE `admnistrateur`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `adresse`
--
ALTER TABLE `adresse`
  MODIFY `id_adresse` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `assurances`
--
ALTER TABLE `assurances`
  MODIFY `id_assurance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `club`
--
ALTER TABLE `club`
  MODIFY `id_club` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `code_postal`
--
ALTER TABLE `code_postal`
  MODIFY `id_code_postal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `medecins`
--
ALTER TABLE `medecins`
  MODIFY `id_medecin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sportif`
--
ALTER TABLE `sportif`
  MODIFY `id_sportif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `id_statut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `temps_machine`
--
ALTER TABLE `temps_machine`
  MODIFY `id_temps_machines` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id_ville` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables dÃ©chargÃ©es
--

--
-- Contraintes pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD CONSTRAINT `fk_id_ville` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id_ville`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `fk_id_adresse` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `sportif`
--
ALTER TABLE `sportif`
  ADD CONSTRAINT `fk_id_adresse_sportif` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `ville`
--
ALTER TABLE `ville`
  ADD CONSTRAINT `fk_id_code_postal` FOREIGN KEY (`id_code_postal`) REFERENCES `code_postal` (`id_code_postal`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
