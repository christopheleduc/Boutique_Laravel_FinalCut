-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 26 août 2019 à 14:14
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `illot_boutique_01`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pstCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `address_users_id_foreign` (`users_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `users_id`, `street`, `pstCode`, `city`, `country`, `updated_at`, `created_at`) VALUES
(3, 3, 'Rue des Bélugas', '04450', 'Bélugaland', 'Béluganda', '2019-03-21 13:35:21', '2019-03-21 13:35:21'),
(4, 1, 'Allée des fleurs qui poussent', '13000', 'Salt  Flower City', 'Corée centrale', '2019-03-21 13:35:21', '2019-03-21 13:35:21'),
(5, 2, 'Tout en haut', '00001', 'Mont Fujihama', 'A droite de la Chine', '2019-03-21 13:35:21', '2019-03-21 13:35:21'),
(6, 4, 'Avenue des enfants perdus', '75000', 'Lilles', 'Espagne', '2019-03-21 13:35:21', '2019-03-21 13:35:21'),
(7, 8, 'Boulevard des grands hommes', '38000', 'Grenoble', 'Pas loin de Paris', '2019-03-21 13:35:21', '2019-03-21 13:35:21'),
(8, 7, 'L\'avenue des troues de serpents', '38100', 'Grenoble', 'Gaulle', '2019-03-21 13:35:21', '2019-03-21 13:35:21'),
(9, 6, 'Impasse du RockNRoll', '38000', 'Grenoble', 'New Jersey', '2019-03-21 13:35:21', '2019-03-21 13:35:21'),
(10, 5, 'Avenue des arbres centenaires', '38100', 'Grenoble', 'France', '2019-03-21 13:35:21', '2019-03-21 13:35:21'),
(11, 9, 'Impasse des routes romaines', '39400', 'Valencia', 'Espagne', '2019-03-21 13:35:21', '2019-03-21 13:35:21'),
(12, 10, 'Street from the street', '45BCY', 'Washington DB', 'Japon', '2019-03-21 13:35:21', '2019-03-21 13:35:21');

-- --------------------------------------------------------

--
-- Structure de la table `adress`
--

DROP TABLE IF EXISTS `adress`;
CREATE TABLE IF NOT EXISTS `adress` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(10) UNSIGNED NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pstCode` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'Book', '2019-03-26 11:23:44', '2019-03-21 13:35:49'),
(2, 'Wear', '2019-03-21 13:35:49', '2019-03-21 13:35:49'),
(3, 'Animal', '2019-03-21 13:35:49', '2019-03-21 13:35:49'),
(4, 'For Home ', '2019-03-21 13:35:49', '2019-03-21 13:35:49');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `linkedin` (`linkedin`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `firstName`, `lastName`, `image`, `linkedin`, `fonction`, `description`, `updated_at`, `created_at`) VALUES
(1, 'Christophe', 'Leduc', 'christophe_vignette.png', 'https://www.linkedin.com/in/christophe-leduc-81a19b82/', 'Serial Hacker', 'Membre fondateur de la société depuis 1942, le Professeur Duck a reçu le prix Nobel de la Fighting Force Hacking Society, pour son protocol d\'acharnement psychotechnique le Direct To Disk !', '2019-03-26 11:23:44', '2019-03-21 13:35:49'),
(2, 'Eric', 'DelGuerra', 'eric_vignette.png', 'https://www.linkedin.com/in/eric-del-guerra-66245480/', 'Serial Hacker', 'Entré en fonction dès 1984, Eric est l\'inventeur du Serial Hacker Possee, qui a largement contribué à pusher le Laravel Crew.', '2019-03-26 11:23:44', '2019-03-21 13:35:49'),
(3, 'Cédric', 'Alonso', 'cedric_vignette.png', 'https://www.linkedin.com/in/c%C3%A9dric-alonso-649074155/', 'Serial Hacker', 'Surnomé le CrocodileCodee, Cédric fut intégré dans la Hack Society Team après avoir dévoré 1500 Troll illuminati de la NSA en moins de 5 heures.', '2019-03-26 11:23:44', '2019-03-21 13:35:49'),
(4, 'Melanie', 'Brustlein', 'melanie_vignette.png', 'https://www.linkedin.com/in/melanie-brustlein-459934180/', 'Serial Hacker', 'Hackeuse de génie, Mélanie a activement contribué à la fondation du Ragging Hacking Crew en posant les premières pierre de l\'édifice.', '2019-03-26 11:23:44', '2019-03-21 13:35:49');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_03_08_145256_orders', 1),
(2, '2019_03_18_101929_products', 1),
(3, '2019_03_18_102346_users', 1),
(4, '2019_03_18_102609_adress', 1),
(5, '2019_03_18_102820_order_product', 1),
(6, '2019_03_18_102938_categories', 1),
(7, '2019_03_18_122943_promo', 1),
(9, '2014_10_12_100000_create_password_resets_table', 2),
(10, '2019_03_27_132441_add_isadmin_to_users', 3),
(11, '2019_07_25_115704_create_contacts_table', 1),
(16, '2019_07_31_094446_create_suppliers_api_table', 6),
(13, '2019_07_31_131438_update_users_table', 5),
(14, '2019_07_31_134543_update_products_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) UNSIGNED NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_users_id_foreign` (`users_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `updated_at`, `created_at`) VALUES
(1, 22, '2019-03-29 12:34:51', '2019-03-29 12:34:51'),
(2, 22, '2019-03-29 12:42:13', '2019-03-29 12:42:13'),
(3, 22, '2019-03-29 13:02:58', '2019-03-29 13:02:58'),
(4, 22, '2019-07-22 11:14:21', '2019-07-22 11:14:21'),
(5, 23, '2019-07-22 11:33:52', '2019-07-22 11:33:52'),
(6, 22, '2019-07-22 11:50:13', '2019-07-22 11:50:13'),
(7, 22, '2019-07-23 05:29:13', '2019-07-23 05:29:13'),
(8, 22, '2019-07-23 05:32:02', '2019-07-23 05:32:02'),
(9, 22, '2019-07-23 05:32:34', '2019-07-23 05:32:34'),
(10, 22, '2019-07-23 06:01:09', '2019-07-23 06:01:09'),
(11, 22, '2019-07-23 06:03:30', '2019-07-23 06:03:30'),
(12, 22, '2019-07-23 06:04:26', '2019-07-23 06:04:26'),
(13, 23, '2019-07-23 12:31:07', '2019-07-23 12:31:07');

-- --------------------------------------------------------

--
-- Structure de la table `orders_product`
--

DROP TABLE IF EXISTS `orders_product`;
CREATE TABLE IF NOT EXISTS `orders_product` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_product_products_id_foreign` (`products_id`),
  KEY `orders_product_orders_id_foreign` (`orders_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders_product`
--

INSERT INTO `orders_product` (`id`, `products_id`, `orders_id`, `quantity`, `updated_at`, `created_at`) VALUES
(1, 18, 2, 1, '2019-03-29 13:42:13', '2019-03-29 13:42:13'),
(2, 19, 3, 2, '2019-03-29 14:02:58', '2019-03-29 14:02:58'),
(3, 18, 4, 1, '2019-07-22 13:14:22', '2019-07-22 13:14:22'),
(4, 6, 5, 2, '2019-07-22 13:33:52', '2019-07-22 13:33:52'),
(5, 4, 6, 1, '2019-07-22 13:50:13', '2019-07-22 13:50:13'),
(6, 18, 7, 1, '2019-07-23 07:29:13', '2019-07-23 07:29:13'),
(7, 18, 9, 1, '2019-07-23 07:32:34', '2019-07-23 07:32:34'),
(8, 18, 10, 1, '2019-07-23 08:01:09', '2019-07-23 08:01:09'),
(9, 2, 13, 1, '2019-07-23 14:31:07', '2019-07-23 14:31:07');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('christophe.leduc@le-campus-numerique.fr', '$2y$10$27u9BGGamVIw5xaf6KHoBu7L0c3GT0sB7Wm/HaYIWkCcGbBYLSzhi', '2019-03-29 07:18:30');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online` tinyint(1) NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vignette` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `promos_id` int(10) UNSIGNED NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `products_categories_id_foreign` (`categories_id`),
  KEY `products_promos_id_foreign` (`promos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `online`, `description`, `img`, `vignette`, `price`, `weight`, `stock`, `categories_id`, `promos_id`, `updated_at`, `created_at`) VALUES
