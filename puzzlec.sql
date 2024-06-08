-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 08 2024 г., 19:07
-- Версия сервера: 8.0.29
-- Версия PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `puzzlec`
--

-- --------------------------------------------------------

--
-- Структура таблицы `approved_materials`
--

CREATE TABLE `approved_materials` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `approved_materials`
--

INSERT INTO `approved_materials` (`id`, `users_id`, `path`, `original_path`, `type`, `format`, `likes`, `created_at`, `updated_at`) VALUES
(1, 2, 'r1FEmsoyRSdwocZJYobtU4WZkgU5CtW4EzrmQdYA.png', 'hXdYXcOvRHdgt3E9kSm9EDSU49JpAXmfDqZ6lzVC.jpg', 'photo', 'vertical', 0, '2024-05-13 03:01:45', '2024-05-13 03:01:45'),
(2, 3, 'fTR5TxRAqMonUiUzxbSGtk7IPL8tb4Z3xfWMX8iG.png', 'DqtrV3x1cBduWXW2AsWY18YkRmTLJf7l1DvQsvM8.jpg', 'photo', 'vertical', 1, '2024-05-13 03:03:53', '2024-05-14 01:16:38'),
(3, 4, 'qz3FG3UWuR6ERTQqdhOoMLL3SyQJae4tahV8qIqi.png', 'BFqXeQp687KqKcsUNZy26elQHb6vKYZ8qwIC5yZj.jpg', 'photo', 'horrizontal', 3, '2024-05-13 03:04:47', '2024-05-14 01:21:21'),
(4, 5, 'gEElplZS3enk2eyUJumurNKI6KxAtQSYmfkRHmqk.png', 'shGKIRQeIWuPjWr5AVTld5cpkq9sfrkBWXXFNd1L.jpg', 'photo', 'vertical', 1, '2024-05-13 03:05:21', '2024-05-14 01:07:22'),
(5, 6, '3tGBexS19rtcdTXgxgb3tu9IIP6hE0iKy5GeAUsM.png', 'eyrD1gq1vp2dIXK081Xslraf5B3N7x903lr3THC6.jpg', 'photo', 'vertical', 1, '2024-05-13 03:05:54', '2024-05-14 01:13:26'),
(6, 2, 't0rIm8NSQnPxZVbpa1DTGQLAqMdECKYFoarN4nPD.png', '1v5oTKqpz6rq2kiQhsGTcCjVKqdbuvsv5WPiSfTZ.jpg', 'photo', 'horrizontal', 0, '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(7, 2, 'lZm9pJaRctILzliDMcO5mTfud5uzVtNt5PumTUzH.png', 'WpC4nwkIUdaZV1zS2lXanXjG8gMpFmWW7JsKcbU4.jpg', 'photo', 'horrizontal', 2, '2024-05-13 03:28:59', '2024-05-14 01:21:12'),
(8, 3, 'MfAZmemNf5Zt3hjmUT2VawVv2J7nz6wUvnBTFnqq.png', 'Mqw7TLRp0AHYw8Ay3e9tzyWi4aKyowiED5c6heHS.jpg', 'photo', 'vertical', 2, '2024-05-13 03:29:43', '2024-05-14 01:16:20'),
(9, 4, 'somNpBGMZPEvSPQqY46B29FJJS0suutTz4CjLtrV.png', 'pX11cNiCduOA4ZqPQCAeQaXbIDv43bl1coMJ4xPZ.jpg', 'photo', 'vertical', 2, '2024-05-13 03:30:51', '2024-05-14 01:20:58'),
(10, 5, 'AoxMMFwvyNjrOPThgqYlMSuSW9IYjqjfaHyTyq7w.png', 'gqNzYp5kOZTVX466yK6CEdxdkofE3zrBb4aRVeKX.jpg', 'photo', 'horrizontal', 1, '2024-05-13 03:32:44', '2024-05-14 01:07:02'),
(11, 5, 'yhVA5qOLM8Qn1e8mgKmKNSs5h8rmpLVjCGgH14mV.png', 'ZAHBLZ25TNMiQT9czL4uzUTaQb9VggU4UvM8hF3c.jpg', 'photo', 'vertical', 1, '2024-05-13 03:33:31', '2024-05-14 01:07:00'),
(12, 2, 'JTD2yPVR5yUd1F1oZBONIdxePmAVgSU5sg4eBUvU.png', 'PKT2LqvlLWtQswlvtoJpVJ31mWX1blHPu6oiORGw.jpg', 'photo', 'horrizontal', 2, '2024-05-13 03:34:10', '2024-05-14 01:20:54'),
(13, 3, '0WQBFznmDWz2nc8JPPgw7VG1atmPt42fwfUO5FSu.png', 'rzJ3wDbr24NrlGCwQDQ4GtYXoBOjwnYllPLhvf5I.jpg', 'photo', 'horrizontal', 2, '2024-05-13 03:35:07', '2024-05-14 01:16:03'),
(14, 6, '4HEJJoiw87K8kqdPbi0Xj2LfDScq09EEZukg3qkl.png', 'lEZEZ7dEM5q3EuwJ1E96GLfKSE3xGG9IaQLPembZ.jpg', 'photo', 'vertical', 2, '2024-05-13 03:37:02', '2024-05-14 01:20:42'),
(15, 2, 'ZHXfC4jFZWts9Izx4DZ7VUs432sxmh60ZRrde9hL.png', '3xcXECVQu4rOgsTwgkVsGmQWuBdxfZzfG9TqqKqa.jpg', 'photo', 'horrizontal', 1, '2024-05-13 03:39:49', '2024-05-14 01:28:49'),
(16, 3, 'g9D5bYPpUZlZGXTVECjpeOeolvaeaYp5VK6LRCFj.png', 'hLAVUVUcCik3DjBlPO9u6sY1T0VUBewTK9EQEOCo.jpg', 'photo', 'vertical', 3, '2024-05-13 03:40:54', '2024-05-14 01:15:58'),
(17, 5, 'hyDItPuJvFx6Nt1De3NXyfYjlmpDg6TQA6SeYIPx.png', '5Qortbf4T3yHvaaDxVTm7efdyu9XUzv7fxSLjZQ2.jpg', 'photo', 'horrizontal', 1, '2024-05-13 03:41:42', '2024-05-14 01:06:51'),
(18, 3, 'ZIYGYK48aEOUHlFi5gd3as1dJHMUFVgKKou3CW0M.png', 'TuYpjsQpBTc1ITz9gSH3jxU7QIWTmidQDccMNr3A.jpg', 'photo', 'vertical', 2, '2024-05-13 03:43:23', '2024-05-14 01:28:37'),
(19, 4, 'bh7YMxvzuvhcNIs9ZN7PdtaiJfPUsrsg8unMIhCE.png', 'UJ2FzvmgyYJD1fF5tbPoT9aSFi3BPEUp6u2mYvuF.jpg', 'photo', 'horrizontal', 3, '2024-05-13 03:44:17', '2024-05-14 01:28:32'),
(20, 5, 'Gz6nNA58Fhb5ORcgP3LNrlhX5frXtXxXKTcLL6JK.png', 'J4480K0EIPkff1kPfY9iZ5jwSP9eOBOZ4uKvrbjn.jpg', 'photo', 'horrizontal', 3, '2024-05-13 03:45:15', '2024-05-14 01:28:30'),
(21, 6, 'kzGQtGKl9WH0cEE12JxwhzLZUCohXECWLMmMSqKc.png', 'IE6xy5CJ3E78JLy5B56sGUNIQiiDqdlosbEbFchm.jpg', 'photo', 'squere', 3, '2024-05-13 03:46:22', '2024-05-14 01:28:28');

-- --------------------------------------------------------

--
-- Структура таблицы `boughts`
--

CREATE TABLE `boughts` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `approved_materials_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `boughts`
--

INSERT INTO `boughts` (`id`, `users_id`, `approved_materials_id`, `created_at`, `updated_at`) VALUES
(1, 6, 17, '2024-05-14 01:10:03', '2024-05-14 01:10:03'),
(2, 4, 16, '2024-05-14 01:18:13', '2024-05-14 01:18:13'),
(3, 4, 11, '2024-05-14 01:18:39', '2024-05-14 01:18:39'),
(4, 4, 7, '2024-05-14 01:18:49', '2024-05-14 01:18:49');

-- --------------------------------------------------------

--
-- Структура таблицы `collections`
--

CREATE TABLE `collections` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `collections`
--

INSERT INTO `collections` (`id`, `users_id`, `name`, `path`, `created_at`, `updated_at`) VALUES
(1, 6, 'еда', 'Gz6nNA58Fhb5ORcgP3LNrlhX5frXtXxXKTcLL6JK.png', '2024-05-14 01:07:52', '2024-05-14 01:08:01'),
(2, 5, 'Природа', 'g9D5bYPpUZlZGXTVECjpeOeolvaeaYp5VK6LRCFj.png', '2024-05-14 01:12:33', '2024-05-14 01:12:47'),
(3, 3, 'Вдохновение', '4HEJJoiw87K8kqdPbi0Xj2LfDScq09EEZukg3qkl.png', '2024-05-14 01:20:06', '2024-05-14 01:20:41'),
(4, 3, 'Красивое', 'kzGQtGKl9WH0cEE12JxwhzLZUCohXECWLMmMSqKc.png', '2024-05-14 01:20:14', '2024-05-14 01:20:24');

-- --------------------------------------------------------

--
-- Структура таблицы `collection_items`
--

CREATE TABLE `collection_items` (
  `id` bigint UNSIGNED NOT NULL,
  `collections_id` bigint UNSIGNED NOT NULL,
  `approved_materials_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `collection_items`
--

INSERT INTO `collection_items` (`id`, `collections_id`, `approved_materials_id`, `created_at`, `updated_at`) VALUES
(1, 1, 20, '2024-05-14 01:08:01', '2024-05-14 01:08:01'),
(2, 1, 17, '2024-05-14 01:08:05', '2024-05-14 01:08:05'),
(3, 1, 11, '2024-05-14 01:08:14', '2024-05-14 01:08:14'),
(4, 1, 10, '2024-05-14 01:08:16', '2024-05-14 01:08:16'),
(5, 1, 4, '2024-05-14 01:08:31', '2024-05-14 01:08:31'),
(6, 2, 16, '2024-05-14 01:12:47', '2024-05-14 01:12:47'),
(7, 2, 13, '2024-05-14 01:13:01', '2024-05-14 01:13:01'),
(8, 2, 9, '2024-05-14 01:13:16', '2024-05-14 01:13:16'),
(9, 2, 8, '2024-05-14 01:13:21', '2024-05-14 01:13:21'),
(10, 2, 3, '2024-05-14 01:13:31', '2024-05-14 01:13:31'),
(11, 4, 21, '2024-05-14 01:20:24', '2024-05-14 01:20:24'),
(12, 4, 20, '2024-05-14 01:20:28', '2024-05-14 01:20:28'),
(13, 4, 14, '2024-05-14 01:20:39', '2024-05-14 01:20:39'),
(14, 3, 14, '2024-05-14 01:20:41', '2024-05-14 01:20:41'),
(15, 3, 12, '2024-05-14 01:20:53', '2024-05-14 01:20:53'),
(16, 3, 9, '2024-05-14 01:21:01', '2024-05-14 01:21:01'),
(17, 4, 9, '2024-05-14 01:21:02', '2024-05-14 01:21:02'),
(18, 3, 7, '2024-05-14 01:21:14', '2024-05-14 01:21:14'),
(19, 4, 3, '2024-05-14 01:21:23', '2024-05-14 01:21:23');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `approved_materials_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id`, `users_id`, `approved_materials_id`, `created_at`, `updated_at`) VALUES
(1, 6, 20, '2024-05-14 01:06:45', '2024-05-14 01:06:45'),
(2, 6, 19, '2024-05-14 01:06:47', '2024-05-14 01:06:47'),
(3, 6, 17, '2024-05-14 01:06:51', '2024-05-14 01:06:51'),
(4, 6, 16, '2024-05-14 01:06:56', '2024-05-14 01:06:56'),
(5, 6, 11, '2024-05-14 01:07:00', '2024-05-14 01:07:00'),
(6, 6, 10, '2024-05-14 01:07:02', '2024-05-14 01:07:02'),
(7, 6, 4, '2024-05-14 01:07:22', '2024-05-14 01:07:22'),
(9, 6, 3, '2024-05-14 01:07:29', '2024-05-14 01:07:29'),
(10, 5, 16, '2024-05-14 01:12:48', '2024-05-14 01:12:48'),
(11, 5, 19, '2024-05-14 01:12:51', '2024-05-14 01:12:51'),
(12, 5, 21, '2024-05-14 01:12:54', '2024-05-14 01:12:54'),
(13, 5, 14, '2024-05-14 01:12:59', '2024-05-14 01:12:59'),
(14, 5, 13, '2024-05-14 01:13:02', '2024-05-14 01:13:02'),
(15, 5, 9, '2024-05-14 01:13:17', '2024-05-14 01:13:17'),
(16, 5, 8, '2024-05-14 01:13:19', '2024-05-14 01:13:19'),
(17, 5, 5, '2024-05-14 01:13:26', '2024-05-14 01:13:26'),
(18, 5, 3, '2024-05-14 01:13:32', '2024-05-14 01:13:32'),
(19, 4, 18, '2024-05-14 01:15:53', '2024-05-14 01:15:53'),
(20, 4, 16, '2024-05-14 01:15:58', '2024-05-14 01:15:58'),
(21, 4, 13, '2024-05-14 01:16:03', '2024-05-14 01:16:03'),
(22, 4, 12, '2024-05-14 01:16:06', '2024-05-14 01:16:06'),
(23, 4, 8, '2024-05-14 01:16:20', '2024-05-14 01:16:20'),
(24, 4, 7, '2024-05-14 01:16:22', '2024-05-14 01:16:22'),
(26, 4, 2, '2024-05-14 01:16:38', '2024-05-14 01:16:38'),
(27, 3, 21, '2024-05-14 01:20:21', '2024-05-14 01:20:21'),
(28, 3, 20, '2024-05-14 01:20:26', '2024-05-14 01:20:26'),
(29, 3, 14, '2024-05-14 01:20:42', '2024-05-14 01:20:42'),
(30, 3, 12, '2024-05-14 01:20:54', '2024-05-14 01:20:54'),
(31, 3, 9, '2024-05-14 01:20:58', '2024-05-14 01:20:58'),
(32, 3, 7, '2024-05-14 01:21:12', '2024-05-14 01:21:12'),
(33, 3, 3, '2024-05-14 01:21:21', '2024-05-14 01:21:21'),
(34, 7, 21, '2024-05-14 01:28:28', '2024-05-14 01:28:28'),
(35, 7, 20, '2024-05-14 01:28:30', '2024-05-14 01:28:30'),
(36, 7, 19, '2024-05-14 01:28:32', '2024-05-14 01:28:32'),
(37, 7, 18, '2024-05-14 01:28:37', '2024-05-14 01:28:37'),
(38, 7, 15, '2024-05-14 01:28:49', '2024-05-14 01:28:49');

