-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 20:45:52
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_ive`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_users`
--

CREATE TABLE `data_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dni_user` varchar(255) DEFAULT NULL,
  `tipo_dni` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `cell` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_users`
--

INSERT INTO `data_users` (`id`, `dni_user`, `tipo_dni`, `birthdate`, `gender`, `cell`, `direccion`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '32865262', 'CC', '1971-01-03', 'Femenino', '310248', 'cra 12', 3, '2023-10-15 10:34:11', '2023-10-05 23:18:49'),
(3, '11929', 'CC', '2000-07-09', 'Masculino', '301255', 'Cra 12 #14-', 1, '2023-10-15 10:34:48', '2023-10-05 23:17:35'),
(7, '85438710', 'TI', '2023-09-06', 'Masculino', '12345', 'Cra 18n #18b-19 int ', 8, '2023-10-15 10:34:32', '2023-09-23 03:55:47'),
(9, '1124475747', 'CC', '2023-09-12', 'Masculino', '+57214787474', 'Av 14 No13', 11, '2023-09-29 22:40:50', NULL),
(19, '1192904', 'CC', '2005-11-01', 'Masculino', '0', 'no tiene', 175, '2023-10-05 18:42:20', '2023-10-05 23:42:20'),
(20, '11124787411', 'TI', '2023-10-19', 'Masculino', '12345', 'no tiene', 171, '2023-10-03 01:03:32', '2023-10-03 06:03:32'),
(22, '144777477', 'TI', '2006-10-05', 'Femenino', '1234567', 'Cra 12 ', 180, '2023-10-15 10:34:58', '2023-10-05 23:14:32'),
(23, '123136465765', 'TI', '1960-06-18', 'Femenino', '12345', 'bogota', 195, '2023-10-09 08:23:48', '2023-10-09 08:23:48'),
(24, '526519519', 'TI', '1983-06-25', 'Femenino', '592985195', 'no tiene', 183, '2023-10-14 21:16:09', '2023-10-14 21:16:09'),
(27, '12313586', 'CC', '2000-10-14', 'Masculino', '30125555', 'no tiene', 201, '2023-10-14 22:43:34', '2023-10-14 22:43:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donor_name` varchar(255) NOT NULL,
  `donor_id` varchar(255) NOT NULL,
  `type_donor_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `value` double NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `weekly_reports_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `deposits`
--

