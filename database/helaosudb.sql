-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 04:25 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helaosudb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Cardiovascular & Metabolic Support', 'uploads/categories/20210405084331.jpg', '2021-04-05 03:13:32', '2021-04-05 03:13:32'),
(4, 'cognitive and immune support', 'uploads/categories/20210405084418.jpg', '2021-04-05 03:14:19', '2021-04-05 03:14:19'),
(5, 'digestive and kidney support', 'uploads/categories/20210405084453.jpg', '2021-04-05 03:14:53', '2021-04-05 03:14:53'),
(6, 'joint and muscle support', 'uploads/categories/20210405084516.jpg', '2021-04-05 03:15:16', '2021-04-05 03:15:16'),
(7, 'skin and liver support', 'uploads/categories/20210405084546.jpg', '2021-04-05 03:15:46', '2021-04-05 03:15:46'),
(8, 'teas and oils', 'uploads/categories/20210405084624.jpg', '2021-04-05 03:16:24', '2021-04-05 03:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recipe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `recipe_id`, `likes`, `created_at`, `updated_at`) VALUES
(2, '2', 0, '2021-04-05 03:43:28', '2021-04-05 03:43:28'),
(3, '3', 9, '2021-04-05 05:13:27', '2021-04-05 05:13:27'),
(4, '4', 11, '2021-04-05 09:23:24', '2021-04-05 09:23:24'),
(5, '5', 0, '2021-04-05 09:33:46', '2021-04-05 09:33:46'),
(6, '6', 15, '2021-04-05 09:50:08', '2021-04-05 09:50:08'),
(7, '7', 24, '2021-04-05 10:00:59', '2021-04-05 10:00:59'),
(8, '8', 0, '2021-04-05 13:26:11', '2021-04-05 13:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_05_164621_create_recipes_table', 1),
(5, '2020_04_05_165852_create_categories_table', 1),
(6, '2020_04_08_040726_create_likes_table', 1),
(7, '2020_04_10_124616_create_verifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('akilas765@gmail.com', '$2y$10$BWCz1yCgKjNiUAAY1mspMeQpfhe5gTVVZwnIEDomnjoa0gdCZHiru', '2021-04-05 15:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploads/recipes/default.png',
  `category_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `user_id`, `name`, `ingredients`, `description`, `image`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(2, '2', 'Ayurvedic chai tea with Gula Java (palm sugar)', '1 litre water,1 tbsp green, 5 tbsp Gula Java, 1 l rice milk, 1 pinch vanilla powder', '<h2>Preparation of ayurvedic chai tea with gula java (palm sugar)</h2>\r\n<p>Spices:</p>\r\n<ul>\r\n<li>1 tsp cinnamon</li>\r\n<li>1 tsp ginger powder</li>\r\n<li>&frac12; tsp cardamom powder</li>\r\n<li>&frac12; tsp fennel powder</li>\r\n<li>3 cloves</li>\r\n<li>3 whole star anise</li>\r\n</ul>\r\nBring the water to the boil. Pour 100 ml hot water over the green or black tea. Leave to brew.Add the cinnamon, ginger powder, cardamom powder, fennel powder, cloves and star anise to the rest of the water. Boil thoroughly. Warm the rice or almond milk gently. Pour the tea and the herbal drink through a sieve. Mix the tea and the herbal drink with the rice or almond milk.Sweeten with Gula Java (palm sugar).Recipe from the Ayurveda cook book by Lies Ameeuw', 'uploads/recipes/20210405091327.png', 8, 1, '2021-04-05 03:43:28', '2021-04-05 03:44:02'),
(3, '3', 'Anti-inflammatory pumpkin soup', '600 g pumpkin, 3 cups vegetable stock or water, ½ cup coconut milk, full fat, canned 1 tablespoon coconut oil, (approx) 1 heaped tablespoon lemongrass', '<h3 class=\"wprm-recipe-header wprm-recipe-instructions-header wprm-block-text-uppercase wprm-align-left wprm-header-decoration-line wprm-header-has-actions\">INSTRUCTIONS</h3>\r\n<div class=\"wprm-recipe-instruction-group\">\r\n<ul class=\"wprm-recipe-instructions\">\r\n<li id=\"wprm-recipe-9509-step-0-0\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">Pre-heat oven at 180˚C (350˚F) forced fan, line a tray with baking paper.</div>\r\n</li>\r\n<li id=\"wprm-recipe-9509-step-0-1\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">Peel and chop the pumpkin, toss with coconut oil and roast till golden.</div>\r\n</li>\r\n<li id=\"wprm-recipe-9509-step-0-2\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">Heat coconut oil in a large pot (medium heat), then fry shallots till golden, add cumin and coriander seeds and cook for a bit longer till fragrant.</div>\r\n</li>\r\n<li id=\"wprm-recipe-9509-step-0-3\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">Add lemongrass, ginger, garlic, turmeric, chilli and kaffir leaves, cook another minute &ndash; but don&rsquo;t burn!</div>\r\n</li>\r\n<li id=\"wprm-recipe-9509-step-0-4\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">Add roasted pumpkin and stock, cover and bring to a boil, then let simmer for ten minutes. Add coconut milk, then turn up the heat and let it bubble away uncovered till it reduces down slightly for about 5-10 minutes.</div>\r\n</li>\r\n<li id=\"wprm-recipe-9509-step-0-5\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">Once cooked, remove from heat and let cook a little, then blend till smooth and serve with fresh coriander and a squeeze of lime.</div>\r\n</li>\r\n</ul>\r\n</div>', 'uploads/recipes/20210405104327.png', 3, 1, '2021-04-05 05:13:27', '2021-04-05 05:13:45'),
(4, '3', 'Immune Boosting Ginger Tea', '5-6 cups water,  1/4 cup fresh ginger root,  1/2 lemons (sliced),  1-2 tablespoons raw honey', '<p>1. In a pot, bring water and ginger to a boil. Simmer for 15 minutes. Pour into pitcher. Add lemon and honey to taste. Enjoy!&nbsp;</p>', 'uploads/recipes/20210405145324.png', 4, 1, '2021-04-05 09:23:24', '2021-04-05 09:50:20'),
(5, '1', 'Gotu Kola Kanda (Herbal gruel) Recipe', '1 Cup Red raw rice, 1 Cup Gotu Kola - Roughly chopped, 3 Cups Coconut milk, 2 Cups Water, 1 teaspoon Ginger - Finely chopped, 2 Bulbs Garlic - Finely chopped, 1 teaspoon Lemon Juice, 1 teaspoon Salt', '<p>Gotu kola has been named as&nbsp; &ldquo;herb of longevity\" and it is a staple in traditional Chinese, Indonesian, and Ayurvedic medicine. This medicinal plant has shown to boost brainpower, heal skin issues, and promote liver and kidney health .</p>\r\n<p>Original recipe adopted from Biodiversity for Food and Nutrition Project of Department of Agriculture, Sri Lanka.&nbsp;</p>\r\n<p><strong>Instructions :&nbsp;</strong></p>\r\n<p>Wash Rice.</p>\r\n<p>&bull; Add salt and boil with water.</p>\r\n<p>&bull; Crush Gotukola in a motor or blender using 1 cup of coconut milk.</p>\r\n<p>&bull; When Rice is cooked, add 2 cups of coconut milk and mixed the ginger, garlic and Gotukola juice. Bring Kanda (soup) in to boil.</p>\r\n<p>&bull; Add lemon juice for seasoning.</p>\r\n<p>&bull; Serve plain or with Jaggery and roasted bread.</p>', 'uploads/recipes/20210405150346.jpg', 5, 1, '2021-04-05 09:33:46', '2021-04-05 09:50:19'),
(6, '3', 'Homemade Ayurvedic Pain Relief Balm', '15 gm peppermint oil, 15 gm camphor, 15 gm Sat ajwain, 500 gm white vaseline, 20 gm cloves oil', '<ul>\r\n<li>This one homemade balm&nbsp;<strong>works for all kinds of headaches</strong>&nbsp;caused by tension, stress, allergy-triggered, hormones (PMS and menopause), migraine, and sinus headaches.</li>\r\n<li>It works best for muscle pain and joint pain too. Just rub&nbsp;generously the balm onto sore&nbsp;muscles or joint&nbsp;and you will be amazed how well this DIY balm works.</li>\r\n</ul>\r\n<p><strong>Instructions:</strong></p>\r\n<p>&nbsp;</p>\r\n<ol class=\"wpurp-recipe-instruction-container\">\r\n<li class=\"wpurp-recipe-instruction\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\"><span class=\"wpurp-recipe-instruction-text\">Mix peppermint oil, camphor and sat ajwain together, cover and keep aside.</span></div>\r\n<div class=\"wpurp-rows-row\">&nbsp;</div>\r\n</div>\r\n</li>\r\n<li class=\"wpurp-recipe-instruction\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\"><span class=\"wpurp-recipe-instruction-text\">After 20 minutes camphor will melt on reacting with the other two and a liquid is prepared of all three also called \"Amradhara\".</span></div>\r\n<div class=\"wpurp-rows-row\">&nbsp;</div>\r\n</div>\r\n</li>\r\n<li class=\"wpurp-recipe-instruction\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\"><span class=\"wpurp-recipe-instruction-text\">Now mix well this amradhara and clove oil with white vaseline in an airtight container. Close the lid and keep aside in a cool temperature.</span></div>\r\n<div class=\"wpurp-rows-row\">&nbsp;</div>\r\n</div>\r\n</li>\r\n<li class=\"wpurp-recipe-instruction\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\"><span class=\"wpurp-recipe-instruction-text\">Our ready to use pain relief balm is all set to apply.</span></div>\r\n</div>\r\n</li>\r\n</ol>', 'uploads/recipes/20210405152008.jpg', 6, 1, '2021-04-05 09:50:08', '2021-04-05 09:50:19'),
(7, '1', 'Multani Mitti facepack', '1/2 cup Multani mitti Fullers earth, 1/4 cup Besan Chickpea flour, 1 tbsp Almond oil, 2 tbsp Castor oil or Coconut oil, 1/2 tsp turmeric powder', '<div class=\"wpurp-rows-row\"><span class=\"wpurp-box\"><span class=\"wpurp-title\">Multani mitti or fullers earth is the best cleanser for the skin as it absorbs the oil from the skin well while lending a healthy glow to the skin. By the addition of coconut or almond oil to this soap, it becomes useful for both oily and dry skin types. Neither dry for skin types and neither oily for oily skin types.</span></span></div>\r\n<div class=\"wpurp-rows-row\">&nbsp;</div>\r\n<div class=\"wpurp-rows-row\"><strong><span class=\"wpurp-box\"><span class=\"wpurp-title\">INSTRUCTIONS :</span></span></strong></div>\r\n<div class=\"wpurp-rows-row\">\r\n<div class=\"wpurp-recipe-instructions\">\r\n<div class=\"wpurp-recipe-instruction-group-container wpurp-recipe-instruction-group-container-\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\">&nbsp;</div>\r\n<div class=\"wpurp-rows-row\">\r\n<ol class=\"wpurp-recipe-instruction-container\">\r\n<li class=\"wpurp-recipe-instruction\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\"><span class=\"wpurp-recipe-instruction-text\">Soak multani mitti in enough water for at least half an hour or until the Multani gets mushy and a smooth paste can be made.</span></div>\r\n<div class=\"wpurp-rows-row\">&nbsp;</div>\r\n</div>\r\n</li>\r\n<li class=\"wpurp-recipe-instruction\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\"><span class=\"wpurp-recipe-instruction-text\">Mix multani and water properly and to make a thin paste and add chickpea flour or besan to it.</span></div>\r\n<div class=\"wpurp-rows-row\">&nbsp;</div>\r\n</div>\r\n</li>\r\n<li class=\"wpurp-recipe-instruction\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\"><span class=\"wpurp-recipe-instruction-text\">Now add the remaining ingredients like castor oil, almond oil and turmeric powder to this paste.</span></div>\r\n<div class=\"wpurp-rows-row\">&nbsp;</div>\r\n</div>\r\n</li>\r\n<li class=\"wpurp-recipe-instruction\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\"><span class=\"wpurp-recipe-instruction-text\">Mix well and add more water if required to make a thick consistency of the mixture.</span></div>\r\n<div class=\"wpurp-rows-row\">&nbsp;</div>\r\n</div>\r\n</li>\r\n<li class=\"wpurp-recipe-instruction\">\r\n<div class=\"wpurp-rows\">\r\n<div class=\"wpurp-rows-row\"><span class=\"wpurp-recipe-instruction-text\">Now transfer the ingredients into two bowls and put it into the freezer to freeze.</span></div>\r\n</div>\r\n</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'uploads/recipes/20210405153059.jpg', 7, 1, '2021-04-05 10:00:59', '2021-04-05 10:04:52'),
(8, '3', 'සෙම්ප්‍රතිශ්‍යාවට', 'අමු ඉගුරු,කොත්තමල්ලි,පත්පාඩගම්,කටුවැල් බටු', '<p><strong>සෙම්ප්&zwj;රතිශ්&zwj;යාවක් සෑදීගෙන එනවිට</strong></p>\r\n<p><span style=\"font-weight: 400;\">අමු ඉගුරු,කොත්තමල්ලි,පත්පාඩගම්,කටුවැල් බටු,කළං 3 බැගින් ගෙන වතුර පත 8-1 සිඳුවා සීනි අනුපානය කොට පත 1/2 බැගින් උදේ සවස වඬි 4 ක් පමණ බොන්න. සහිද ලුණු අනුපානය කොට බීම වඬාත් හොදයි.</span></p>\r\n<p><strong>සෙම්ප්&zwj;රතිශ්&zwj;යා උණට</strong></p>\r\n<p><span style=\"font-weight: 400;\">අමු ඉගුරු,කොත්තමල්ලි,පත්පාඩගම්,කටුවැල්බටු,දේවදාර කළං දෙකයි. මදටිය 8 බැගින් ගෙන වතුර පත 8-1 සිඳ සහිඳ ලුණු අනුපානය කොට උදේ සවස පත භාගය බැගින් බොන්න.(වඩි 3 පමණ)</span></p>\r\n<p><strong>කැස්ස සහිත සෙම්ප්&zwj;රතිශ්&zwj;යා උණට</strong></p>\r\n<p><span style=\"font-weight: 400;\">තිප්පිලි කළං 1 යි, අමු ඉගුරු කළං 2යි, බැදපු කොත්තමල්ලි කළං 3 යි, වතුර පත 8-4 සිඳුවා වී පොරි කළං 6 ක් දමා පත එකට සිඳුවා සහිඳ ලුණු කළඳක් දමා උදේ හිස්බඩ එකවර පතම බොන්න.</span></p>', 'uploads/recipes/20210405185611.jpg', 4, 1, '2021-04-05 13:26:11', '2021-04-05 13:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploads/profile_pic/default.png',
  `user_type` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `profile_pic`, `user_type`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lakindu', 'lakindu.yk@gmail.com', 'uploads/profile_pic/20210306174132.jpg', 0, 1, NULL, '$2y$10$mPSwKKHHrtbnBA.TNWu7luyoZCdnEVSXHyV8BdnMhEEkj2Np9f.ry', 'qcuqLpprR3TpHPrCka7cgwZ6G6RfAoHo4U78qFYJshE1RbUeVcNi4v9VpfyM', '2021-03-06 12:03:10', '2021-04-05 13:43:43'),
(2, 'police', 'police@gmail.com', 'uploads/profile_pic/default.png', 1, 1, NULL, '$2y$10$3Sg84ftCZQro7mQYbiKNAe3y20.5fSDX0lQ6hWWbyWJ8pKSbAhzqS', NULL, '2021-03-06 12:18:11', '2021-03-16 00:45:32'),
(3, 'kaputa', 'kaputa@gmail.com', 'uploads/profile_pic/default.png', 0, 1, NULL, '$2y$10$1bw/59rD/fwJtlIMWgju0uFN6pIjOFkVAUIVJe7HnbZruRVajEaZa', NULL, '2021-03-16 00:43:24', '2021-03-16 00:43:24'),
(4, 'akila', 'akilas765@gmail.com', 'uploads/profile_pic/default.png', 1, 1, NULL, '$2y$10$I88ra3r.HkDNm0mZG0TGT.mEMcxKnD8AxEvyURwMQbNcdcrZ4UD2S', NULL, '2021-04-05 15:11:01', '2021-04-05 15:16:08'),
(5, 'santha', 'santha@gmail.com', 'uploads/profile_pic/default.png', 1, 1, NULL, '$2y$10$blbla5K.OkHov/c35JaqU.zyb4ywC2jJdDxdF/G4dxduFcjVciOda', NULL, '2021-04-09 13:53:56', '2021-04-09 13:53:56'),
(6, 'homy', 'homy@gmail.com', 'uploads/profile_pic/default.png', 1, 1, NULL, '$2y$10$WxLl7YpPWux7yPJ0ifaBMe1TU9XlZTuDyo.c6grx.VPsXJ4zRlGR6', NULL, '2021-04-20 06:57:09', '2021-04-20 06:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