-- --------------------------------------------------------

--
-- Структура таблицы `material_for_approvals`
--

CREATE TABLE `material_for_approvals` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `material_for_approvals`
--

INSERT INTO `material_for_approvals` (`id`, `users_id`, `path`, `tags`, `created_at`, `updated_at`) VALUES
(11, 3, 'uNXMzujyOP4Jq3kkcvQHhNU6BYSJ1eOw6HPr5v5u.jpg', 'улица,дом,калитка', '2024-05-13 02:29:57', '2024-05-13 02:29:57'),
(26, 1, 'uOQ3XqDsce8utZ8lT4CLIyIYh1wwDorhLiZxAWXw.jpg', 'стена', '2024-05-13 03:48:17', '2024-05-13 03:48:17'),
(27, 7, '4XhRTWCP3prlIlONTlY5IoZOwsoCAyuXQ9ekTh8R.png', 'плохие слова))))))))', '2024-05-14 03:45:35', '2024-05-14 03:45:35');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `approved_materials_id` int DEFAULT NULL,
  `user_send_id` int NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `users_id`, `approved_materials_id`, `user_send_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, 'Ваша работа была одобрена!', '2024-05-13 03:01:45', '2024-05-13 03:01:45'),
(2, 3, 2, 0, 'Ваша работа была одобрена!', '2024-05-13 03:03:53', '2024-05-13 03:03:53'),
(3, 4, 3, 0, 'Ваша работа была одобрена!', '2024-05-13 03:04:47', '2024-05-13 03:04:47'),
(4, 5, 4, 0, 'Ваша работа была одобрена!', '2024-05-13 03:05:21', '2024-05-13 03:05:21'),
(5, 6, 5, 0, 'Ваша работа была одобрена!', '2024-05-13 03:05:54', '2024-05-13 03:05:54'),
(6, 2, 6, 0, 'Ваша работа была одобрена!', '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(7, 2, 7, 0, 'Ваша работа была одобрена!', '2024-05-13 03:28:59', '2024-05-13 03:28:59'),
(8, 3, 8, 0, 'Ваша работа была одобрена!', '2024-05-13 03:29:43', '2024-05-13 03:29:43'),
(9, 4, 9, 0, 'Ваша работа была одобрена!', '2024-05-13 03:30:51', '2024-05-13 03:30:51'),
(10, 5, 10, 0, 'Ваша работа была одобрена!', '2024-05-13 03:32:44', '2024-05-13 03:32:44'),
(11, 5, 11, 0, 'Ваша работа была одобрена!', '2024-05-13 03:33:31', '2024-05-13 03:33:31'),
(12, 2, 12, 0, 'Ваша работа была одобрена!', '2024-05-13 03:34:10', '2024-05-13 03:34:10'),
(13, 3, 13, 0, 'Ваша работа была одобрена!', '2024-05-13 03:35:07', '2024-05-13 03:35:07'),
(14, 6, 14, 0, 'Ваша работа была одобрена!', '2024-05-13 03:37:02', '2024-05-13 03:37:02'),
(15, 2, 15, 0, 'Ваша работа была одобрена!', '2024-05-13 03:39:49', '2024-05-13 03:39:49'),
(16, 3, 16, 0, 'Ваша работа была одобрена!', '2024-05-13 03:40:54', '2024-05-13 03:40:54'),
(17, 5, 17, 0, 'Ваша работа была одобрена!', '2024-05-13 03:41:42', '2024-05-13 03:41:42'),
(18, 3, 18, 0, 'Ваша работа была одобрена!', '2024-05-13 03:43:23', '2024-05-13 03:43:23'),
(19, 4, 19, 0, 'Ваша работа была одобрена!', '2024-05-13 03:44:17', '2024-05-13 03:44:17'),
(20, 5, 20, 0, 'Ваша работа была одобрена!', '2024-05-13 03:45:15', '2024-05-13 03:45:15'),
(21, 6, 21, 0, 'Ваша работа была одобрена!', '2024-05-13 03:46:22', '2024-05-13 03:46:22'),
(22, 5, 20, 6, 'Понравилась ваша работа!', '2024-05-14 01:06:45', '2024-05-14 01:06:45'),
(23, 4, 19, 6, 'Понравилась ваша работа!', '2024-05-14 01:06:47', '2024-05-14 01:06:47'),
(24, 5, 17, 6, 'Понравилась ваша работа!', '2024-05-14 01:06:51', '2024-05-14 01:06:51'),
(25, 3, 16, 6, 'Понравилась ваша работа!', '2024-05-14 01:06:56', '2024-05-14 01:06:56'),
(26, 5, 11, 6, 'Понравилась ваша работа!', '2024-05-14 01:07:00', '2024-05-14 01:07:00'),
(27, 5, 10, 6, 'Понравилась ваша работа!', '2024-05-14 01:07:02', '2024-05-14 01:07:02'),
(28, 5, 4, 6, 'Понравилась ваша работа!', '2024-05-14 01:07:22', '2024-05-14 01:07:22'),
(30, 4, 3, 6, 'Понравилась ваша работа!', '2024-05-14 01:07:29', '2024-05-14 01:07:29'),
(31, 5, 0, 6, 'добавил вас в избранное', '2024-05-14 01:08:46', '2024-05-14 01:08:46'),
(32, 5, 17, 6, 'скачал вашу работу!', '2024-05-14 01:10:03', '2024-05-14 01:10:03'),
(33, 3, 16, 5, 'Понравилась ваша работа!', '2024-05-14 01:12:48', '2024-05-14 01:12:48'),
(34, 4, 19, 5, 'Понравилась ваша работа!', '2024-05-14 01:12:51', '2024-05-14 01:12:51'),
(35, 6, 21, 5, 'Понравилась ваша работа!', '2024-05-14 01:12:54', '2024-05-14 01:12:54'),
(36, 6, 14, 5, 'Понравилась ваша работа!', '2024-05-14 01:12:59', '2024-05-14 01:12:59'),
(37, 3, 13, 5, 'Понравилась ваша работа!', '2024-05-14 01:13:02', '2024-05-14 01:13:02'),
(38, 4, 9, 5, 'Понравилась ваша работа!', '2024-05-14 01:13:17', '2024-05-14 01:13:17'),
(39, 3, 8, 5, 'Понравилась ваша работа!', '2024-05-14 01:13:19', '2024-05-14 01:13:19'),
(40, 6, 5, 5, 'Понравилась ваша работа!', '2024-05-14 01:13:26', '2024-05-14 01:13:26'),
(41, 4, 3, 5, 'Понравилась ваша работа!', '2024-05-14 01:13:32', '2024-05-14 01:13:32'),
(42, 4, 0, 5, 'добавил вас в избранное', '2024-05-14 01:13:49', '2024-05-14 01:13:49'),
(43, 3, 0, 5, 'добавил вас в избранное', '2024-05-14 01:14:05', '2024-05-14 01:14:05'),
(44, 3, 18, 4, 'Понравилась ваша работа!', '2024-05-14 01:15:53', '2024-05-14 01:15:53'),
(45, 3, 16, 4, 'Понравилась ваша работа!', '2024-05-14 01:15:58', '2024-05-14 01:15:58'),
(46, 3, 13, 4, 'Понравилась ваша работа!', '2024-05-14 01:16:03', '2024-05-14 01:16:03'),
(47, 2, 12, 4, 'Понравилась ваша работа!', '2024-05-14 01:16:06', '2024-05-14 01:16:06'),
(48, 3, 8, 4, 'Понравилась ваша работа!', '2024-05-14 01:16:20', '2024-05-14 01:16:20'),
(49, 2, 7, 4, 'Понравилась ваша работа!', '2024-05-14 01:16:22', '2024-05-14 01:16:22'),
(51, 3, 2, 4, 'Понравилась ваша работа!', '2024-05-14 01:16:38', '2024-05-14 01:16:38'),
(52, 3, 0, 4, 'добавил вас в избранное', '2024-05-14 01:17:04', '2024-05-14 01:17:04'),
(53, 3, 16, 4, 'скачал вашу работу!', '2024-05-14 01:18:13', '2024-05-14 01:18:13'),
(54, 5, 11, 4, 'скачал вашу работу!', '2024-05-14 01:18:39', '2024-05-14 01:18:39'),
(55, 2, 7, 4, 'скачал вашу работу!', '2024-05-14 01:18:49', '2024-05-14 01:18:49'),
(56, 6, 21, 3, 'Понравилась ваша работа!', '2024-05-14 01:20:21', '2024-05-14 01:20:21'),
(57, 5, 20, 3, 'Понравилась ваша работа!', '2024-05-14 01:20:26', '2024-05-14 01:20:26'),
(58, 6, 14, 3, 'Понравилась ваша работа!', '2024-05-14 01:20:42', '2024-05-14 01:20:42'),
(59, 2, 12, 3, 'Понравилась ваша работа!', '2024-05-14 01:20:54', '2024-05-14 01:20:54'),
(60, 4, 9, 3, 'Понравилась ваша работа!', '2024-05-14 01:20:58', '2024-05-14 01:20:58'),
(61, 2, 7, 3, 'Понравилась ваша работа!', '2024-05-14 01:21:12', '2024-05-14 01:21:12'),
(62, 4, 3, 3, 'Понравилась ваша работа!', '2024-05-14 01:21:21', '2024-05-14 01:21:21'),
(63, 4, 0, 3, 'добавил вас в избранное', '2024-05-14 01:21:28', '2024-05-14 01:21:28'),
(64, 6, 21, 7, 'Понравилась ваша работа!', '2024-05-14 01:28:28', '2024-05-14 01:28:28'),
(65, 5, 20, 7, 'Понравилась ваша работа!', '2024-05-14 01:28:30', '2024-05-14 01:28:30'),
(66, 4, 19, 7, 'Понравилась ваша работа!', '2024-05-14 01:28:32', '2024-05-14 01:28:32'),
(67, 3, 18, 7, 'Понравилась ваша работа!', '2024-05-14 01:28:37', '2024-05-14 01:28:37'),
(68, 2, 15, 7, 'Понравилась ваша работа!', '2024-05-14 01:28:49', '2024-05-14 01:28:49');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_17_121233_create_material_for_approvals_table', 1),
(6, '2024_01_22_121619_create_approved_materials_table', 1),
(7, '2024_01_22_122043_create_tags_table', 1),
(8, '2024_01_22_122119_create_tag_materials_table', 1),
(9, '2024_01_22_124436_create_likes_table', 1),
(10, '2024_02_05_110357_create_subscriptions_table', 1),
(11, '2024_03_02_094340_create_collections_table', 1),
(12, '2024_03_02_094510_create_collection_items_table', 1),
(13, '2024_03_09_103118_create_pockets_table', 1),
(14, '2024_03_14_101238_create_boughts_table', 1),
(15, '2024_03_14_113213_create_messages_table', 1),
(16, '2024_04_23_054151_create_prices_table', 1),
(17, '2024_04_25_060855_create_reports_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pockets`
--