INSERT INTO `deposits` (`id`, `donor_name`, `donor_id`, `type_donor_id`, `date`, `value`, `type`, `url`, `weekly_reports_id`, `created_at`, `updated_at`) VALUES
(7, 'Anderson Mendez', '1192903446', 'TI', '2023-10-11', 1324650, 'Ofrenda', NULL, 15, '2023-10-12 01:32:40', '2023-10-12 03:47:50'),
(8, 'xcvbnm,', '5163543', 'TI', '2023-10-18', 23321, 'Ofrenda', NULL, 16, '2023-10-12 04:16:35', '2023-10-12 04:16:42'),
(9, 'pepito suerea', '52535746', 'TI', '2023-10-12', 2000000, 'Diezmo', NULL, 15, '2023-10-12 23:01:56', '2023-10-12 23:02:03'),
(10, 'MYRIAM ISABEL DIAZ MARTINEZ', '1192903446', 'CC', '2023-10-14', 200000, 'Diezmo', NULL, 15, '2023-10-14 21:13:15', '2023-10-14 21:13:15'),
(11, 'Pepito Correa', '123435657', 'CC', '2023-10-14', 50000, 'Ofrenda', NULL, 15, '2023-10-14 22:50:20', '2023-10-14 22:55:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresses`
--

CREATE TABLE `egresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `value` double NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `weekly_reports_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `egresses`
--

INSERT INTO `egresses` (`id`, `description`, `type`, `date`, `value`, `url`, `weekly_reports_id`, `created_at`, `updated_at`) VALUES
(9, 'pago recibo agua', 'Caja', '2023-10-11', 2345400, NULL, 15, '2023-10-12 01:33:08', '2023-10-12 03:45:54'),
(10, 'pago de internet ', 'Caja Menor', '2023-10-04', 20000, NULL, 17, '2023-10-12 04:23:28', '2023-10-12 04:24:02'),
(11, 'emolumentos', 'Caja Mayor', '2023-10-14', 230000, NULL, 15, '2023-10-14 21:24:30', '2023-10-14 21:24:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_09_18_161932_create_resources_table', 1),
(12, '2023_09_18_220937_create_data_users_table', 1),
(14, '2023_09_22_193227_create_work_teams_table', 2),
(15, '2023_09_22_205854_create_team_members_table', 3),
(16, '2023_10_04_175754_create_permission_tables', 4),
(29, '2023_10_09_041923_create_monthly_reports_table', 5),
(30, '2023_10_09_042015_create_weekly_reports_table', 5),
(31, '2023_10_09_042711_create_deposits_table', 5),
(32, '2023_10_09_042949_create_egresses_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 183),
(6, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 183),
(6, 'App\\Models\\User', 195),
(6, 'App\\Models\\User', 201),
(7, 'App\\Models\\User', 183),
(7, 'App\\Models\\User', 195),
(7, 'App\\Models\\User', 201),
(7, 'App\\Models\\User', 202),
(8, 'App\\Models\\User', 3),
(8, 'App\\Models\\User', 201);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monthly_reports`
--

CREATE TABLE `monthly_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `monthly_reports`
--

INSERT INTO `monthly_reports` (`id`, `date`, `created_at`, `updated_at`) VALUES
(4, '2023-11-30', '2023-10-10 04:39:15', '2023-10-10 04:39:15'),
(5, '2023-08-31', '2023-10-10 07:10:29', '2023-10-10 07:10:29'),
(125410, '2023-10-31', '2023-10-10 04:22:05', '2023-10-10 04:22:05'),
(125412, '2024-01-31', '2023-10-14 22:52:39', '2023-10-14 22:52:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(11, 'Gestion Usuarios', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(12, 'Crear Usuarios', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(13, 'Editar Usuarios', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(14, 'Eliminar Usuarios', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(15, 'Roles y Permisos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(16, 'Crear Roles', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(17, 'Eliminar Roles', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(18, 'Editar Roles', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(19, 'Gestion Equipos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(20, 'Crear Equipos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(21, 'Editar Equipos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(22, 'Eliminar Equipos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(23, 'Gestion Recursos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(24, 'Crear Recursos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(25, 'Editar Recursos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(26, 'Eliminar Recursos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(27, 'Gestion Eventos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(28, 'Crear Eventos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(29, 'Editar Eventos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(30, 'Eliminar Eventos', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(31, 'Gestion Privilegios', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(32, 'Crear Privilegios', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(33, 'Editar Privilegios', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(34, 'Eliminar Privilegios', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29'),
(35, 'Gestion Financiera', 'web', '2023-10-06 01:07:29', '2023-10-06 01:07:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `resources`
--

CREATE TABLE `resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_iframe` varchar(255) DEFAULT NULL,
  `archivo` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resources`
--

INSERT INTO `resources` (`id`, `nombre`, `tipo`, `descripcion`, `url`, `url_iframe`, `archivo`, `created_at`, `updated_at`) VALUES
(2, '🔴 La iglesia en guerra | Servicio Dominical', 'Servicio Dominical', 'ninguna', 'https://youtu.be/tneedFZFjC4', 'https://www.youtube.com/embed/tneedFZFjC4?si=AS7Y3Fg5H9gMd_fq', NULL, NULL, '2023-10-04 09:40:08'),
(4, '🔴 El servicio y la unción | Servicio Dominical - Santa Cena🔴', 'Servicio Dominical', 'no tiene', 'https://youtu.be/NNPR_cJRDck', 'https://www.youtube.com/embed/NNPR_cJRDck?si=lp-BVcJMIMU4XL9c', NULL, '2023-10-04 08:36:26', '2023-10-04 09:39:59'),
(9, '🔴ASÍ ESTAN ATACANDO A LA FAMILIA | Servicio Domical', 'Servicio Dominical', NULL, 'https://youtu.be/7TkAQMV6tZ0', 'https://www.youtube.com/embed/7TkAQMV6tZ0?si=15RjvqLpaT0FCqEk', NULL, '2023-10-12 09:56:29', '2023-10-12 09:56:29'),
(10, 'Video demostrativo', 'URL', NULL, 'https://youtu.be/NNPR_cJRDck', NULL, NULL, '2023-10-14 22:48:27', '2023-10-14 22:48:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Pastor', 'web', '2023-10-05 08:18:59', '2023-10-05 11:22:40'),
(3, 'Lider de Alabanza', 'web', '2023-10-05 08:59:22', '2023-10-05 08:59:22'),
(4, 'Administrador', 'web', '2023-10-05 11:02:02', '2023-10-05 11:02:02'),
(5, 'Lider  Evangelismo', 'web', '2023-10-05 11:22:52', '2023-10-05 22:26:36'),
(6, 'Miembro', 'web', '2023-10-05 23:44:53', '2023-10-05 23:44:53'),
(7, 'Asistente', 'web', '2023-10-05 23:45:06', '2023-10-05 23:45:06'),
(8, 'Asistente Administrativo', 'web', '2023-10-14 21:09:43', '2023-10-14 21:09:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(11, 2),
(11, 4),
(11, 5),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 2),
(19, 4),
(19, 5),
(19, 6),
(19, 8),
(20, 2),
(20, 4),
(20, 8),
(21, 2),
(21, 4),
(21, 8),
(22, 2),
(22, 4),
(22, 8),
(23, 2),
(23, 4),
(23, 6),
(24, 2),
(24, 4),
(25, 2),
(25, 4),
(26, 2),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(35, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_teams_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `team_members`
--

INSERT INTO `team_members` (`id`, `work_teams_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 1, 9, NULL, NULL),
(4, 1, 8, NULL, NULL),
(86, 24, 1, '2023-10-05 08:04:36', '2023-10-05 08:04:36'),
(87, 24, 3, '2023-10-05 08:04:39', '2023-10-05 08:04:39'),
(88, 24, 8, '2023-10-05 08:04:42', '2023-10-05 08:04:42'),
(89, 24, 9, '2023-10-05 08:04:44', '2023-10-05 08:04:44'),
(90, 1, 180, '2023-10-09 07:34:31', '2023-10-09 07:34:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `google_id`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anderson Estiven', 'Mendez Lascarro', 'andolon.m@gmail.com', NULL, NULL, '106627993871217273692', 'https://lh3.googleusercontent.com/a/ACg8ocLj7nEhaHUHaKOjZFjKoyQFFWF8wvX4dGXE9A_yimBx3do=s96-c', NULL, '2023-09-21 23:19:09', '2023-10-05 23:03:40'),
(3, 'Edelmira', 'Lascarro Amaris', 'edelmir@gmail.com', NULL, NULL, '105154724454927699909', 'https://lh3.googleusercontent.com/a/ACg8ocI-dDwo9o1iKr5yAj4S9zUaWcbIvqSIRYeJFpgF4_qB=s96-c', NULL, '2023-09-21 23:51:36', '2023-09-23 03:53:40'),
(8, 'Martin', 'Mendez Martinez', 'mendezmartinez@gmail.com', NULL, '$2y$10$NwFCTXIm/Oot87EqAXRZ7eheQkZAiVGT6baZW0ZeHRL0yduDzsDrW', '109058593811340116857', 'https://lh3.googleusercontent.com/a/ACg8ocJTKchvMcY13yYnhf3kEHEIS43Dj2NoqslPKHIrh_Pfr6U=s96-c', NULL, '2023-09-23 03:55:47', '2023-10-09 07:33:28'),
(9, 'Pepito', 'Suares', 'pedro@pedro.com', NULL, '$2y$10$mg4FcIej9Kque8zwogEd/e3cY/R0tb751JPMFMkdx2w6ZTFQVOKeG', NULL, NULL, NULL, '2023-09-23 03:57:11', '2023-09-23 03:57:11'),
(10, NULL, 'null', 'kmendez4@udi.edu.co', NULL, NULL, NULL, NULL, NULL, '2023-09-25 08:28:14', '2023-09-25 08:28:14'),
(11, 'Jhoan', 'Sanches Gallardo', 'Johan@sanchesgallardo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, NULL, NULL, 'dsfsdfsd2@dfsdfdsf', NULL, NULL, NULL, NULL, NULL, '2023-09-28 01:39:07', '2023-09-28 01:39:07'),
(156, NULL, NULL, 'jajaajjaja@jajajjajaja', NULL, NULL, NULL, NULL, NULL, '2023-09-28 01:51:39', '2023-09-28 01:51:39'),
(157, NULL, NULL, 'jojo@jojo', NULL, NULL, NULL, NULL, NULL, '2023-09-28 01:52:14', '2023-09-28 01:52:14'),
(158, NULL, NULL, 'pepe@pepe', NULL, NULL, NULL, NULL, NULL, '2023-09-28 01:52:50', '2023-09-28 01:52:50'),
(159, NULL, NULL, 'nono@nono', NULL, NULL, NULL, NULL, NULL, '2023-09-28 01:54:13', '2023-09-28 01:54:13'),
(160, NULL, NULL, 'bebe@bebe', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:12:20', '2023-09-28 03:12:20'),
(161, NULL, NULL, 'nini@ni', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:13:15', '2023-09-28 03:13:15'),
(162, NULL, NULL, 'babyasad@sda', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:14:31', '2023-09-28 03:14:31'),
(163, NULL, NULL, 'hupppa@no', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:21:40', '2023-09-28 03:21:40'),
(164, NULL, NULL, 'sasdsaqwert@qwertyu', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:22:22', '2023-09-28 03:22:22'),
(165, NULL, NULL, 'qwertyui@aonas', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:24:10', '2023-09-28 03:24:10'),
(166, NULL, NULL, 'sera@que.ya', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:26:14', '2023-09-28 03:26:14'),
(167, NULL, NULL, 'nada@de.nada', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:26:41', '2023-09-28 03:26:41'),
(168, NULL, NULL, 'terrible@nada.funciona', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:30:37', '2023-09-28 03:30:37'),
(169, NULL, NULL, 'hupppa@noo', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:31:17', '2023-09-28 03:31:17'),
(170, NULL, NULL, 'jejejejej@jojojo.com', NULL, NULL, NULL, NULL, NULL, '2023-09-28 03:51:51', '2023-09-28 03:51:51'),
(171, 'jojojorje', 'jjijijimenes', 'feliz@navidad', NULL, NULL, NULL, NULL, NULL, '2023-09-29 04:11:59', '2023-10-03 06:03:32'),
(172, 'probando si funciona', 'bei', 'nofuniona@bein', NULL, NULL, NULL, NULL, NULL, '2023-09-29 04:12:56', '2023-09-30 03:02:41'),
(175, 'Iglesia Vida Y Esperanza', 'Asambleas de Dios', 'ivead@gmail.com', NULL, NULL, '110865638326727391428', 'https://lh3.googleusercontent.com/a/ACg8ocK3WDpc-mqPnES6OI5qpSidd1OaBMrGqSxkqdBrsZn8pjU=s96-c', NULL, '2023-09-29 04:24:24', '2023-09-30 05:21:03'),
(180, 'Dayana', 'Ortega', 'Dayana@gayana.com', NULL, NULL, NULL, NULL, NULL, '2023-10-03 00:47:30', '2023-10-03 07:24:27'),
(181, 'Gladys', '', 'gladys@gladys', NULL, '$2y$10$ts5ajA0RVwv7lvd5l4KHC.aJ5FxWCeEQqPXRxjtZwhNs8iSBnPTPm', NULL, NULL, NULL, '2023-10-03 10:29:45', '2023-10-03 10:29:45'),
(183, 'Viviana', 'Gonzalez', 'Viviana@viviana.com', NULL, '$2y$10$BFkxQqbzptOwE5uTyPPVVOrSfsktNNjGlmeW213K2i7S3luUrWm02', NULL, NULL, NULL, '2023-10-04 01:37:34', '2023-10-14 21:16:09'),
(195, 'Myriam isabel', 'diaz martinez', 'libertad@gmail.com', NULL, NULL, '108116851524129060832', 'https://lh3.googleusercontent.com/a/ACg8ocLsEd0OvV_5T__kAN-X-Lk3gpmzztGdut19pRXuqHopWZnG=s96-c', NULL, '2023-10-09 08:22:04', '2023-10-09 08:23:48'),
(201, 'Pepito Enriques', 'Gonzalez', 'pedro@gonzales.com', NULL, NULL, NULL, NULL, NULL, '2023-10-14 22:43:34', '2023-10-14 22:44:24'),
(202, 'Anderson', 'Mendez', 'andoloo@gmail.com', NULL, '$2y$10$zViyVCldnlOK4fTTpbpk8.ftnZYa7TodWjeuBs2I.Wu2iq0vBT4za', '115151366592372796607', 'https://lh3.googleusercontent.com/a/ACg8ocJqRobYX4HJhWFn1wf6OomNfubuNtvYWczYt1zspUf_xqcx=s96-c', NULL, '2023-10-14 22:57:03', '2023-10-14 22:57:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weekly_reports`
--

CREATE TABLE `weekly_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `monthly_reports_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `weekly_reports`
--

INSERT INTO `weekly_reports` (`id`, `date`, `monthly_reports_id`, `created_at`, `updated_at`) VALUES
(15, '2023-10-15', 125410, '2023-10-10 04:22:05', '2023-10-10 04:22:05'),
(16, '2023-10-22', 125410, '2023-10-12 04:16:42', '2023-10-12 04:16:42'),
(17, '2023-10-08', 125410, '2023-10-12 04:24:02', '2023-10-12 04:24:02'),
(18, '2024-01-14', 125412, '2023-10-14 22:52:39', '2023-10-14 22:52:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `work_teams`
--

CREATE TABLE `work_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `work_teams`
--

INSERT INTO `work_teams` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Alabanza', 3, NULL, NULL),
(24, 'Evangelismo', 183, '2023-10-04 01:07:49', '2023-10-04 01:37:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `data_users`
--
ALTER TABLE `data_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_users_dni_user_unique` (`dni_user`),
  ADD UNIQUE KEY `data_users_user_id_unique` (`user_id`);

--
-- Indices de la tabla `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_weekly_reports_id_foreign` (`weekly_reports_id`);

--
-- Indices de la tabla `egresses`
--
ALTER TABLE `egresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `egresses_weekly_reports_id_foreign` (`weekly_reports_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `monthly_reports`
--
ALTER TABLE `monthly_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_members_work_teams_id_foreign` (`work_teams_id`),
  ADD KEY `team_members_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `weekly_reports`
--
ALTER TABLE `weekly_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weekly_reports_monthly_reports_id_foreign` (`monthly_reports_id`);

--
-- Indices de la tabla `work_teams`
--
ALTER TABLE `work_teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `work_teams_user_id_unique` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `data_users`
--
ALTER TABLE `data_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `egresses`
--
ALTER TABLE `egresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `monthly_reports`
--
ALTER TABLE `monthly_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125413;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resources`
--
ALTER TABLE `resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT de la tabla `weekly_reports`
--
ALTER TABLE `weekly_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `work_teams`
--
ALTER TABLE `work_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_users`
--
ALTER TABLE `data_users`
  ADD CONSTRAINT `data_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_weekly_reports_id_foreign` FOREIGN KEY (`weekly_reports_id`) REFERENCES `weekly_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `egresses`
--
ALTER TABLE `egresses`
  ADD CONSTRAINT `egresses_weekly_reports_id_foreign` FOREIGN KEY (`weekly_reports_id`) REFERENCES `weekly_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_members_work_teams_id_foreign` FOREIGN KEY (`work_teams_id`) REFERENCES `work_teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `weekly_reports`
--
ALTER TABLE `weekly_reports`
  ADD CONSTRAINT `weekly_reports_monthly_reports_id_foreign` FOREIGN KEY (`monthly_reports_id`) REFERENCES `monthly_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `work_teams`
--
ALTER TABLE `work_teams`
  ADD CONSTRAINT `work_teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
