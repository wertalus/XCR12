-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Mar 2023, 21:59
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `xcr12_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `equipment`
--

CREATE TABLE `equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `equipment_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `equipment`
--

INSERT INTO `equipment` (`id`, `created_at`, `updated_at`, `equipment_name`, `status`) VALUES
(1, NULL, NULL, 'Lagowarka 1', 'Aktywna'),
(2, NULL, NULL, 'Lagowarka 2', 'Aktywna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ilawa`
--

CREATE TABLE `ilawa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `week_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `ilawa`
--

INSERT INTO `ilawa` (`id`, `model_name`, `quantity`, `status`, `created_at`, `updated_at`, `week_number`) VALUES
(1, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-08 21:01:19', '2023-01-08 21:01:19', 5),
(2, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-08 21:01:19', '2023-01-08 21:01:19', 5),
(3, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-08 21:01:19', '2023-01-08 21:01:19', 5),
(4, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-08 21:01:19', '2023-01-08 21:01:19', 4),
(5, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-08 21:01:19', '2023-01-08 21:01:19', 4),
(6, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-22 20:13:13', '2023-01-22 20:13:13', 5),
(7, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-22 20:13:13', '2023-01-22 20:13:13', 5),
(8, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-22 20:13:13', '2023-01-22 20:13:13', 5),
(9, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-22 20:13:13', '2023-01-22 20:13:13', 4),
(10, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-22 20:13:13', '2023-01-22 20:13:13', 4),
(11, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-22 20:14:28', '2023-01-22 20:14:28', 5),
(12, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-22 20:14:28', '2023-01-22 20:14:28', 5),
(13, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-22 20:14:28', '2023-01-22 20:14:28', 5),
(14, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-22 20:14:28', '2023-01-22 20:14:28', 4),
(15, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-22 20:14:28', '2023-01-22 20:14:28', 4),
(16, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-22 20:18:46', '2023-01-22 20:18:46', 5),
(17, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-22 20:18:46', '2023-01-22 20:18:46', 5),
(18, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-22 20:18:46', '2023-01-22 20:18:46', 5),
(19, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-22 20:18:46', '2023-01-22 20:18:46', 4),
(20, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-22 20:18:46', '2023-01-22 20:18:46', 4),
(21, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-22 20:20:51', '2023-01-22 20:20:51', 5),
(22, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-22 20:20:51', '2023-01-22 20:20:51', 5),
(23, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-22 20:20:51', '2023-01-22 20:20:51', 5),
(24, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-22 20:20:51', '2023-01-22 20:20:51', 4),
(25, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-22 20:20:51', '2023-01-22 20:20:51', 4),
(26, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-22 20:21:38', '2023-01-22 20:21:38', 5),
(27, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-22 20:21:38', '2023-01-22 20:21:38', 5),
(28, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-22 20:21:38', '2023-01-22 20:21:38', 5),
(29, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-22 20:21:38', '2023-01-22 20:21:38', 4),
(30, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-22 20:21:38', '2023-01-22 20:21:38', 4),
(31, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-22 20:22:07', '2023-01-22 20:22:07', 5),
(32, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-22 20:22:07', '2023-01-22 20:22:07', 5),
(33, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-22 20:22:07', '2023-01-22 20:22:07', 5),
(34, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-22 20:22:07', '2023-01-22 20:22:07', 4),
(35, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-22 20:22:07', '2023-01-22 20:22:07', 4),
(36, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-23 14:34:00', '2023-01-23 14:34:00', 5),
(37, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-23 14:34:00', '2023-01-23 14:34:00', 5),
(38, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-23 14:34:00', '2023-01-23 14:34:00', 5),
(39, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-23 14:34:00', '2023-01-23 14:34:00', 4),
(40, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-23 14:34:00', '2023-01-23 14:34:00', 4),
(41, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-23 15:47:37', '2023-01-23 15:47:37', 5),
(42, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-23 15:47:37', '2023-01-23 15:47:37', 5),
(43, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-23 15:47:37', '2023-01-23 15:47:37', 5),
(44, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-23 15:47:37', '2023-01-23 15:47:37', 4),
(45, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-23 15:47:37', '2023-01-23 15:47:37', 4),
(46, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-23 19:19:59', '2023-01-23 19:19:59', 5),
(47, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-23 19:19:59', '2023-01-23 19:19:59', 5),
(48, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-23 19:19:59', '2023-01-23 19:19:59', 5),
(49, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-23 19:19:59', '2023-01-23 19:19:59', 4),
(50, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-23 19:19:59', '2023-01-23 19:19:59', 4),
(51, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-26 19:27:07', '2023-01-26 19:27:07', 5),
(52, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-26 19:27:07', '2023-01-26 19:27:07', 5),
(53, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-26 19:27:07', '2023-01-26 19:27:07', 5),
(54, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-26 19:27:07', '2023-01-26 19:27:07', 4),
(55, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-26 19:27:07', '2023-01-26 19:27:07', 4),
(56, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-26 19:28:24', '2023-01-26 19:28:24', 5),
(57, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-26 19:28:24', '2023-01-26 19:28:24', 5),
(58, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-26 19:28:24', '2023-01-26 19:28:24', 5),
(59, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-26 19:28:24', '2023-01-26 19:28:24', 4),
(60, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-26 19:28:24', '2023-01-26 19:28:24', 4),
(61, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-26 20:27:38', '2023-01-26 20:27:38', 5),
(62, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-26 20:27:38', '2023-01-26 20:27:38', 5),
(63, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-26 20:27:38', '2023-01-26 20:27:38', 5),
(64, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-26 20:27:38', '2023-01-26 20:27:38', 4),
(65, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-26 20:27:38', '2023-01-26 20:27:38', 4),
(66, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-26 20:49:18', '2023-01-26 20:49:18', 15),
(67, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-26 20:49:18', '2023-01-26 20:49:18', 15),
(68, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-26 20:49:18', '2023-01-26 20:49:18', 15),
(69, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-26 20:49:18', '2023-01-26 20:49:18', 15),
(70, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-26 20:49:18', '2023-01-26 20:49:18', 15),
(71, 'Gaspar IV LUX 3DL', 12, 'Na produkcji', '2023-01-26 20:50:06', '2023-01-26 20:50:06', 45),
(72, 'Gaspar IV LUX 3DL', 15, 'Wycięte', '2023-01-26 20:50:06', '2023-01-26 20:50:06', 45),
(73, 'Gaspar IV LUX 3DL', 18, 'Wysłane', '2023-01-26 20:50:06', '2023-01-26 20:50:06', 45),
(74, 'Street IV LUX 3DL', 65, 'Oczekuje na tkaninę', '2023-01-26 20:50:06', '2023-01-26 20:50:06', 45),
(75, 'Street IV LUX 3DL', 12, 'Wycięte', '2023-01-26 20:50:06', '2023-01-26 20:50:06', 45);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2022_12_26_170848_create_equipment_table', 1),
(30, '2023_01_02_135933_create_ilawa_table', 2),
(32, '2023_01_08_214644_add_week_to_ilawa_table', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('wertalus@gmail.com', '$2y$10$3yg4Opxn/qhWEdEeke7vQON4GbHCObXgufXOLsI5T998bcSfHSbou', '2022-12-30 16:19:16');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wertalus', 'wertalus@gmail.com', NULL, '$2y$10$IBrwcKN7XlFtj58ZiTnXF.vkbbhdxH9w21qYCDEeE3sMZ2fTYveTW', 'GhtIXYJ02XU9V7pAgTwiuWglyXzwZBfjsDCeasdCwApFHR3o4gIVriDcbpg9', '2022-12-27 21:27:56', '2022-12-27 21:27:56'),
(2, 'Daniel', 'daniel.pater@ymail.com', NULL, '$2y$10$SHbkctuIpcpeNGMukNCiFOBDEINADQtv/23r7lqnnnNk2eHRTL0b6', NULL, '2022-12-30 16:16:37', '2022-12-30 16:16:37');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `ilawa`
--
ALTER TABLE `ilawa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ilawa`
--
ALTER TABLE `ilawa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
