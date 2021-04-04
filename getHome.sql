-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 14 Janvier 2019 à 20:05
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `getHome`
--

-- --------------------------------------------------------

--
-- Structure de la table `ad`
--

CREATE TABLE `ad` (
  `id` int(11) NOT NULL,
  `Title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `address` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ad`
--

INSERT INTO `ad` (`id`, `Title`, `Description`, `Price`, `category_id`, `address`, `user_id`) VALUES
(1, 'aaa', 'aaaa', '41', 2, '', NULL),
(2, 'Maison à Sousse', '3 chambre de dormir,\r\n2 chambre de dormir', '15000', 1, 'Sousse', NULL),
(3, 'Hotel Sousse', 'Chambre 3', '300000', 1, 'Sousse', NULL),
(4, 'Villa nacer', 'nothing', '30000', 1, 'Tunis', NULL),
(5, 'aavv', 'cc', '44', 1, 'bb', NULL),
(6, 'vv', 'vvv', '44', 2, 'vvv', NULL),
(7, 'aavv', 'cazcazc', '484848', 1, 'bb', NULL),
(8, '4ze84', 'zecezc', '484848', 2, 'zeczec', NULL),
(9, 'vb', 'ezer', '484848', 2, 'vc', NULL),
(10, 'azrazr', 'azr', '484', 2, 'ezf', NULL),
(11, 'azrazr', 'azfazf', '4848', 2, 'azra', NULL),
(12, '4484', '8484', '848', 1, '484', NULL),
(13, 'zeczec', 'zeczec', '484', 2, 'zeczec', NULL),
(14, 'azfazfazf', 'azfazfazfaz', '484848', 1, 'azfazfazf', NULL),
(15, 'efz', 'ezfze', '4', 2, 'zfeezf', NULL),
(16, 'aa', 'azr', '444', 1, 'aaa', NULL),
(17, 'azrazr', 'azrazr', '555', 1, 'azrazr', NULL),
(18, 'azrazr', 'zrazr', '44', 1, 'zrazra', NULL),
(19, 'aaa', 'aa', '5222222', 1, 'aaa', NULL),
(20, 'anouar', 'zrazr', '200058', 3, 'aa', NULL),
(21, 'azfezf', 'zefzef', '44', 2, 'zefzef', 4),
(22, 'new', 'maison avec 2 salle', '40000', 2, 'sousse', 4),
(23, 'azrzar', 'azrazr', '555', 1, 'azrazr', 4),
(24, 'aa', 'aa', '444', 2, 'aa', 4),
(25, 't', 't', '1', 1, 't', 4),
(26, 'ds', 'ds', '2', 1, 'ds', 4),
(27, 'aaa', 'aa', '4', 1, 'aa', 4),
(28, 'qq', 'qq', '55', 1, 'qq', 4),
(29, 'Terrain', 'terrain aaa aaa', '500000', 2, 'Sousse', 4),
(30, 'Maison LAC2', 'c\'est une maison à deux etage,stiue en lac2', '900000', 1, 'Tunis', 4),
(31, 'azeaze', 'zarazr', '900000000', 2, 'azrazr', 4),
(32, 'aaaaa', 'aaa', '7777', 1, 'aaaaa', 6);

-- --------------------------------------------------------

--
-- Structure de la table `ad__fields`
--

CREATE TABLE `ad__fields` (
  `id` int(11) NOT NULL,
  `field_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_id` int(11) NOT NULL,
  `fields_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ad__fields`
--

INSERT INTO `ad__fields` (`id`, `field_value`, `ad_id`, `fields_id`) VALUES
(1, '55', 28, 1),
(2, '55', 28, 2),
(3, '55', 28, 3),
(4, '70', 29, 4),
(5, '60.5', 29, 5),
(6, '180', 29, 6),
(7, '2', 30, 1),
(8, '3', 30, 2),
(9, '7000', 30, 3),
(10, '90.2', 31, 4),
(11, '70.5', 31, 5),
(12, '40', 31, 6),
(13, '44', 32, 1),
(14, '9', 32, 2),
(15, '150', 32, 3);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Maison'),
(2, 'Terrain'),
(3, 'Appartement'),
(4, 'Local Commercial');

-- --------------------------------------------------------

--
-- Structure de la table `category__fields`
--

CREATE TABLE `category__fields` (
  `id` int(11) NOT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_possible_values` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `category__fields`
--

INSERT INTO `category__fields` (`id`, `field_name`, `field_type`, `field_title`, `field_possible_values`, `category_id`) VALUES
(1, 'nb_ch', 'Symfony\\Component\\Form\\Extension\\Core\\Type\\TextType', 'Nombre De Chambre', '4 8 9', 1),
(2, 'nb_etage', 'Symfony\\Component\\Form\\Extension\\Core\\Type\\IntegerType', 'nombre etage', '4', 1),
(3, 'surface', 'Symfony\\Component\\Form\\Extension\\Core\\Type\\NumberType', 'Surface', '255 255', 1),
(4, 'longueur', 'Symfony\\Component\\Form\\Extension\\Core\\Type\\NumberType', 'Longueur', '', 2),
(5, 'largeur', 'Symfony\\Component\\Form\\Extension\\Core\\Type\\NumberType', 'Largeur', '', 2),
(6, 'surface', 'Symfony\\Component\\Form\\Extension\\Core\\Type\\NumberType', 'Surface', '', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `phoneNumber`, `city`) VALUES
(2, 'ahmed_bs', 'Ahmed', 'Ben Saad', 'ahmedbensaad@gmail.com', '$2y$13$psJit2tJO22FPK82dfXg.O/ObG/kXfC6FmIJ1GTZ3HRYqGRCQnFrC', '22556998', 'Sousse'),
(4, 'oba98', 'omar', 'ben abdejlil', 'oba98@gmail.com', '$2y$13$1ET/q53BKg6LOFJ/B0.ANumJu0xe/G/PEQ1toojEAteMyRupPjZ8.', '29488826', 'Sousse'),
(5, 'Amelg', 'Amel', 'guemiza', 'amelg@gmail.com', '$2y$13$eLxsxX62vaj.p99CH2xMgud73x9xjEaJwzFLGICv03ZQPPxWn5rN.', '21625587', 'Sousse'),
(6, 'anouuar', 'anouar', 'bensaad', 'gm.amel@gmail.com', '$2y$13$vVLiSHmaDKpyV4zfAliYUenXX0H3/ZHKDlNo4IsCdEyXJm7z5nBaa', '22222222', 'Tunis');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_77E0ED5812469DE2` (`category_id`),
  ADD KEY `IDX_77E0ED58A76ED395` (`user_id`);

--
-- Index pour la table `ad__fields`
--
ALTER TABLE `ad__fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4A9CED8F4F34D596` (`ad_id`),
  ADD KEY `IDX_4A9CED8F2C5439AE` (`fields_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category__fields`
--
ALTER TABLE `category__fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_400E447512469DE2` (`category_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ad`
--
ALTER TABLE `ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `ad__fields`
--
ALTER TABLE `ad__fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `category__fields`
--
ALTER TABLE `category__fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `FK_77E0ED5812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_77E0ED58A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `ad__fields`
--
ALTER TABLE `ad__fields`
  ADD CONSTRAINT `FK_4A9CED8F2C5439AE` FOREIGN KEY (`fields_id`) REFERENCES `category__fields` (`id`),
  ADD CONSTRAINT `FK_4A9CED8F4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`);

--
-- Contraintes pour la table `category__fields`
--
ALTER TABLE `category__fields`
  ADD CONSTRAINT `FK_400E447512469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