CREATE TABLE `pockets` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `purchases_left` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pockets`
--

INSERT INTO `pockets` (`id`, `users_id`, `purchases_left`, `created_at`, `updated_at`) VALUES
(1, 6, 9, '2024-05-14 01:09:16', '2024-05-14 01:10:03'),
(2, 4, 37, '2024-05-14 01:18:02', '2024-05-14 01:18:49');

-- --------------------------------------------------------

--
-- Структура таблицы `prices`
--

CREATE TABLE `prices` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `prices`
--

INSERT INTO `prices` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'big', 7000, NULL, NULL),
(2, 'middle', 2000, NULL, NULL),
(3, 'small', 1000, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `user_send_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `followed_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `users_id`, `followed_id`, `created_at`, `updated_at`) VALUES
(1, 6, 5, '2024-05-14 01:08:46', '2024-05-14 01:08:46'),
(2, 5, 4, '2024-05-14 01:13:49', '2024-05-14 01:13:49'),
(3, 5, 3, '2024-05-14 01:14:05', '2024-05-14 01:14:05'),
(4, 4, 3, '2024-05-14 01:17:04', '2024-05-14 01:17:04'),
(5, 3, 4, '2024-05-14 01:21:28', '2024-05-14 01:21:28');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `created_at`, `updated_at`) VALUES
(2, 'кремль', '2024-05-13 03:03:53', '2024-05-13 03:03:53'),
(3, 'улица', '2024-05-13 03:03:53', '2024-05-13 03:03:53'),
(4, 'белый', '2024-05-13 03:03:53', '2024-05-13 03:03:53'),
(5, 'цветы', '2024-05-13 03:04:47', '2024-05-13 03:04:47'),
(6, 'ромашки', '2024-05-13 03:04:47', '2024-05-13 03:04:47'),
(7, 'природа', '2024-05-13 03:04:47', '2024-05-13 03:04:47'),
(8, 'зелень', '2024-05-13 03:04:47', '2024-05-13 03:04:47'),
(9, 'груша', '2024-05-13 03:05:21', '2024-05-13 03:05:21'),
(10, 'фрукт', '2024-05-13 03:05:21', '2024-05-13 03:05:21'),
(11, 'лимон', '2024-05-13 03:05:54', '2024-05-13 03:05:54'),
(12, 'еда', '2024-05-13 03:05:54', '2024-05-13 03:05:54'),
(13, 'мармелад', '2024-05-13 03:05:54', '2024-05-13 03:05:54'),
(14, 'дерево', '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(15, 'доска', '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(16, 'текстура', '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(17, 'серый', '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(18, 'опилки', '2024-05-13 03:28:59', '2024-05-13 03:28:59'),
(19, 'ветки', '2024-05-13 03:28:59', '2024-05-13 03:28:59'),
(20, 'осень', '2024-05-13 03:29:43', '2024-05-13 03:29:43'),
(21, 'растения', '2024-05-13 03:30:51', '2024-05-13 03:30:51'),
(22, 'пицца', '2024-05-13 03:32:44', '2024-05-13 03:32:44'),
(23, 'стол', '2024-05-13 03:32:44', '2024-05-13 03:32:44'),
(24, 'телефон', '2024-05-13 03:32:44', '2024-05-13 03:32:44'),
(25, 'вишня', '2024-05-13 03:33:31', '2024-05-13 03:33:31'),
(26, 'ягоды', '2024-05-13 03:33:31', '2024-05-13 03:33:31'),
(27, 'листья', '2024-05-13 03:34:10', '2024-05-13 03:34:10'),
(28, 'земля', '2024-05-13 03:34:10', '2024-05-13 03:34:10'),
(29, 'деревья', '2024-05-13 03:35:07', '2024-05-13 03:35:07'),
(30, 'чёрный', '2024-05-13 03:35:07', '2024-05-13 03:35:07'),
(31, 'небо', '2024-05-13 03:35:07', '2024-05-13 03:35:07'),
(32, 'фрукты', '2024-05-13 03:37:02', '2024-05-13 03:37:02'),
(33, 'сладкое', '2024-05-13 03:37:02', '2024-05-13 03:37:02'),
(34, 'варенье', '2024-05-13 03:41:42', '2024-05-13 03:41:42'),
(35, 'башня', '2024-05-13 03:43:23', '2024-05-13 03:43:23'),
(36, 'зелёный', '2024-05-13 03:44:17', '2024-05-13 03:44:17'),
(37, 'бутерброд', '2024-05-13 03:45:15', '2024-05-13 03:45:15'),
(38, 'апельсин', '2024-05-13 03:46:22', '2024-05-13 03:46:22');

-- --------------------------------------------------------

--
-- Структура таблицы `tag_materials`
--

CREATE TABLE `tag_materials` (
  `id` bigint UNSIGNED NOT NULL,
  `approved_materials_id` bigint UNSIGNED NOT NULL,
  `tags_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tag_materials`
--

INSERT INTO `tag_materials` (`id`, `approved_materials_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(2, 2, 2, '2024-05-13 03:03:53', '2024-05-13 03:03:53'),
(3, 2, 3, '2024-05-13 03:03:53', '2024-05-13 03:03:53'),
(4, 2, 4, '2024-05-13 03:03:53', '2024-05-13 03:03:53'),
(5, 3, 5, '2024-05-13 03:04:47', '2024-05-13 03:04:47'),
(6, 3, 6, '2024-05-13 03:04:47', '2024-05-13 03:04:47'),
(7, 3, 7, '2024-05-13 03:04:47', '2024-05-13 03:04:47'),
(8, 3, 8, '2024-05-13 03:04:47', '2024-05-13 03:04:47'),
(9, 4, 9, '2024-05-13 03:05:21', '2024-05-13 03:05:21'),
(10, 4, 10, '2024-05-13 03:05:21', '2024-05-13 03:05:21'),
(11, 5, 11, '2024-05-13 03:05:54', '2024-05-13 03:05:54'),
(12, 5, 12, '2024-05-13 03:05:54', '2024-05-13 03:05:54'),
(13, 5, 13, '2024-05-13 03:05:54', '2024-05-13 03:05:54'),
(14, 6, 14, '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(15, 6, 15, '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(16, 6, 16, '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(17, 6, 17, '2024-05-13 03:28:12', '2024-05-13 03:28:12'),
(18, 7, 18, '2024-05-13 03:28:59', '2024-05-13 03:28:59'),
(19, 7, 19, '2024-05-13 03:28:59', '2024-05-13 03:28:59'),
(20, 8, 14, '2024-05-13 03:29:43', '2024-05-13 03:29:43'),
(21, 8, 20, '2024-05-13 03:29:43', '2024-05-13 03:29:43'),
(22, 8, 3, '2024-05-13 03:29:43', '2024-05-13 03:29:43'),
(23, 9, 3, '2024-05-13 03:30:51', '2024-05-13 03:30:51'),
(24, 9, 7, '2024-05-13 03:30:51', '2024-05-13 03:30:51'),
(25, 9, 21, '2024-05-13 03:30:51', '2024-05-13 03:30:51'),
(26, 10, 12, '2024-05-13 03:32:44', '2024-05-13 03:32:44'),
(27, 10, 22, '2024-05-13 03:32:44', '2024-05-13 03:32:44'),
(28, 10, 23, '2024-05-13 03:32:44', '2024-05-13 03:32:44'),
(29, 10, 24, '2024-05-13 03:32:44', '2024-05-13 03:32:44'),
(30, 11, 25, '2024-05-13 03:33:31', '2024-05-13 03:33:31'),
(31, 11, 12, '2024-05-13 03:33:31', '2024-05-13 03:33:31'),
(32, 11, 26, '2024-05-13 03:33:31', '2024-05-13 03:33:31'),
(33, 12, 27, '2024-05-13 03:34:10', '2024-05-13 03:34:10'),
(34, 12, 28, '2024-05-13 03:34:10', '2024-05-13 03:34:10'),
(35, 12, 7, '2024-05-13 03:34:10', '2024-05-13 03:34:10'),
(36, 13, 29, '2024-05-13 03:35:07', '2024-05-13 03:35:07'),
(37, 13, 30, '2024-05-13 03:35:07', '2024-05-13 03:35:07'),
(38, 13, 31, '2024-05-13 03:35:07', '2024-05-13 03:35:07'),
(39, 14, 13, '2024-05-13 03:37:02', '2024-05-13 03:37:02'),
(40, 14, 32, '2024-05-13 03:37:02', '2024-05-13 03:37:02'),
(41, 14, 12, '2024-05-13 03:37:02', '2024-05-13 03:37:02'),
(42, 14, 33, '2024-05-13 03:37:02', '2024-05-13 03:37:02'),
(43, 15, 16, '2024-05-13 03:39:49', '2024-05-13 03:39:49'),
(44, 15, 14, '2024-05-13 03:39:49', '2024-05-13 03:39:49'),
(45, 15, 17, '2024-05-13 03:39:49', '2024-05-13 03:39:49'),
(46, 16, 29, '2024-05-13 03:40:54', '2024-05-13 03:40:54'),
(47, 16, 31, '2024-05-13 03:40:54', '2024-05-13 03:40:54'),
(48, 16, 30, '2024-05-13 03:40:54', '2024-05-13 03:40:54'),
(49, 17, 34, '2024-05-13 03:41:42', '2024-05-13 03:41:42'),
(50, 17, 33, '2024-05-13 03:41:42', '2024-05-13 03:41:42'),
(51, 17, 32, '2024-05-13 03:41:42', '2024-05-13 03:41:42'),
(52, 17, 12, NULL, NULL),
(53, 18, 2, '2024-05-13 03:43:23', '2024-05-13 03:43:23'),
(54, 18, 31, '2024-05-13 03:43:23', '2024-05-13 03:43:23'),
(55, 18, 3, '2024-05-13 03:43:23', '2024-05-13 03:43:23'),
(56, 18, 35, '2024-05-13 03:43:23', '2024-05-13 03:43:23'),
(57, 19, 21, '2024-05-13 03:44:17', '2024-05-13 03:44:17'),
(58, 19, 8, '2024-05-13 03:44:17', '2024-05-13 03:44:17'),
(59, 19, 36, '2024-05-13 03:44:17', '2024-05-13 03:44:17'),
(60, 19, 7, '2024-05-13 03:44:17', '2024-05-13 03:44:17'),
(61, 20, 37, '2024-05-13 03:45:15', '2024-05-13 03:45:15'),
(62, 20, 12, '2024-05-13 03:45:15', '2024-05-13 03:45:15'),
(63, 21, 38, '2024-05-13 03:46:22', '2024-05-13 03:46:22'),
(64, 21, 13, '2024-05-13 03:46:22', '2024-05-13 03:46:22'),
(65, 21, 33, '2024-05-13 03:46:22', '2024-05-13 03:46:22');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nikname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `followers` int NOT NULL,
  `money` int NOT NULL,
  `add_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_package` tinyint(1) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `nikname`, `birthdate`, `password`, `path`, `followers`, `money`, `add_info`, `has_package`, `is_admin`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@mail.com', 'Admin', '2002-01-18', '$2y$12$Jt/OlacUWt9cqaIgIvxjieUtNleipMxDb.9.J/X6g6SJZz8wWCQCu', 'kkSlFe1kVpAjYAPUETLjSJwNQMzO24Im2TWAHy95.jpg', 0, 0, NULL, NULL, 1, NULL, NULL, '2024-05-13 02:16:27', '2024-05-13 02:16:27'),
(2, 'marina@mail.ru', 'Марина', '1999-02-16', '$2y$12$bG7GKdJUOY98lHZMICzwHOeLGfWXnFvxmVScCbaTaC8CvsTO99wOO', '7jG3rxfT42kCjQe0DjrescZFOzNviTPBJnFPVeN1.jpg', 0, 100, 'Текстуры', NULL, NULL, NULL, NULL, '2024-05-13 02:19:37', '2024-05-14 01:23:49'),
(3, 'dragon@mail.ru', 'Даниил Драконов', '2003-03-20', '$2y$12$o.uT4OKL6.Ej53zzX2Duaumk13lQSnX8GUh.eQaOgiqD0iPrmnhOG', 'engHPt1TCk27KCy5BFgsd3jKhYJpU5aHjZwRSXIn.jpg', 2, 100, 'Уличная фотография. Любитель', NULL, NULL, NULL, NULL, '2024-05-13 02:25:41', '2024-05-14 01:19:32'),
(4, 'spring@mail.ru', 'Ирина Весна', '2000-04-04', '$2y$12$wffeUEasAQ2nO0hHsaEzDugiz5bcQpVV4Qy4Wga1NiGzYzFvc/e1y', 'GeNlkpvupd9m1wtAzNApv950dBYEBp8WSmf7IM7G.jpg', 2, 0, NULL, NULL, NULL, NULL, NULL, '2024-05-13 02:32:27', '2024-05-14 01:21:28'),
(5, 'Valrea@mail.ru', 'Валерий', '1995-06-19', '$2y$12$LgDJZY/2z4AC/lTcnTzoYOBWGui7B2sms2a4I.zvLWTyB4sDlpQuG', '0nHbYGbzIbt3AdkioGKyCBD3ksQzxDTJPJJUUSna.jpg', 1, 200, 'Фото еды. Я фотограф, жена - повар', NULL, NULL, NULL, NULL, '2024-05-13 02:45:35', '2024-05-14 01:18:39'),
(6, 'LimeLame@mail.ru', 'Лиля Лимон', '2005-10-17', '$2y$12$Nju22hvBMT5R5CuO.9xn0.pF7OhNpAJagjSA3wv8GPIvb2UYRwYQu', 'FtEwjyJpu9kQQLwRK2KYDAhAqp8Awj68ImqjrmKQ.jpg', 0, 0, 'Мармелад <3', NULL, NULL, NULL, NULL, '2024-05-13 02:52:40', '2024-05-14 01:06:25'),
(7, 'anon@mail.com', 'Аноним', '1990-02-28', '$2y$12$DDOYtl3LaRpguzgs.qyGNOvpP8Wr3ojYgZoo0XkRAnbuFyqpHEUG6', 'vSmu7hoHkjdRLwqLD1yLDz9ktsPM0yBZQ3XgKXgh.jpg', 0, 0, 'Данное описание содержит нецензурную лексику и неприемлемый язык', NULL, NULL, NULL, NULL, '2024-05-14 01:27:55', '2024-05-14 03:46:21');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `approved_materials`
--
ALTER TABLE `approved_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `approved_materials_users_id_foreign` (`users_id`);

--
-- Индексы таблицы `boughts`
--
ALTER TABLE `boughts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boughts_users_id_foreign` (`users_id`),
  ADD KEY `boughts_approved_materials_id_foreign` (`approved_materials_id`);

--
-- Индексы таблицы `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collections_users_id_foreign` (`users_id`);

--
-- Индексы таблицы `collection_items`
--
ALTER TABLE `collection_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection_items_collections_id_foreign` (`collections_id`),
  ADD KEY `collection_items_approved_materials_id_foreign` (`approved_materials_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_users_id_foreign` (`users_id`),
  ADD KEY `likes_approved_materials_id_foreign` (`approved_materials_id`);

--
-- Индексы таблицы `material_for_approvals`
--
ALTER TABLE `material_for_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_for_approvals_users_id_foreign` (`users_id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_users_id_foreign` (`users_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `pockets`
--
ALTER TABLE `pockets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pockets_users_id_foreign` (`users_id`);

--
-- Индексы таблицы `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_users_id_foreign` (`users_id`),
  ADD KEY `id` (`user_send_id`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_users_id_foreign` (`users_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tag_materials`
--
ALTER TABLE `tag_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_materials_approved_materials_id_foreign` (`approved_materials_id`),
  ADD KEY `tag_materials_tags_id_foreign` (`tags_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nikname_unique` (`nikname`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `approved_materials`
--
ALTER TABLE `approved_materials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `boughts`
--
ALTER TABLE `boughts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `collection_items`
--
ALTER TABLE `collection_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `material_for_approvals`
--
ALTER TABLE `material_for_approvals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pockets`
--
ALTER TABLE `pockets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `tag_materials`
--
ALTER TABLE `tag_materials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `approved_materials`
--
ALTER TABLE `approved_materials`
  ADD CONSTRAINT `approved_materials_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `boughts`
--
ALTER TABLE `boughts`
  ADD CONSTRAINT `boughts_approved_materials_id_foreign` FOREIGN KEY (`approved_materials_id`) REFERENCES `approved_materials` (`id`),
  ADD CONSTRAINT `boughts_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `collections`
--
ALTER TABLE `collections`
  ADD CONSTRAINT `collections_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `collection_items`
--
ALTER TABLE `collection_items`
  ADD CONSTRAINT `collection_items_approved_materials_id_foreign` FOREIGN KEY (`approved_materials_id`) REFERENCES `approved_materials` (`id`),
  ADD CONSTRAINT `collection_items_collections_id_foreign` FOREIGN KEY (`collections_id`) REFERENCES `collections` (`id`);

--
-- Ограничения внешнего ключа таблицы `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_approved_materials_id_foreign` FOREIGN KEY (`approved_materials_id`) REFERENCES `approved_materials` (`id`),
  ADD CONSTRAINT `likes_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `material_for_approvals`
--
ALTER TABLE `material_for_approvals`
  ADD CONSTRAINT `material_for_approvals_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `pockets`
--
ALTER TABLE `pockets`
  ADD CONSTRAINT `pockets_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `id` FOREIGN KEY (`user_send_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reports_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `tag_materials`
--
ALTER TABLE `tag_materials`
  ADD CONSTRAINT `tag_materials_approved_materials_id_foreign` FOREIGN KEY (`approved_materials_id`) REFERENCES `approved_materials` (`id`),
  ADD CONSTRAINT `tag_materials_tags_id_foreign` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
