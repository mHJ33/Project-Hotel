-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 23 jun 2022 om 03:53
-- Serverversie: 10.4.22-MariaDB
-- PHP-versie: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stardust`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220622131626', '2022-06-23 00:00:58', 141),
('DoctrineMigrations\\Version20220622222439', '2022-06-23 00:25:21', 40),
('DoctrineMigrations\\Version20220622225247', '2022-06-23 00:53:07', 54),
('DoctrineMigrations\\Version20220622225635', '2022-06-23 00:56:43', 55);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `arrival` date NOT NULL,
  `depart` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `room`
--

INSERT INTO `room` (`id`, `name`, `img`, `description`, `price`) VALUES
(1, 'FAMILIE KAMER 130', 'img/hotel103.png', 'De ruime Familie Kamer van Van der Valk Hotel Eindhoven heeft een prachtig uitzicht over de Genneper Parken en is zeer geschikt voor gezinnen met kinderen. De kamer biedt één tweepersoonsbed en apart zitgedeelte met slaapbank geschikt voor 2 kinderen of 1', 80),
(2, 'FAMILIE KAMER 131', '/img/hotel103.png', 'De ruime Familie Kamer van Van der Valk Hotel Eindhoven heeft een prachtig uitzicht over de Genneper Parken en is zeer geschikt voor gezinnen met kinderen. De kamer biedt één tweepersoonsbed en apart zitgedeelte met slaapbank geschikt voor 2 kinderen of 1', 80),
(3, 'FAMILIE KAMER 132', '/img/hotel103.png', 'De ruime Familie Kamer van Van der Valk Hotel Eindhoven heeft een prachtig uitzicht over de Genneper Parken en is zeer geschikt voor gezinnen met kinderen. De kamer biedt één tweepersoonsbed en apart zitgedeelte met slaapbank geschikt voor 2 kinderen of 1', 80),
(4, 'JUNGLE FAMILY SUITE 151', '/img/hotel105.jpg', 'De ruime Jungle Family Suite van Van der Valk Hotel Eindhoven is zeer geschikt voor gezinnen met kinderen of ideaal voor een langdurig zakelijk verblijf. De slaapkamer is voorzien van een box spring, flat screen TV, ruim bureau om aan te werken en riante', 150),
(5, 'JUNGLE FAMILY SUITE 152', '/img/hotel105.jpg', 'De ruime Jungle Family Suite van Van der Valk Hotel Eindhoven is zeer geschikt voor gezinnen met kinderen of ideaal voor een langdurig zakelijk verblijf. De slaapkamer is voorzien van een box spring, flat screen TV, ruim bureau om aan te werken en riante', 150),
(6, 'JUNGLE FAMILY SUITE 153', '/img/hotel105.jpg', 'De ruime Jungle Family Suite van Van der Valk Hotel Eindhoven is zeer geschikt voor gezinnen met kinderen of ideaal voor een langdurig zakelijk verblijf. De slaapkamer is voorzien van een box spring, flat screen TV, ruim bureau om aan te werken en riante', 150),
(7, 'COMFORT TWIN ROOM 171', '/img/hotel107.png', 'Voordelig overnachten op een comfortabele hotelkamer? Dat bieden de Comfort Twin Rooms van Van der Valk Hotel Eindhoven. De kamers zijn ruim opgezet, voorzien van airconditioning en voldoende opbergruimte voor uw kleding en waardevolle spullen. Daarnaast', 120),
(8, 'COMFORT TWIN ROOM 172', '/img/hotel107.png', 'Voordelig overnachten op een comfortabele hotelkamer? Dat bieden de Comfort Twin Rooms van Van der Valk Hotel Eindhoven. De kamers zijn ruim opgezet, voorzien van airconditioning en voldoende opbergruimte voor uw kleding en waardevolle spullen. Daarnaast', 120),
(9, 'COMFORT TWIN ROOM 173', '/img/hotel107.png', 'Voordelig overnachten op een comfortabele hotelkamer? Dat bieden de Comfort Twin Rooms van Van der Valk Hotel Eindhoven. De kamers zijn ruim opgezet, voorzien van airconditioning en voldoende opbergruimte voor uw kleding en waardevolle spullen. Daarnaast', 120);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`) VALUES
(1, 'klant@gmail.com', '[\"ROLE_KLANT\"]', '$2y$13$jA/01xuJo5AMigqUUvRGCOllzjDC/0QBxxAv3w6CTvcPeH3V0RZgW', NULL),
(2, 'admin@stardust.nl', '[\"ROLE_ADMIN\"]', '$2y$13$jA/01xuJo5AMigqUUvRGCOllzjDC/0QBxxAv3w6CTvcPeH3V0RZgW', NULL),
(3, 'work@stardust.nl', '[\"ROLE_WORK\"]', '$2y$13$jA/01xuJo5AMigqUUvRGCOllzjDC/0QBxxAv3w6CTvcPeH3V0RZgW', NULL),
(5, 'klaas@sukkel.com', '[\"ROLE_KLANT\"]', '$2y$13$mRKHRhEE5WZe660FDbsYoO8v0.6MzbmQPKyMZaXSQmxKX5JF/oMLi', NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexen voor tabel `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
