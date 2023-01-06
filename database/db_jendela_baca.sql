-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2023 pada 06.48
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jendela_baca`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ketamvanan', NULL, NULL),
(2, 'kriminal', NULL, '2023-01-05 19:02:56'),
(3, 'Culinary', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_01_154329_create_posts_table', 1),
(6, '2022_12_14_012322_create_categories_table', 2);

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `label` int(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `content`, `category_id`, `label`, `created_at`, `updated_at`) VALUES
(23, '1671492295645-214603274_37c3a072-6d8e-4eff-a1cf-6f9f698635a2_500_500.jpg', 'lokasi yang di lalui hantu', 'belabdehfuehfwuh', 3, 3, '2022-12-19 15:24:55', '2022-12-19 15:24:55'),
(24, '1671492504985-1554228360_1465022.jpg', 'laptop kehilangan', 'beifhehfwofhofih', 2, 3, '2022-12-19 15:28:25', '2022-12-19 15:28:25'),
(25, '1671492783325-arduino-uno-rev3-starter-kit-blue-13.jpg', 'arduino nano yang kecelakaan', 'sebuah bela blea bleab', 3, 2, '2022-12-19 15:33:03', '2022-12-19 15:33:03'),
(29, 'Laura Streich', 'sgreen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:05', '2022-12-21 00:46:05'),
(30, 'Stuart Feest Sr.', 'ureichel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(31, 'Mrs. Yessenia Wilderman', 'fae.roberts@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(32, 'Tillman Vandervort', 'ewald.olson@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(33, 'Bobby Hilpert', 'antwan15@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(34, 'Elta Balistreri', 'botsford.alanis@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(35, 'Jerrell Lakin', 'corkery.lyla@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(36, 'Brandi Von', 'powlowski.shirley@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(37, 'Mohamed Sporer', 'stephen97@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(38, 'Bianka Murphy', 'ntorphy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(39, 'Melany Ernser', 'jaskolski.aiden@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(40, 'Prof. Bell Leffler II', 'elyssa13@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(41, 'Timmy Ernser', 'pschimmel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(42, 'Dr. Aletha Hagenes II', 'davonte86@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:06', '2022-12-21 00:46:06'),
(43, 'Dr. Celestino Mitchell III', 'cruickshank.stanton@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(44, 'Roy Dach', 'gdoyle@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(45, 'Miss Joanne Veum Jr.', 'becker.nathanial@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(46, 'Gregg Gutkowski', 'kuvalis.kole@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(47, 'Shaina Wisoky PhD', 'ted.mohr@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(48, 'Prof. Meta Tillman', 'rogahn.lourdes@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(49, 'Mekhi Jacobson', 'zechariah.harris@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(50, 'Kennedy Waters', 'elnora.kiehn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(51, 'Earl Lindgren', 'miller.christelle@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(52, 'King Sawayn', 'rgreenfelder@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(53, 'Prof. Nelle Kulas', 'angus.halvorson@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(54, 'Ruby Gottlieb', 'jbode@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(55, 'Mr. Hilario Kertzmann', 'dsimonis@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(56, 'Jamaal Prosacco', 'nroob@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(57, 'Dr. Ken Marvin', 'vidal.kunze@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(58, 'Bernita Yundt Sr.', 'haley.alysson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(59, 'Donnell Kuhlman', 'ruecker.jensen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(60, 'Lora Bosco', 'elnora71@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(61, 'Ms. Phyllis King', 'yolanda99@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(62, 'Myrtice Nolan', 'marc70@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:07', '2022-12-21 00:46:07'),
(63, 'Mr. Amir Robel II', 'elyssa26@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(64, 'Wayne Kemmer IV', 'vvolkman@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(65, 'Stacey Kessler', 'melissa.hills@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(66, 'Mr. Terrence Jacobson', 'blick.bradley@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(67, 'Ryder Ebert', 'zeffertz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(68, 'Ms. Laurence Schinner', 'abbott.jammie@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(69, 'Dedric Roob', 'tanner.marks@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(70, 'Norwood Aufderhar', 'vwitting@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(71, 'Alford Kihn', 'gbode@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(72, 'Gertrude Ebert', 'kuvalis.leanna@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(73, 'Eryn Adams', 'lilliana18@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(74, 'Rosina Graham MD', 'jacobi.elva@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(75, 'Cornelius Lang', 'ruecker.rebeca@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(76, 'Oliver Hand', 'hbalistreri@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(77, 'Alisa Reynolds', 'shayna.schinner@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(78, 'Hilario Crist', 'darwin49@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, '2022-12-21 00:46:08', '2022-12-21 00:46:08'),
(80, '1671627883824-214603274_37c3a072-6d8e-4eff-a1cf-6f9f698635a2_500_500.jpg', 'pengetahuan akan gps akan semakin menipis', 'gawat... sebuah pergawatan duniawi', 1, 3, '2022-12-21 05:04:43', '2022-12-21 05:04:43'),
(81, '1671628072355-OPPO-F9.webp', 'dw', 'dwdw', 1, 2, '2022-12-21 05:07:52', '2022-12-21 05:07:52'),
(82, '1671628157920-1.jpg', 'fdfds', 'sfsfs', 2, 2, '2022-12-21 05:09:17', '2022-12-21 05:09:17'),
(88, '1672419548635-receifer-skeleton-2.png', 'kehidupan yang terbengkalai', 'annu hahaha belele', 1, 2, '2022-12-30 08:59:08', '2022-12-30 08:59:08'),
(89, '1672970558910-buka.blob.jpeg', 'irkam', 'fhewfhewo', 2, 2, '2023-01-05 18:02:38', '2023-01-05 18:02:38');

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
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
