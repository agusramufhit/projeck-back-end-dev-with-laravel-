-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2020 pada 06.16
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eloquent`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 1, 'assets/gallery/lQDlfCRNSVN029gURS7kzfzTjVS6kcoZ9aKIcwDH.jpeg', NULL, '2020-06-15 05:51:26', '2020-06-15 05:51:26'),
(6, 2, 'assets/gallery/4nKN1NZshCWmAxuBhrFgOilkhw40DnDoibnyQ7w1.jpeg', NULL, '2020-06-15 06:38:00', '2020-06-15 06:38:00'),
(7, 3, 'assets/gallery/TXd1RBhOES7cGFcPaKS1UF68tOCEpdJS8rddzMhy.jpeg', NULL, '2020-06-15 06:38:17', '2020-06-15 06:38:17'),
(8, 7, 'assets/gallery/OYyI11LMdh2DcrQ5AFgUtF7wNocThDRE44Hs70er.jpeg', NULL, '2020-06-15 07:08:11', '2020-06-15 07:08:11'),
(9, 1, 'assets/gallery/3T2ucAmTgOAMpe026KA91Vk667NuqS8zdOaGoZL8.jpeg', NULL, '2020-06-15 09:37:43', '2020-06-15 09:37:43'),
(10, 1, 'assets/gallery/5Iy8plkU1jtKsz3XOqTlGXAVr5JtjZkuVpwDyaVT.jpeg', '2020-06-15 09:41:56', '2020-06-15 09:37:56', '2020-06-15 09:41:56'),
(11, 1, 'assets/gallery/EXXUXNUWmn1yMU8mV70EpSlnvPLIUrMTmOpioeOA.jpeg', NULL, '2020-06-15 09:42:11', '2020-06-15 09:42:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_06_05_021802_create_travel_packages_table', 1),
(4, '2020_06_05_023625_create_galleries_table', 2),
(5, '2020_06_05_025928_create_transactions_table', 3),
(6, '2020_06_05_030607_create_transaction_details_table', 4),
(7, '2020_06_05_081504_add_roles_field_to_users_table', 5),
(8, '2020_06_05_143707_add_username_field_to_users_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 190, 290, 'SUCCESS', NULL, '2020-06-06 10:42:01', '2020-06-15 06:26:45'),
(2, 1, 1, 0, 100, 'IN_CART', '2020-06-17 03:07:34', '2020-06-17 01:55:48', '2020-06-17 03:07:34'),
(3, 1, 1, 190, 390, 'PENDING', NULL, '2020-06-17 02:42:02', '2020-06-17 03:07:08'),
(4, 1, 1, 0, 100, 'PENDING', NULL, '2020-06-26 20:53:32', '2020-06-26 20:55:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'kobeni2', 'ID', 1, '2020-06-07', NULL, '2020-06-07 05:40:16', '2020-06-07 05:40:16'),
(3, 2, 'kobeni2', 'ID', 0, '2025-06-17', NULL, '2020-06-17 01:55:48', '2020-06-17 01:55:48'),
(4, 3, 'kobeni2', 'ID', 0, '2025-06-17', NULL, '2020-06-17 02:42:03', '2020-06-17 02:42:03'),
(5, 3, 'kobeni', 'CN', 1, '2020-06-17', '2020-06-17 03:03:10', '2020-06-17 03:02:45', '2020-06-17 03:03:10'),
(6, 3, 'kobeni', 'CN', 1, '2020-06-17', '2020-06-17 03:05:16', '2020-06-17 03:05:12', '2020-06-17 03:05:16'),
(7, 3, 'kobeni', 'CN', 1, '2020-06-17', NULL, '2020-06-17 03:05:53', '2020-06-17 03:05:53'),
(8, 4, 'kobeni2', 'ID', 0, '2025-06-27', NULL, '2020-06-26 20:53:32', '2020-06-26 20:53:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nusa Penida', 'nusa-penida', 'Jakarta', 'Liburan Santai', 'Joget', 'Indonesia', 'seblak', '2020-06-07', '3D', 'Open Trip', 100, NULL, '2020-06-06 11:53:55', '2020-06-07 03:09:50'),
(2, 'Reog', 'reog', 'Data Dummy', 'Data Dummy', 'MASAK', 'ID', 'SEBLAK', '2020-06-15', '2D', 'Open Trip', 260, NULL, NULL, '2020-06-15 06:36:46'),
(3, 'GWK', 'gwk', 'Jakarta', 'MASAK', 'Joget', 'Indonesia', 'seblak', '2020-06-15', '3D', 'Open Trip', 230, NULL, '2020-06-15 06:17:45', '2020-06-15 06:38:37'),
(7, 'Surabaya', 'surabaya', 'Jawa', 'Makan', 'Joget', 'Indonesia', 'seblak', '2020-06-15', '3D', 'Open Trip', 190, NULL, '2020-06-15 07:07:47', '2020-06-15 07:07:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'kobeni2', 'kobeni2@gmail.com', '2020-06-07 10:27:29', '$2y$10$MxwpxY6wjwB5LOCvfQyts.p4aalDKRahwnHkjFT4NcXf.IV2LMeoi', NULL, '2020-06-07 10:26:40', '2020-06-07 10:27:29', 'ADMIN', 'kobeni2'),
(2, 'kobeni', 'kobni50@Gmail.com', NULL, '$2y$10$/SCdK7K8.ae6LC9Jn736de9Io9sLayR19bt5EyLDvzOSEV6GJD/By', NULL, '2020-06-15 03:50:41', '2020-06-15 03:50:41', 'USER', 'kobeni');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