(1, 'Paire de chaussettes sales', 1, 'Une INCROYABLE paire de chaussettes sales ayant appartenu très certainement à Jacques Chirac', 'chaussette.jpg', '', 1500, 560, 15, 2, 2, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(2, 'L\'encyclopédie des petits dauphins moches.', 1, 'Découvrez le véritable visage de la mer, celui des Bélugas.', 'beluga.jpg', '', 120, 1000, 49, 1, 0, '2019-03-21 23:00:00', '2019-03-22 09:44:09'),
(3, 'Tasse à café CHIC mais pas trop', 1, 'Retrouvez tout le goût du café ou du thé dans cette tasse qui fait CHIC mais pas trop', 'tasse.jpg', '', 6500, 387, 34, 4, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(4, 'Houhou le Hiboux', 1, 'Véritable sage chez les rapaces, Houhou sera vous faire rire avec des blagues vraiment dr?le que vous pourrez redire au travail !', 'hiboux.jpg', '', 4500, 280, 0, 3, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(5, 'Landau CALRISSIAN', 1, 'Promenez votre progéniture avec ce nouveau lando tirer de la plus belle des SAGA. ', 'lando.jpg', '', 70000, 3500, 0, 4, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(6, 'Parasol en feuille de Noyer', 1, 'Authentique parasol en feuille de noyer de Grenoble (AOP).', 'parasol.jpg', '', 2000, 1500, 2, 4, 1, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(7, 'Avenir plaisant', 1, 'RUPTURE FOURNISSEUR// Avec un manque de gratitude de la part de toute l\'?quipe', 'avenir.jpg', '', 100000, 42, 0, 4, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(8, 'Lot de 2 Cuillères', 1, 'Ce jolie lot de cuillère fera un parfait cadeau de mariage ou un excellent faire-part. ', 'cuillere.jpg', '', 400, 960, 65, 4, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(9, 'Collection de requêtes SQL.', 1, 'Superbe collection de requêtes SQL qui ne fonctionnent pas qui nous viennes tout droit du Campus Numérique In The Alps. ', 'requete.jpg', '', 200, 100, 75, 1, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(10, 'Vieux bouc. ', 1, 'Ce vieux bouc vous permettra de désodoriser votre maison et même votre quartier de l\'odeur de la pollution', 'bouc.jpg', '', 15000, 2400, 0, 3, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(11, 'Pigeon de Grenoble', 1, 'Particulièrement dégueulasse, le pigeon de Grenoble pourra refiler certaine maladie ? vos amis que vous n\'apprécier pas trop.', 'pigeon.jpg', '', 15000, 200, 3, 3, 1, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(12, 'Veste en cuir', 1, 'Vous croyez vraiment qu\'à ce prix là c\'est du vrai cuir ? ', 'veste.jpg', '', 15000, 2000, 32, 2, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(13, 'Gant de ski non étanche', 1, 'Protège du froid mais pas de l\'eau. Bataille de boule de neige déconseillée. ', 'gant.jpg', '', 450, 400, 0, 2, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(14, 'Lire l\'avenir dans le papier toilette édition Livre de Poche', 1, 'Apprenez à voir l\'avenir après un passage au toilette (conseillé pour une meilleure lecture) ou avant.', 'pq.jpg', '', 1000, 100, 5, 1, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(15, 'Comprendre le Code avec Nico', 1, 'Tu pige rien au code mais ça t\'intéresse quand même ? Regarde le miroir avec ce bouquin et dis \"Nico\" trois fois.', 'nico.jpg', '', 300, 360, 0, 1, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(16, 'Tabouret retourné pour 4 personnes', 1, 'Grace à ce petit tabouret vous allez gagnez beaucoup de place de votre logement ! \r\nDemander conseil à votre pharmacien avant de l\'utiliser.', 'tabouret.jpg', '', 15000, 450, 15, 4, 1, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(17, 'Ticket de Loto perdant encadré. ', 1, 'L\'ancien propriétaire de ce ticket était un peu déçu. (Mauvais joueur surement) ', 'loto.jpg', '', 100, 100, 69, 4, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(18, '\"Les poignées de porte dans leurs états naturels.\"', 1, 'Véritable consécration pour Bernard Don Moricio avec ce portfolio qui à fait l\'unanimité au \"conseil des photos qu\'elles sont belles\".', 'poignet.jpg', '', 2500, 300, 20, 1, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(19, 'L\'astrophysique par Samuel', 1, 'Encore un auteur qui se croit au dessus de tout le monde. ', 'sam.jpg', '', 4000, 450, 45, 1, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(20, 'Le carnet de Chloé', 1, '\"La putin d\'sa race\" Voilà un des merveilleux exemples que l\'on peut retrouver dans le carnet de Chloé.\r\nPour les petits et grands et même la famille. ', 'chloe.jpg', '', 1250, 200, 33, 1, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12'),
(37, 'Lolo', 1, 'Un bon p\'tit lolo pour l\'apéro. Par contre c\'est tout à vos frais', 'lolo.jpg', '', 450, 80, 1, 1, 0, '2019-03-21 13:36:12', '2019-03-21 13:36:12');

-- --------------------------------------------------------

--
-- Structure de la table `promos`
--

DROP TABLE IF EXISTS `promos`;
CREATE TABLE IF NOT EXISTS `promos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL,
  `promo_start` date DEFAULT NULL,
  `promo_end` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `promos`
--

INSERT INTO `promos` (`id`, `name`, `description`, `value`, `type`, `promo_start`, `promo_end`, `updated_at`, `created_at`) VALUES
(1, 'test', NULL, 5454, 1, NULL, NULL, '2019-03-18 13:22:47', '2019-03-18 13:22:47'),
(2, 'test2', 'SOMBRERO', 18, 2, '2019-03-05', '2019-03-31', '2019-03-22 09:58:18', '2019-03-22 09:58:18');

-- --------------------------------------------------------

--
-- Structure de la table `suppliers_api`
--

DROP TABLE IF EXISTS `suppliers_api`;
CREATE TABLE IF NOT EXISTS `suppliers_api` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  `latitude` double(9,4) NOT NULL,
  `longitude` double(9,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `suppliers_api`
--

INSERT INTO `suppliers_api` (`id`, `name`, `checkedAt`, `status`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Monica_Satterfield', '2019-08-26 16:13:02', 0, 50.2257, 170.5542, NULL, NULL),
(2, 'Shayne.Cummerata', '2019-08-26 16:13:02', 0, -62.2381, -130.5333, NULL, NULL),
(3, 'Wendell_Gusikowski64', '2019-08-26 16:13:02', 0, 16.9088, 33.2389, NULL, NULL),
(4, 'Frank44', '2019-08-26 16:13:02', 0, 50.8967, -165.1583, NULL, NULL),
(5, 'Devin60', '2019-08-26 16:13:02', 1, 32.0716, -75.7375, NULL, NULL),
(6, 'Rick_Mueller6', '2019-08-26 16:13:02', 0, 39.1226, -37.0041, NULL, NULL),
(7, 'Kimberly_Braun', '2019-08-26 16:13:02', 0, -80.7349, 6.4900, NULL, NULL),
(8, 'Angel_Stroman', '2019-08-26 16:13:02', 0, -87.0271, 162.8048, NULL, NULL),
(9, 'Xander_Hammes', '2019-08-26 16:13:02', 0, -76.9160, -115.6229, NULL, NULL),
(10, 'Jevon_Reinger', '2019-08-26 16:13:02', 1, 42.6313, -130.5931, NULL, NULL),
(11, 'Myles49Davies', '2019-08-26 16:13:02', 1, 14.7380, -157.6766, NULL, NULL),
(12, 'Narciso84', '2019-08-26 16:13:02', 0, -12.6340, -125.5771, NULL, NULL),
(13, 'Rosella.Kilback22', '2019-08-26 16:13:02', 0, 37.8824, 38.4061, NULL, NULL),
(14, 'Sammie46', '2019-08-26 16:13:02', 0, -9.0155, 34.6593, NULL, NULL),
(15, 'Selena.Schulist67', '2019-08-26 16:13:02', 1, -81.2406, 130.6475, NULL, NULL),
(16, 'Gabriel_Auer68', '2019-08-26 16:13:02', 1, 75.6639, 60.8417, NULL, NULL),
(17, 'Constantin48', '2019-08-26 16:13:02', 1, 79.0579, -25.4273, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isAdmin` tinyint(1) DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `updated_at`, `created_at`, `isAdmin`, `email_verified_at`, `remember_token`, `mail`) VALUES
(1, 'Jean-Marie', 'Le stylo', 'lestylo@ex.pet', 'oui', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(2, 'Thib', 'Papluba', 'Papluba6587@guedin.com', 'sisimafamille', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(3, 'Sam', 'Itch', 'itcheurdu38@beluga.fr', 'draguosse', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(4, 'Litchi', 'Palefrui', 'jenesuispasunfruit@fruitier.org', 'banana', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(5, 'Albert', 'Dudofinet', 'albertotuchi@isere.fr', 'vercorsbelledone', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(6, 'Johnny', 'Maccony', 'allumelabougie@feu.com', 'lelouplamoto', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(7, 'Pêre', 'Siffleur', 'ssssssssss@gmail.com', 'sssssssssssssss', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(8, 'Prad', 'Bitt', 'leVraiPradBitt@orange.fr', 'jsuisbo', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(9, 'Jean-Marie', 'Travolta', 'JMTravolta@os.com', '123456', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(10, 'Albert', 'Tototzi', 'jechante@sing.fr', 'lamusiqueitalienne', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(11, 'Marie-Charlotte', 'Deladonchamps', 'mc-ddchamps@solar.com', 'grossebite', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(12, 'Samuel', 'Elamraoui', 'pedale@jesuce.com', 'sexuel', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(13, 'Michel', 'Fugain', 'Mimifufu@mail.com', 'yolo', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(14, 'Zoro', 'Delavega', 'signezZ@justiciermasque.com', 'z', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(15, 'Th', 'Dort', 'teub@gmal.com', 'boulverser', '2019-03-21 13:36:30', '2019-03-21 13:36:30', 0, NULL, NULL, ''),
(25, 'babar', 'foo', 'bar.bar@bar.foo', '$2y$10$RCU6SG.KCtFTNE5bhF8Zce1vUmU7zHkytUQCPZVhbek4iXTYwiuV2', '2019-03-29 09:25:17', '2019-03-29 09:25:17', 0, NULL, NULL, ''),
(24, 'alex', 'depem', 'test@test.fr', '$2y$10$D56JpmtylVMYymoNHnxRiu.wI7yWC.6yyG1ia25wZpjbDH1aBRxo2', '2019-03-29 09:02:01', '2019-03-29 09:02:01', 0, NULL, NULL, ''),
(23, 'Christophe', 'Leduc', 'christophe.leduc@le-campus-numerique.fr', '$2y$10$cOtVnvWbKyt5NjrCHUUHpe5Oasgcb.aAe8KDhxPjtVL3kVg1Nakye', '2019-03-28 10:44:38', '2019-03-28 10:44:38', 1, NULL, NULL, ''),
(22, 'foo', 'bar', 'foo.foo@foo.bar', '$2y$10$3MG5SxLodreUoYd7RNvyluT0KErG0YVgXzPJIIR0ZvgFCh8H/Nk1W', '2019-03-28 09:15:26', '2019-03-28 09:15:26', 0, NULL, NULL, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
