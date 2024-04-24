-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 avr. 2024 à 10:26
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `smoft3`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE `abonnement` (
  `id_ab` int(11) NOT NULL,
  `date_creation` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_debut` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_fin` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_ab` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbr_user_max` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pack_achter` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_societe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `abonnement_detail`
--

CREATE TABLE `abonnement_detail` (
  `id_ab_de` int(11) NOT NULL,
  `id_ab` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `tva` varchar(255) DEFAULT NULL,
  `qte` varchar(255) DEFAULT NULL,
  `remise` varchar(255) DEFAULT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `abscence`
--

CREATE TABLE `abscence` (
  `id_abscence` int(11) NOT NULL,
  `id_employe` varchar(100) NOT NULL,
  `depuis` varchar(50) NOT NULL,
  `pour` varchar(50) NOT NULL,
  `dure` varchar(50) NOT NULL,
  `cause` varchar(100) NOT NULL,
  `justification` varchar(100) NOT NULL,
  `id_societe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `active_categorie`
--

CREATE TABLE `active_categorie` (
  `id_act` int(11) NOT NULL,
  `id_categorie` varchar(55) DEFAULT NULL,
  `id_societe` varchar(55) DEFAULT NULL,
  `id_user` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

CREATE TABLE `agent` (
  `id_agent` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cin` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `d_embauche` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `d_debut_contrat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type_contrat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tel1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `x_secours` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lienxsecours` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telxsecours` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `etat_sante` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `situation_familiale` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nbr_enfant` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nbr_personnes_acharge` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `classe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sal_base_net` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `primes` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `remarque` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `allertresponsable`
--

CREATE TABLE `allertresponsable` (
  `id_alert` int(11) NOT NULL,
  `id_cs` varchar(50) NOT NULL,
  `id_res` varchar(50) NOT NULL,
  `etat` varchar(50) NOT NULL,
  `date_ajout` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `alllogs`
--

CREATE TABLE `alllogs` (
  `id-log` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  `dateheure` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `archive`
--

CREATE TABLE `archive` (
  `id_arch` int(11) NOT NULL,
  `id_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `d_p_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `d_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `heure` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `situation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `impot` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `revenunet` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `chargemensuellefix` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `telfetp` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `societeetadr` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `typedefiche` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `coderdv` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `audit_note`
--

CREATE TABLE `audit_note` (
  `id_note_au` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_resp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `au_ecoute` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `au_reformulation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `au_prise_conge` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `au_perso_appel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `au_elv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `au_vra` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `au_motivation` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `moy_note_au` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `autredemande`
--

CREATE TABLE `autredemande` (
  `id_dem` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sujet` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `contenu` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `datedemande` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cause` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `avertissement`
--

CREATE TABLE `avertissement` (
  `id_av` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_resp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `motif` text COLLATE utf8_unicode_ci NOT NULL,
  `date_av` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type_av` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `avoir_client`
--

CREATE TABLE `avoir_client` (
  `id_avoir_client` int(11) NOT NULL,
  `num_dc` varchar(100) NOT NULL,
  `id_cl` varchar(100) NOT NULL,
  `id_mp` varchar(10) NOT NULL,
  `date_ajout` varchar(20) NOT NULL,
  `id_societe` varchar(100) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `etat_payement` varchar(255) NOT NULL,
  `totale_avoir` decimal(20,0) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `id_facture` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avoir_fournisseur`
--

CREATE TABLE `avoir_fournisseur` (
  `id_avoir_fournisseur` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `total_avoir` varchar(200) DEFAULT NULL,
  `id_currency` varchar(10) DEFAULT NULL,
  `id_facture` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `banque`
--

CREATE TABLE `banque` (
  `id_banque` int(11) NOT NULL,
  `nombanque` varchar(250) NOT NULL,
  `url_logo` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bc_fournisseur`
--

CREATE TABLE `bc_fournisseur` (
  `id_bc_fournisseur` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_bon` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `refext` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bl_brouillon_client`
--

CREATE TABLE `bl_brouillon_client` (
  `id_bl_brouillon_client` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_bon` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `objet` text NOT NULL,
  `infcli` text NOT NULL,
  `congen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bl_client`
--

CREATE TABLE `bl_client` (
  `id_bl_client` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_bon` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `objet` text NOT NULL,
  `infcli` text NOT NULL,
  `congen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bl_fournisseur`
--

CREATE TABLE `bl_fournisseur` (
  `id_bl_fournisseur` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_bon` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `refext` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `boutique`
--

CREATE TABLE `boutique` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nb_point_ach` int(50) NOT NULL,
  `url_img_produit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description_produit` text COLLATE utf8_unicode_ci NOT NULL,
  `modele_produit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `taille_produit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `couleur_produit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image_details1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image_details2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image_details3` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout_produit` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `boutique2`
--

CREATE TABLE `boutique2` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nb_point_ach` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url_img_produit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description_produit` text COLLATE utf8_unicode_ci NOT NULL,
  `grade_autorise` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `visibilite` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout_produit` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `boutique_ach_log`
--

CREATE TABLE `boutique_ach_log` (
  `id_achat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `action` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `date_achat` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `brouillon_detail_facture_client`
--

CREATE TABLE `brouillon_detail_facture_client` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) NOT NULL,
  `ref` text NOT NULL,
  `designation` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `tva` varchar(20) NOT NULL,
  `qte` varchar(100) NOT NULL,
  `remise` varchar(100) NOT NULL,
  `id_societe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `brouillon_facture_client`
--

CREATE TABLE `brouillon_facture_client` (
  `id_brouillon_facture_client` int(11) NOT NULL,
  `num_dc` varchar(100) NOT NULL,
  `id_cl` varchar(100) NOT NULL,
  `id_mp` varchar(10) NOT NULL,
  `date_ajout` varchar(20) NOT NULL,
  `id_societe` varchar(100) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `etat` varchar(150) NOT NULL,
  `etat_payement` varchar(100) NOT NULL,
  `totale_facture` decimal(20,3) NOT NULL,
  `id_currency` int(11) NOT NULL,
  `dateech` varchar(50) NOT NULL,
  `objet` text NOT NULL,
  `infcli` text NOT NULL,
  `congen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `bs_client`
--

CREATE TABLE `bs_client` (
  `id_bs_client` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_facture` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `transporteur` text NOT NULL,
  `num_plaque_immat` varchar(50) DEFAULT NULL,
  `objet` text NOT NULL,
  `infcli` text NOT NULL,
  `congen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bs_client_taxes`
--

CREATE TABLE `bs_client_taxes` (
  `id_facture_taxe` int(10) UNSIGNED NOT NULL,
  `num_dc` varchar(255) NOT NULL,
  `id_taxe` int(10) NOT NULL,
  `id_societe` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caisse_societe`
--

CREATE TABLE `caisse_societe` (
  `id_caisse` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `solde` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `caisse_societe_brouillon`
--

CREATE TABLE `caisse_societe_brouillon` (
  `id_caisse` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `solde` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `calendar_data`
--

CREATE TABLE `calendar_data` (
  `id_schedule` int(11) NOT NULL COMMENT 'schedule id',
  `category` varchar(200) NOT NULL COMMENT 'schedule, rappel, event, etc...',
  `id_fiche` varchar(200) NOT NULL COMMENT 'associated file id if exists',
  `id_societe` varchar(200) NOT NULL COMMENT 'id company',
  `titre` text NOT NULL COMMENT 'schedule title',
  `description` text NOT NULL COMMENT 'schedule description',
  `start` varchar(200) NOT NULL COMMENT 'start date',
  `end` varchar(200) NOT NULL COMMENT 'ends date',
  `location` varchar(400) NOT NULL COMMENT 'place',
  `email` varchar(300) NOT NULL COMMENT 'email',
  `phone` varchar(200) NOT NULL COMMENT 'telephone',
  `readOnly` varchar(200) NOT NULL COMMENT 'whether it''s editable or not (boolean)',
  `class` varchar(200) NOT NULL COMMENT 'private or public event',
  `recurrence` varchar(200) NOT NULL COMMENT ''''' || ''yearly'' etc... ',
  `state` varchar(200) NOT NULL COMMENT '''free'' || ''private''',
  `allDay` varchar(200) NOT NULL COMMENT 'lasts all day or not (boolean)',
  `attendees` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'users this schedule is associated to',
  `id_user` varchar(200) NOT NULL COMMENT 'id creataor',
  `date_creation` varchar(200) NOT NULL COMMENT 'schedule creation date',
  `last_modified` varchar(200) NOT NULL COMMENT 'last modification date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `calls`
--

CREATE TABLE `calls` (
  `id_call` int(11) NOT NULL,
  `appelrates` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `callback` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `auto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `manu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dmc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `calls2`
--

CREATE TABLE `calls2` (
  `id_call` int(11) NOT NULL,
  `calls` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sale` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `np` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ni` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `n` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dnc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `callback` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `a` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `b` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ajoute_par` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `call_log`
--

CREATE TABLE `call_log` (
  `id_call` int(11) NOT NULL,
  `id_client` varchar(200) NOT NULL,
  `id_contact` varchar(200) DEFAULT NULL,
  `id_opportunity` varchar(200) DEFAULT NULL,
  `id_lead` varchar(200) DEFAULT NULL,
  `id_societe` varchar(200) NOT NULL,
  `sujet` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `priority` varchar(200) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_editor` varchar(200) DEFAULT NULL,
  `last_modified` varchar(200) DEFAULT NULL,
  `type` varchar(200) NOT NULL,
  `type_log` varchar(200) NOT NULL,
  `type_answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `case`
--

CREATE TABLE `case` (
  `id_case` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `id_client` varchar(200) NOT NULL,
  `id_contact` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL COMMENT '[new, on hold, escalated]',
  `origin` varchar(200) NOT NULL COMMENT '[phone, email, website]',
  `type` varchar(200) NOT NULL COMMENT '[problem, feature, question]',
  `priority` varchar(200) NOT NULL COMMENT '[low, medium, high]',
  `reason` varchar(200) NOT NULL COMMENT '[user didn''t attend training, complex functionnality, exixting problem, instructions not clear, new problem]',
  `subject` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `id_fiche` varchar(200) DEFAULT NULL,
  `type_fiche` varchar(200) DEFAULT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_editor` varchar(200) DEFAULT NULL,
  `date_modification` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cases`
--

CREATE TABLE `cases` (
  `id_case` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `id_client` varchar(200) NOT NULL,
  `id_contact` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL COMMENT '[new, on hold, escalated]',
  `origin` varchar(200) NOT NULL COMMENT '[phone, email, website]',
  `type` varchar(200) NOT NULL COMMENT '[problem, feature, question]',
  `priority` varchar(200) NOT NULL COMMENT '[low, medium, high]',
  `reason` varchar(200) NOT NULL COMMENT '[user didn''t attend training, complex functionnality, exixting problem, instructions not clear, new problem]',
  `subject` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `id_fiche` varchar(200) DEFAULT NULL,
  `type_fiche` varchar(200) DEFAULT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_editor` varchar(200) DEFAULT NULL,
  `date_modification` varchar(200) DEFAULT NULL,
  `pipeline` varchar(200) NOT NULL,
  `id_pipeline` varchar(200) NOT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `name_categorie` varchar(150) NOT NULL,
  `icon` varchar(150) NOT NULL,
  `id_societe` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `category_pj`
--

CREATE TABLE `category_pj` (
  `id_category` int(11) NOT NULL,
  `id_project` varchar(200) NOT NULL,
  `category` varchar(300) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `added_by` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `challenge`
--

CREATE TABLE `challenge` (
  `id_cha` int(11) NOT NULL,
  `datecha` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `titre_cha` text COLLATE utf8_unicode_ci NOT NULL,
  `imagecha` text COLLATE utf8_unicode_ci NOT NULL,
  `textcha` text COLLATE utf8_unicode_ci NOT NULL,
  `typecha` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `challenge1`
--

CREATE TABLE `challenge1` (
  `id_challenge` int(11) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `mois` varchar(200) NOT NULL,
  `etat` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `bg_image` varchar(250) NOT NULL,
  `type_challenge` varchar(250) NOT NULL,
  `id_societe` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `challenge_content`
--

CREATE TABLE `challenge_content` (
  `id_content` int(11) NOT NULL,
  `id_challenge` varchar(500) NOT NULL,
  `type` varchar(200) NOT NULL,
  `temps` varchar(200) NOT NULL,
  `typerdv` varchar(200) NOT NULL,
  `typechiffre` varchar(200) NOT NULL,
  `nbrclient` int(11) NOT NULL,
  `points` text NOT NULL,
  `id_societe` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cheque_en_circulation`
--

CREATE TABLE `cheque_en_circulation` (
  `id_cheque` int(11) NOT NULL,
  `mode` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `num_cheque` varchar(200) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `porteur` varchar(255) DEFAULT NULL,
  `banque` varchar(255) DEFAULT NULL,
  `date_reglement` varchar(255) DEFAULT NULL,
  `date_echeance` varchar(20) DEFAULT NULL,
  `montant` varchar(100) DEFAULT NULL,
  `caissetraiteban` varchar(255) DEFAULT NULL,
  `etat` varchar(100) DEFAULT NULL,
  `compte_source_traite` varchar(100) DEFAULT NULL,
  `id_compte_bancaire` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_facture` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cheque_en_circulation_brouillon`
--

CREATE TABLE `cheque_en_circulation_brouillon` (
  `id_cheque` int(11) NOT NULL,
  `mode` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `num_cheque` varchar(200) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `porteur` varchar(255) DEFAULT NULL,
  `banque` varchar(255) DEFAULT NULL,
  `date_reglement` varchar(255) DEFAULT NULL,
  `date_echeance` varchar(20) DEFAULT NULL,
  `montant` varchar(100) DEFAULT NULL,
  `caissetraiteban` varchar(255) DEFAULT NULL,
  `etat` varchar(100) DEFAULT NULL,
  `compte_source_traite` varchar(100) DEFAULT NULL,
  `id_compte_bancaire` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_facture` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `code_client` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `adresse` text DEFAULT NULL,
  `ville` varchar(80) DEFAULT NULL,
  `fonction` varchar(100) DEFAULT NULL,
  `gouvernement` varchar(50) DEFAULT NULL,
  `localite` varchar(50) DEFAULT NULL,
  `delegation` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL,
  `pays` varchar(50) DEFAULT NULL,
  `tva` varchar(250) DEFAULT NULL,
  `mf` varchar(150) DEFAULT NULL,
  `num_exoneration` varchar(150) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `tel1` varchar(30) DEFAULT NULL,
  `tel2` varchar(30) DEFAULT NULL,
  `gsm` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `date_creation` varchar(50) DEFAULT NULL,
  `etat_client` varchar(30) DEFAULT NULL,
  `id_currency` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client_mails`
--

CREATE TABLE `client_mails` (
  `id_email` int(11) NOT NULL,
  `sent_from` varchar(300) NOT NULL,
  `sent_to` varchar(300) NOT NULL,
  `cc` varchar(300) DEFAULT NULL,
  `bcc` varchar(300) DEFAULT NULL,
  `sujet` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `id_creator` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `sent_date` varchar(200) NOT NULL,
  `id_client` varchar(200) NOT NULL,
  `id_contact` varchar(200) DEFAULT NULL,
  `id_opportunity` varchar(200) DEFAULT NULL,
  `id_lead` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `client_sms`
--

CREATE TABLE `client_sms` (
  `id_sms` int(11) NOT NULL,
  `id_client` varchar(200) NOT NULL,
  `id_contact` varchar(200) DEFAULT NULL,
  `id_opportunity` varchar(200) DEFAULT NULL,
  `id_lead` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `content` varchar(160) NOT NULL,
  `sent_to` varchar(200) NOT NULL,
  `sent_from` varchar(200) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `date_creation` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `coins`
--

CREATE TABLE `coins` (
  `id_coins` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `coins` int(11) DEFAULT NULL,
  `all_time_coins` int(200) NOT NULL,
  `cash` float DEFAULT NULL,
  `level` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comissions`
--

CREATE TABLE `comissions` (
  `id` int(11) NOT NULL,
  `categ` varchar(255) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `comments_crm`
--

CREATE TABLE `comments_crm` (
  `id_comment` int(11) NOT NULL,
  `id_fiche` varchar(100) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `type_fiche` varchar(200) NOT NULL,
  `id_historique` varchar(200) NOT NULL,
  `comment` text DEFAULT NULL,
  `id_societe` varchar(200) NOT NULL,
  `id_creator` varchar(200) DEFAULT NULL,
  `last_modified` varchar(200) DEFAULT NULL,
  `id_editor` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `composants`
--

CREATE TABLE `composants` (
  `id` int(100) NOT NULL,
  `id_nom` varchar(50) NOT NULL,
  `id_composant` varchar(50) NOT NULL,
  `quantite` varchar(50) NOT NULL,
  `unite` varchar(100) NOT NULL,
  `cout` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `compte_bancaire`
--

CREATE TABLE `compte_bancaire` (
  `id_cb` int(11) NOT NULL,
  `id_banque` varchar(100) NOT NULL,
  `agence` varchar(255) NOT NULL,
  `swift` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `id_societe` varchar(100) NOT NULL,
  `id_devise` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `config_mail`
--

CREATE TABLE `config_mail` (
  `id_mail` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `last_modified` varchar(200) DEFAULT NULL,
  `id_editor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `config_sms`
--

CREATE TABLE `config_sms` (
  `id_config` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `nbr_sms` varchar(200) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `date_creation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `id_client` varchar(200) NOT NULL COMMENT 'id_client',
  `tel` varchar(200) NOT NULL,
  `fix` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `fonction` varchar(200) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `departement` varchar(200) DEFAULT NULL,
  `ville` varchar(200) NOT NULL,
  `localite` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `last_modified` varchar(200) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `id_editor` varchar(200) NOT NULL,
  `website` text DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `situation` varchar(255) DEFAULT NULL,
  `etat_contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `contenu_form`
--

CREATE TABLE `contenu_form` (
  `id` int(11) NOT NULL,
  `champ1` text DEFAULT NULL,
  `champ2` text DEFAULT NULL,
  `champ3` text DEFAULT NULL,
  `champ4` text DEFAULT NULL,
  `champ5` text DEFAULT NULL,
  `champ6` text DEFAULT NULL,
  `champ7` text DEFAULT NULL,
  `champ8` text DEFAULT NULL,
  `champ9` text DEFAULT NULL,
  `champ10` text DEFAULT NULL,
  `champ11` text DEFAULT NULL,
  `champ12` text DEFAULT NULL,
  `champ13` text DEFAULT NULL,
  `champ14` text DEFAULT NULL,
  `champ15` text DEFAULT NULL,
  `champ16` text DEFAULT NULL,
  `champ17` text DEFAULT NULL,
  `champ18` text DEFAULT NULL,
  `champ19` text DEFAULT NULL,
  `champ20` text DEFAULT NULL,
  `champ21` text DEFAULT NULL,
  `champ22` text DEFAULT NULL,
  `champ23` text DEFAULT NULL,
  `champ24` text DEFAULT NULL,
  `champ25` text DEFAULT NULL,
  `champ26` text DEFAULT NULL,
  `champ27` text DEFAULT NULL,
  `champ28` text DEFAULT NULL,
  `champ29` text DEFAULT NULL,
  `champ30` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `id_societe` varchar(255) DEFAULT NULL,
  `id_contact` varchar(255) DEFAULT NULL,
  `id_lead` varchar(255) DEFAULT NULL,
  `id_opportunity` varchar(255) DEFAULT NULL,
  `id_client` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `id_editor` varchar(255) DEFAULT NULL,
  `data_ajout` varchar(50) DEFAULT NULL,
  `date_edit` varchar(50) DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `sous_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contrat_client`
--

CREATE TABLE `contrat_client` (
  `id_contrat` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `id_client` varchar(50) NOT NULL,
  `date_deb` varchar(100) NOT NULL,
  `date_fin` varchar(100) NOT NULL,
  `preavis` varchar(50) NOT NULL,
  `periode_essai` varchar(50) NOT NULL,
  `freq_paiement` varchar(50) NOT NULL,
  `cahier_charge` varchar(200) DEFAULT NULL,
  `details` text NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `last_modified` varchar(100) NOT NULL,
  `id_societe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cr_opportunite`
--

CREATE TABLE `cr_opportunite` (
  `id_cr` int(11) NOT NULL,
  `id_opportunite` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `pipeline` varchar(200) NOT NULL,
  `id_pipeline` varchar(200) DEFAULT NULL,
  `comment` text NOT NULL,
  `etat` varchar(200) DEFAULT NULL,
  `date_ajout` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `currency`
--

CREATE TABLE `currency` (
  `id_currency` int(8) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `iso_code` varchar(3) DEFAULT NULL,
  `symbol` varchar(5) DEFAULT NULL,
  `flag` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `id_dem` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type_dem` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_dem` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_debut` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_fin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_per` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `heure_deb` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `heure_fin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `montant` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mois` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type_paiment` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sujet` text COLLATE utf8_unicode_ci NOT NULL,
  `cause` text COLLATE utf8_unicode_ci NOT NULL,
  `etat` text COLLATE utf8_unicode_ci NOT NULL,
  `avisresp` text COLLATE utf8_unicode_ci NOT NULL,
  `solde` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `traitepar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarque` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `demandeconge`
--

CREATE TABLE `demandeconge` (
  `id_conge` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_debut` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_fin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cause` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `datedemande` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etat` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `demandeinfosup`
--

CREATE TABLE `demandeinfosup` (
  `id_dem` int(11) NOT NULL,
  `id_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_par` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` text COLLATE utf8_unicode_ci NOT NULL,
  `reponse` text COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `demandepermission`
--

CREATE TABLE `demandepermission` (
  `id_per` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `datedem` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_per` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `heur_deb` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `heure_fin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cause` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `demande_acompte`
--

CREATE TABLE `demande_acompte` (
  `id_acompte` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `montant` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `etatdemande` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mois` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type_paiment` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `datedemande` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `demande_client`
--

CREATE TABLE `demande_client` (
  `id_dem` int(11) NOT NULL,
  `nbr_ser` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `motif` varchar(255) DEFAULT NULL,
  `type_demande` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `depense`
--

CREATE TABLE `depense` (
  `id_dep` int(11) NOT NULL,
  `montant` varchar(250) NOT NULL,
  `type` varchar(150) NOT NULL,
  `nature` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `id_societe` varchar(50) NOT NULL,
  `id_users` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_avoir_client`
--

CREATE TABLE `detail_avoir_client` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_avoir_fournisseur`
--

CREATE TABLE `detail_avoir_fournisseur` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_bc_fournisseur`
--

CREATE TABLE `detail_bc_fournisseur` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_bl_brouillon_client`
--

CREATE TABLE `detail_bl_brouillon_client` (
  `id_ddc_brouillon` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_bl_client`
--

CREATE TABLE `detail_bl_client` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_bl_fournisseur`
--

CREATE TABLE `detail_bl_fournisseur` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_bs_client`
--

CREATE TABLE `detail_bs_client` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_devis_brouillon_client`
--

CREATE TABLE `detail_devis_brouillon_client` (
  `id_ddc_brouillon` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_devis_client`
--

CREATE TABLE `detail_devis_client` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `description` varchar(10) DEFAULT NULL,
  `img` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_facture_brouillon_client`
--

CREATE TABLE `detail_facture_brouillon_client` (
  `id_ddc_brouillon` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_facture_client`
--

CREATE TABLE `detail_facture_client` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_facture_fournisseur`
--

CREATE TABLE `detail_facture_fournisseur` (
  `id_ddc` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `tva` varchar(20) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `remise` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detail_pack_plan`
--

CREATE TABLE `detail_pack_plan` (
  `id_pack_detail` int(11) NOT NULL,
  `id_pack_plan` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `tva` varchar(255) DEFAULT NULL,
  `qte` varchar(255) DEFAULT NULL,
  `remise` varchar(255) DEFAULT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `detail_releve_cote`
--

CREATE TABLE `detail_releve_cote` (
  `id_dt_releve_cote` int(11) NOT NULL,
  `num_dc` varchar(100) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `qty` int(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `tva` varchar(30) NOT NULL,
  `remise` varchar(50) NOT NULL,
  `id_societe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `id_devis` int(11) NOT NULL,
  `num_devis` varchar(250) NOT NULL,
  `id_contenu` varchar(250) NOT NULL,
  `total_ht` varchar(250) NOT NULL,
  `montant_tva` varchar(250) NOT NULL,
  `total_ttc` varchar(250) NOT NULL,
  `id_societe` varchar(250) NOT NULL,
  `id_user` varchar(250) NOT NULL,
  `date_ajout` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `devis_brouillon_client`
--

CREATE TABLE `devis_brouillon_client` (
  `id_devis_brouillon_client` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_devis` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `object` text NOT NULL,
  `infcli` text NOT NULL,
  `dateexp` varchar(30) NOT NULL,
  `congen` text NOT NULL,
  `id_prospect` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `devis_client`
--

CREATE TABLE `devis_client` (
  `id_devis_client` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_devis` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `object` text NOT NULL,
  `infcli` text NOT NULL,
  `dateexp` varchar(30) NOT NULL,
  `congen` text NOT NULL,
  `id_prospect` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dir_communicationtel`
--

CREATE TABLE `dir_communicationtel` (
  `id_dircom` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_resp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dir_note_comm` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateheure` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dir_comp_entreprise`
--

CREATE TABLE `dir_comp_entreprise` (
  `id_comp_edir` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_resp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dir_assiduite` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dir_integrite` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dir_discipline` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dir_positivite` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dir_moyenne_come` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

CREATE TABLE `discipline` (
  `id_d` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `pause` varchar(200) NOT NULL,
  `wait` varchar(200) NOT NULL,
  `customer` varchar(200) NOT NULL,
  `dispo` varchar(200) NOT NULL,
  `dead` varchar(200) NOT NULL,
  `avis` text NOT NULL,
  `ajoute_par` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `droit_acces_motif`
--

CREATE TABLE `droit_acces_motif` (
  `id_motif` int(11) NOT NULL,
  `motif` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `droit_acces_user`
--

CREATE TABLE `droit_acces_user` (
  `id_droit` int(11) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `motif_droit` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_societe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `id_employe` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(150) NOT NULL,
  `post` varchar(50) NOT NULL,
  `salaire_embauche` varchar(150) NOT NULL,
  `salaire_actuel` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `compte_bancaire` varchar(150) NOT NULL,
  `solde_conge` varchar(100) NOT NULL,
  `date_embauche` varchar(150) NOT NULL,
  `date_naissance` varchar(150) NOT NULL,
  `diplome` varchar(100) NOT NULL,
  `type_contrat` varchar(100) NOT NULL,
  `date_debut_contrat` varchar(100) NOT NULL,
  `situation_famille` varchar(150) NOT NULL,
  `enfant_charge` varchar(100) NOT NULL,
  `personne_charge` varchar(100) NOT NULL,
  `remarque` varchar(250) NOT NULL,
  `cin` varchar(50) NOT NULL,
  `id_societe` varchar(50) NOT NULL,
  `id_sup` varchar(255) DEFAULT NULL,
  `id_userass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `etape_opp`
--

CREATE TABLE `etape_opp` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) DEFAULT NULL,
  `orderr` varchar(55) DEFAULT NULL,
  `proba` varchar(55) DEFAULT NULL,
  `etat` varchar(100) DEFAULT NULL,
  `mode` varchar(15) DEFAULT NULL,
  `nature` varchar(100) DEFAULT NULL,
  `id_societe` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `etatnote`
--

CREATE TABLE `etatnote` (
  `id_etat` int(11) NOT NULL,
  `id_note` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etatrdv`
--

CREATE TABLE `etatrdv` (
  `idetatrdv` int(11) NOT NULL,
  `id_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etataudit` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `etat_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_partenaire` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etatfinal` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commentairef` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etat_tache`
--

CREATE TABLE `etat_tache` (
  `id_etat` int(11) NOT NULL,
  `id_task` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `facture_a_terme`
--

CREATE TABLE `facture_a_terme` (
  `id_terme` int(11) NOT NULL,
  `num_dc_bl` varchar(255) DEFAULT NULL,
  `num_dc_fact` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `date_ajout` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture_a_terme_four`
--

CREATE TABLE `facture_a_terme_four` (
  `id_terme` int(11) NOT NULL,
  `num_dc_bl` varchar(255) DEFAULT NULL,
  `num_dc_fact` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `date_ajout` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture_brouillon_client`
--

CREATE TABLE `facture_brouillon_client` (
  `id_facture_brouillon_client` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_facture` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `dateech` varchar(50) NOT NULL,
  `objet` text NOT NULL,
  `infcli` text NOT NULL,
  `congen` text NOT NULL,
  `id_magasin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture_brouillon_client_taxes`
--

CREATE TABLE `facture_brouillon_client_taxes` (
  `id_facture_brouillon_taxe` int(10) UNSIGNED NOT NULL,
  `num_dc` varchar(255) NOT NULL,
  `id_taxe` int(10) UNSIGNED NOT NULL,
  `id_societe` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture_client`
--

CREATE TABLE `facture_client` (
  `id_facture_client` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_facture` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `dateech` varchar(50) NOT NULL,
  `objet` text NOT NULL,
  `infcli` text NOT NULL,
  `congen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture_client_taxes`
--

CREATE TABLE `facture_client_taxes` (
  `id_facture_taxe` int(10) UNSIGNED NOT NULL,
  `num_dc` varchar(255) NOT NULL,
  `id_taxe` int(10) UNSIGNED NOT NULL,
  `id_societe` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture_detail`
--

CREATE TABLE `facture_detail` (
  `id_fact_d` int(11) NOT NULL,
  `id_facture` varchar(50) NOT NULL,
  `qte` varchar(250) NOT NULL,
  `designation` text NOT NULL,
  `prixht` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture_fournisseur`
--

CREATE TABLE `facture_fournisseur` (
  `id_facture_client` int(11) NOT NULL,
  `num_dc` varchar(100) DEFAULT NULL,
  `id_cl` varchar(100) DEFAULT NULL,
  `id_mp` varchar(10) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `etat_payement` varchar(255) DEFAULT NULL,
  `totale_facture` decimal(20,3) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `refext` varchar(255) DEFAULT NULL,
  `dateech` varchar(50) DEFAULT NULL,
  `objet` text DEFAULT NULL,
  `infcli` text DEFAULT NULL,
  `congen` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture_fournisseur_taxes`
--

CREATE TABLE `facture_fournisseur_taxes` (
  `id_facture_taxe` int(10) UNSIGNED NOT NULL,
  `num_dc` varchar(255) NOT NULL,
  `id_taxe` int(10) UNSIGNED NOT NULL,
  `id_societe` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture_um`
--

CREATE TABLE `facture_um` (
  `id_factureum` int(11) NOT NULL,
  `id_partenaire` varchar(250) NOT NULL,
  `date_facture` varchar(10) NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE `famille` (
  `id_famille` int(11) NOT NULL,
  `desciption` text NOT NULL,
  `id_societe` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fiche_oppo`
--

CREATE TABLE `fiche_oppo` (
  `id_fichier` int(11) NOT NULL,
  `id_opportunite` varchar(200) DEFAULT NULL,
  `nom_fichier` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `taille` text DEFAULT NULL,
  `nom_dossier` text DEFAULT NULL,
  `id_user` varchar(200) DEFAULT NULL,
  `date_ajout` varchar(200) DEFAULT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `filter_requests`
--

CREATE TABLE `filter_requests` (
  `id` int(11) NOT NULL,
  `filter_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `nameFilter` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

CREATE TABLE `formulaire` (
  `id_formulaire` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `form` longtext DEFAULT NULL,
  `id_user` varchar(150) DEFAULT NULL,
  `id_societe` varchar(150) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sous_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id_fournisseur` int(11) NOT NULL,
  `code_fournisseur` varchar(250) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `adresse` text DEFAULT NULL,
  `codepostal` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `contact` text DEFAULT NULL,
  `activite` text DEFAULT NULL,
  `remiseacorde` varchar(10) DEFAULT NULL,
  `typefournisseur` varchar(20) DEFAULT NULL,
  `mf` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tel1` varchar(20) DEFAULT NULL,
  `tel2` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `gsm` varchar(20) DEFAULT NULL,
  `remarque` text DEFAULT NULL,
  `id_societe` varchar(150) DEFAULT NULL,
  `date_ajout` varchar(150) DEFAULT NULL,
  `etat` varchar(150) DEFAULT NULL,
  `id_currency` varchar(11) DEFAULT NULL,
  `id_creator` varchar(200) DEFAULT NULL,
  `id_editor` varchar(200) DEFAULT NULL,
  `last_modified` varchar(200) DEFAULT NULL,
  `temp_code` varchar(250) DEFAULT NULL,
  `tf` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `id_grade` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `point` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `grade` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `niveau` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `grade_general`
--

CREATE TABLE `grade_general` (
  `id_grade` int(11) NOT NULL,
  `nom_du_grade` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `critere_de_grade` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_grade_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `classement` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `grade_ta`
--

CREATE TABLE `grade_ta` (
  `id_grade_ta` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_grade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout_grade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `point_argent` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `niveau_exp` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE `groups` (
  `id_group` varchar(500) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `img_group` varchar(200) NOT NULL,
  `date_creation` varchar(200) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `group_users`
--

CREATE TABLE `group_users` (
  `id_user_group` int(11) NOT NULL,
  `id_group` varchar(500) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `added_by` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `happyhour`
--

CREATE TABLE `happyhour` (
  `idhappy` int(11) NOT NULL,
  `dhfin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ddh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `validationaudit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `datevalidation` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `happyhourchoix`
--

CREATE TABLE `happyhourchoix` (
  `id` int(11) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` int(11) NOT NULL,
  `award` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `happyhourresults`
--

CREATE TABLE `happyhourresults` (
  `id` int(11) NOT NULL,
  `idhappy` int(11) NOT NULL,
  `id_rdv` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL,
  `result` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `heuresup`
--

CREATE TABLE `heuresup` (
  `id_heuresup` int(11) NOT NULL,
  `id_employe` varchar(100) NOT NULL,
  `date_heure` varchar(50) NOT NULL,
  `dure` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `id_societe` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `hisotrique_circulation`
--

CREATE TABLE `hisotrique_circulation` (
  `id_his` int(11) NOT NULL,
  `montant` varchar(55) DEFAULT NULL,
  `id_compte_bancaire` varchar(55) DEFAULT NULL,
  `id_societe` varchar(20) DEFAULT NULL,
  `id_user` varchar(20) DEFAULT NULL,
  `caisse` varchar(55) DEFAULT NULL,
  `date_ajout` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `hisotrique_circulation_brouillon`
--

CREATE TABLE `hisotrique_circulation_brouillon` (
  `id_his` int(11) NOT NULL,
  `montant` varchar(55) DEFAULT NULL,
  `id_compte_bancaire` varchar(55) DEFAULT NULL,
  `id_societe` varchar(20) DEFAULT NULL,
  `id_user` varchar(20) DEFAULT NULL,
  `caisse` varchar(55) DEFAULT NULL,
  `date_ajout` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `historiquecall`
--

CREATE TABLE `historiquecall` (
  `id_call` int(11) NOT NULL,
  `id_rdv` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `numero` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historiquecommentaire`
--

CREATE TABLE `historiquecommentaire` (
  `id_histo` int(11) NOT NULL,
  `id_rdv` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` text COLLATE utf8_unicode_ci NOT NULL,
  `requete` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `rubrique` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `historiquerdv`
--

CREATE TABLE `historiquerdv` (
  `id_hist` int(11) NOT NULL,
  `id_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `motif` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateajout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `historiquetache`
--

CREATE TABLE `historiquetache` (
  `id_historique` int(11) NOT NULL,
  `id_task` varchar(200) NOT NULL DEFAULT '',
  `id_user` varchar(200) NOT NULL DEFAULT '',
  `titre_task` varchar(200) NOT NULL DEFAULT '',
  `task_header` varchar(200) NOT NULL DEFAULT '',
  `task_description` text DEFAULT NULL,
  `task_time_estimate` varchar(200) NOT NULL DEFAULT '',
  `task_time_spent` varchar(200) NOT NULL DEFAULT '',
  `colorpicker` varchar(200) NOT NULL DEFAULT '',
  `task_container` varchar(200) NOT NULL DEFAULT '',
  `id_rebrique` varchar(200) NOT NULL DEFAULT '',
  `id_rdv` varchar(200) NOT NULL DEFAULT '',
  `date_action` varchar(200) NOT NULL DEFAULT '',
  `source` varchar(200) NOT NULL DEFAULT '',
  `categorie` varchar(200) NOT NULL DEFAULT '',
  `numf` varchar(200) NOT NULL DEFAULT '',
  `numm1` varchar(200) NOT NULL DEFAULT '',
  `plage_horaire` varchar(200) NOT NULL DEFAULT '',
  `departement` varchar(200) NOT NULL DEFAULT '',
  `prenom` varchar(200) NOT NULL DEFAULT '',
  `date_modification` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historique_case`
--

CREATE TABLE `historique_case` (
  `id_historique` int(11) NOT NULL,
  `id_etape` varchar(200) NOT NULL,
  `id_fiche` varchar(200) NOT NULL,
  `type_fiche` varchar(200) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historique_client`
--

CREATE TABLE `historique_client` (
  `id_h_cl` int(11) NOT NULL,
  `id_cl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `historique` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_dc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etat` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_societe` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `historique_operation`
--

CREATE TABLE `historique_operation` (
  `id` int(10) NOT NULL,
  `id_operation` varchar(200) NOT NULL,
  `1_etat` varchar(10) NOT NULL,
  `2_etat` varchar(10) NOT NULL,
  `date_action` varchar(50) NOT NULL,
  `date_quit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `historique_opp`
--

CREATE TABLE `historique_opp` (
  `id_histo` int(11) NOT NULL,
  `id_etape` varchar(100) NOT NULL,
  `id_opp` varchar(100) NOT NULL,
  `etape` varchar(100) NOT NULL,
  `probabilite` varchar(50) NOT NULL,
  `close_date` varchar(50) NOT NULL,
  `modifierpar` varchar(100) NOT NULL,
  `date_update` varchar(50) NOT NULL,
  `montant` varchar(150) DEFAULT NULL,
  `id_societe` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historique_produit`
--

CREATE TABLE `historique_produit` (
  `id_h_p` int(11) NOT NULL,
  `date_action` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `qte` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_produit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sortie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `historique_statut_lead`
--

CREATE TABLE `historique_statut_lead` (
  `id` int(11) NOT NULL,
  `id_statut` varchar(100) DEFAULT NULL,
  `id_lead` varchar(50) DEFAULT NULL,
  `id_societe` varchar(50) DEFAULT NULL,
  `date_ajout` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `historique_statut_prospect`
--

CREATE TABLE `historique_statut_prospect` (
  `id` int(11) NOT NULL,
  `id_statut` varchar(100) DEFAULT NULL,
  `id_prospect` varchar(50) DEFAULT NULL,
  `id_societe` varchar(50) DEFAULT NULL,
  `date_ajout` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `images_profil`
--

CREATE TABLE `images_profil` (
  `id_image` int(11) NOT NULL,
  `image_femme` varchar(300) CHARACTER SET latin1 NOT NULL,
  `image_homme` varchar(300) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `impayefournisseur`
--

CREATE TABLE `impayefournisseur` (
  `id_imp_four` int(11) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `id_fournisseur` varchar(250) NOT NULL,
  `objet` text NOT NULL,
  `montant` varchar(250) NOT NULL,
  `type_paiment` varchar(250) NOT NULL,
  `num_cheque` varchar(50) NOT NULL,
  `date_echeance` varchar(50) NOT NULL,
  `id_banque` varchar(50) NOT NULL,
  `id_societe` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jour_f`
--

CREATE TABLE `jour_f` (
  `id_jour` int(11) NOT NULL,
  `raison` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lead`
--

CREATE TABLE `lead` (
  `id_task` int(11) NOT NULL,
  `titre_task` varchar(250) NOT NULL,
  `id_user` varchar(150) NOT NULL,
  `task_header` varchar(250) NOT NULL,
  `task_description` text NOT NULL,
  `task_time_estimate` varchar(150) NOT NULL,
  `task_time_spent` varchar(150) NOT NULL,
  `colorpicker` varchar(50) NOT NULL,
  `task_container` text NOT NULL,
  `id_rebrique` varchar(10) NOT NULL,
  `id_rdv` varchar(150) NOT NULL,
  `date_action` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `numf` varchar(20) NOT NULL,
  `numm1` varchar(20) NOT NULL,
  `plage_horaire` varchar(100) NOT NULL,
  `departement` varchar(150) NOT NULL,
  `prenom` varchar(250) NOT NULL,
  `id_societe` varchar(200) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `last_modified` varchar(20) DEFAULT NULL,
  `ville` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `societe` varchar(100) DEFAULT NULL,
  `poste` varchar(100) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `id_creator` varchar(200) DEFAULT NULL,
  `id_editor` varchar(200) DEFAULT NULL,
  `statut` varchar(200) DEFAULT NULL,
  `siteweb` text DEFAULT NULL,
  `secteur` varchar(255) DEFAULT NULL,
  `nbremployer` varchar(50) DEFAULT NULL,
  `pipeline` varchar(150) DEFAULT NULL,
  `id_pipeline` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `leadajouterjour`
--

CREATE TABLE `leadajouterjour` (
  `idajout` int(11) NOT NULL,
  `id_lead` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `liste_prix`
--

CREATE TABLE `liste_prix` (
  `id_prix` int(11) NOT NULL,
  `nom` varchar(55) DEFAULT NULL,
  `prix` varchar(55) DEFAULT NULL,
  `id_societe` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `litige`
--

CREATE TABLE `litige` (
  `id_litige` int(11) NOT NULL,
  `id_par` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `com_ad` text COLLATE utf8_unicode_ci NOT NULL,
  `com_par` text COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_litige` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `comment_p_cs` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `magasin`
--

CREATE TABLE `magasin` (
  `id_magasin` int(11) NOT NULL,
  `id_societe` varchar(20) NOT NULL,
  `nom_magasin` varchar(250) NOT NULL,
  `etat` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `mail_partenaire`
--

CREATE TABLE `mail_partenaire` (
  `id_mail` int(11) NOT NULL,
  `id_partenaire` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `principal` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL,
  `nom` varchar(55) DEFAULT NULL,
  `id_societe` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `membre_pv_reunion`
--

CREATE TABLE `membre_pv_reunion` (
  `id_mem` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `idpv` varchar(50) NOT NULL,
  `etat` varchar(100) NOT NULL,
  `commentaire` text NOT NULL,
  `id_societe` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_msg` int(11) NOT NULL,
  `id_societe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenu_msg` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `id_user_e` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_user_r` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etat_msg` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `datemessage` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `message_support`
--

CREATE TABLE `message_support` (
  `id_message` int(11) NOT NULL,
  `id_ticket` varchar(50) NOT NULL,
  `id_users_em` varchar(50) NOT NULL,
  `id_users_rec` varchar(50) NOT NULL,
  `sujet` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `etat_message` varchar(50) NOT NULL,
  `datemessage` varchar(50) NOT NULL,
  `id_societe` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `message_ticket`
--

CREATE TABLE `message_ticket` (
  `id_message` int(11) NOT NULL,
  `id_ticket` varchar(50) NOT NULL,
  `id_users_em` varchar(50) NOT NULL,
  `id_users_rec` varchar(50) NOT NULL,
  `sujet` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `etat_message` varchar(50) NOT NULL,
  `datemessage` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `message_ticket_general`
--

CREATE TABLE `message_ticket_general` (
  `id_message` int(11) NOT NULL,
  `id_ticket` varchar(50) NOT NULL,
  `id_users_em` varchar(50) NOT NULL,
  `id_users_rec` varchar(50) NOT NULL,
  `sujet` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `etat_message` varchar(50) NOT NULL,
  `datemessage` varchar(50) NOT NULL,
  `id_societe` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `miseapied`
--

CREATE TABLE `miseapied` (
  `id_mise` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_resp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_cre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_debut` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_fin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nbr_jour` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `motif` text COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mission`
--

CREATE TABLE `mission` (
  `id_mission` int(11) NOT NULL,
  `nature_mission` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `desc_mission` text COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `point_a_gagent` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mission2`
--

CREATE TABLE `mission2` (
  `id_mission` int(11) NOT NULL,
  `nature_mission` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `desc_mission` text COLLATE utf8_unicode_ci NOT NULL,
  `point_a_gagent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etat_mission` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_resp` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mission_to_user`
--

CREATE TABLE `mission_to_user` (
  `id` int(11) NOT NULL,
  `id_mission` int(11) NOT NULL,
  `id_resp` int(11) NOT NULL,
  `id_user` int(50) NOT NULL,
  `objectif` int(11) NOT NULL,
  `date_debut` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date_fin` varchar(50) CHARACTER SET latin1 NOT NULL,
  `etat` varchar(200) CHARACTER SET latin1 NOT NULL,
  `date_ajout` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mode_paiement`
--

CREATE TABLE `mode_paiement` (
  `id_mp` int(11) NOT NULL,
  `type_paie` varchar(255) NOT NULL,
  `nbr_jour` varchar(255) NOT NULL,
  `id_societe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id_mod` int(11) NOT NULL,
  `name_mod` varchar(150) NOT NULL,
  `img` varchar(150) NOT NULL,
  `url` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `motifannulation`
--

CREATE TABLE `motifannulation` (
  `id_motif` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `visibility` varchar(255) DEFAULT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `multisociete`
--

CREATE TABLE `multisociete` (
  `idmulti` int(11) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `id_societe` varchar(255) NOT NULL,
  `lib` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nestedcategory`
--

CREATE TABLE `nestedcategory` (
  `id_category` int(11) NOT NULL COMMENT 'id_category',
  `id_famille` varchar(200) DEFAULT NULL COMMENT 'related to which familly',
  `id_sous_famille` varchar(200) DEFAULT NULL COMMENT 'related to which sub family',
  `category` varchar(200) DEFAULT NULL COMMENT 'category value',
  `element_ref` varchar(200) DEFAULT NULL COMMENT 'id to refer to by children',
  `parent_ref` varchar(200) DEFAULT NULL COMMENT 'parent id to refer to just like a nested chain',
  `id_user` varchar(200) DEFAULT NULL COMMENT 'added by',
  `id_societe` varchar(200) DEFAULT NULL COMMENT 'under which company',
  `date_ajout` varchar(200) DEFAULT NULL COMMENT 'added when'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `nestedcategory_details`
--

CREATE TABLE `nestedcategory_details` (
  `id_nested` int(11) NOT NULL,
  `id_produit` varchar(200) DEFAULT NULL,
  `id_category` varchar(200) DEFAULT NULL,
  `id_creator` varchar(200) DEFAULT NULL,
  `id_societe` varchar(200) DEFAULT NULL,
  `date_creation` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `niveaugrade`
--

CREATE TABLE `niveaugrade` (
  `id_n_grade` int(11) NOT NULL,
  `nom_grade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `lib` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `nomenclature`
--

CREATE TABLE `nomenclature` (
  `id_nom` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `duree` int(11) NOT NULL,
  `quantite` varchar(100) NOT NULL,
  `id_societe` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `noteservice`
--

CREATE TABLE `noteservice` (
  `id_note` int(11) NOT NULL,
  `contenu` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date_note` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id_etat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `coleur` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ajouterpar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `noteserviceadmin`
--

CREATE TABLE `noteserviceadmin` (
  `id_note_admin` int(11) NOT NULL,
  `contenu` text COLLATE utf8_unicode_ci NOT NULL,
  `date_note` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_etat` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `datefin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ajouterpar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `note_c`
--

CREATE TABLE `note_c` (
  `id_com_r` int(11) NOT NULL,
  `id_prospect` varchar(100) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `type` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `id_creator` varchar(200) DEFAULT NULL,
  `last_modified` varchar(200) DEFAULT NULL,
  `id_editor` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `note_com_lead`
--

CREATE TABLE `note_com_lead` (
  `id_com_r` int(11) NOT NULL,
  `id_lead` varchar(100) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `time` varchar(10) NOT NULL,
  `note` text NOT NULL,
  `id_societe` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `note_com_rdv`
--

CREATE TABLE `note_com_rdv` (
  `id_com_r` int(11) NOT NULL,
  `id_prospect` varchar(100) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `time` varchar(10) NOT NULL,
  `note` text NOT NULL,
  `id_societe` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `note_general`
--

CREATE TABLE `note_general` (
  `id_note` int(11) NOT NULL,
  `titre` text NOT NULL,
  `contenu` text NOT NULL,
  `unique_id` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `last_updated` varchar(200) NOT NULL,
  `id_societe` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `note_rdv`
--

CREATE TABLE `note_rdv` (
  `id_note` int(11) NOT NULL,
  `id_rdv` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rationrdvarabe` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `id_notif` int(11) NOT NULL,
  `motif_notif` mediumtext NOT NULL,
  `id_user_e` varchar(50) NOT NULL,
  `id_user_r` varchar(50) NOT NULL,
  `etat_notif` varchar(50) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `type_notification` varchar(255) NOT NULL,
  `id_societe` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` int(11) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectif2`
--

CREATE TABLE `objectif2` (
  `id` int(11) NOT NULL,
  `id_resp` int(11) NOT NULL,
  `id_user` int(50) NOT NULL,
  `objectif` int(11) NOT NULL,
  `mois` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) CHARACTER SET latin1 NOT NULL,
  `date_ajout` varchar(50) CHARACTER SET latin1 NOT NULL,
  `etat` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `objectifjour`
--

CREATE TABLE `objectifjour` (
  `id_obj` int(11) NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `objectif` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `objectif_demander`
--

CREATE TABLE `objectif_demander` (
  `id_obj` int(11) NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `objectif` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

CREATE TABLE `operation` (
  `id_op` int(11) NOT NULL,
  `id_nom` varchar(200) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `priorite` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `temps` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `opportunite`
--

CREATE TABLE `opportunite` (
  `id` int(11) NOT NULL,
  `etat` varchar(200) DEFAULT NULL,
  `id_client` varchar(55) DEFAULT NULL,
  `id_user` varchar(55) DEFAULT NULL,
  `etat_final` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `id_type` varchar(55) DEFAULT NULL,
  `qte` varchar(255) DEFAULT NULL,
  `id_prospect` varchar(200) DEFAULT NULL,
  `montant` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date_fermeture` varchar(100) DEFAULT NULL,
  `date_ajout` varchar(255) DEFAULT NULL,
  `pipeline` varchar(50) DEFAULT NULL,
  `id_pipeline` varchar(150) DEFAULT NULL,
  `id_societe` varchar(55) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `devis` varchar(200) DEFAULT NULL,
  `date_rdv` varchar(30) DEFAULT NULL,
  `heure_rdv` varchar(30) DEFAULT NULL,
  `adresse_rdv` text DEFAULT NULL,
  `etat_opp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `pack_plan`
--

CREATE TABLE `pack_plan` (
  `id_pack_plan` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `expiredans` varchar(255) DEFAULT NULL,
  `id_plan` varchar(50) DEFAULT NULL,
  `confirmation` varchar(255) DEFAULT NULL,
  `id_mail_confirmation` varchar(55) DEFAULT NULL,
  `id_societe` varchar(255) DEFAULT NULL,
  `id_magasin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `parametre_categorie`
--

CREATE TABLE `parametre_categorie` (
  `id_parametre_categorie` int(11) NOT NULL,
  `views` varchar(150) NOT NULL,
  `inserts` varchar(150) NOT NULL,
  `updates` varchar(150) NOT NULL,
  `deletes` varchar(150) NOT NULL,
  `id_role` varchar(150) NOT NULL,
  `id_societe` varchar(150) NOT NULL,
  `id_mod` varchar(150) NOT NULL,
  `module` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `parametre_crm`
--

CREATE TABLE `parametre_crm` (
  `id_param` int(11) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `date_creation` varchar(200) NOT NULL,
  `id_editor` varchar(200) DEFAULT NULL,
  `last_modified` varchar(200) DEFAULT NULL,
  `id_societe` varchar(200) NOT NULL,
  `field_key` varchar(200) NOT NULL,
  `field_value` text NOT NULL,
  `related_to` varchar(200) NOT NULL,
  `temp_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `parametre_message`
--

CREATE TABLE `parametre_message` (
  `id_par` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `etat` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `id_societe` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

CREATE TABLE `partenaire` (
  `id_partenaire` int(11) NOT NULL,
  `nompar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cahier_de_charge` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `departement` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mp` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `nbr` varchar(255) NOT NULL,
  `unite` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `id_societe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `pointage`
--

CREATE TABLE `pointage` (
  `id_pointage` int(11) NOT NULL,
  `id_users_point` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_pointage` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time_table` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `temps_entrer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `temps_sortir` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `temps_pointage_entrer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `temps_pointage_sortir` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `retard` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `absence` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nombrejourtravail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lib` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pointgrade`
--

CREATE TABLE `pointgrade` (
  `id_p_grade` int(11) NOT NULL,
  `id_niveau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nbr_point` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `primerdv`
--

CREATE TABLE `primerdv` (
  `id_prime` int(11) NOT NULL,
  `id_responsable` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `prime` varchar(200) NOT NULL,
  `mois` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `prix_article`
--

CREATE TABLE `prix_article` (
  `id` int(11) NOT NULL,
  `id_produit` varchar(55) DEFAULT NULL,
  `id_liste_prix` text DEFAULT NULL,
  `montant` text DEFAULT NULL,
  `regle_app` text DEFAULT NULL,
  `ht_ttc` text DEFAULT NULL,
  `id_societe` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prix_plan`
--

CREATE TABLE `prix_plan` (
  `id` int(11) NOT NULL,
  `id_produit` varchar(255) NOT NULL,
  `id_plan` varchar(255) NOT NULL,
  `nbr` varchar(100) NOT NULL,
  `text` varchar(100) NOT NULL,
  `prix` varchar(100) NOT NULL,
  `id_societe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `reference` varchar(250) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `stock` varchar(150) DEFAULT NULL,
  `unite` varchar(100) DEFAULT NULL,
  `prixht` varchar(150) DEFAULT NULL,
  `prixttc` varchar(150) DEFAULT NULL,
  `famille` varchar(150) DEFAULT NULL,
  `sousfamille` varchar(150) DEFAULT NULL,
  `tva` varchar(50) DEFAULT NULL,
  `barcode` varchar(250) DEFAULT NULL,
  `emplacement` varchar(250) DEFAULT NULL,
  `qte_carton` varchar(150) DEFAULT NULL,
  `qte_pallette` varchar(150) DEFAULT NULL,
  `code_ngp` varchar(100) DEFAULT NULL,
  `duprise` varchar(100) DEFAULT NULL,
  `codedevise` varchar(100) DEFAULT NULL,
  `fournisseur` varchar(150) DEFAULT NULL,
  `prix_achat_brut` varchar(150) DEFAULT NULL,
  `taux_remise_achat` varchar(150) DEFAULT NULL,
  `taux_dodec_achat` varchar(150) DEFAULT NULL,
  `prix_achat_net` varchar(150) DEFAULT NULL,
  `prix_achat_ttc` varchar(150) DEFAULT NULL,
  `taux_marge_p1` varchar(150) DEFAULT NULL,
  `taux_marge_p2` varchar(150) DEFAULT NULL,
  `taux_marge_p3` varchar(150) DEFAULT NULL,
  `taux_remise` varchar(150) DEFAULT NULL,
  `net_ttc` varchar(150) DEFAULT NULL,
  `taux_fodec_vente` varchar(150) DEFAULT NULL,
  `prix_vente_public` varchar(150) DEFAULT NULL,
  `remise_max_autorisep1` varchar(150) DEFAULT NULL,
  `remise_max_autorisep2` varchar(150) DEFAULT NULL,
  `remise_max_autorisep3` varchar(150) DEFAULT NULL,
  `url_image` varchar(250) DEFAULT NULL,
  `id_societe` varchar(250) DEFAULT NULL,
  `date_ajout` varchar(150) DEFAULT NULL,
  `etat_produit` varchar(50) DEFAULT NULL,
  `id_magasin` varchar(250) DEFAULT NULL,
  `type_produit` varchar(255) DEFAULT NULL,
  `id_currency` varchar(8) DEFAULT NULL,
  `ref_interne` varchar(255) DEFAULT NULL,
  `ref_constructeur` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `marque` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produitenattente`
--

CREATE TABLE `produitenattente` (
  `id_n_p` int(11) NOT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `qte` varchar(100) DEFAULT NULL,
  `date_ajout` varchar(30) DEFAULT NULL,
  `id_fournisseur` varchar(250) DEFAULT NULL,
  `num_dc` varchar(200) NOT NULL,
  `id_societe` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit_combine`
--

CREATE TABLE `produit_combine` (
  `id_p_comb` int(11) NOT NULL,
  `id_produit` varchar(55) DEFAULT NULL,
  `qte` varchar(55) DEFAULT NULL,
  `id_p_principal` varchar(55) DEFAULT NULL,
  `id_societe` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit_reserve`
--

CREATE TABLE `produit_reserve` (
  `id` int(10) NOT NULL,
  `id_produit` int(10) NOT NULL,
  `ref_prod` varchar(20) NOT NULL,
  `client_nom` varchar(50) NOT NULL,
  `id_client` int(10) NOT NULL,
  `sale_order_id` varchar(10) NOT NULL,
  `quantite` varchar(10) NOT NULL,
  `id_societe` int(10) NOT NULL,
  `livree` varchar(10) NOT NULL DEFAULT '0',
  `num_dc` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id_project` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `id_chef` varchar(200) NOT NULL,
  `etat` varchar(200) NOT NULL,
  `priority` varchar(200) NOT NULL,
  `date_debut` varchar(200) NOT NULL,
  `date_fin` varchar(200) NOT NULL,
  `last_modified` varchar(200) NOT NULL,
  `date_creation` varchar(200) NOT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `projects1`
--

CREATE TABLE `projects1` (
  `id_project` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `id_chef` varchar(200) NOT NULL,
  `etat` varchar(200) NOT NULL,
  `priority` varchar(200) NOT NULL,
  `date_debut` varchar(200) NOT NULL,
  `date_fin` varchar(200) NOT NULL,
  `last_modified` varchar(200) NOT NULL,
  `date_creation` varchar(200) NOT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `projects_associated`
--

CREATE TABLE `projects_associated` (
  `id_asso` int(11) NOT NULL,
  `id_projet` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `id_fiche` varchar(200) NOT NULL,
  `type_fiche` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `project_comment`
--

CREATE TABLE `project_comment` (
  `id_comment` int(11) NOT NULL,
  `id_project` varchar(200) NOT NULL,
  `id_task` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `date_ajout` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `project_files`
--

CREATE TABLE `project_files` (
  `id_fichier` int(11) NOT NULL,
  `id_project` varchar(200) DEFAULT NULL,
  `nom_fichier` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `taille` text DEFAULT NULL,
  `nom_dossier` text DEFAULT NULL,
  `id_user` varchar(200) DEFAULT NULL,
  `date_ajout` varchar(200) DEFAULT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `project_forum`
--

CREATE TABLE `project_forum` (
  `id_forum` int(11) NOT NULL,
  `id_project` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `id_task` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `project_issues`
--

CREATE TABLE `project_issues` (
  `id_issue` int(11) NOT NULL,
  `id_project` varchar(200) NOT NULL,
  `id_task` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `probleme` text NOT NULL,
  `description` text NOT NULL,
  `date_debut` varchar(200) NOT NULL,
  `date_fin` varchar(200) DEFAULT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `etat` varchar(200) NOT NULL,
  `id_societe` varchar(255) DEFAULT NULL,
  `added_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `project_logs`
--

CREATE TABLE `project_logs` (
  `id_log` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_project` varchar(200) NOT NULL,
  `id_task` varchar(200) NOT NULL,
  `info` text DEFAULT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `project_task`
--

CREATE TABLE `project_task` (
  `id_task` int(11) NOT NULL,
  `rang` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `start` varchar(200) NOT NULL,
  `end` varchar(200) NOT NULL,
  `startIsMilestone` varchar(200) NOT NULL,
  `endIsMilestone` varchar(200) NOT NULL,
  `duration` varchar(200) NOT NULL,
  `progress` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `has_parent` varchar(200) NOT NULL,
  `has_child` varchar(200) NOT NULL,
  `depends` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `date_creation` varchar(200) NOT NULL,
  `id_project` varchar(200) NOT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `project_task_history`
--

CREATE TABLE `project_task_history` (
  `id_history` int(11) NOT NULL,
  `id_task` varchar(200) NOT NULL,
  `rang` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `start` varchar(200) NOT NULL,
  `end` varchar(200) NOT NULL,
  `startIsMilestone` varchar(200) NOT NULL,
  `endIsMilestone` varchar(200) NOT NULL,
  `duration` varchar(200) NOT NULL,
  `progress` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `has_parent` varchar(200) NOT NULL,
  `has_child` varchar(200) NOT NULL,
  `depends` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `date_creation` varchar(200) NOT NULL,
  `id_project` varchar(200) NOT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `project_task_staff`
--

CREATE TABLE `project_task_staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `id_task` varchar(200) NOT NULL,
  `id_project` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_societe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prospect_module_cl`
--

CREATE TABLE `prospect_module_cl` (
  `id_prospect` int(11) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `date_ajout_prospect` varchar(100) NOT NULL,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(80) NOT NULL,
  `genre` varchar(10) NOT NULL,
  `age` varchar(10) NOT NULL,
  `situation_familiale` varchar(30) NOT NULL,
  `nbr_enfant_a_charge` varchar(10) NOT NULL,
  `impot1` varchar(10) NOT NULL,
  `impot2` varchar(10) NOT NULL,
  `revenu1` varchar(10) NOT NULL,
  `revenu2` varchar(10) NOT NULL,
  `charge_mensuel_fix` varchar(10) NOT NULL,
  `nature_du_charge` varchar(50) NOT NULL,
  `num_fix` varchar(15) NOT NULL,
  `num_mobile` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `societe` varchar(200) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `departement` varchar(10) NOT NULL,
  `poste` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `type_prospect` varchar(50) NOT NULL,
  `ratio` varchar(10) NOT NULL,
  `source` varchar(10) NOT NULL,
  `id_societe` varchar(255) NOT NULL,
  `codepro` varchar(255) NOT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pvreunion`
--

CREATE TABLE `pvreunion` (
  `idpv` int(11) NOT NULL,
  `objet` text NOT NULL,
  `contenu` text NOT NULL,
  `date_ajout` varchar(40) NOT NULL,
  `ajouterpar` varchar(100) NOT NULL,
  `etat` varchar(100) NOT NULL,
  `codepv` varchar(100) NOT NULL,
  `id_societe` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id_ques` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_dir` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_ques` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `reponse` text COLLATE utf8_unicode_ci NOT NULL,
  `avis_dir` text COLLATE utf8_unicode_ci NOT NULL,
  `etat` text COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rapportauditjour`
--

CREATE TABLE `rapportauditjour` (
  `id_rapport_audit` int(11) NOT NULL,
  `id_rdv` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `pointpositif` text NOT NULL,
  `pointsnegatif` text NOT NULL,
  `commentaire` text NOT NULL,
  `reactionprospect` text NOT NULL,
  `actionapourvoir` varchar(250) NOT NULL,
  `daterapport` date NOT NULL,
  `id_societe` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rapportauditmois`
--

CREATE TABLE `rapportauditmois` (
  `id_rapport` int(11) NOT NULL,
  `id_user` varchar(250) NOT NULL,
  `oblapin` text NOT NULL,
  `obrefus` text NOT NULL,
  `obannule` text NOT NULL,
  `obhorscible` text NOT NULL,
  `resultatcoach` text NOT NULL,
  `comgen` text NOT NULL,
  `type` varchar(250) NOT NULL,
  `mois` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rapportta`
--

CREATE TABLE `rapportta` (
  `id_rap` int(11) NOT NULL,
  `id_res` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_ta` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_rap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contenu_rap` text COLLATE utf8_unicode_ci NOT NULL,
  `problem` text COLLATE utf8_unicode_ci NOT NULL,
  `conseil` text COLLATE utf8_unicode_ci NOT NULL,
  `avisrespau` text COLLATE utf8_unicode_ci NOT NULL,
  `observation` text COLLATE utf8_unicode_ci NOT NULL,
  `typerapport` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `observationta` text COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rapport_confirmation`
--

CREATE TABLE `rapport_confirmation` (
  `idrap` int(11) NOT NULL,
  `id_user` varchar(150) NOT NULL,
  `id_rdv` varchar(150) NOT NULL,
  `etat` varchar(50) NOT NULL,
  `commentaire` text NOT NULL,
  `dateajout` varchar(50) NOT NULL,
  `daterdv` varchar(50) NOT NULL,
  `id_societe` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rapport_ecoute`
--

CREATE TABLE `rapport_ecoute` (
  `id_rapport` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_responsable` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `react_com` varchar(200) NOT NULL,
  `react_pros` varchar(200) NOT NULL,
  `numero` text NOT NULL,
  `numero2` varchar(200) NOT NULL,
  `numero3` varchar(200) NOT NULL,
  `numero4` varchar(200) NOT NULL,
  `etat` varchar(200) NOT NULL,
  `observation` text NOT NULL,
  `action` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rapport_responsable_mois`
--

CREATE TABLE `rapport_responsable_mois` (
  `id_rapport` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `mois` varchar(200) NOT NULL,
  `commentaire` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE `rdv` (
  `id_rdv` int(11) NOT NULL,
  `d_p_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `d_rdv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `heure` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `situation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `impot` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `revenunet` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `chargemensuellefix` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `telfetp` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `societeetadr` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `typedefiche` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `coderdv` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rdv_brut`
--

CREATE TABLE `rdv_brut` (
  `id_rdv` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `d_p_rdv` varchar(50) NOT NULL,
  `dr` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `sf` varchar(50) NOT NULL,
  `enfant` varchar(50) NOT NULL,
  `impot1` varchar(30) NOT NULL,
  `impot2` varchar(100) NOT NULL,
  `revenu1` varchar(30) NOT NULL,
  `revenu2` varchar(100) NOT NULL,
  `cmf` varchar(100) NOT NULL,
  `ndc` varchar(100) NOT NULL,
  `numfix` varchar(100) NOT NULL,
  `numm1` varchar(100) NOT NULL,
  `numm2` varchar(100) NOT NULL,
  `societe` mediumtext NOT NULL,
  `adr1` varchar(50) NOT NULL,
  `adr2` mediumtext NOT NULL,
  `heurerdv` varchar(50) NOT NULL,
  `commentaire` mediumtext NOT NULL,
  `typerdv` varchar(30) NOT NULL,
  `etataudit` varchar(50) NOT NULL,
  `commentaireau` mediumtext NOT NULL,
  `etatrdv` varchar(50) NOT NULL,
  `id_partenaire` varchar(50) NOT NULL,
  `etat_final` varchar(50) NOT NULL,
  `commentairef` mediumtext NOT NULL,
  `note` varchar(50) NOT NULL,
  `coderdv` varchar(100) NOT NULL,
  `revenuf1` varchar(100) NOT NULL,
  `revenuf2` varchar(100) NOT NULL,
  `commentairepar` mediumtext NOT NULL,
  `noteta` varchar(50) NOT NULL,
  `id_user_com` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `noteau1` varchar(20) NOT NULL,
  `noteau2` varchar(20) NOT NULL,
  `ac` varchar(100) NOT NULL,
  `comresp` text NOT NULL,
  `date_env` varchar(50) NOT NULL,
  `date_rep` varchar(50) NOT NULL,
  `date_audit` varchar(50) NOT NULL,
  `commpadmin` text NOT NULL,
  `dateconfirmation` varchar(50) NOT NULL,
  `departement` varchar(15) NOT NULL,
  `optionsrdv` varchar(20) NOT NULL,
  `source` varchar(150) NOT NULL,
  `ratio` varchar(250) NOT NULL,
  `type_hc` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `releve_de_cote`
--

CREATE TABLE `releve_de_cote` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `signature` varchar(150) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `client` varchar(100) NOT NULL,
  `description` varchar(150) NOT NULL,
  `id_societe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `remise_en_banque`
--

CREATE TABLE `remise_en_banque` (
  `id_remise` int(11) NOT NULL,
  `num_remise` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_remise` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_compte_banque` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typederemise` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cheque` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_traite` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `montant` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banque` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `remise_facture`
--

CREATE TABLE `remise_facture` (
  `id_rem` int(11) NOT NULL,
  `num_dc_fact` varchar(50) DEFAULT NULL,
  `remise` varchar(255) DEFAULT NULL,
  `remise_totale` varchar(55) DEFAULT NULL,
  `id_societe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `retait_bancaire`
--

CREATE TABLE `retait_bancaire` (
  `id_operation` int(11) NOT NULL,
  `type_operation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `montant` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `id_compte` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_cheque` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `porteur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_echeance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode_paiement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_caisse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `retard`
--

CREATE TABLE `retard` (
  `id_retard` int(11) NOT NULL,
  `id_employe` varchar(100) NOT NULL,
  `date_heure` varchar(100) NOT NULL,
  `dure_minute` varchar(50) NOT NULL,
  `cause` varchar(50) NOT NULL,
  `justification` varchar(100) NOT NULL,
  `id_societe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `retenugen`
--

CREATE TABLE `retenugen` (
  `id_retenu` int(11) NOT NULL,
  `num_dc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taux` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_ajout` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_societe` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caisse` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `retenugen_four`
--

CREATE TABLE `retenugen_four` (
  `id_retenu` int(11) NOT NULL,
  `num_dc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taux` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_ajout` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_societe` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(250) DEFAULT NULL,
  `id_societe` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sale_order`
--

CREATE TABLE `sale_order` (
  `so_id` int(10) NOT NULL,
  `num_dc` varchar(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `customer` varchar(100) DEFAULT 'FREE',
  `id_ref` varchar(50) NOT NULL,
  `id_client` varchar(50) NOT NULL,
  `date_livraison` varchar(100) NOT NULL,
  `date_ajout` varchar(20) NOT NULL,
  `etat` varchar(50) NOT NULL DEFAULT 'Brouillon',
  `id_societe` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sale_order_produit`
--

CREATE TABLE `sale_order_produit` (
  `id` int(11) NOT NULL,
  `so_id` varchar(200) NOT NULL,
  `id_produit` varchar(200) NOT NULL,
  `nom_produit` varchar(100) NOT NULL,
  `quantite` varchar(200) NOT NULL,
  `uom` varchar(50) NOT NULL,
  `attributs` varchar(255) NOT NULL,
  `qty_production` varchar(10) DEFAULT NULL,
  `qty_vente` varchar(10) DEFAULT NULL,
  `qty_attente` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id_service` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `prix` varchar(100) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `id_societe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `shared`
--

CREATE TABLE `shared` (
  `id_share` int(11) NOT NULL,
  `token` text NOT NULL,
  `id_creator` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `etat` varchar(200) NOT NULL,
  `id_fiche` varchar(200) NOT NULL,
  `id_editor` varchar(200) DEFAULT NULL,
  `last_modified` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `shared_users`
--

CREATE TABLE `shared_users` (
  `id_share` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_societe` varchar(200) NOT NULL,
  `shared_with` varchar(200) NOT NULL,
  `creation_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `societe`
--

CREATE TABLE `societe` (
  `id_societe` int(11) NOT NULL,
  `raisonsocial` text CHARACTER SET utf8 DEFAULT NULL,
  `adresse` text CHARACTER SET utf8 DEFAULT NULL,
  `ville` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `cp` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `gouvernorat` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `regime` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pays` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `mat_fiscal` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `telbureau` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `teldomicile` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `gsm` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `datecreation` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `datefinabonnement` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `login` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `url_logo` text CHARACTER SET utf8 DEFAULT NULL,
  `id_currency` varchar(10) DEFAULT NULL,
  `siteweb` text DEFAULT NULL,
  `secteur` text DEFAULT NULL,
  `nbremp` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `solde_client`
--

CREATE TABLE `solde_client` (
  `id_solde_c` int(11) NOT NULL,
  `date_ajout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `montant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motif` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_facture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_societe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `solde_fournisseur`
--

CREATE TABLE `solde_fournisseur` (
  `id_solde_f` int(11) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `id_cl` varchar(50) NOT NULL,
  `montant` varchar(100) NOT NULL,
  `motif` varchar(50) NOT NULL,
  `id_facture` varchar(150) NOT NULL,
  `note` varchar(50) NOT NULL,
  `id_societe` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sous_categorie`
--

CREATE TABLE `sous_categorie` (
  `id_sous_categorie` int(11) NOT NULL,
  `name_sous_categorie` varchar(150) NOT NULL,
  `id_categorie` varchar(150) NOT NULL,
  `url` varchar(250) NOT NULL,
  `id_societe` varchar(250) NOT NULL,
  `icon` varchar(155) DEFAULT NULL,
  `id_mod` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sous_famille`
--

CREATE TABLE `sous_famille` (
  `id_s_f` int(11) NOT NULL,
  `desciption` text NOT NULL,
  `id_famille` varchar(250) NOT NULL,
  `id_societe` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sous_sous_categorie`
--

CREATE TABLE `sous_sous_categorie` (
  `id_sous_sous_categorie` int(11) NOT NULL,
  `name_sous_categorie` varchar(150) DEFAULT NULL,
  `id_sous_categorie` varchar(150) DEFAULT NULL,
  `id_categorie` varchar(100) DEFAULT NULL,
  `id_societe` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `icon` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `statut_lead`
--

CREATE TABLE `statut_lead` (
  `id` int(11) NOT NULL,
  `id_task` varchar(200) NOT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `id_societe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `statut_prospect`
--

CREATE TABLE `statut_prospect` (
  `id` int(11) NOT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `id_societe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id_stock` int(11) NOT NULL,
  `id_produit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `initial` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `achat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entretransfert` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `retoursmarchandise` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `achatii` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `retourii` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `totalentrees` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stockrestant` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ventes` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sortietransfert` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `perteavaries` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sorties` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `retoursfournisseur` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `totalsorties` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stockmin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stockmax` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stocksecurite` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stockalert` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `emplacement` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_magasin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `support`
--

CREATE TABLE `support` (
  `id_ticket` int(11) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_user_rec` varchar(50) NOT NULL,
  `service` varchar(50) NOT NULL,
  `preorite` varchar(50) NOT NULL,
  `sujet` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `etat_ticket` varchar(50) NOT NULL,
  `avis_admin` text NOT NULL,
  `id_societe` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sup_comp_entreprise`
--

CREATE TABLE `sup_comp_entreprise` (
  `id_comp_e` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_resp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_come_assiduite` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_come_integrite` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_come_displine` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_come_positive` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_come_moyenne` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sup_comp_plateau`
--

CREATE TABLE `sup_comp_plateau` (
  `id_comp_p` int(11) NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_resp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_comp_guide_app` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_com_emotions` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_comp_vocale` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_comp_prepapp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_comp_motivation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sup_comp_moyenne` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `susbscribed_emails`
--

CREATE TABLE `susbscribed_emails` (
  `id_sub` int(11) NOT NULL,
  `email` text NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_adress` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

CREATE TABLE `tache` (
  `id_task` int(11) NOT NULL,
  `titre_task` varchar(250) NOT NULL,
  `id_user` varchar(150) NOT NULL,
  `task_header` varchar(250) NOT NULL,
  `task_description` text NOT NULL,
  `task_time_estimate` varchar(150) NOT NULL,
  `task_time_spent` varchar(150) NOT NULL,
  `colorpicker` varchar(50) NOT NULL,
  `task_container` text NOT NULL,
  `id_rebrique` varchar(10) NOT NULL,
  `id_rdv` varchar(150) NOT NULL,
  `date_action` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `numf` varchar(20) NOT NULL,
  `numm1` varchar(20) NOT NULL,
  `plage_horaire` varchar(100) NOT NULL,
  `departement` varchar(150) NOT NULL,
  `prenom` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tache2`
--

CREATE TABLE `tache2` (
  `id_task` int(11) NOT NULL,
  `titre_task` varchar(250) NOT NULL,
  `id_user` varchar(150) NOT NULL,
  `task_header` varchar(250) NOT NULL,
  `task_description` text NOT NULL,
  `task_time_estimate` varchar(150) NOT NULL,
  `task_time_spent` varchar(150) NOT NULL,
  `colorpicker` varchar(50) NOT NULL,
  `task_container` text NOT NULL,
  `id_rebrique` varchar(10) NOT NULL,
  `id_rdv` varchar(150) NOT NULL,
  `date_action` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `numf` varchar(20) NOT NULL,
  `numm1` varchar(20) NOT NULL,
  `plage_horaire` varchar(100) NOT NULL,
  `departement` varchar(150) NOT NULL,
  `prenom` varchar(250) NOT NULL,
  `id_societe` varchar(200) DEFAULT NULL,
  `date_ajout` varchar(20) DEFAULT NULL,
  `last_modified` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tache_theme`
--

CREATE TABLE `tache_theme` (
  `id_theme` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `lieu` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `id_user` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `task_staff`
--

CREATE TABLE `task_staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `id_task` varchar(200) NOT NULL,
  `id_project` varchar(200) NOT NULL,
  `date_ajout` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tauxretenu`
--

CREATE TABLE `tauxretenu` (
  `id_taux` int(11) NOT NULL,
  `valeur` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pourcentage` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `taxes`
--

CREATE TABLE `taxes` (
  `id_taxe` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `context` varchar(255) NOT NULL,
  `valeur` varchar(255) NOT NULL,
  `typevaleur` varchar(2) NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `id_societe` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_user_rec` varchar(50) NOT NULL,
  `service` varchar(50) NOT NULL,
  `preorite` varchar(50) NOT NULL,
  `sujet` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `etat_ticket` varchar(50) NOT NULL,
  `avis_admin` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ticket_general`
--

CREATE TABLE `ticket_general` (
  `id_ticket` int(11) NOT NULL,
  `date_ajout` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_user_rec` varchar(50) NOT NULL,
  `service` varchar(50) NOT NULL,
  `preorite` varchar(50) NOT NULL,
  `sujet` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `etat_ticket` varchar(50) NOT NULL,
  `avis_admin` text NOT NULL,
  `id_societe` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `transactions_gen`
--

CREATE TABLE `transactions_gen` (
  `id` int(11) NOT NULL,
  `id_trans` varchar(255) DEFAULT NULL,
  `id_cheque` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `id_societe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tva_societe`
--

CREATE TABLE `tva_societe` (
  `id_tva` int(11) NOT NULL,
  `tauxtva` varchar(10) NOT NULL,
  `tva` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `type_rdv_factu`
--

CREATE TABLE `type_rdv_factu` (
  `id_trf` int(11) NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `montant` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `unite`
--

CREATE TABLE `unite` (
  `id_unite` int(11) NOT NULL,
  `id_societe` varchar(250) NOT NULL,
  `unite` varchar(250) NOT NULL,
  `desc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `niveau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_dernier_cnx` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cin` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users_review`
--

CREATE TABLE `users_review` (
  `id_review` int(11) NOT NULL,
  `name` text NOT NULL,
  `avis` text NOT NULL,
  `date_ajout` varchar(200) NOT NULL,
  `id_adress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_user` int(11) NOT NULL,
  `login` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `mp` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `niveau` varchar(50) NOT NULL,
  `date_dernier_cnx` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `cin` varchar(50) NOT NULL,
  `dn` varchar(30) NOT NULL,
  `genre` varchar(30) NOT NULL,
  `date_embauche` varchar(30) NOT NULL,
  `d_debut_contrat` varchar(30) NOT NULL,
  `type_contrat` varchar(30) NOT NULL,
  `adresse` mediumtext NOT NULL,
  `tel` varchar(50) NOT NULL,
  `tel1` varchar(50) NOT NULL,
  `x_secours` varchar(50) NOT NULL,
  `lienxsecours` varchar(50) NOT NULL,
  `telxsecours` varchar(50) NOT NULL,
  `etat_sante` varchar(30) NOT NULL,
  `situation_familiale` varchar(50) NOT NULL,
  `nbr_enfant` varchar(30) NOT NULL,
  `nbr_personnes_acharge` varchar(30) NOT NULL,
  `classe` varchar(10) NOT NULL,
  `sal_base_net` varchar(30) NOT NULL,
  `primes` varchar(30) NOT NULL,
  `remarque` mediumtext NOT NULL,
  `user_img` varchar(250) NOT NULL,
  `type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur2`
--

CREATE TABLE `utilisateur2` (
  `id_user` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `niveau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_dernier_cnx` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dn` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_embauche` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `d_debut_contrat` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type_contrat` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tel1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `x_secours` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lienxsecours` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telxsecours` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etat_sante` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `situation_familiale` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nbr_enfant` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nbr_personnes_acharge` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `classe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sal_base_net` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `primes` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `remarque` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `user_img` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id_societe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verify_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `versement_bancaire`
--

CREATE TABLE `versement_bancaire` (
  `id_operation` int(11) NOT NULL,
  `type_operation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `montant` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorie` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_compte` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_cheque` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `porteur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_echeance` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode_paiement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_caisse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_societe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `work_order`
--

CREATE TABLE `work_order` (
  `id` int(10) NOT NULL,
  `num_dc` varchar(250) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `id_produit` int(10) NOT NULL,
  `reference` int(10) NOT NULL,
  `quantite` varchar(50) NOT NULL,
  `etat` varchar(30) NOT NULL DEFAULT 'Brouillon',
  `date_creation` varchar(50) NOT NULL,
  `date_livraison` varchar(50) NOT NULL,
  `nbr_cons` varchar(10) NOT NULL DEFAULT '0.00',
  `responsable` varchar(50) NOT NULL,
  `nom_societe` varchar(100) NOT NULL,
  `id_societe` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `work_order_action`
--

CREATE TABLE `work_order_action` (
  `id_action` int(10) NOT NULL,
  `id_wo` varchar(200) NOT NULL,
  `num_dc` varchar(200) NOT NULL,
  `id_produit` varchar(200) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `reference` varchar(20) NOT NULL,
  `qte` varchar(20) NOT NULL,
  `etat` varchar(30) NOT NULL,
  `date_planifie` varchar(20) NOT NULL,
  `id_societe` int(10) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `work_order_composant`
--

CREATE TABLE `work_order_composant` (
  `id` int(10) NOT NULL,
  `id_wo` int(10) NOT NULL,
  `id_composant` int(10) NOT NULL,
  `quantite` varchar(20) NOT NULL,
  `unite` varchar(20) NOT NULL,
  `cout` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `work_order_operation`
--

CREATE TABLE `work_order_operation` (
  `id` int(10) NOT NULL,
  `id_wo` int(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `priorite` int(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  `temps` varchar(20) NOT NULL,
  `temps_final` varchar(20) NOT NULL,
  `etat` varchar(10) NOT NULL DEFAULT 'start'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `work_order_reservation`
--

CREATE TABLE `work_order_reservation` (
  `id` int(11) NOT NULL,
  `id_wo` varchar(200) NOT NULL,
  `id_ligne_comp` varchar(200) NOT NULL,
  `id_composant` varchar(200) NOT NULL,
  `quantite_reserve` varchar(10) NOT NULL,
  `quantite_consomme` varchar(10) NOT NULL DEFAULT '00.00',
  `cout_total` varchar(10) NOT NULL DEFAULT '00.00',
  `currency` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`id_ab`);

--
-- Index pour la table `abonnement_detail`
--
ALTER TABLE `abonnement_detail`
  ADD PRIMARY KEY (`id_ab_de`);

--
-- Index pour la table `abscence`
--
ALTER TABLE `abscence`
  ADD PRIMARY KEY (`id_abscence`);

--
-- Index pour la table `active_categorie`
--
ALTER TABLE `active_categorie`
  ADD PRIMARY KEY (`id_act`);

--
-- Index pour la table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id_agent`);

--
-- Index pour la table `allertresponsable`
--
ALTER TABLE `allertresponsable`
  ADD PRIMARY KEY (`id_alert`);

--
-- Index pour la table `alllogs`
--
ALTER TABLE `alllogs`
  ADD PRIMARY KEY (`id-log`);

--
-- Index pour la table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id_arch`);

--
-- Index pour la table `audit_note`
--
ALTER TABLE `audit_note`
  ADD PRIMARY KEY (`id_note_au`);

--
-- Index pour la table `autredemande`
--
ALTER TABLE `autredemande`
  ADD PRIMARY KEY (`id_dem`);

--
-- Index pour la table `avertissement`
--
ALTER TABLE `avertissement`
  ADD PRIMARY KEY (`id_av`);

--
-- Index pour la table `avoir_client`
--
ALTER TABLE `avoir_client`
  ADD PRIMARY KEY (`id_avoir_client`);

--
-- Index pour la table `avoir_fournisseur`
--
ALTER TABLE `avoir_fournisseur`
  ADD PRIMARY KEY (`id_avoir_fournisseur`);

--
-- Index pour la table `banque`
--
ALTER TABLE `banque`
  ADD PRIMARY KEY (`id_banque`);

--
-- Index pour la table `bc_fournisseur`
--
ALTER TABLE `bc_fournisseur`
  ADD PRIMARY KEY (`id_bc_fournisseur`);

--
-- Index pour la table `bl_brouillon_client`
--
ALTER TABLE `bl_brouillon_client`
  ADD PRIMARY KEY (`id_bl_brouillon_client`);

--
-- Index pour la table `bl_client`
--
ALTER TABLE `bl_client`
  ADD PRIMARY KEY (`id_bl_client`);

--
-- Index pour la table `bl_fournisseur`
--
ALTER TABLE `bl_fournisseur`
  ADD PRIMARY KEY (`id_bl_fournisseur`);

--
-- Index pour la table `boutique`
--
ALTER TABLE `boutique`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `boutique2`
--
ALTER TABLE `boutique2`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `boutique_ach_log`
--
ALTER TABLE `boutique_ach_log`
  ADD PRIMARY KEY (`id_achat`),
  ADD KEY `id_produit` (`id_produit`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `brouillon_detail_facture_client`
--
ALTER TABLE `brouillon_detail_facture_client`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `brouillon_facture_client`
--
ALTER TABLE `brouillon_facture_client`
  ADD PRIMARY KEY (`id_brouillon_facture_client`);

--
-- Index pour la table `bs_client`
--
ALTER TABLE `bs_client`
  ADD PRIMARY KEY (`id_bs_client`);

--
-- Index pour la table `bs_client_taxes`
--
ALTER TABLE `bs_client_taxes`
  ADD PRIMARY KEY (`id_facture_taxe`);

--
-- Index pour la table `caisse_societe`
--
ALTER TABLE `caisse_societe`
  ADD PRIMARY KEY (`id_caisse`);

--
-- Index pour la table `caisse_societe_brouillon`
--
ALTER TABLE `caisse_societe_brouillon`
  ADD PRIMARY KEY (`id_caisse`);

--
-- Index pour la table `calendar_data`
--
ALTER TABLE `calendar_data`
  ADD PRIMARY KEY (`id_schedule`);

--
-- Index pour la table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id_call`);

--
-- Index pour la table `calls2`
--
ALTER TABLE `calls2`
  ADD PRIMARY KEY (`id_call`);

--
-- Index pour la table `call_log`
--
ALTER TABLE `call_log`
  ADD PRIMARY KEY (`id_call`);

--
-- Index pour la table `case`
--
ALTER TABLE `case`
  ADD PRIMARY KEY (`id_case`);

--
-- Index pour la table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id_case`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `category_pj`
--
ALTER TABLE `category_pj`
  ADD PRIMARY KEY (`id_category`);

--
-- Index pour la table `challenge`
--
ALTER TABLE `challenge`
  ADD PRIMARY KEY (`id_cha`);

--
-- Index pour la table `challenge1`
--
ALTER TABLE `challenge1`
  ADD PRIMARY KEY (`id_challenge`);

--
-- Index pour la table `challenge_content`
--
ALTER TABLE `challenge_content`
  ADD PRIMARY KEY (`id_content`),
  ADD KEY `id_challenge` (`id_challenge`);

--
-- Index pour la table `cheque_en_circulation`
--
ALTER TABLE `cheque_en_circulation`
  ADD PRIMARY KEY (`id_cheque`);

--
-- Index pour la table `cheque_en_circulation_brouillon`
--
ALTER TABLE `cheque_en_circulation_brouillon`
  ADD PRIMARY KEY (`id_cheque`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `client_mails`
--
ALTER TABLE `client_mails`
  ADD PRIMARY KEY (`id_email`);

--
-- Index pour la table `client_sms`
--
ALTER TABLE `client_sms`
  ADD PRIMARY KEY (`id_sms`);

--
-- Index pour la table `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id_coins`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `comissions`
--
ALTER TABLE `comissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments_crm`
--
ALTER TABLE `comments_crm`
  ADD PRIMARY KEY (`id_comment`);

--
-- Index pour la table `composants`
--
ALTER TABLE `composants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `compte_bancaire`
--
ALTER TABLE `compte_bancaire`
  ADD PRIMARY KEY (`id_cb`);

--
-- Index pour la table `config_mail`
--
ALTER TABLE `config_mail`
  ADD PRIMARY KEY (`id_mail`);

--
-- Index pour la table `config_sms`
--
ALTER TABLE `config_sms`
  ADD PRIMARY KEY (`id_config`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Index pour la table `contenu_form`
--
ALTER TABLE `contenu_form`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contrat_client`
--
ALTER TABLE `contrat_client`
  ADD PRIMARY KEY (`id_contrat`);

--
-- Index pour la table `cr_opportunite`
--
ALTER TABLE `cr_opportunite`
  ADD PRIMARY KEY (`id_cr`);

--
-- Index pour la table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id_currency`);

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`id_dem`);

--
-- Index pour la table `demandeconge`
--
ALTER TABLE `demandeconge`
  ADD PRIMARY KEY (`id_conge`);

--
-- Index pour la table `demandeinfosup`
--
ALTER TABLE `demandeinfosup`
  ADD PRIMARY KEY (`id_dem`);

--
-- Index pour la table `demandepermission`
--
ALTER TABLE `demandepermission`
  ADD PRIMARY KEY (`id_per`);

--
-- Index pour la table `demande_acompte`
--
ALTER TABLE `demande_acompte`
  ADD PRIMARY KEY (`id_acompte`);

--
-- Index pour la table `demande_client`
--
ALTER TABLE `demande_client`
  ADD PRIMARY KEY (`id_dem`);

--
-- Index pour la table `depense`
--
ALTER TABLE `depense`
  ADD PRIMARY KEY (`id_dep`);

--
-- Index pour la table `detail_avoir_client`
--
ALTER TABLE `detail_avoir_client`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `detail_avoir_fournisseur`
--
ALTER TABLE `detail_avoir_fournisseur`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `detail_bc_fournisseur`
--
ALTER TABLE `detail_bc_fournisseur`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `detail_bl_brouillon_client`
--
ALTER TABLE `detail_bl_brouillon_client`
  ADD PRIMARY KEY (`id_ddc_brouillon`);

--
-- Index pour la table `detail_bl_client`
--
ALTER TABLE `detail_bl_client`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `detail_bl_fournisseur`
--
ALTER TABLE `detail_bl_fournisseur`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `detail_bs_client`
--
ALTER TABLE `detail_bs_client`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `detail_devis_brouillon_client`
--
ALTER TABLE `detail_devis_brouillon_client`
  ADD PRIMARY KEY (`id_ddc_brouillon`);

--
-- Index pour la table `detail_devis_client`
--
ALTER TABLE `detail_devis_client`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `detail_facture_brouillon_client`
--
ALTER TABLE `detail_facture_brouillon_client`
  ADD PRIMARY KEY (`id_ddc_brouillon`);

--
-- Index pour la table `detail_facture_client`
--
ALTER TABLE `detail_facture_client`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `detail_facture_fournisseur`
--
ALTER TABLE `detail_facture_fournisseur`
  ADD PRIMARY KEY (`id_ddc`);

--
-- Index pour la table `detail_pack_plan`
--
ALTER TABLE `detail_pack_plan`
  ADD PRIMARY KEY (`id_pack_detail`);

--
-- Index pour la table `detail_releve_cote`
--
ALTER TABLE `detail_releve_cote`
  ADD PRIMARY KEY (`id_dt_releve_cote`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`id_devis`);

--
-- Index pour la table `devis_brouillon_client`
--
ALTER TABLE `devis_brouillon_client`
  ADD PRIMARY KEY (`id_devis_brouillon_client`);

--
-- Index pour la table `devis_client`
--
ALTER TABLE `devis_client`
  ADD PRIMARY KEY (`id_devis_client`);

--
-- Index pour la table `dir_communicationtel`
--
ALTER TABLE `dir_communicationtel`
  ADD PRIMARY KEY (`id_dircom`);

--
-- Index pour la table `dir_comp_entreprise`
--
ALTER TABLE `dir_comp_entreprise`
  ADD PRIMARY KEY (`id_comp_edir`);

--
-- Index pour la table `discipline`
--
ALTER TABLE `discipline`
  ADD PRIMARY KEY (`id_d`);

--
-- Index pour la table `droit_acces_motif`
--
ALTER TABLE `droit_acces_motif`
  ADD PRIMARY KEY (`id_motif`);

--
-- Index pour la table `droit_acces_user`
--
ALTER TABLE `droit_acces_user`
  ADD PRIMARY KEY (`id_droit`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id_employe`);

--
-- Index pour la table `etape_opp`
--
ALTER TABLE `etape_opp`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etatnote`
--
ALTER TABLE `etatnote`
  ADD PRIMARY KEY (`id_etat`);

--
-- Index pour la table `etatrdv`
--
ALTER TABLE `etatrdv`
  ADD PRIMARY KEY (`idetatrdv`);

--
-- Index pour la table `etat_tache`
--
ALTER TABLE `etat_tache`
  ADD PRIMARY KEY (`id_etat`);

--
-- Index pour la table `facture_a_terme`
--
ALTER TABLE `facture_a_terme`
  ADD PRIMARY KEY (`id_terme`);

--
-- Index pour la table `facture_a_terme_four`
--
ALTER TABLE `facture_a_terme_four`
  ADD PRIMARY KEY (`id_terme`);

--
-- Index pour la table `facture_brouillon_client`
--
ALTER TABLE `facture_brouillon_client`
  ADD PRIMARY KEY (`id_facture_brouillon_client`);

--
-- Index pour la table `facture_brouillon_client_taxes`
--
ALTER TABLE `facture_brouillon_client_taxes`
  ADD PRIMARY KEY (`id_facture_brouillon_taxe`),
  ADD KEY `id_taxe` (`id_taxe`),
  ADD KEY `FK_Factures_Client_num_dc` (`num_dc`);

--
-- Index pour la table `facture_client`
--
ALTER TABLE `facture_client`
  ADD PRIMARY KEY (`id_facture_client`);

--
-- Index pour la table `facture_client_taxes`
--
ALTER TABLE `facture_client_taxes`
  ADD PRIMARY KEY (`id_facture_taxe`),
  ADD KEY `id_taxe` (`id_taxe`),
  ADD KEY `FK_Factures_Client_num_dc` (`num_dc`);

--
-- Index pour la table `facture_detail`
--
ALTER TABLE `facture_detail`
  ADD PRIMARY KEY (`id_fact_d`);

--
-- Index pour la table `facture_fournisseur`
--
ALTER TABLE `facture_fournisseur`
  ADD PRIMARY KEY (`id_facture_client`);

--
-- Index pour la table `facture_fournisseur_taxes`
--
ALTER TABLE `facture_fournisseur_taxes`
  ADD PRIMARY KEY (`id_facture_taxe`),
  ADD KEY `id_taxe` (`id_taxe`),
  ADD KEY `FK_Factures_Client_num_dc` (`num_dc`);

--
-- Index pour la table `facture_um`
--
ALTER TABLE `facture_um`
  ADD PRIMARY KEY (`id_factureum`);

--
-- Index pour la table `famille`
--
ALTER TABLE `famille`
  ADD PRIMARY KEY (`id_famille`);

--
-- Index pour la table `fiche_oppo`
--
ALTER TABLE `fiche_oppo`
  ADD PRIMARY KEY (`id_fichier`);

--
-- Index pour la table `filter_requests`
--
ALTER TABLE `filter_requests`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formulaire`
--
ALTER TABLE `formulaire`
  ADD PRIMARY KEY (`id_formulaire`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id_fournisseur`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id_grade`);

--
-- Index pour la table `grade_general`
--
ALTER TABLE `grade_general`
  ADD PRIMARY KEY (`id_grade`);

--
-- Index pour la table `grade_ta`
--
ALTER TABLE `grade_ta`
  ADD PRIMARY KEY (`id_grade_ta`);

--
-- Index pour la table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id_group`);

--
-- Index pour la table `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`id_user_group`);

--
-- Index pour la table `happyhour`
--
ALTER TABLE `happyhour`
  ADD PRIMARY KEY (`idhappy`);

--
-- Index pour la table `happyhourchoix`
--
ALTER TABLE `happyhourchoix`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `happyhourresults`
--
ALTER TABLE `happyhourresults`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `heuresup`
--
ALTER TABLE `heuresup`
  ADD PRIMARY KEY (`id_heuresup`);

--
-- Index pour la table `hisotrique_circulation`
--
ALTER TABLE `hisotrique_circulation`
  ADD PRIMARY KEY (`id_his`);

--
-- Index pour la table `hisotrique_circulation_brouillon`
--
ALTER TABLE `hisotrique_circulation_brouillon`
  ADD PRIMARY KEY (`id_his`);

--
-- Index pour la table `historiquecall`
--
ALTER TABLE `historiquecall`
  ADD PRIMARY KEY (`id_call`);

--
-- Index pour la table `historiquecommentaire`
--
ALTER TABLE `historiquecommentaire`
  ADD PRIMARY KEY (`id_histo`);

--
-- Index pour la table `historiquerdv`
--
ALTER TABLE `historiquerdv`
  ADD PRIMARY KEY (`id_hist`);

--
-- Index pour la table `historiquetache`
--
ALTER TABLE `historiquetache`
  ADD PRIMARY KEY (`id_historique`);

--
-- Index pour la table `historique_case`
--
ALTER TABLE `historique_case`
  ADD PRIMARY KEY (`id_historique`);

--
-- Index pour la table `historique_client`
--
ALTER TABLE `historique_client`
  ADD PRIMARY KEY (`id_h_cl`);

--
-- Index pour la table `historique_operation`
--
ALTER TABLE `historique_operation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historique_opp`
--
ALTER TABLE `historique_opp`
  ADD PRIMARY KEY (`id_histo`);

--
-- Index pour la table `historique_produit`
--
ALTER TABLE `historique_produit`
  ADD PRIMARY KEY (`id_h_p`);

--
-- Index pour la table `historique_statut_lead`
--
ALTER TABLE `historique_statut_lead`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historique_statut_prospect`
--
ALTER TABLE `historique_statut_prospect`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images_profil`
--
ALTER TABLE `images_profil`
  ADD PRIMARY KEY (`id_image`);

--
-- Index pour la table `impayefournisseur`
--
ALTER TABLE `impayefournisseur`
  ADD PRIMARY KEY (`id_imp_four`);

--
-- Index pour la table `jour_f`
--
ALTER TABLE `jour_f`
  ADD PRIMARY KEY (`id_jour`);

--
-- Index pour la table `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`id_task`);

--
-- Index pour la table `leadajouterjour`
--
ALTER TABLE `leadajouterjour`
  ADD PRIMARY KEY (`idajout`);

--
-- Index pour la table `liste_prix`
--
ALTER TABLE `liste_prix`
  ADD PRIMARY KEY (`id_prix`);

--
-- Index pour la table `litige`
--
ALTER TABLE `litige`
  ADD PRIMARY KEY (`id_litige`);

--
-- Index pour la table `magasin`
--
ALTER TABLE `magasin`
  ADD PRIMARY KEY (`id_magasin`);

--
-- Index pour la table `mail_partenaire`
--
ALTER TABLE `mail_partenaire`
  ADD PRIMARY KEY (`id_mail`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `membre_pv_reunion`
--
ALTER TABLE `membre_pv_reunion`
  ADD PRIMARY KEY (`id_mem`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_msg`);

--
-- Index pour la table `message_support`
--
ALTER TABLE `message_support`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `message_ticket`
--
ALTER TABLE `message_ticket`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `message_ticket_general`
--
ALTER TABLE `message_ticket_general`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `miseapied`
--
ALTER TABLE `miseapied`
  ADD PRIMARY KEY (`id_mise`);

--
-- Index pour la table `mission`
--
ALTER TABLE `mission`
  ADD PRIMARY KEY (`id_mission`);

--
-- Index pour la table `mission2`
--
ALTER TABLE `mission2`
  ADD PRIMARY KEY (`id_mission`);

--
-- Index pour la table `mission_to_user`
--
ALTER TABLE `mission_to_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mode_paiement`
--
ALTER TABLE `mode_paiement`
  ADD PRIMARY KEY (`id_mp`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id_mod`);

--
-- Index pour la table `motifannulation`
--
ALTER TABLE `motifannulation`
  ADD PRIMARY KEY (`id_motif`);

--
-- Index pour la table `multisociete`
--
ALTER TABLE `multisociete`
  ADD PRIMARY KEY (`idmulti`);

--
-- Index pour la table `nestedcategory`
--
ALTER TABLE `nestedcategory`
  ADD PRIMARY KEY (`id_category`);

--
-- Index pour la table `nestedcategory_details`
--
ALTER TABLE `nestedcategory_details`
  ADD PRIMARY KEY (`id_nested`);

--
-- Index pour la table `niveaugrade`
--
ALTER TABLE `niveaugrade`
  ADD PRIMARY KEY (`id_n_grade`);

--
-- Index pour la table `nomenclature`
--
ALTER TABLE `nomenclature`
  ADD PRIMARY KEY (`id_nom`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `noteservice`
--
ALTER TABLE `noteservice`
  ADD PRIMARY KEY (`id_note`);

--
-- Index pour la table `noteserviceadmin`
--
ALTER TABLE `noteserviceadmin`
  ADD PRIMARY KEY (`id_note_admin`);

--
-- Index pour la table `note_c`
--
ALTER TABLE `note_c`
  ADD PRIMARY KEY (`id_com_r`);

--
-- Index pour la table `note_com_lead`
--
ALTER TABLE `note_com_lead`
  ADD PRIMARY KEY (`id_com_r`);

--
-- Index pour la table `note_com_rdv`
--
ALTER TABLE `note_com_rdv`
  ADD PRIMARY KEY (`id_com_r`);

--
-- Index pour la table `note_general`
--
ALTER TABLE `note_general`
  ADD PRIMARY KEY (`id_note`);

--
-- Index pour la table `note_rdv`
--
ALTER TABLE `note_rdv`
  ADD PRIMARY KEY (`id_note`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notif`);

--
-- Index pour la table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `objectif2`
--
ALTER TABLE `objectif2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `objectifjour`
--
ALTER TABLE `objectifjour`
  ADD PRIMARY KEY (`id_obj`);

--
-- Index pour la table `objectif_demander`
--
ALTER TABLE `objectif_demander`
  ADD PRIMARY KEY (`id_obj`);

--
-- Index pour la table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id_op`);

--
-- Index pour la table `opportunite`
--
ALTER TABLE `opportunite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pack_plan`
--
ALTER TABLE `pack_plan`
  ADD PRIMARY KEY (`id_pack_plan`);

--
-- Index pour la table `parametre_categorie`
--
ALTER TABLE `parametre_categorie`
  ADD PRIMARY KEY (`id_parametre_categorie`);

--
-- Index pour la table `parametre_crm`
--
ALTER TABLE `parametre_crm`
  ADD PRIMARY KEY (`id_param`);

--
-- Index pour la table `parametre_message`
--
ALTER TABLE `parametre_message`
  ADD PRIMARY KEY (`id_par`);

--
-- Index pour la table `partenaire`
--
ALTER TABLE `partenaire`
  ADD PRIMARY KEY (`id_partenaire`);

--
-- Index pour la table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pointage`
--
ALTER TABLE `pointage`
  ADD PRIMARY KEY (`id_pointage`);

--
-- Index pour la table `pointgrade`
--
ALTER TABLE `pointgrade`
  ADD PRIMARY KEY (`id_p_grade`);

--
-- Index pour la table `primerdv`
--
ALTER TABLE `primerdv`
  ADD PRIMARY KEY (`id_prime`);

--
-- Index pour la table `prix_article`
--
ALTER TABLE `prix_article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prix_plan`
--
ALTER TABLE `prix_plan`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `produitenattente`
--
ALTER TABLE `produitenattente`
  ADD PRIMARY KEY (`id_n_p`);

--
-- Index pour la table `produit_combine`
--
ALTER TABLE `produit_combine`
  ADD PRIMARY KEY (`id_p_comb`);

--
-- Index pour la table `produit_reserve`
--
ALTER TABLE `produit_reserve`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id_project`);

--
-- Index pour la table `projects1`
--
ALTER TABLE `projects1`
  ADD PRIMARY KEY (`id_project`);

--
-- Index pour la table `projects_associated`
--
ALTER TABLE `projects_associated`
  ADD PRIMARY KEY (`id_asso`);

--
-- Index pour la table `project_comment`
--
ALTER TABLE `project_comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Index pour la table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id_fichier`);

--
-- Index pour la table `project_forum`
--
ALTER TABLE `project_forum`
  ADD PRIMARY KEY (`id_forum`);

--
-- Index pour la table `project_issues`
--
ALTER TABLE `project_issues`
  ADD PRIMARY KEY (`id_issue`);

--
-- Index pour la table `project_logs`
--
ALTER TABLE `project_logs`
  ADD PRIMARY KEY (`id_log`);

--
-- Index pour la table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id_task`);

--
-- Index pour la table `project_task_history`
--
ALTER TABLE `project_task_history`
  ADD PRIMARY KEY (`id_history`);

--
-- Index pour la table `project_task_staff`
--
ALTER TABLE `project_task_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Index pour la table `prospect_module_cl`
--
ALTER TABLE `prospect_module_cl`
  ADD PRIMARY KEY (`id_prospect`);

--
-- Index pour la table `pvreunion`
--
ALTER TABLE `pvreunion`
  ADD PRIMARY KEY (`idpv`);

--
-- Index pour la table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id_ques`);

--
-- Index pour la table `rapportauditjour`
--
ALTER TABLE `rapportauditjour`
  ADD PRIMARY KEY (`id_rapport_audit`);

--
-- Index pour la table `rapportauditmois`
--
ALTER TABLE `rapportauditmois`
  ADD PRIMARY KEY (`id_rapport`);

--
-- Index pour la table `rapportta`
--
ALTER TABLE `rapportta`
  ADD PRIMARY KEY (`id_rap`);

--
-- Index pour la table `rapport_confirmation`
--
ALTER TABLE `rapport_confirmation`
  ADD PRIMARY KEY (`idrap`);

--
-- Index pour la table `rapport_ecoute`
--
ALTER TABLE `rapport_ecoute`
  ADD PRIMARY KEY (`id_rapport`);

--
-- Index pour la table `rapport_responsable_mois`
--
ALTER TABLE `rapport_responsable_mois`
  ADD PRIMARY KEY (`id_rapport`);

--
-- Index pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD PRIMARY KEY (`id_rdv`);

--
-- Index pour la table `rdv_brut`
--
ALTER TABLE `rdv_brut`
  ADD PRIMARY KEY (`id_rdv`);

--
-- Index pour la table `releve_de_cote`
--
ALTER TABLE `releve_de_cote`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `remise_en_banque`
--
ALTER TABLE `remise_en_banque`
  ADD PRIMARY KEY (`id_remise`);

--
-- Index pour la table `remise_facture`
--
ALTER TABLE `remise_facture`
  ADD PRIMARY KEY (`id_rem`);

--
-- Index pour la table `retait_bancaire`
--
ALTER TABLE `retait_bancaire`
  ADD PRIMARY KEY (`id_operation`);

--
-- Index pour la table `retard`
--
ALTER TABLE `retard`
  ADD PRIMARY KEY (`id_retard`);

--
-- Index pour la table `retenugen`
--
ALTER TABLE `retenugen`
  ADD PRIMARY KEY (`id_retenu`);

--
-- Index pour la table `retenugen_four`
--
ALTER TABLE `retenugen_four`
  ADD PRIMARY KEY (`id_retenu`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `sale_order`
--
ALTER TABLE `sale_order`
  ADD PRIMARY KEY (`so_id`);

--
-- Index pour la table `sale_order_produit`
--
ALTER TABLE `sale_order_produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`);

--
-- Index pour la table `shared`
--
ALTER TABLE `shared`
  ADD PRIMARY KEY (`id_share`);

--
-- Index pour la table `shared_users`
--
ALTER TABLE `shared_users`
  ADD PRIMARY KEY (`id_share`);

--
-- Index pour la table `societe`
--
ALTER TABLE `societe`
  ADD PRIMARY KEY (`id_societe`);

--
-- Index pour la table `solde_client`
--
ALTER TABLE `solde_client`
  ADD PRIMARY KEY (`id_solde_c`);

--
-- Index pour la table `solde_fournisseur`
--
ALTER TABLE `solde_fournisseur`
  ADD PRIMARY KEY (`id_solde_f`);

--
-- Index pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD PRIMARY KEY (`id_sous_categorie`);

--
-- Index pour la table `sous_famille`
--
ALTER TABLE `sous_famille`
  ADD PRIMARY KEY (`id_s_f`);

--
-- Index pour la table `sous_sous_categorie`
--
ALTER TABLE `sous_sous_categorie`
  ADD PRIMARY KEY (`id_sous_sous_categorie`);

--
-- Index pour la table `statut_lead`
--
ALTER TABLE `statut_lead`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statut_prospect`
--
ALTER TABLE `statut_prospect`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`);

--
-- Index pour la table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Index pour la table `sup_comp_entreprise`
--
ALTER TABLE `sup_comp_entreprise`
  ADD PRIMARY KEY (`id_comp_e`);

--
-- Index pour la table `sup_comp_plateau`
--
ALTER TABLE `sup_comp_plateau`
  ADD PRIMARY KEY (`id_comp_p`);

--
-- Index pour la table `susbscribed_emails`
--
ALTER TABLE `susbscribed_emails`
  ADD PRIMARY KEY (`id_sub`);

--
-- Index pour la table `tache`
--
ALTER TABLE `tache`
  ADD PRIMARY KEY (`id_task`);

--
-- Index pour la table `tache2`
--
ALTER TABLE `tache2`
  ADD PRIMARY KEY (`id_task`);

--
-- Index pour la table `tache_theme`
--
ALTER TABLE `tache_theme`
  ADD PRIMARY KEY (`id_theme`);

--
-- Index pour la table `task_staff`
--
ALTER TABLE `task_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Index pour la table `tauxretenu`
--
ALTER TABLE `tauxretenu`
  ADD PRIMARY KEY (`id_taux`);

--
-- Index pour la table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id_taxe`);

--
-- Index pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Index pour la table `ticket_general`
--
ALTER TABLE `ticket_general`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Index pour la table `transactions_gen`
--
ALTER TABLE `transactions_gen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tva_societe`
--
ALTER TABLE `tva_societe`
  ADD PRIMARY KEY (`id_tva`);

--
-- Index pour la table `type_rdv_factu`
--
ALTER TABLE `type_rdv_factu`
  ADD PRIMARY KEY (`id_trf`);

--
-- Index pour la table `unite`
--
ALTER TABLE `unite`
  ADD PRIMARY KEY (`id_unite`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `users_review`
--
ALTER TABLE `users_review`
  ADD PRIMARY KEY (`id_review`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `utilisateur2`
--
ALTER TABLE `utilisateur2`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `versement_bancaire`
--
ALTER TABLE `versement_bancaire`
  ADD PRIMARY KEY (`id_operation`);

--
-- Index pour la table `work_order`
--
ALTER TABLE `work_order`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `work_order_action`
--
ALTER TABLE `work_order_action`
  ADD PRIMARY KEY (`id_action`);

--
-- Index pour la table `work_order_composant`
--
ALTER TABLE `work_order_composant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `work_order_operation`
--
ALTER TABLE `work_order_operation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `work_order_reservation`
--
ALTER TABLE `work_order_reservation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `id_ab` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `abonnement_detail`
--
ALTER TABLE `abonnement_detail`
  MODIFY `id_ab_de` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `abscence`
--
ALTER TABLE `abscence`
  MODIFY `id_abscence` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `active_categorie`
--
ALTER TABLE `active_categorie`
  MODIFY `id_act` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `agent`
--
ALTER TABLE `agent`
  MODIFY `id_agent` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `allertresponsable`
--
ALTER TABLE `allertresponsable`
  MODIFY `id_alert` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `alllogs`
--
ALTER TABLE `alllogs`
  MODIFY `id-log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `archive`
--
ALTER TABLE `archive`
  MODIFY `id_arch` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `audit_note`
--
ALTER TABLE `audit_note`
  MODIFY `id_note_au` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `autredemande`
--
ALTER TABLE `autredemande`
  MODIFY `id_dem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `avertissement`
--
ALTER TABLE `avertissement`
  MODIFY `id_av` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `avoir_client`
--
ALTER TABLE `avoir_client`
  MODIFY `id_avoir_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `avoir_fournisseur`
--
ALTER TABLE `avoir_fournisseur`
  MODIFY `id_avoir_fournisseur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `banque`
--
ALTER TABLE `banque`
  MODIFY `id_banque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bc_fournisseur`
--
ALTER TABLE `bc_fournisseur`
  MODIFY `id_bc_fournisseur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bl_brouillon_client`
--
ALTER TABLE `bl_brouillon_client`
  MODIFY `id_bl_brouillon_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bl_client`
--
ALTER TABLE `bl_client`
  MODIFY `id_bl_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bl_fournisseur`
--
ALTER TABLE `bl_fournisseur`
  MODIFY `id_bl_fournisseur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `boutique`
--
ALTER TABLE `boutique`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `boutique2`
--
ALTER TABLE `boutique2`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `boutique_ach_log`
--
ALTER TABLE `boutique_ach_log`
  MODIFY `id_achat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `brouillon_detail_facture_client`
--
ALTER TABLE `brouillon_detail_facture_client`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `brouillon_facture_client`
--
ALTER TABLE `brouillon_facture_client`
  MODIFY `id_brouillon_facture_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bs_client`
--
ALTER TABLE `bs_client`
  MODIFY `id_bs_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `caisse_societe`
--
ALTER TABLE `caisse_societe`
  MODIFY `id_caisse` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `caisse_societe_brouillon`
--
ALTER TABLE `caisse_societe_brouillon`
  MODIFY `id_caisse` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `calendar_data`
--
ALTER TABLE `calendar_data`
  MODIFY `id_schedule` int(11) NOT NULL AUTO_INCREMENT COMMENT 'schedule id';

--
-- AUTO_INCREMENT pour la table `calls`
--
ALTER TABLE `calls`
  MODIFY `id_call` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `calls2`
--
ALTER TABLE `calls2`
  MODIFY `id_call` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `call_log`
--
ALTER TABLE `call_log`
  MODIFY `id_call` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `case`
--
ALTER TABLE `case`
  MODIFY `id_case` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cases`
--
ALTER TABLE `cases`
  MODIFY `id_case` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `category_pj`
--
ALTER TABLE `category_pj`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `challenge`
--
ALTER TABLE `challenge`
  MODIFY `id_cha` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `challenge1`
--
ALTER TABLE `challenge1`
  MODIFY `id_challenge` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `challenge_content`
--
ALTER TABLE `challenge_content`
  MODIFY `id_content` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cheque_en_circulation`
--
ALTER TABLE `cheque_en_circulation`
  MODIFY `id_cheque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cheque_en_circulation_brouillon`
--
ALTER TABLE `cheque_en_circulation_brouillon`
  MODIFY `id_cheque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client_mails`
--
ALTER TABLE `client_mails`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client_sms`
--
ALTER TABLE `client_sms`
  MODIFY `id_sms` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `coins`
--
ALTER TABLE `coins`
  MODIFY `id_coins` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comissions`
--
ALTER TABLE `comissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comments_crm`
--
ALTER TABLE `comments_crm`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `composants`
--
ALTER TABLE `composants`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compte_bancaire`
--
ALTER TABLE `compte_bancaire`
  MODIFY `id_cb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `config_mail`
--
ALTER TABLE `config_mail`
  MODIFY `id_mail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `config_sms`
--
ALTER TABLE `config_sms`
  MODIFY `id_config` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contenu_form`
--
ALTER TABLE `contenu_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contrat_client`
--
ALTER TABLE `contrat_client`
  MODIFY `id_contrat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cr_opportunite`
--
ALTER TABLE `cr_opportunite`
  MODIFY `id_cr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `currency`
--
ALTER TABLE `currency`
  MODIFY `id_currency` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `id_dem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demandeconge`
--
ALTER TABLE `demandeconge`
  MODIFY `id_conge` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demandeinfosup`
--
ALTER TABLE `demandeinfosup`
  MODIFY `id_dem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demandepermission`
--
ALTER TABLE `demandepermission`
  MODIFY `id_per` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demande_acompte`
--
ALTER TABLE `demande_acompte`
  MODIFY `id_acompte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demande_client`
--
ALTER TABLE `demande_client`
  MODIFY `id_dem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `depense`
--
ALTER TABLE `depense`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_avoir_client`
--
ALTER TABLE `detail_avoir_client`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_avoir_fournisseur`
--
ALTER TABLE `detail_avoir_fournisseur`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_bc_fournisseur`
--
ALTER TABLE `detail_bc_fournisseur`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_bl_brouillon_client`
--
ALTER TABLE `detail_bl_brouillon_client`
  MODIFY `id_ddc_brouillon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_bl_client`
--
ALTER TABLE `detail_bl_client`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_bl_fournisseur`
--
ALTER TABLE `detail_bl_fournisseur`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_bs_client`
--
ALTER TABLE `detail_bs_client`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_devis_brouillon_client`
--
ALTER TABLE `detail_devis_brouillon_client`
  MODIFY `id_ddc_brouillon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_devis_client`
--
ALTER TABLE `detail_devis_client`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_facture_brouillon_client`
--
ALTER TABLE `detail_facture_brouillon_client`
  MODIFY `id_ddc_brouillon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_facture_client`
--
ALTER TABLE `detail_facture_client`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_facture_fournisseur`
--
ALTER TABLE `detail_facture_fournisseur`
  MODIFY `id_ddc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_pack_plan`
--
ALTER TABLE `detail_pack_plan`
  MODIFY `id_pack_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_releve_cote`
--
ALTER TABLE `detail_releve_cote`
  MODIFY `id_dt_releve_cote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `id_devis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `devis_brouillon_client`
--
ALTER TABLE `devis_brouillon_client`
  MODIFY `id_devis_brouillon_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `devis_client`
--
ALTER TABLE `devis_client`
  MODIFY `id_devis_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dir_communicationtel`
--
ALTER TABLE `dir_communicationtel`
  MODIFY `id_dircom` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dir_comp_entreprise`
--
ALTER TABLE `dir_comp_entreprise`
  MODIFY `id_comp_edir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `discipline`
--
ALTER TABLE `discipline`
  MODIFY `id_d` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `droit_acces_motif`
--
ALTER TABLE `droit_acces_motif`
  MODIFY `id_motif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `droit_acces_user`
--
ALTER TABLE `droit_acces_user`
  MODIFY `id_droit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `id_employe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etape_opp`
--
ALTER TABLE `etape_opp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etatnote`
--
ALTER TABLE `etatnote`
  MODIFY `id_etat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etatrdv`
--
ALTER TABLE `etatrdv`
  MODIFY `idetatrdv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etat_tache`
--
ALTER TABLE `etat_tache`
  MODIFY `id_etat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_a_terme`
--
ALTER TABLE `facture_a_terme`
  MODIFY `id_terme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_a_terme_four`
--
ALTER TABLE `facture_a_terme_four`
  MODIFY `id_terme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_brouillon_client`
--
ALTER TABLE `facture_brouillon_client`
  MODIFY `id_facture_brouillon_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_brouillon_client_taxes`
--
ALTER TABLE `facture_brouillon_client_taxes`
  MODIFY `id_facture_brouillon_taxe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_client`
--
ALTER TABLE `facture_client`
  MODIFY `id_facture_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_client_taxes`
--
ALTER TABLE `facture_client_taxes`
  MODIFY `id_facture_taxe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_detail`
--
ALTER TABLE `facture_detail`
  MODIFY `id_fact_d` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_fournisseur`
--
ALTER TABLE `facture_fournisseur`
  MODIFY `id_facture_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_fournisseur_taxes`
--
ALTER TABLE `facture_fournisseur_taxes`
  MODIFY `id_facture_taxe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_um`
--
ALTER TABLE `facture_um`
  MODIFY `id_factureum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `famille`
--
ALTER TABLE `famille`
  MODIFY `id_famille` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fiche_oppo`
--
ALTER TABLE `fiche_oppo`
  MODIFY `id_fichier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `filter_requests`
--
ALTER TABLE `filter_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formulaire`
--
ALTER TABLE `formulaire`
  MODIFY `id_formulaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `grade`
--
ALTER TABLE `grade`
  MODIFY `id_grade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `grade_general`
--
ALTER TABLE `grade_general`
  MODIFY `id_grade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `grade_ta`
--
ALTER TABLE `grade_ta`
  MODIFY `id_grade_ta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `group_users`
--
ALTER TABLE `group_users`
  MODIFY `id_user_group` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `happyhour`
--
ALTER TABLE `happyhour`
  MODIFY `idhappy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `happyhourchoix`
--
ALTER TABLE `happyhourchoix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `happyhourresults`
--
ALTER TABLE `happyhourresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `heuresup`
--
ALTER TABLE `heuresup`
  MODIFY `id_heuresup` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hisotrique_circulation`
--
ALTER TABLE `hisotrique_circulation`
  MODIFY `id_his` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hisotrique_circulation_brouillon`
--
ALTER TABLE `hisotrique_circulation_brouillon`
  MODIFY `id_his` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historiquecall`
--
ALTER TABLE `historiquecall`
  MODIFY `id_call` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historiquecommentaire`
--
ALTER TABLE `historiquecommentaire`
  MODIFY `id_histo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historiquerdv`
--
ALTER TABLE `historiquerdv`
  MODIFY `id_hist` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historiquetache`
--
ALTER TABLE `historiquetache`
  MODIFY `id_historique` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique_case`
--
ALTER TABLE `historique_case`
  MODIFY `id_historique` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique_client`
--
ALTER TABLE `historique_client`
  MODIFY `id_h_cl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique_operation`
--
ALTER TABLE `historique_operation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique_opp`
--
ALTER TABLE `historique_opp`
  MODIFY `id_histo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique_produit`
--
ALTER TABLE `historique_produit`
  MODIFY `id_h_p` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique_statut_lead`
--
ALTER TABLE `historique_statut_lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique_statut_prospect`
--
ALTER TABLE `historique_statut_prospect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `images_profil`
--
ALTER TABLE `images_profil`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `impayefournisseur`
--
ALTER TABLE `impayefournisseur`
  MODIFY `id_imp_four` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jour_f`
--
ALTER TABLE `jour_f`
  MODIFY `id_jour` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lead`
--
ALTER TABLE `lead`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `leadajouterjour`
--
ALTER TABLE `leadajouterjour`
  MODIFY `idajout` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `liste_prix`
--
ALTER TABLE `liste_prix`
  MODIFY `id_prix` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `litige`
--
ALTER TABLE `litige`
  MODIFY `id_litige` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `magasin`
--
ALTER TABLE `magasin`
  MODIFY `id_magasin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mail_partenaire`
--
ALTER TABLE `mail_partenaire`
  MODIFY `id_mail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `membre_pv_reunion`
--
ALTER TABLE `membre_pv_reunion`
  MODIFY `id_mem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message_support`
--
ALTER TABLE `message_support`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message_ticket`
--
ALTER TABLE `message_ticket`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message_ticket_general`
--
ALTER TABLE `message_ticket_general`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `miseapied`
--
ALTER TABLE `miseapied`
  MODIFY `id_mise` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mission`
--
ALTER TABLE `mission`
  MODIFY `id_mission` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mission2`
--
ALTER TABLE `mission2`
  MODIFY `id_mission` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mission_to_user`
--
ALTER TABLE `mission_to_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mode_paiement`
--
ALTER TABLE `mode_paiement`
  MODIFY `id_mp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `id_mod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `motifannulation`
--
ALTER TABLE `motifannulation`
  MODIFY `id_motif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `multisociete`
--
ALTER TABLE `multisociete`
  MODIFY `idmulti` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nestedcategory`
--
ALTER TABLE `nestedcategory`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_category';

--
-- AUTO_INCREMENT pour la table `nestedcategory_details`
--
ALTER TABLE `nestedcategory_details`
  MODIFY `id_nested` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `niveaugrade`
--
ALTER TABLE `niveaugrade`
  MODIFY `id_n_grade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nomenclature`
--
ALTER TABLE `nomenclature`
  MODIFY `id_nom` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `noteservice`
--
ALTER TABLE `noteservice`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `noteserviceadmin`
--
ALTER TABLE `noteserviceadmin`
  MODIFY `id_note_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `note_c`
--
ALTER TABLE `note_c`
  MODIFY `id_com_r` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `note_com_lead`
--
ALTER TABLE `note_com_lead`
  MODIFY `id_com_r` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `note_com_rdv`
--
ALTER TABLE `note_com_rdv`
  MODIFY `id_com_r` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `note_general`
--
ALTER TABLE `note_general`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `note_rdv`
--
ALTER TABLE `note_rdv`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `objectif2`
--
ALTER TABLE `objectif2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `objectifjour`
--
ALTER TABLE `objectifjour`
  MODIFY `id_obj` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `objectif_demander`
--
ALTER TABLE `objectif_demander`
  MODIFY `id_obj` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `operation`
--
ALTER TABLE `operation`
  MODIFY `id_op` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `opportunite`
--
ALTER TABLE `opportunite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pack_plan`
--
ALTER TABLE `pack_plan`
  MODIFY `id_pack_plan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parametre_categorie`
--
ALTER TABLE `parametre_categorie`
  MODIFY `id_parametre_categorie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parametre_crm`
--
ALTER TABLE `parametre_crm`
  MODIFY `id_param` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parametre_message`
--
ALTER TABLE `parametre_message`
  MODIFY `id_par` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `partenaire`
--
ALTER TABLE `partenaire`
  MODIFY `id_partenaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pointage`
--
ALTER TABLE `pointage`
  MODIFY `id_pointage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pointgrade`
--
ALTER TABLE `pointgrade`
  MODIFY `id_p_grade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `primerdv`
--
ALTER TABLE `primerdv`
  MODIFY `id_prime` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `prix_article`
--
ALTER TABLE `prix_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `prix_plan`
--
ALTER TABLE `prix_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produitenattente`
--
ALTER TABLE `produitenattente`
  MODIFY `id_n_p` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit_combine`
--
ALTER TABLE `produit_combine`
  MODIFY `id_p_comb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `projects_associated`
--
ALTER TABLE `projects_associated`
  MODIFY `id_asso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project_comment`
--
ALTER TABLE `project_comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id_fichier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project_forum`
--
ALTER TABLE `project_forum`
  MODIFY `id_forum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project_issues`
--
ALTER TABLE `project_issues`
  MODIFY `id_issue` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project_logs`
--
ALTER TABLE `project_logs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project_task`
--
ALTER TABLE `project_task`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project_task_history`
--
ALTER TABLE `project_task_history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project_task_staff`
--
ALTER TABLE `project_task_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `prospect_module_cl`
--
ALTER TABLE `prospect_module_cl`
  MODIFY `id_prospect` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pvreunion`
--
ALTER TABLE `pvreunion`
  MODIFY `idpv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id_ques` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rapportauditjour`
--
ALTER TABLE `rapportauditjour`
  MODIFY `id_rapport_audit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rapportauditmois`
--
ALTER TABLE `rapportauditmois`
  MODIFY `id_rapport` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rapportta`
--
ALTER TABLE `rapportta`
  MODIFY `id_rap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rapport_confirmation`
--
ALTER TABLE `rapport_confirmation`
  MODIFY `idrap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rapport_ecoute`
--
ALTER TABLE `rapport_ecoute`
  MODIFY `id_rapport` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rapport_responsable_mois`
--
ALTER TABLE `rapport_responsable_mois`
  MODIFY `id_rapport` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rdv`
--
ALTER TABLE `rdv`
  MODIFY `id_rdv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rdv_brut`
--
ALTER TABLE `rdv_brut`
  MODIFY `id_rdv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `releve_de_cote`
--
ALTER TABLE `releve_de_cote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `remise_en_banque`
--
ALTER TABLE `remise_en_banque`
  MODIFY `id_remise` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `remise_facture`
--
ALTER TABLE `remise_facture`
  MODIFY `id_rem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `retait_bancaire`
--
ALTER TABLE `retait_bancaire`
  MODIFY `id_operation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `retard`
--
ALTER TABLE `retard`
  MODIFY `id_retard` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `retenugen`
--
ALTER TABLE `retenugen`
  MODIFY `id_retenu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `retenugen_four`
--
ALTER TABLE `retenugen_four`
  MODIFY `id_retenu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sale_order`
--
ALTER TABLE `sale_order`
  MODIFY `so_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sale_order_produit`
--
ALTER TABLE `sale_order_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `shared`
--
ALTER TABLE `shared`
  MODIFY `id_share` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `shared_users`
--
ALTER TABLE `shared_users`
  MODIFY `id_share` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `societe`
--
ALTER TABLE `societe`
  MODIFY `id_societe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `solde_client`
--
ALTER TABLE `solde_client`
  MODIFY `id_solde_c` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `solde_fournisseur`
--
ALTER TABLE `solde_fournisseur`
  MODIFY `id_solde_f` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  MODIFY `id_sous_categorie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sous_famille`
--
ALTER TABLE `sous_famille`
  MODIFY `id_s_f` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sous_sous_categorie`
--
ALTER TABLE `sous_sous_categorie`
  MODIFY `id_sous_sous_categorie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `statut_lead`
--
ALTER TABLE `statut_lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `statut_prospect`
--
ALTER TABLE `statut_prospect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `support`
--
ALTER TABLE `support`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sup_comp_entreprise`
--
ALTER TABLE `sup_comp_entreprise`
  MODIFY `id_comp_e` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sup_comp_plateau`
--
ALTER TABLE `sup_comp_plateau`
  MODIFY `id_comp_p` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `susbscribed_emails`
--
ALTER TABLE `susbscribed_emails`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tache`
--
ALTER TABLE `tache`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tache2`
--
ALTER TABLE `tache2`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tache_theme`
--
ALTER TABLE `tache_theme`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `task_staff`
--
ALTER TABLE `task_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tauxretenu`
--
ALTER TABLE `tauxretenu`
  MODIFY `id_taux` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id_taxe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ticket_general`
--
ALTER TABLE `ticket_general`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transactions_gen`
--
ALTER TABLE `transactions_gen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tva_societe`
--
ALTER TABLE `tva_societe`
  MODIFY `id_tva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type_rdv_factu`
--
ALTER TABLE `type_rdv_factu`
  MODIFY `id_trf` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `unite`
--
ALTER TABLE `unite`
  MODIFY `id_unite` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users_review`
--
ALTER TABLE `users_review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur2`
--
ALTER TABLE `utilisateur2`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `versement_bancaire`
--
ALTER TABLE `versement_bancaire`
  MODIFY `id_operation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `work_order`
--
ALTER TABLE `work_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `work_order_action`
--
ALTER TABLE `work_order_action`
  MODIFY `id_action` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `work_order_composant`
--
ALTER TABLE `work_order_composant`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `work_order_operation`
--
ALTER TABLE `work_order_operation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `work_order_reservation`
--
ALTER TABLE `work_order_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
