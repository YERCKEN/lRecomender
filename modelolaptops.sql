-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-06-2024 a las 03:55:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `modelolaptops`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add laptop', 7, 'add_laptop'),
(26, 'Can change laptop', 7, 'change_laptop'),
(27, 'Can delete laptop', 7, 'delete_laptop'),
(28, 'Can view laptop', 7, 'view_laptop'),
(29, 'Can add software', 8, 'add_software'),
(30, 'Can change software', 8, 'change_software'),
(31, 'Can delete software', 8, 'delete_software'),
(32, 'Can view software', 8, 'view_software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'MyApp1', 'laptop'),
(8, 'MyApp1', 'software'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'MyApp1', '0001_initial', '2024-05-23 02:06:45.900661'),
(2, 'contenttypes', '0001_initial', '2024-05-23 02:06:45.921706'),
(3, 'auth', '0001_initial', '2024-05-23 02:06:46.129009'),
(4, 'admin', '0001_initial', '2024-05-23 02:06:46.174951'),
(5, 'admin', '0002_logentry_remove_auto_add', '2024-05-23 02:06:46.181004'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-23 02:06:46.186314'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-05-23 02:06:46.217621'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-05-23 02:06:46.240722'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-05-23 02:06:46.253249'),
(10, 'auth', '0004_alter_user_username_opts', '2024-05-23 02:06:46.257203'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-05-23 02:06:46.277487'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-05-23 02:06:46.278506'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-05-23 02:06:46.285003'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-05-23 02:06:46.294979'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-05-23 02:06:46.305521'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-05-23 02:06:46.317310'),
(17, 'auth', '0011_update_proxy_permissions', '2024-05-23 02:06:46.323308'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-05-23 02:06:46.334176'),
(19, 'sessions', '0001_initial', '2024-05-23 02:06:46.353292'),
(20, 'MyApp1', '0002_software', '2024-05-30 19:01:58.532225'),
(21, 'MyApp1', '0002_alter_software_tipo', '2024-05-31 22:32:02.239965');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0elkin50u8o9i4nuehy53g2dvxol5sa8', 'eyJyZWNvbW1lbmRlZF9sYXB0b3BzIjpbXX0:1sCmzc:aGVRWF3LslvUEewhq4RMjZ5tl-yXrwLdSv2iPD-Gz7c', '2024-06-13 21:07:24.854562'),
('3osxtfhq9xr2xwcd9wqysouzx1v96ex8', 'eyJyZWNvbW1lbmRlZF9sYXB0b3BzIjpbXX0:1sCpe0:qoi7cAWehhQdOrU7bgk0GIjHi_d8OAnbMXfhYIw3d0E', '2024-06-13 23:57:16.153063'),
('60gix66m8cwqn0kr1taxu5jea8bpujh3', '.eJztll1r2zAUhv_KQdcxSPJHvN5169IUmixgh7WUYjRbdQSRZWQ7Wyj97zt22iVLypZ1GSyQy_P12nr8-tiPxMrUaC2LTGbJXJS1KStydvdIvlhRZOSMzErSI9pkco7BcAJRKdPaSvjmBhRY4DxwSnk8hetuFntLa1JZVcYmLxKqqHF6s1IrabGQGhRSfSwVjU7aCK_NvFVYz6wUGSY47RErdKKlNnaJDUErpbSwy6SqjRW5TOplKVEwii7IbjEVpUhV3Y5SjuoVHrnIXhkfG_hRg-caea1_rYj3lpfNzlHb3LNom8qtqGVGnnprrnNZmIXZYHvdJeDW5AIm1kAfQn7bp_ScX41PdP-Q7rZrP6HDW7c2lFI_voFLoVWRHxBrsI3VOx6sxUJlSvzMFdeBSvfG-vWBMsZOXN_KVaSIYE32HEOIrVjI-Qh7YcIhHk048xzfhfdNpQokdzjI2yshPB7E-28EUTXVJmIMIZ4OXhw7YD4MbnwaDD86w7Eb-p-jg5s53OLcgj0W0Pt7WVdqg_MouoLLQeBCPFO4Klj0wWH8XYiftP-I7vDir-iuHs6vYHI_-Dc4px1O74TzrV8w5jsyd6kbHPQXlh_xm77_St21ZufKzp8ra3ona_7GmvdP3wFTxqbP:1sCoH2:gz2tpxjzJyojomEQopSZajsD6zYkq3Ilf_1VVAP1g_o', '2024-06-13 22:29:28.658240'),
('7uxk8idhwtefshg16tg9qxpkzkqmjanj', '.eJztll9r2zAUxb_KRc9pkP-tTt5SEqhZyEZDaFgpRrEuqZglGVnpFkq_-27crEmXDFrwXrK8-dwjHXx_oMt9Yg4LqzUaiTIvReVtVbP-3RNbOGEk6zOJZck6TFv6IDkkCZmpK-Wsgcs44hCCMhBAyMMIxk0Cna-cLbCurct_BynjsXzjeIWOjMI6BBWRZVY63yj6g08vyj84FJJ02mFO6Fyjtm7dyMopLdw6r711Yom5X1dIadPpkB2ahahEoTzdDBOKrqlpI4_cnlh49WDrsWPnd4G8w5bV6qDNTW0buiktnfAo2XPn72RH4_GObJQQ2dZopqdPUxTU_o7mgCR8MQhBDN_SizhIZpNu0utNsy7nvfbIhn-QjU-PLHVWatxje9MU4Mra7zAtlT7T_ADNEo19tHs0x00BMoniq5AQQZBkg9klpOHNZ85v59nkPFX_Hd_58My3Vb7NQIhe6AbBme7H6P5QZlnvwb3daJisHu2imbZBezTj06d5bCcY_fRoakFTAEbzMEguoha31v9gz3r3-79OeTTjbb7_U90O7p9_ASv8t7Y:1sDB1H:eEmumrcK9EwIlCXim1l2-dkXRBqEPShkf0W3MdcVLDc', '2024-06-14 22:46:43.007770'),
('8p1jb9rlpfcfy7fuf9beetkymabjjlua', '.eJztll9rwjAUxb9KyLMP6R-74ttGddY5Ga2DyRglay4a1jQljWMifvclU7ehwvZQn-zjvac5pD8Oh6yxglwKASUDlhW00rKqce95jV8VLRnu4QJK-S5xBwvJoDCL8dcCxQzoA2VoUMAH6iLHj5PHEIXujBDiT-MJGn-ZmYOVkjnUtVTZ3pOX2lj9VjQHZYRcKkD8ykjlUmR2MpdxyHbUCwWU2YXbwYqKTICQamXmwFpxQdUqq7VUdA6ZXlVgDNM0wsdiTiuac22Odq1XbRCU7MTpiUTfGtpp-NT3P4bmrvNqefSndrcztau5ohoY3nT-5jxd8PKtMqD7jo9ufeQ6fS8l7j0hLeHGCXe3hKPRNZmRNsNNEd53RVpwYbsiiJOx7YqnASHeqFHO_gFnl1wsZ24JR6aNz5zk4LIJ2wxHbYabJrx7V2wfFF2vLeOzRNizEU7uiOP0W8LnIWwAD0Pi3QRNAj6siPAC8e7JDpOW7D_Ivmw-AQE91Ss:1sDHBg:E_XQlnCEUNe1J-kpa-OKpnK7zTm-6a_k_uPaD8DEDNk', '2024-06-15 05:21:52.293008'),
('c1h2ivwa6sbyul2mjmep2pzd3rc4kq5c', 'eyJyZWNvbW1lbmRlZF9sYXB0b3BzIjpbXX0:1sCpB8:y76wSHyIk6xJXazLkG_-lOugs6G-v8prkb3oNOE-OUU', '2024-06-13 23:27:26.980247'),
('cwmpvlh252s66cidihq3keey9z044bpc', 'eyJyZWNvbW1lbmRlZF9sYXB0b3BzIjpbXX0:1sCoFk:2cO__NSdJBNrj-Usz8Xa2G9MHRBtrKzz-3oOlgZlSBE', '2024-06-13 22:28:08.850825'),
('feh94far3mck8w2n6yid4m7osc1v7del', '.eJztll9rwjAUxb9KyLMP6R-74ttGddY5Ga2DyRglay4a1jQljWMifvclU7ehwvZQn-zjvac5pD8Oh6yxglwKASUDlhW00rKqce95jV8VLRnu4QJK-S5xBwvJoDCL8dcCxQzoA2VoUMAH6iLHj5PHEIXujBDiT-MJGn-ZmYOVkjnUtVTZ3pOX2lj9VjQHZYRcKkD8ykjlUmR2MpdxyHbUCwWU2YXbwYqKTICQamXmwFpxQdUqq7VUdA6ZXlVgDNM0wsdiTiuac22Odq1XbRCU7MTpiUTfGtpp-NT3P4bmrvNqefSndrcztau5ohoY3nT-5jxd8PKtMqD7jo9ufeQ6fS8l7j0hLeHGCXe3hKPRNZmRNsNNEd53RVpwYbsiiJOx7YqnASHeqFHO_gFnl1wsZ24JR6aNz5zk4LIJ2wxHbYabJrx7V2wfFF2vLeOzRNizEU7uiOP0W8LnIWwAD0Pi3QRNAj6siPAC8e7JDpOW7D_Ivmw-AQE91Ss:1sD91I:AlEaJrvoRPmEhNk0Txealimsfs2oJs0Et0HWZG8ieeE', '2024-06-14 20:38:36.472827'),
('hqpogi0ypiv6a82iucivdfjqh0m8nmsk', '.eJztll9rwjAUxb9KyLMP6R-74ttGddY5Ga2DyRglay4a1jQljWMifvclU7ehwvZQn-zjvac5pD8Oh6yxglwKASUDlhW00rKqce95jV8VLRnu4QJK-S5xBwvJoDCL8dcCxQzoA2VoUMAH6iLHj5PHEIXujBDiT-MJGn-ZmYOVkjnUtVTZ3pOX2lj9VjQHZYRcKkD8ykjlUmR2MpdxyHbUCwWU2YXbwYqKTICQamXmwFpxQdUqq7VUdA6ZXlVgDNM0wsdiTiuac22Odq1XbRCU7MTpiUTfGtpp-NT3P4bmrvNqefSndrcztau5ohoY3nT-5jxd8PKtMqD7jo9ufeQ6fS8l7j0hLeHGCXe3hKPRNZmRNsNNEd53RVpwYbsiiJOx7YqnASHeqFHO_gFnl1wsZ24JR6aNz5zk4LIJ2wxHbYabJrx7V2wfFF2vLeOzRNizEU7uiOP0W8LnIWwAD0Pi3QRNAj6siPAC8e7JDpOW7D_Ivmw-AQE91Ss:1sD9NX:XpJLpLTKqiyKxHqYv-JOxNibvW_3QDp_mmtMUbDZ8sU', '2024-06-14 21:01:35.341371'),
('jsv28h9c477qzup4mh5jwp2hncesb5xh', '.eJztll1r2zAUhv_KQdcxSPJHvN5169IUmixgh7WUYjRbdQSRZWQ7Wyj97zt22iVLypZ1GSyQy_P12nr8-tiPxMrUaC2LTGbJXJS1KStydvdIvlhRZOSMzErSI9pkco7BcAJRKdPaSvjmBhRY4DxwSnk8hetuFntLa1JZVcYmLxKqqHF6s1IrabGQGhRSfSwVjU7aCK_NvFVYz6wUGSY47RErdKKlNnaJDUErpbSwy6SqjRW5TOplKVEwii7IbjEVpUhV3Y5SjuoVHrnIXhkfG_hRg-caea1_rYj3lpfNzlHb3LNom8qtqGVGnnprrnNZmIXZYHvdJeDW5AIm1kAfQn7bp_ScX41PdP-Q7rZrP6HDW7c2lFI_voFLoVWRHxBrsI3VOx6sxUJlSvzMFdeBSvfG-vWBMsZOXN_KVaSIYE32HEOIrVjI-Qh7YcIhHk048xzfhfdNpQokdzjI2yshPB7E-28EUTXVJmIMIZ4OXhw7YD4MbnwaDD86w7Eb-p-jg5s53OLcgj0W0Pt7WVdqg_MouoLLQeBCPFO4Klj0wWH8XYiftP-I7vDir-iuHs6vYHI_-Dc4px1O74TzrV8w5jsyd6kbHPQXlh_xm77_St21ZufKzp8ra3ona_7GmvdP3wFTxqbP:1sCv4d:3cy7wFor12A-Gftt_a2RglE8XNb2f3zEDVrge7F07VM', '2024-06-14 05:45:07.807429'),
('n4f43spd6g41s7a159ptgkkm0ejay590', 'eyJyZWNvbW1lbmRlZF9sYXB0b3BzIjpbXX0:1sCpOf:VVnpZ6DBpDlpktLYRlU2Fe1CfH549gSO4Ah9Lxcsxyo', '2024-06-13 23:41:25.605988'),
('qcs9wnz0uxggd7ua9jv3u05r5merit0m', '.eJztlF9r2zAUxb_KRc9xsGwpW_PmbIXlnym4zUJHMYqtpWKVZSRlEEq_-66abg1r11HwU-s3Hx3r4Pvz5dwSKyujtWxqWZc3ovWmdWT87ZZsrGhqMibC7RwZEG1qeYMyQwkr9dNMjPkBlMGaUX6aRafzlLGvBeTGyw1aeKW1ppLOGVv-zlKNx5Bjxytp0aiMlaBStJqdLoPCj0gOyl9bKWrUbECs0KWW2tg9GdNRCFJa2H3pvLFiK0u_byXGFcVn8tSsRCsq5fEqp5jtcPCmfuZ2buCPBw8eee79x8B4QLbt7smc4ewhNBxtrfCyJneDR7raqSO4y2IKS3y2TSD7iSbLiDE2zWFx_2M6YDr6i-nHN8j0Xxu7ud_YESRxksKajmJ-mU2i5SRlCS5uj_gViK_bI8BfzoByF33f8zhm5xc9yS6W9VCvHNb8UK-zjrf0PZTry0WAbCmPk8sA9-Qk7SvglXArnP8ILkrIXKsQx0paA9mKsognZ5Cvh_PZeTEdxnHSI-4IMYcMiyHiH-AiH87TWcBL0x5vR3gXysvQENkiQKZ97f6X69XdL6k2QgQ:1sCoEX:KGVJeFQzXl7Lrj5i2OZiX0q2_NstHT3WEVyyJhmS4Ek', '2024-06-13 22:26:53.732804'),
('s0jw99uasr6ro5nyczguq2zag5ibc50k', 'eyJyZWNvbW1lbmRlZF9sYXB0b3BzIjpbXX0:1sConf:Faco-gXhvT4wQvyI7wLoHZbmoe6288tEMGwqmQDnNoM', '2024-06-13 23:03:11.679821'),
('uq96u3eqh1atnnc762wsd5np5cjj46qk', '.eJztll9rwjAUxb9KyLMP6R-74ttGddY5Ga2DyRglay4a1jQljWMifvclU7ehwvZQn-zjvac5pD8Oh6yxglwKASUDlhW00rKqce95jV8VLRnu4QJK-S5xBwvJoDCL8dcCxQzoA2VoUMAH6iLHj5PHEIXujBDiT-MJGn-ZmYOVkjnUtVTZ3pOX2lj9VjQHZYRcKkD8ykjlUmR2MpdxyHbUCwWU2YXbwYqKTICQamXmwFpxQdUqq7VUdA6ZXlVgDNM0wsdiTiuac22Odq1XbRCU7MTpiUTfGtpp-NT3P4bmrvNqefSndrcztau5ohoY3nT-5jxd8PKtMqD7jo9ufeQ6fS8l7j0hLeHGCXe3hKPRNZmRNsNNEd53RVpwYbsiiJOx7YqnASHeqFHO_gFnl1wsZ24JR6aNz5zk4LIJ2wxHbYabJrx7V2wfFF2vLeOzRNizEU7uiOP0W8LnIWwAD0Pi3QRNAj6siPAC8e7JDpOW7D_Ivmw-AQE91Ss:1sDCDB:1_b_PYeFICzn0Pw8vhhztdv6GUvaOYpSGaivULfdWqw', '2024-06-15 00:03:05.608364'),
('vixmbgq3vw21lb3gz2rrubuvzha7mr1d', '.eJztll1r2zAUhv_KQdcxSPJHvN5169IUmixgh7WUYjRbdQSRZWQ7Wyj97zt22iVLypZ1GSyQy_P12nr8-tiPxMrUaC2LTGbJXJS1KStydvdIvlhRZOSMzErSI9pkco7BcAJRKdPaSvjmBhRY4DxwSnk8hetuFntLa1JZVcYmLxKqqHF6s1IrabGQGhRSfSwVjU7aCK_NvFVYz6wUGSY47RErdKKlNnaJDUErpbSwy6SqjRW5TOplKVEwii7IbjEVpUhV3Y5SjuoVHrnIXhkfG_hRg-caea1_rYj3lpfNzlHb3LNom8qtqGVGnnprrnNZmIXZYHvdJeDW5AIm1kAfQn7bp_ScX41PdP-Q7rZrP6HDW7c2lFI_voFLoVWRHxBrsI3VOx6sxUJlSvzMFdeBSvfG-vWBMsZOXN_KVaSIYE32HEOIrVjI-Qh7YcIhHk048xzfhfdNpQokdzjI2yshPB7E-28EUTXVJmIMIZ4OXhw7YD4MbnwaDD86w7Eb-p-jg5s53OLcgj0W0Pt7WVdqg_MouoLLQeBCPFO4Klj0wWH8XYiftP-I7vDir-iuHs6vYHI_-Dc4px1O74TzrV8w5jsyd6kbHPQXlh_xm77_St21ZufKzp8ra3ona_7GmvdP3wFTxqbP:1sDEya:BZIrsN65W5mfWHTb8tT2dnIONXIJG1XIIyhGl0EmI1w', '2024-06-15 03:00:12.061181'),
('zkdnr9j63pvrqebvhe62h3aq8wo2h0h3', '.eJztlF9LwzAUxb9KyHMHaWq7sueBK5Qy2BRBpMQm2wrNH28yYYx9d7M6dbiByuqL9vHck3vD_cE9Wwyi0lIKxQUvG2acNhaP7rf4EZjieIRXBgdYai4aLyZTFMaDBSeEJPMblLfvvW9AV8JaDeVbW62c7zh2XC3AG5UGgerIW2oty73y_yWvyq1AMO51GmBgspRCati00kAtGWxK6zSwpSjdxgg_bTYb41OzYoZVtfOdcUgDbP2Kip_pLjR699DBw-fefwwkAV6a9cma-9ph6L60BOYEx7vgg2MjlH7WRyzztoAyLtiUcRR5stk8JzFKw7uUkIJmRXeA6SfAV38PsKfaHOEde4lutXWgURRT0rO8kGWmrKlBq57mT2meRqgdLIDGYdxlhv4DkN_M0ASldJKS6HrWR-hv8h0XPd_Lg-CJJsOoD4IuQA7DYQ-y44tvT53mUX_qX4N92L0ArDmjdA:1sCr0d:0v6eJbNoAdg-qqw88U-FOzppufjomw2ups7vs9U8twQ', '2024-06-14 01:24:43.135306');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp1_laptop`
--

CREATE TABLE `myapp1_laptop` (
  `index` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `rating` double NOT NULL,
  `processor_brand` varchar(100) NOT NULL,
  `processor_tier` varchar(100) NOT NULL,
  `num_cores` int(11) NOT NULL,
  `num_threads` int(11) NOT NULL,
  `ram_memory` int(11) NOT NULL,
  `primary_storage_type` varchar(50) NOT NULL,
  `primary_storage_capacity` int(11) NOT NULL,
  `secondary_storage_type` varchar(50) DEFAULT NULL,
  `secondary_storage_capacity` int(11) DEFAULT NULL,
  `gpu_brand` varchar(50) DEFAULT NULL,
  `gpu_type` varchar(50) DEFAULT NULL,
  `is_touch_screen` tinyint(1) NOT NULL,
  `display_size` double NOT NULL,
  `resolution_width` int(11) NOT NULL,
  `resolution_height` int(11) NOT NULL,
  `os` varchar(50) NOT NULL,
  `year_of_warranty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `myapp1_laptop`
--

INSERT INTO `myapp1_laptop` (`index`, `brand`, `model`, `price`, `rating`, `processor_brand`, `processor_tier`, `num_cores`, `num_threads`, `ram_memory`, `primary_storage_type`, `primary_storage_capacity`, `secondary_storage_type`, `secondary_storage_capacity`, `gpu_brand`, `gpu_type`, `is_touch_screen`, `display_size`, `resolution_width`, `resolution_height`, `os`, `year_of_warranty`) VALUES
(1, 'tecno', 'Tecno Megabook T1 Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 23990, 63, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(2, 'tecno', 'Tecno Megabook T1 Laptop (11th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)', 35990, 67, 'intel', 'core i7', 4, 8, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(3, 'hp', 'HP Victus 15-fb0157AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 51100, 73, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(4, 'acer', 'Acer Extensa EX214-53 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 39990, 62, 'intel', 'core i5', 12, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(5, 'lenovo', 'Lenovo V15 82KDA01BIH Laptop (AMD Ryzen 3 5300U/ 8GB/ 512GB SSD/ Win11 Home)', 28580, 62, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(6, 'apple', 'Apple MacBook Air 2020 MGND3HN Laptop (Apple M1/ 8GB/ 256GB SSD/ MacOS)', 70990, 45, 'apple', 'm1', 8, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'apple', 'apple', 0, 133, 2560, 1600, 'mac', 1),
(7, 'infinix', 'Infinix INBook Y2 Plus Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win 11 Home)', 34990, 56, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(8, 'asus', 'Asus TUF Gaming F15 FX506HF-HN024W Gaming Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 4GB Graph', 49990, 70, 'intel', 'core i5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(9, 'hp', 'HP 15s-fq5007TU Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 36990, 60, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(10, 'infinix', 'Infinix Zerobook 2023 Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win 11 Home)', 59990, 71, 'intel', 'core i9', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(11, 'dell', 'Dell Inspiron 3520 D560896WIN9B Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 34990, 60, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(12, 'samsung', 'Samsung Galaxy Book2 Pro 13 Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 64990, 68, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 133, 1080, 1920, 'windows', 1),
(13, 'msi', 'MSI Thin GF63 12UC-846IN Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graphics)', 52990, 71, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(14, 'asus', 'Asus Vivobook 16X 2022 M1603QA-MB711WS Laptop (Ryzen 7-5800H/ 16GB/ 512GB SSD/ Win11 Home)', 57390, 71, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(15, 'lenovo', 'Lenovo IdeaPad Slim 3 82H803LKIN Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 47490, 66, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(16, 'hp', 'HP Omen 16-wf1025TX Gaming Laptop (14th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 153990, 85, 'intel', 'core i7', 20, 28, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1440, 'windows', 1),
(17, 'lenovo', 'Lenovo V15 G3 IAP 82TTA08AIN Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/Win11)', 49990, 59, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(18, 'asus', 'Asus TUF Gaming F15 FX506HE-HN385WS Gaming Laptop (11th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 4GB Graph', 75990, 76, 'intel', 'core i7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(19, 'hp', 'HP Victus 15-fb1017AX Gaming Laptop (AMD Ryzen 5 7535HS/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 55490, 71, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(20, 'wings', 'Wings Nuvobook V1 Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 27990, 56, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1080, 1920, 'windows', 1),
(21, 'hp', 'HP 255 G9 840T7PA Laptop (AMD Athlon Silver-3050U/ 4GB/ 256GB SSD/ DOS)', 19299, 49, 'amd', 'other', 2, 2, 4, 'SSD', 256, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1366, 768, 'dos', 1),
(22, 'lenovo', 'Lenovo V15 G4 82YU00W7IN Laptop (AMD Ryzen 3 7320U/ 8GB/ 512GB SSD/ Win11 Home)', 27990, 59, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(23, 'apple', 'Apple MacBook Pro 16 2023 Laptop (Apple M3 Max/ 48GB/ 1TB SSD/ macOS)', 399900, 65, 'apple', 'm3', 16, 16, 8, 'SSD', 1024, 'No secondary storage', 0, 'apple', 'apple', 0, 162, 3456, 2234, 'mac', 1),
(24, 'asus', 'Asus Vivobook 15 X1502ZA-EJ385WS Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 39990, 57, 'intel', 'core i3', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(25, 'asus', 'Asus VivoBook 15 X1500EA-EJ311W Laptop (11th Gen Core i3/ 8GB/ 256GB SSD/ Win11)', 27990, 57, 'intel', 'core i3', 2, 4, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(26, 'acer', 'Acer Nitro V ANV15-51 2023 Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 6GB Graph)', 77990, 63, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(27, 'hp', 'HP Victus 16-s0094AX Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 78990, 77, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(28, 'ultimus', 'Ultimus Elite NU14U3INF56BN-CS Laptop (10th Gen Core i5 / 8GB/ 512GB SSD/ Win11 Home)', 19990, 54, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 141, 1920, 1080, 'windows', 1),
(30, 'hp', 'HP Pavilion 15-eg3081TU Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 71999, 66, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(31, 'msi', 'MSI GF63 Thin 11UC-1294IN Gaming Laptop (11th Gen Core i7/ 16GB/ 1TB 256GB SSD/ Win11/ 4GB Graph)', 66780, 76, 'intel', 'core i7', 8, 16, 16, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(32, 'samsung', 'Samsung Galaxy Book2 NP550XED-KA1IN 15 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 44990, 59, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(33, 'samsung', 'Samsung Galaxy Book2 NP550XED-KA2IN Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 47990, 62, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(34, 'lenovo', 'Lenovo IdeaPad Gaming 3 15IHU6 82K101GSIN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB ', 47990, 71, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(35, 'asus', 'Asus Vivobook 16X 2022 M1603QA-MB502WS Laptop (Ryzen 5-5600H/ 8GB/ 512GB SSD/ Win11 Home)', 46990, 65, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(36, 'apple', 'Apple MacBook Air 2022 Laptop (Apple M2/ 8GB/ 256GB SSD/ MacOS)', 102990, 48, 'apple', 'm2', 8, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'apple', 'apple', 0, 136, 2560, 1664, 'mac', 1),
(37, 'dell', 'Dell G15-5520 Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 68239, 66, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(38, 'acer', 'Acer Aspire Lite AL15-52 15 Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11)', 46990, 64, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(39, 'acer', 'Acer Aspire Lite 15 AL15-52 Laptop (12th Gen Core i3/ 16GB/ 512GB SSD/ Win11)', 34990, 60, 'intel', 'core i3', 6, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(40, 'hp', 'HP 15s-fr5011TU Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 53990, 62, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(41, 'asus', 'Asus Vivobook 16X 2023 K3605ZF-MB541WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Gr', 63990, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(42, 'asus', 'Asus ROG Flow X13 GV301RC-LJ132WS Gaming Laptop (AMD Ryzen 9 6900HS/ 16GB/ 512GB SSD/ Win11 Home/ 4G', 113571, 77, 'amd', 'ryzen 9', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 1, 134, 1920, 1200, 'windows', 1),
(43, 'hp', 'HP Victus 15-fa1062TX Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 88800, 71, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(45, 'hp', 'HP Victus 15-fb0150AX Gaming Laptop (AMD Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 53570, 71, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(46, 'hp', 'HP Omen 16-xf0060AX Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 116990, 80, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1080, 'windows', 1),
(47, 'hp', 'HP Victus 15-fa0555TX  Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 70810, 71, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(48, 'dell', 'Dell G15-5530 GN5530D83M6002ORB1 Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 6GB Graph)', 81290, 71, 'intel', 'core i5', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(49, 'msi', 'MSI Modern 14 C11M-030IN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 35950, 58, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(50, 'asus', 'Asus ROG Strix SCAR 16 2023 G634JZ-NM057WS Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win11 Hom', 269990, 83, 'intel', 'core i9', 24, 32, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(51, 'msi', 'MSI Thin GF63 12VE-071IN Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/6GB Graphics)', 69990, 70, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(53, 'dell', 'Dell Vostro 3425 Laptop (AMD Ryzen 5 5625U/ 8GB/ 512GB SSD/ Win11 Home)', 39649, 66, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(56, 'infinix', 'Infinix INBook Y1 Plus 15 XL28 Laptop (10th Gen Core i5/ 8GB/ 512GB SSD/ Win 11 Home)', 29990, 54, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(57, 'acer', 'Acer Aspire Lite AL15-52 Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 32990, 58, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(58, 'hp', 'HP Victus 16-s0095AX Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11/ 6GB Graph)', 83590, 76, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(59, 'hp', 'HP Victus 15-FB1001AX Gaming Laptop (AMD Ryzen 5 7535HS/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 54490, 70, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(60, 'hp', 'HP 15s-eq2132AU Laptop (AMD Ryzen 5 5500U/ 16GB/ 512GB SSD/ Win11 Home)', 42499, 63, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(61, 'infinix', 'Infinix INBook X3 Slim XL422 2023 Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win 11 Home)', 27990, 50, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(62, 'hp', 'HP Omen 16-u0005TX Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 147990, 80, 'intel', 'core i7', 16, 24, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1600, 'windows', 1),
(63, 'asus', 'Asus TUF Gaming F17 FX707ZC4-HX067W Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Gra', 74085, 75, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 1),
(64, 'dell', 'Dell Inspiron 5430 Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 86490, 66, 'intel', 'core i7', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(65, 'asus', 'Asus Vivobook 15 X1502ZA-EJ741WS Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 60990, 67, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(66, 'lenovo', 'Lenovo Ideapad Gaming 3 82SB00NXIN Laptop (AMD Ryzen 5 7535HS/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Grap', 56990, 69, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(67, 'dell', 'Dell Inspiron 5630 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 72490, 70, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 2560, 1600, 'windows', 1),
(68, 'asus', 'Asus VivoBook 14 X415EA-EK344WS Notebook (11th Gen Core i3/ 16GB/ 512GB SSD/ Win11 Home)', 35990, 64, 'intel', 'core i3', 2, 4, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(69, 'asus', 'Asus TUF Gaming F15 2023 FX507ZV-LP094W Gaming Laptop (12th Gen Core i7/ 16GB/512GB SSD/ Win11 Home/', 108990, 78, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(70, 'asus', 'Asus TUF Gaming F15 FX506HF-HN025W Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Grap', 57990, 72, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(71, 'hp', 'HP Victus 15-fa0998TX Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 69999, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(72, 'hp', 'HP Victus 15-fa0666TX Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 71990, 65, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(73, 'apple', 'Apple MacBook Air 15 2023 Laptop (Apple M2/ 8GB/ 256GB SSD/ MacOS)', 119990, 53, 'apple', 'm2', 8, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'apple', 'apple', 0, 153, 2880, 1864, 'mac', 1),
(74, 'infinix', 'Infinix INBook Y1 Plus Neo XL30 Laptop (Intel Celeron N5100/ 8GB/ 512GB SSD/ Win 11 Home)', 26990, 53, 'intel', 'celeron', 4, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(75, 'hp', 'HP Pavilion x360 14-ek1010TU Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11)', 77899, 70, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1080, 'windows', 1),
(76, 'primebook', 'Primebook 4G Android Laptop (MediaTek Kompanio 500/ 4GB/ 64GB eMMC/ Android 11)', 14990, 26, 'other', 'other', 8, 0, 4, 'HDD', 64, 'No secondary storage', 0, 'arm', 'integrated', 0, 116, 1366, 768, 'android', 1),
(77, 'dell', 'Dell Inspiron 3520 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 50000, 60, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(78, 'acer', 'Acer Aspire 5 A515-57G UN.K9TSI.002 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4G', 56990, 71, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(79, 'hp', 'HP Victus 15-fa0070TX Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 57990, 70, 'intel', 'core i5', 8, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(80, 'hp', 'HP Victus 16-e0352AX Gaming Laptop (Ryzen 5-5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 49999, 70, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(81, 'asus', 'Asus Vivobook S14 OLED S3402ZA-KM501WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 72490, 62, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(82, 'asus', 'Asus Vivobook S15 OLED K3502ZA-L501WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 69689, 64, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(83, 'iball', 'iBall Excelance CompBook Laptop (AQC/ 2GB/ 32GB/Win10)', 9800, 41, 'intel', 'other', 4, 0, 2, 'HDD', 32, 'No secondary storage', 0, 'intel', 'integrated', 0, 116, 1366, 768, 'windows', 1),
(84, 'ultimus', 'Ultimus Lite NU14U3INC54BN Laptop (Celeron N4020/ 8GB/ 256GB SSD/ Win11 Home)', 15990, 46, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 141, 1366, 768, 'windows', 1),
(85, 'dell', 'Dell G15-5530 Gaming Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 83990, 72, 'intel', 'core i5', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(86, 'asus', 'Asus VivoBook 14 X1400EA-EK543WS Notebook (11th Gen Core i5/16GB/ 512GB SSD/ Win11 Home)', 46990, 57, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(87, 'hp', 'HP Pavilion 15-EG2119TU Laptop (12th Gen Core i5/12GB RAM/ 512GB SSD/ Win11)', 60990, 54, 'intel', 'core i5', 12, 16, 12, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(88, 'lenovo', 'Lenovo IdeaPad Slim 3 82X60013IN Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 44990, 51, 'intel', 'core i3', 5, 6, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(89, 'lenovo', 'Lenovo ThinkBook 15 G5 21JF002JIN Laptop (AMD Ryzen 3 7330U/ 8 GB/ 512 GB SSD/ Win11)', 34990, 66, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(90, 'hp', 'HP Victus 15-fa1145TX Gaming Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home/ 4GB Graph)', 66990, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(91, 'lenovo', 'Lenovo V15 G4 Laptop (AMD Athlon Silver 7120U/ 8GB/ 512GB SSD/ Win11 Home)', 24440, 47, 'amd', 'other', 2, 2, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(92, 'hp', 'HP Victus 15-fb1002AX Gaming Laptop (AMD Ryzen 5 7535HS/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 51990, 70, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(93, 'msi', 'MSI Thin GF63 11SC-1629IN Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 54990, 65, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(94, 'ultimus', 'Ultimus Pro NU14U3INC43BN-CS Laptop (Celeron N4020/ 4GB/ 128GB SSD/ Win11 Home)', 11990, 41, 'intel', 'celeron', 2, 2, 4, 'SSD', 128, 'No secondary storage', 0, 'intel', 'integrated', 0, 141, 1366, 768, 'windows', 1),
(95, 'lenovo', 'Lenovo ThinkBook 15 G5 21JFA00BIN Laptop (AMD Ryzen 7 7730U/ 8 GB/ 512 GB SSD/ Win11)', 48990, 70, 'amd', 'ryzen 7', 8, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(96, 'msi', 'MSI Katana 15 B13UDXK-1482IN Gaming Laptop (13th Gen Core i5/ 32GB/ 1TB SSD/ Win11 Home/ 6GB Graph)', 74990, 75, 'intel', 'core i5', 12, 16, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(97, 'msi', 'MSI Bravo 15 B7ED-012IN Gaming Laptop (AMD Ryzen 5 7535HS/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 49990, 65, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(98, 'asus', 'Asus Vivobook 15 X1502ZA-EJ544WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 53990, 63, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(99, 'asus', 'Asus Vivobook 16 2023 X1605VA-MB947WS Laptop (13th Gen Core i9/ 16GB/ 512GB SSD/ Win11 Home)', 81689, 71, 'intel', 'core i9', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(100, 'lenovo', 'Lenovo IdeaPad Gaming 3 82SB00V3IN Laptop (AMD Ryzen 5 6600H/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph', 63889, 63, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(101, 'lenovo', 'Lenovo IdeaPad Slim 3 82RK00VWIN Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 37040, 59, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(102, 'asus', 'Asus ROG Strix G16 2023 G614JJ-N3086WS Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 6GB ', 94990, 70, 'intel', 'core i5', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(103, 'infinix', 'Infinix INBook X2 Slim Series XL23 2023 Laptop (11th Gen Core i5/ 16GB/ 1TB SSD/ Win 11 Home)', 35990, 60, 'intel', 'core i5', 4, 8, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(104, 'asus', 'Asus Vivobook Pro 15 M6500RC-HN741WS Laptop (AMD Ryzen 7 6800H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 72990, 70, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(105, 'hp', 'HP Victus 15-fb1016AX  Gaming Laptop (AMD Ryzen 5 7535HS/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 55990, 67, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(106, 'lenovo', 'Lenovo Yoga 7 82YM0074IN Laptop (AMD Ryzen 7 7735U/ 16GB/ 1TB SSD/ Win11 Home)', 94990, 80, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 2880, 1800, 'windows', 1),
(107, 'hp', 'HP 15S-FQ5202TU Laptop (12th Gen Core i5/ 8 GB RAM/ 512 GB SSD/ Win 11)', 51800, 57, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(109, 'hp', 'HP Victus15-fb0147AX Gaming Laptop (Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 49775, 62, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(110, 'asus', 'Asus TUF Gaming F15  FX506HF-HN075W Gaming Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 4GB Grap', 53990, 66, 'intel', 'core i5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(112, 'lenovo', 'Lenovo LOQ 15IRH8 82XV00F5IN 2023 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 6GB Graph', 79990, 70, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(113, 'msi', 'MSI Modern 15 B11M-061IN Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 41990, 63, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(114, 'acer', 'Acer Aspire Lite AL15 Laptop (AMD Ryzen 5 5500U/ 16GB/ 512GB SSD/ Win11)', 37990, 60, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(115, 'asus', 'Asus Vivobook 14X K3405ZFB-KM752WS Laptop (12th Gen Core i7 /16GB/ 1TB SSD/Win11/ 4GB Graphic)', 85990, 75, 'intel', 'core i7', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2880, 1800, 'windows', 1),
(116, 'acer', 'Acer Aspire Lite 2023 AL15-51 Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 39499, 62, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(117, 'infinix', 'Infinix Zerobook 13 ZL513 2023 Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win 11 Home)', 57990, 63, 'intel', 'core i7', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(118, 'asus', 'Asus Vivobook 14X K3405ZFB-KM541WS Laptop (12th Gen Core i5 /16GB/512GB SSD/Win11)', 67990, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2880, 1800, 'windows', 1),
(119, 'acer', 'Acer Nitro 5 AN515-58 NH.QLZSI.001 Gaming Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 6GB Grap', 94990, 72, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(120, 'asus', 'Asus TUF Gaming F15 2022 FX507ZC4-HN115W Gaming Laptop (12th Gen Core i5/ 8GB/512GB SSD/ Win11 / 4GB', 75250, 72, 'intel', 'core i5', 12, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(121, 'acer', 'Acer Aspire 7 A715-76G NH.QMESI.002 Gaming Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB', 47990, 67, 'intel', 'core i5', 8, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(122, 'asus', 'Asus Zenbook 14X OLED 2023 M5401QA-KM541WS Laptop (Ryzen 5 5600H / 16GB/ 512GB SSD/ Win11 Home)', 66990, 64, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(123, 'hp', 'HP Pavilion 15-eh2050AU Laptop (AMD Ryzen 5 5625U/ 8GB/ 512GB SSD/ Win11 Home)', 43700, 62, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(124, 'asus', 'Asus Vivobook Pro 16 OLED 2023 K6602VU-LZ952WS Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11/ 6GB G', 154990, 88, 'intel', 'core i9', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 3200, 2000, 'windows', 1),
(125, 'acer', 'Acer Predator Helios Neo 16 PHN16-71 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 6GB Graph)', 119990, 75, 'intel', 'core i7', 16, 24, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(126, 'acer', 'Acer Predator Helios Neo 16 NH.QLTSI.001 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 6GB Graph', 104990, 70, 'intel', 'core i5', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(127, 'hp', 'HP 250 G8 7M6L7PA Laptop (11th Gen Core i3/ 8GB/ 1TB 256GB SSD/ Win11)', 34890, 58, 'intel', 'core i3', 2, 4, 8, 'HDD', 1024, 'SSD', 256, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 0),
(128, 'hp', 'HP 15-fc0025AU Laptop (AMD Ryzen 3 7320U/ 8GB/ 512GB SSD/ Win11 Home)', 32490, 54, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(129, 'hp', 'HP 15-fc0028AU Laptop (AMD Ryzen 5 7520U/ 8GB/ 512GB SSD/ Win11 Home)', 43400, 52, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(130, 'lenovo', 'Lenovo Thinkbook 15 21DJA049IH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 40990, 66, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(131, 'acer', 'Acer Extensa 15 EX215-33 2023 Laptop (Intel Core i3 N305/ 8GB/ 512GB SSD/ Win11 Home)', 30990, 49, 'intel', 'core i3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(132, 'lenovo', 'Lenovo IdeaPad Slim 3 82KU0238IN Laptop (AMD Ryzen 5 5500U/ 16GB/ 512GB SSD/ Win11 Home)', 40990, 64, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(133, 'hp', 'HP 15s-fq2717TU Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 31090, 60, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(134, 'dell', 'Dell G15-5520 Gaming Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 68990, 74, 'intel', 'core i5', 12, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(135, 'asus', 'Asus ROG Flow X13 GV301RC-LJ073WS Gaming Laptop (AMD Ryzen 9 6900HS/ 16GB/ 1TB SSD/ Win11 Home/ 4GB ', 96389, 79, 'amd', 'ryzen 9', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 1, 134, 1920, 1200, 'windows', 1),
(136, 'asus', 'Asus VivoBook 15 X515EA-EJ522WS Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 43990, 60, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(137, 'lenovo', 'Lenovo IdeaPad Gaming 3 82K10198IN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 45651, 67, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(138, 'asus', 'Asus Vivobook 16X 2022 M1603QA-MB511WS Laptop (Ryzen 5-5600H/ 16GB/ 512GB SSD/ Win11 Home)', 52990, 65, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(139, 'acer', 'Acer TravelMate TMP214-53 Business Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 38990, 64, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(140, 'asus', 'Asus Vivobook 15 Touch X515EA-EZ311WS Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 33490, 56, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(141, 'apple', 'Apple MacBook Pro 2022 Laptop (Apple M2/ 8GB/ 256GB SSD/ macOS)', 109990, 43, 'apple', 'm2', 8, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'apple', 'apple', 0, 133, 2560, 1600, 'mac', 1),
(142, 'asus', 'Asus Vivobook S15 OLED K3502ZA-L701WS Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 72990, 70, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(143, 'hp', 'HP 15s-eq2144au Laptop (Ryzen 5 5500U/ 8GB/ 512GB SSD/ Win11 Home)', 40499, 60, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(144, 'hp', 'HP Spectre x360 16-aa0665TU Laptop (Intel Core Ultra 7/ 32GB/ 2TB SSD/ Win11 Home)', 202340, 82, 'intel', 'core ultra 7', 16, 22, 32, 'SSD', 2048, 'No secondary storage', 0, 'intel', 'dedicated', 1, 160, 2880, 1800, 'windows', 1),
(145, 'lenovo', 'Lenovo V15 G4 82YU00W9IN Laptop (Ryzen 5 7520U/ 8GB/ 512GB SSD/ Win11 Home)', 35990, 60, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(147, 'lenovo', 'Lenovo IdeaPad Slim 3 82H803HQIN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 44990, 64, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(150, 'dell', 'Dell 5530 G15 Gaming Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 148490, 78, 'intel', 'core i9', 24, 32, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(151, 'hp', 'HP Spectre x360 14-eu0666TU Laptop (Intel Core Ultra 7/ 32GB/ 1TB SSD/ Win11 Home)', 165900, 76, 'intel', 'core ultra 7', 16, 22, 32, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'dedicated', 1, 140, 2880, 1800, 'windows', 1),
(152, 'apple', 'Apple MacBook Pro 16 2023 Laptop (Apple M3 Pro/ 36GB/ 512GB SSD/ macOS)', 289900, 63, 'apple', 'm3', 12, 12, 36, 'SSD', 512, 'No secondary storage', 0, 'apple', 'apple', 0, 162, 3456, 2234, 'mac', 1),
(153, 'apple', 'Apple MacBook Pro 16 2023 Laptop (Apple M3 Max/ 36GB/ 1TB SSD/ macOS)', 349900, 64, 'apple', 'm3', 14, 14, 36, 'SSD', 1024, 'No secondary storage', 0, 'apple', 'apple', 0, 162, 3456, 2234, 'mac', 1),
(154, 'apple', 'Apple MacBook Pro 16 2023 Laptop (Apple M3 Pro/ 18GB/ 512GB SSD/ macOS)', 249900, 58, 'apple', 'm3', 12, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'apple', 'apple', 0, 162, 3456, 2234, 'mac', 1),
(155, 'apple', 'Apple MacBook Pro 14 2023 Laptop (Apple M3 Pro/ 18GB/ 512GB SSD/ macOS)', 199900, 56, 'apple', 'm3', 11, 11, 8, 'SSD', 512, 'No secondary storage', 0, 'apple', 'apple', 0, 142, 3024, 1964, 'mac', 1),
(156, 'lenovo', 'Lenovo Legion Pro 5 16IRX8 82WK00MWIN Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 8GB Gra', 152990, 77, 'intel', 'core i7', 16, 24, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(157, 'dell', 'Dell Inspiron 3520 IN3520P9K46002ORS1 Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 37990, 59, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(158, 'hp', 'HP Victus 15-FA1098TX Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 60990, 64, 'intel', 'core i5', 8, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(159, 'hp', 'HP 15s-er2004AU Laptop (AMD Ryzen 7 5700U/ 16GB/ 512GB SSD/ Win11)', 50999, 58, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(160, 'dell', 'Dell Inspiron 3530 IN3530RMD8W001ORS1 Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home)', 65990, 53, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(161, 'acer', 'Acer Aspire 3 A315-24P NX.KDESI.00B Laptop (AMD Ryzen 5 7520U/ 8GB/ 512GB SSD/ Win11 Home)', 32990, 54, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(162, 'asus', 'Asus Vivobook 16 2023 X1605ZAB-MB342WS Laptop (12th Gen Core i3/ 16GB/ 512GB SSD/ Win11 Home)', 47990, 62, 'intel', 'core i3', 6, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(163, 'lenovo', 'Lenovo Legion Slim 5 82Y9009JIN Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 132190, 83, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(164, 'ultimus', 'Ultimus Lite NU14U4INC44BN-CS Laptop (Celeron N4020/ 4GB/ 256GB SSD/ Win11 Home)', 14990, 45, 'intel', 'celeron', 2, 2, 4, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 141, 1366, 768, 'windows', 1),
(165, 'zebronics', 'Zebronics Pro Series Z ZEB-NBC 3S 2023 Laptop (12th Gen Core i3 / 8GB/ 512GB SSD/ Win11 Home)', 33990, 65, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(166, 'hp', 'HP Spectre x360 14-eu0556TU Laptop (Intel Core Ultra 7/ 32GB/ 1TB SSD/ Win11 Home)', 165900, 76, 'intel', 'core ultra 7', 16, 22, 32, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'dedicated', 1, 140, 2880, 1800, 'windows', 1),
(167, 'hp', 'HP 15s-fq5185TU Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 39700, 59, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(168, 'zebronics', 'Zebronics Pro Series Y ZEB-NBC 2S Laptop (11th Gen Core i5 / 16GB/ 512GB SSD/ Win11 Home)', 32990, 63, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(169, 'zebronics', 'Zebronics ZEB-NBC 5S 2023 Laptop (12th Gen Core i7 / 16GB/ 1TB SSD/ Win11 Home)', 52990, 72, 'intel', 'core i7', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(170, 'zebronics', 'Zebronics Pro Series Y ZEB-NBC 1S Laptop (11th Gen Core i3 / 8GB/ 512GB SSD/ Win11 Home)', 29990, 56, 'intel', 'core i3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(171, 'hp', 'HP Pavilion 14-dv2153TU Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win 11)', 68710, 67, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(172, 'lenovo', 'Lenovo IdeaPad Gaming 3 82SB00V2IN Laptop (AMD Ryzen 5 6600H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 61712, 60, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(173, 'asus', 'Asus ROG Strix G15 G513RC-HN251WS Gaming Laptop (AMD Ryzen 7 6800H/ 16GB/ 1TB SSD/ Win11/ 4GB Graph)', 91990, 71, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(174, 'hp', 'HP Victus 15-fa1132TX Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 60990, 66, 'intel', 'core i5', 8, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(175, 'chuwi', 'Chuwi FreeBook Laptop (12th Gen Core i3/ 12GB/ 512GB SSD/ Win11)', 32990, 50, 'intel', 'core i3', 6, 8, 12, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 135, 2256, 1504, 'windows', 1),
(176, 'acer', 'Acer Swift Go NXKPZSI002 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 72990, 64, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(177, 'hp', 'HP 255 G9 841W6PA Laptop (AMD Ryzen 3 3250U/ 8 GB RAM/ 512 GB SSD/ FreeDOS)', 23999, 49, 'amd', 'ryzen 3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1366, 768, 'dos', 1),
(178, 'gigabyte', 'Gigabyte G5 MF-F2IN313SH Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 71990, 67, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(179, 'asus', 'Asus Zenbook Flip 14 OLED UP5401ZA-KU541WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 84990, 69, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 3840, 2400, 'windows', 1),
(180, 'asus', 'Asus Chromebook CX1500CKA-EJ0241 Laptop (Celeron N4500/ 4GB/ 64GB eMMC/ Chrome OS)', 17990, 35, 'intel', 'celeron', 2, 2, 4, 'SSD', 64, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'chrome', 1),
(181, 'lenovo', 'Lenovo IdeaPad 1 15IGL7 82V700BSIN Laptop (Celeron N4020/ 8GB/ 256GB SSD/ Win11 Home)', 25790, 50, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(182, 'hp', 'HP 255 G8 7J035AA Laptop (Ryzen 5-5500U/ 8GB/ 256GB SSD/ Win11)', 31999, 56, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 256, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(183, 'acer', 'Acer Predator Helios Neo 16 2023 PHN16-71 Gaming Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11/ 8GB', 179990, 78, 'intel', 'core i9', 24, 32, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(184, 'asus', 'Asus TUF Gaming F15 FX506HE-HN382W Gaming Laptop (11th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 4GB Grap', 72990, 71, 'intel', 'core i7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(185, 'hp', 'HP Victus 15-fa0187TX Gaming Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 4GB Graph)', 92800, 76, 'intel', 'core i7', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(186, 'lenovo', 'Lenovo IdeaPad 3 82KU024JIN Laptop (AMD Ryzen 7 5700U/ 16GB/ 512GB SSD/ Win11 Home)', 48990, 64, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(187, 'msi', 'MSI Modern 14 C12M-459IN Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 54990, 60, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(188, 'wings', 'Wings Nuvobook Pro Laptop (11th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 39990, 58, 'intel', 'core i7', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1080, 1920, 'windows', 1),
(189, 'wings', 'Wings Nuvobook S1 Laptop (11th Gen Core i3/ 8GB/ 256GB SSD/ Win11)', 24990, 49, 'intel', 'core i3', 4, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1080, 1920, 'windows', 1),
(190, 'msi', 'MSI Thin GF63 11UCX-1492IN Gaming Laptop (11th Gen Core i5/ 16GB/ 1TB 256GB SSD/ Win11 Home/ 4GB Gra', 61990, 73, 'intel', 'core i5', 6, 12, 16, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(191, 'infinix', 'Infinix INBook X3 Slim XL422 Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win 11 Home)', 38990, 56, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(192, 'hp', 'HP Pavilion 15-eg3017TU Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home)', 72999, 63, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(193, 'msi', 'MSI Thin GF63 11SC-1494IN Gaming Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 52990, 65, 'intel', 'core i5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(194, 'msi', 'MSI Thin GF63 11UC-1490IN Gaming Laptop (11th Gen Core i5/ 16GB/ 1TB 256GB SSD/ Win11 Home/ 4GB Grap', 62990, 73, 'intel', 'core i5', 6, 12, 16, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(195, 'hp', 'HP Victus 16-s0089AX Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 1TB SSD/ Win11/ 4GB Graph)', 87090, 76, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(196, 'lenovo', 'Lenovo IdeaPad Slim 5i 82XF003CIN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 70590, 62, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(197, 'lenovo', 'Lenovo LOQ 15IRH8 82XV00F4IN 2023 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph', 66990, 69, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(198, 'lenovo', 'Lenovo LOQ 15IRH8 82XV00BRIN 2023 Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 8GB Graph', 114990, 63, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(199, 'lenovo', 'Lenovo LOQ 15IRH8 82XV00BQIN 2023 Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 6GB Graph', 99990, 67, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(200, 'hp', 'HP 240 G8 689U2PA Business Laptop (11th Gen Core i3/ 8GB/ 512 GB SSD/ Win11)', 34990, 63, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(201, 'hp', 'HP Victus 16-D0314TX Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 64500, 75, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(202, 'hp', 'HP Omen 16-wf1026TX Gaming Laptop (14th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 176499, 85, 'intel', 'core i7', 20, 28, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1440, 'windows', 1),
(203, 'jio', 'Jio JioBook NB1112MM BLU 2023 Netbook Laptop (Octa Core/ 4GB/ 64GB eMMC/ JioOS)', 14701, 24, 'other', 'other', 8, 0, 4, 'HDD', 64, 'No secondary storage', 0, 'arm', 'integrated', 0, 116, 1366, 768, 'other', 1),
(204, 'asus', 'Asus Zenbook 14X OLED 2023 UX5401ZA-KM541WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 74990, 65, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(205, 'asus', 'Asus Vivobook 16X 2023 K3605ZV-MB741WS Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 8GB Gr', 104990, 76, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(206, 'hp', 'HP Omen 16-wd0880TX Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 94990, 70, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1440, 'windows', 1),
(207, 'dell', 'Dell G15-5520 2023 Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home/ 4GB Graph)', 77490, 73, 'intel', 'core i5', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(208, 'chuwi', 'Chuwi CoreBook X Laptop (10th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 24990, 50, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(209, 'msi', 'MSI Modern 14 C11M-029IN Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 39990, 62, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(210, 'hp', 'HP 15s-ey2001AU Laptop (AMD Ryzen 7 5700U/ 16GB/ 512GB SSD/ Win11 Home)', 55990, 63, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(211, 'infinix', 'Infinix Zerobook ZL513 2023 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win 11 Home)', 48990, 57, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(212, 'dell', 'Dell Inspiron 3525 Laptop (AMD Ryzen 5 5500U/ 8GB/ 512GB SSD/ Win11)', 39240, 63, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(213, 'asus', 'Asus Vivobook 16X 2023 K3605ZU-MB741WS Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Gr', 90060, 77, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(214, 'asus', 'Asus TUF Gaming F15 2022 FX507ZC4-HN116W Gaming Laptop (12th Gen Core i5/ 16GB/512GB SSD/ Win11 / 4G', 85800, 76, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(215, 'asus', 'Asus Vivobook 16X 2023 K3605ZF-MBN524WS Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Gr', 57990, 70, 'intel', 'core i5', 8, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(216, 'asus', 'Asus Vivobook 15 X1502ZA-EJ541WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 60990, 66, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(217, 'hp', 'HP Pavilion 15-eg3079TU Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Pro)', 73020, 66, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(218, 'msi', 'MSI Modern 14 C12M-671IN Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 53990, 65, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1);
INSERT INTO `myapp1_laptop` (`index`, `brand`, `model`, `price`, `rating`, `processor_brand`, `processor_tier`, `num_cores`, `num_threads`, `ram_memory`, `primary_storage_type`, `primary_storage_capacity`, `secondary_storage_type`, `secondary_storage_capacity`, `gpu_brand`, `gpu_type`, `is_touch_screen`, `display_size`, `resolution_width`, `resolution_height`, `os`, `year_of_warranty`) VALUES
(219, 'msi', 'MSI Thin GF63 11UC-1474IN Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 56990, 72, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(220, 'lenovo', 'Lenovo V15 G3 IAP 82TTA00UIH Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ DOS)', 32980, 53, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(221, 'msi', 'MSI Modern 14 C12M-444IN Laptop (12th Gen Core i3/ 16GB/ 512GB SSD/ Win11 Home)', 36990, 62, 'intel', 'core i3', 6, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(222, 'asus', 'Asus Vivobook Pro 15 M6500QF-HN521WS Laptop (Ryzen 5 5600HS/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 59990, 60, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(223, 'asus', 'Asus VivoBook 14 X415EA-EK326WS Notebook (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 31990, 59, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(224, 'apple', 'Apple MacBook Air 15 2023 Laptop (Apple M2/ 8GB/ 512GB SSD/ MacOS)', 144990, 56, 'apple', 'm2', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'apple', 'apple', 0, 153, 2880, 1864, 'mac', 1),
(225, 'infinix', 'Infinix INBook X2 Slim Series Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win 11 Home)', 25990, 57, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(226, 'acer', 'Acer Aspire 3 A315-59 NX.K6TSI.00C Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 31990, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(227, 'dell', 'Dell Inspiron 3520 D560872WIN9S Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 57300, 62, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(228, 'acer', 'Acer One 14 Z8-415UN.599SI.009 Laptop (11th Gen Core i3 / 8GB/ 256GB SSD/ Win11 Home)', 29990, 59, 'intel', 'core i3', 2, 4, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(229, 'hp', 'HP Victus 15-fb0131AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 49990, 65, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(230, 'asus', 'Asus Vivobook 15 X1502ZA-EJ542WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 56500, 64, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(231, 'asus', 'Asus Vivobook 15 M1502QA-EJ742WS Laptop (Ryzen 7 5800H/ 16GB/ 512GB SSD/ Win11)', 56990, 58, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(232, 'acer', 'Acer Aspire 7 A715-76G NH.QMFSI.004 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4G', 60990, 70, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(233, 'acer', 'Acer Aspire 5 14 A514-56GM 2023 Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Gr', 56990, 67, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 1920, 1080, 'windows', 1),
(234, 'asus', 'ASUS TUF Gaming A16 Advantage Edition FA617XS-N3025WS Gaming Laptop (AMD Ryzen 9 7940HS / 16GB/ 1TB ', 119990, 80, 'amd', 'ryzen 9', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1200, 'windows', 1),
(235, 'asus', 'Asus ROG Strix G16 2023 G614JV-N4141WS Gaming Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11/ 8GB Gr', 179990, 77, 'intel', 'core i9', 24, 32, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(236, 'asus', 'Asus ROG Strix G16 2023 G614JI-N4151WS Gaming Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11/ 8GB Gr', 189990, 79, 'intel', 'core i9', 24, 32, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(237, 'asus', 'Asus ROG Strix G16 2023 G614JU-N3200WS Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 6GB Gr', 121489, 78, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(238, 'asus', 'Asus Vivobook 15 X1502ZA-EJ532WS Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 47830, 64, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(239, 'hp', 'HP 15s-fr4001TU Laptop (11th Gen Core i5/16GB/ 512GB SSD/ Win11 Home)', 52490, 65, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(240, 'msi', 'MSI Katana 15 B12UDXK-1005IN Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph', 67990, 73, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(241, 'hp', 'HP 15s-fr5009TU Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 40190, 59, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(242, 'hp', 'HP 15-fd0013TU Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 61990, 57, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(243, 'asus', 'Asus Vivobook 16X 2023 K3605VC-MB542WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Gr', 89990, 67, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(244, 'asus', 'Asus TUF Gaming F17 FX706HF-HX018W Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 55689, 64, 'intel', 'core i5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 1),
(245, 'hp', 'HP 15-eg3036TU Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)', 89490, 69, 'intel', 'core i7', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(246, 'acer', 'Acer Predator Helios Neo 16 PHN16-71 Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 6GB Grap', 119990, 75, 'intel', 'core i7', 16, 24, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(247, 'msi', 'MSI Cyborg 15 A12UCX-264IN Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 65490, 69, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(248, 'hp', 'HP 15-fc0026AU Laptop (AMD Ryzen 3 7320U/ 8GB/ 512GB SSD/ Win11 Home)', 34990, 54, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(249, 'asus', 'Asus Vivobook S14 Flip 2022 TN3402QA-LZ741WS Laptop (AMD Ryzen 7-5800H/ 16GB/ 512GB SSD/Win11)', 69990, 70, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(250, 'asus', 'Asus Vivobook S15 OLED 2023 S5504VA-MA543WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 78990, 65, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 2880, 1620, 'windows', 1),
(251, 'asus', 'Asus Vivobook S15 OLED 2023 S5504VA-MA953WS Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11)', 105739, 71, 'intel', 'core i9', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 2880, 1620, 'windows', 1),
(252, 'asus', 'Asus Vivobook 15 2023 X1504VA-NJ324WS Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 42990, 59, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(253, 'honor', 'Honor MagicBook X14 2023 FRI-F56 Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 54990, 66, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(254, 'lenovo', 'Lenovo E41-55 Laptop (Athlon Silver 3050U/ 8GB/ 256GB SSD/ Win11)', 21990, 53, 'amd', 'other', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(255, 'lenovo', 'Lenovo V15 G3 82TTA00VIH Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/Win11)', 33400, 53, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(256, 'hp', 'HP Victus 15-fb0108AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 50990, 67, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(257, 'dell', 'Dell Vostro 3425 M552321WIN9S Laptop (AMD Ryzen 5 5625U/ 16GB/ 512GB SSD/ Win11 Home)', 50990, 68, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(258, 'msi', 'MSI Modern 14 C7M-062IN Laptop (Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11)', 43990, 62, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(259, 'acer', 'Acer Extensa 15 EX215-33 Laptop (Intel Core i3 N305/ 8GB/ 256GB SSD/ Win11 Home)', 27990, 49, 'intel', 'core i3', 8, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(260, 'msi', 'MSI Sword 15 A12VF-401IN Gaming Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 105990, 79, 'intel', 'core i7', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(261, 'hp', 'HP ProBook 445 G8 Business Laptop (AMD Ryzen 7 5800U/ 8GB/ 512GB SSD/ Win11)', 46990, 68, 'amd', 'ryzen 7', 8, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(262, 'acer', 'Acer Aspire 5 UN.K3JSI.004 Laptop (12th Gen Core i5/ 12GB/ 512GB SSD/ Win11 Home)', 46990, 67, 'intel', 'core i5', 10, 12, 12, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(263, 'asus', 'Asus Vivobook 15 OLED 2023 M1505YA-LK541WS Laptop (Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 53990, 65, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(264, 'asus', 'Asus Vivobook Go 15 2023 E1504FA-NJ543WS Laptop (Ryzen 5 7520U / 16GB/ 512GB SSD/ Win11 Home)', 48579, 60, 'amd', 'ryzen 5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(265, 'asus', 'Asus Vivobook 16 2023 M1605YA-MB741WS Laptop (Ryzen 7 7730U/ 16GB/ 512GB SSD/ Win11 Home)', 70990, 65, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(266, 'samsung', 'Samsung Galaxy Book 3 NP750XFG-KB1IN Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 69990, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(267, 'samsung', 'Samsung Galaxy Book 3 NP750XFG-KA3IN Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 75990, 60, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(268, 'infinix', 'Infinix INBook Y1 Plus Laptop (10th Gen Core i3/ 8GB/ 256GB SSD/ Win 11 Home)', 24990, 52, 'intel', 'core i3', 2, 4, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(269, 'hp', 'HP Victus 15-fb0107AX Gaming Laptop (Ryzen 7-5800H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 70990, 69, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(270, 'asus', 'Asus VivoBook 15 X1500EA-EJ3379WS Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 30890, 50, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(271, 'hp', 'HP Victus 15-fb0777AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 51990, 67, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(272, 'hp', 'HP Victus 16-d0311TX Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 57990, 73, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(273, 'hp', 'HP 15s-fr4000TU Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 48450, 62, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(274, 'hp', 'HP Envy x360 13-bf0121TU  Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 79990, 71, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 134, 1920, 1200, 'windows', 1),
(275, 'hp', 'HP Pavilion 14-dv2014TU Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win 11)', 63990, 64, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(276, 'hp', 'HP 255 G8 6X4B2PA Laptop (AMD Athlon 3050/ 4GB/ 256GB SSD/ DOS)', 19299, 39, 'amd', 'other', 2, 2, 4, 'SSD', 256, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(277, 'dell', 'Dell Inspiron 5420 Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 69999, 62, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(278, 'asus', 'Asus VivoBook 14 2022 X1402ZA-MW511WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 62600, 73, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1080, 'windows', 1),
(279, 'lenovo', 'Lenovo Legion 5 82JU00SYIN Laptop (AMD Ryzen 7 5800H/ 16GB/ 1TB SSD/ Win11 Home/ 6GB Graph)', 99990, 78, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(280, 'msi', 'MSI Creator M16 A12UD-633IN Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 83990, 78, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1660, 'windows', 2),
(281, 'hp', 'HP Victus 15-fb0050AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 59871, 71, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(282, 'hp', 'HP Pavilion 15s-fq5112TU Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 56999, 54, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(283, 'asus', 'Asus ROG Zephyrus G15 2022 GA503RW-LN067WS Gaming Laptop (AMD Ryzen 9 6900HS/ 16GB/ 1TB SSD/ Win11 H', 144990, 85, 'amd', 'ryzen 9', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 2560, 1440, 'windows', 1),
(284, 'hp', 'HP 15s-fq2673TU Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 40609, 58, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(285, 'lenovo', 'Lenovo IdeaPad Gaming 3 82K201ULIN Laptop (Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 64990, 74, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(286, 'apple', 'Apple MacBook Air 2022 Laptop (Apple M2/ 8GB/ 512GB SSD/ MacOS)', 132990, 45, 'apple', 'm2', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'apple', 'apple', 0, 136, 2560, 1664, 'mac', 1),
(287, 'apple', 'Apple MacBook Pro 2022 Laptop (Apple M2/ 8GB/ 512GB SSD/ macOS)', 136990, 45, 'apple', 'm2', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'apple', 'apple', 0, 133, 2560, 1600, 'mac', 1),
(288, 'samsung', 'Samsung Galaxy Book2 15 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 54990, 59, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 0),
(289, 'lenovo', 'Lenovo IdeaPad D330 82H0001YIN Laptop (Celeron N4020/ 4GB/ 128GB eMMC/ Win10)', 24990, 49, 'intel', 'celeron', 4, 2, 4, 'HDD', 128, 'SSD', 128, 'intel', 'integrated', 1, 101, 1200, 800, 'windows', 0),
(290, 'hp', 'HP Pavilion 15-eg2009TU Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 63990, 62, 'intel', 'core i5', 12, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(291, 'hp', 'HP 247 G8 67U77PA Laptop (Athlon P-3045B HD/ 8GB/ 1TB HDD/ Win11)', 24990, 52, 'amd', 'other', 2, 2, 8, 'HDD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(292, 'samsung', 'Samsung Galaxy Book2 Pro 15 Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 116990, 68, 'intel', 'core i7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1080, 1920, 'windows', 1),
(293, 'hp', 'HP 14s-fq1092au Laptop (Ryzen 5 5500U/ 8GB/ 512GB SSD/ Win11 Home)', 41750, 64, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(294, 'realme', 'Realme Book Slim Laptop (11th Gen Core i3/ 8GB/ 256GB SSD/ Win10)', 36990, 52, 'intel', 'core i3', 2, 4, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1440, 2160, 'windows', 1),
(295, 'dell', 'Dell Inspiron 3501 Laptop (11th Gen Core i5/ 8GB/ 1TB 256GB SSD/ Win10)', 52199, 56, 'intel', 'core i5', 4, 8, 8, 'HDD', 1024, 'SSD', 256, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 0),
(296, 'avita', 'Avita Pura NS14A6 Laptop (AMD Ryzen 5/ 8GB/ 512GB SSD/ Win10)', 21390, 56, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(297, 'hp', 'HP EliteBook 840 G6 (8LX79PA) Laptop (8th Gen Core i5/ 8GB/ 512GB SSD/ Win10)', 90464, 56, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 3),
(298, 'dell', 'Dell Inspiron 5370 Laptop (8th Gen Core i7/ 8GB/ 256GB SSD/ Win10/ 4GB Graph)', 87990, 67, 'intel', 'core i7', 4, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 133, 1920, 1080, 'windows', 1),
(300, 'chuwi', 'Chuwi Gemibook X Pro Laptop (Intel Celeron N100/ 8 GB/ 256 GB SSD/ Win11 Home)', 21990, 50, 'intel', 'other', 4, 4, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 141, 1920, 1080, 'windows', 1),
(301, 'chuwi', 'Chuwi CoreBook X Laptop (10th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 34990, 54, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2160, 1440, 'windows', 1),
(302, 'avita', 'Avita Liber Liber E AM14A2INL54F Laptop (AMD Ryzen 5 5500U/ 8GB/ 256GB SSD/ Win11 Home)', 32949, 50, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(303, 'lenovo', 'Lenovo ThinkPad X1 Fold Gen 1 Laptop (Intel Core i5/ 8GB/ 1TB SSD/ Win10 Pro)', 150000, 64, 'intel', 'core i5', 5, 5, 8, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 133, 2048, 1536, 'windows', 1),
(304, 'dell', 'Dell G16 7630 Gaming Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 208490, 80, 'intel', 'core i9', 24, 32, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(305, 'hp', 'HP Envy x360 15-fh0014AU Laptop (AMD Ryzen 5 7530U/ 8GB/ 512GB SSD/ Win11 Home)', 79467, 64, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(306, 'lenovo', 'Lenovo IdeaPad Slim 3 83ER008DIN Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 56990, 57, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(307, 'lenovo', 'Lenovo Ideapad Flex 5 14IAU7 82R700KHIN Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 54990, 58, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(308, 'hp', 'HP 250 G9 95X38PA Laptop (12th Gen Core i5/ 8GB/ 512 GB SSD/ DOS)', 57500, 51, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(309, 'hp', 'HP 240 G9 8J0S5PA Laptop (12th Gen Core i5/ 8GB/ 512 GB SSD/ DOS)', 54599, 58, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'dos', 1),
(310, 'lenovo', 'Lenovo ThinkBook 14 21DH00C1IH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ DOS)', 62999, 62, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(311, 'lenovo', 'Lenovo IdeaPad Slim 1 82R400BGIN Laptop (AMD Ryzen 5 5500U/ 8GB/ 512GB SSD/ Win11 Home)', 36490, 50, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(312, 'lenovo', 'Lenovo V14 82KAA0AMIH Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ DOS)', 45990, 58, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'dos', 1),
(313, 'lenovo', 'Lenovo V14 82KAA01QIH Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win10 Home)', 46990, 62, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(314, 'msi', 'MSI Thin GF63 11UC-1494IN Gaming Laptop (11th Gen Core i7/ 16GB/ 1TB 256GB SSD/ Win11 Home/ 4GB Grap', 66350, 69, 'intel', 'core i7', 8, 16, 16, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(315, 'lenovo', 'Lenovo IdeaPad Slim 3i 82RK011EIN Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 62990, 66, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(317, 'hp', 'HP 15s-EQ2084AU Laptop (AMD Ryzen 7 5700U/ 16GB/ 512GB SSD/ Win11 Home)', 51901, 62, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(318, 'dell', 'Dell Inspiron 7430 14 2 in 1 Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 59890, 58, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(319, 'lenovo', 'Lenovo Ideapad Slim 5 82XD006GIN Laptop (13th Gen Core i5/ 16 GB RAM/ 1TB SSD/ Win 11)', 73990, 57, 'intel', 'core i5', 8, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(320, 'lenovo', 'Lenovo IdeaPad Slim 5 14IAH8 83BF0043IN Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11)', 61990, 60, 'intel', 'core i5', 8, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(321, 'hp', 'HP 250 G9 95X40PA Laptop (12th Gen Core i7/ 8GB/ 512 GB SSD/ DOS)', 67288, 52, 'intel', 'core i7', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(322, 'dell', 'Dell Inspiron 3520 IN3520RVTGV001ORB1 Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 34990, 49, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(323, 'lenovo', 'Lenovo Thinkpad E14 G4 21E3S00P00 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ DOS)', 74900, 63, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 0),
(324, 'dell', 'Dell Latitude 7440 14 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Pro)', 152000, 59, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 0),
(325, 'lenovo', 'Lenovo IdeaPad Slim 3 82H803U0IN Laptop (11th Gen Core i3/ 8GB/ 256GB SSD/ Win11)', 31990, 51, 'intel', 'core i3', 2, 4, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(326, 'acer', 'Acer Aspire 3 15 A315-510P UN.KDHSI.019 Laptop (Intel Core i3 N305/ 8GB/ 512GB SSD/ Win11 Home)', 29990, 47, 'intel', 'core i3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(327, 'acer', 'Acer Aspire Lite 15 AL15-51 2023  Laptop (11th Gen Core i5/ 16GB/ 1TB SSD/ Win11)', 46500, 64, 'intel', 'core i5', 4, 8, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(328, 'lenovo', 'Lenovo ThinkPad X1 Carbon 21HMS00000 Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Pro)', 218990, 64, 'intel', 'core i7', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(329, 'avita', 'Avita Liber AM15A2INT56F Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 32550, 51, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(330, 'acer', 'Acer TravelMate P2 TMP214-53 14 Business Laptop (11th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 49990, 64, 'intel', 'core i7', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(331, 'acer', 'Acer Aspire Lite AL15-52 Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 44999, 64, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(332, 'acer', 'Acer Aspire Lite AL15-52 2023 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 42999, 62, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(333, 'avita', 'Avita Pura S101 Laptop (Celeron N4020/ 8GB/256GB SSD/ Win11 Home)', 19421, 41, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(334, 'apple', 'Apple MacBook Pro 14 2023 Laptop (Apple M3/ 8GB/ 1TB SSD/ macOS)', 189900, 53, 'apple', 'm3', 8, 8, 8, 'SSD', 1024, 'No secondary storage', 0, 'apple', 'apple', 0, 142, 3024, 1964, 'mac', 1),
(335, 'apple', 'Apple MacBook Pro 14 2023 Laptop (Apple M3 Pro/ 18GB/ 1TB SSD/ macOS)', 239900, 58, 'apple', 'm3', 12, 12, 8, 'SSD', 1024, 'No secondary storage', 0, 'apple', 'apple', 0, 142, 3024, 1964, 'mac', 1),
(336, 'lenovo', 'Lenovo Yoga Slim 7i Carbon 13IRP8 83AY003CIN Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)', 123190, 67, 'intel', 'core i7', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 133, 2560, 1600, 'windows', 1),
(337, 'asus', 'Asus Chromebook CX1500CKA-EJ0247 Laptop (Celeron N4500/ 8GB/ 128GB eMMC/ Chrome OS)', 32825, 37, 'intel', 'celeron', 2, 2, 8, 'HDD', 128, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'chrome', 1),
(338, 'lenovo', 'Lenovo Ideapad Gaming 3 15ARH7 82SB00QJIN Laptop  (AMD Ryzen 5 7535HS / 16GB/ 512GB SSD/ Win11 Home/', 68990, 66, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(339, 'acer', 'Acer Aspire 5 A515-57 NX.K3JSI.006 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 46990, 63, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(340, 'lenovo', 'Lenovo LOQ 15APH8 82XT004KIN Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11/ 8GB Graph)', 107911, 75, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(341, 'lenovo', 'Lenovo IdeaPad Gaming 3 Gen 6 82K2028QIN Laptop (AMD Ryzen 5 5500H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB ', 51894, 65, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(342, 'asus', 'Asus Chromebook CX1400FKA-EC0168 Laptop (Celeron N4500/ 8GB/ 128GB eMMC/ Chrome OS)', 30199, 44, 'intel', 'celeron', 2, 2, 8, 'HDD', 128, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1080, 'chrome', 1),
(343, 'avita', 'Avita Pura S102 Laptop (Celeron N4020/ 8GB/ 512GB SSD/ Win11 Home)', 20999, 43, 'intel', 'celeron', 2, 2, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(344, 'apple', 'Apple MacBook Pro 14 2023 Laptop (Apple M3/ 8GB/ 512GB SSD/ macOS)', 169900, 51, 'apple', 'm3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'apple', 'apple', 0, 142, 3024, 1964, 'mac', 1),
(345, 'hp', 'HP Spectre x360 14-ef2036TU Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 155299, 70, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 135, 3000, 2000, 'windows', 1),
(346, 'hp', 'HP Omen 16-xd0005AX Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 111943, 78, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(347, 'hp', 'HP ProBook 440 G9 821M3PA Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 76599, 69, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(348, 'hp', 'HP 15s-FR5012TU Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 40990, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(349, 'acer', 'Acer Aspire Lite AL15-51 15 2023 Laptop (11th Gen Core i5/ 8GB/ 1TB SSD/ Win11)', 46490, 63, 'intel', 'core i5', 4, 8, 8, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(350, 'lenovo', 'Lenovo S14 Gen 3 82TW000VIH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ DOS)', 46990, 57, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 3),
(351, 'hp', 'HP Victus 15-fa1134TX Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 99470, 77, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(352, 'lenovo', 'Lenovo Legion Pro 7 82WQ007UIN Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win11/ 16GB Graph)', 359095, 86, 'intel', 'core i9', 24, 32, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(353, 'microsoft', 'Microsoft Surface Laptop Go 3 XK1-00045 (12th Gen Core i5/ 8GB RAM/ 256 GB SSD/ Win 11)', 79990, 58, 'intel', 'core i5', 10, 12, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 1, 124, 1536, 1024, 'windows', 1),
(354, 'acer', 'Acer Aspire 5 A514-56M NX.KH6SI.001 Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 56990, 56, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(355, 'acer', 'Acer Aspire Lite AL15-41 Laptop (AMD Ryzen 5 5500U/ 16GB/ 1TB SSD/ Win11)', 39800, 62, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(356, 'dell', 'Dell Inspiron 7430 IC7430MH5K0M01ORS1 Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 88990, 64, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(357, 'lenovo', 'Lenovo IdeaPad Gaming 3 82K101LJIN Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 55190, 70, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(358, 'hp', 'HP Omen 16-XD0007ax Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 112990, 76, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(359, 'asus', 'Asus Vivobook Pro 15 OLED M6500QC-LK751WS Laptop (Ryzen 7 5800HS/ 16GB/ 1TB SSD/ Win11/ 4GB Graph)', 86500, 67, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(360, 'msi', 'MSI Vector GP68 HX 13VG-214IN Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 199990, 80, 'intel', 'core i7', 16, 24, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(361, 'dell', 'Dell G15-5530 15 2023 Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 105490, 75, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(362, 'lenovo', 'Lenovo IdeaPad Flex 5 82R9008FIN Laptop (AMD Ryzen 5 5500U/ 16GB/ 512GB SSD/ Win11 Home)', 61990, 69, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(363, 'asus', 'Asus Vivobook Go 14 E1404FA-NK547WS Laptop (Ryzen 5 7520U/ 8GB/ 512GB SSD/ Win11)', 47550, 58, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(364, 'asus', 'Asus Vivobook 15X OLED M3504YA-LK552WS Laptop (AMD Ryzen 5 7530U/ 16GB/ 1TB SSD/ Win11 Home)', 64990, 65, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(365, 'lenovo', 'Lenovo Thinkpad L14 Gen 2 20X1S10V00 Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ DOS)', 49499, 54, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 3),
(366, 'lenovo', 'Lenovo V15 G4 Laptop (AMD Ryzen 5 7520U/ 8GB/ 512GB SSD/ Win11 Home)', 36990, 53, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(367, 'hp', 'HP Omen 16-k0789TX Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 90999, 72, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(368, 'lenovo', 'Lenovo IdeaPad 3 15IAU7 82RK00WXIN Laptop (12th Gen Core i3/ 8GB/ 256GB SSD/ Win11 Home)', 34590, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(369, 'lenovo', 'Lenovo IdeaPad 1 15AMN7 82VG00ERIN Laptop (AMD Ryzen 3 7320U / 8GB/ 512GB SSD/ Win11 Home)', 32490, 56, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(370, 'asus', 'Asus Vivobook 16X K3605VU-MB541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 99111, 69, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(371, 'lenovo', 'Lenovo IdeaPad Gaming 3 15IHU6 82K101R9IN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB ', 55700, 69, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(372, 'hp', 'HP 250 G9 7M657PA Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 35900, 60, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(373, 'lenovo', 'Lenovo IdeaPad Gaming 3 82SB00V5IN Laptop (AMD Ryzen 7 6800H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 70190, 67, 'amd', 'ryzen 7', 8, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(374, 'lenovo', 'Lenovo Yoga 7 82YL0095IN Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home)', 92190, 75, 'intel', 'core i5', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 2880, 1800, 'windows', 1),
(375, 'asus', 'Asus Vivobook Go 14 E410KA-EK013W Laptop (Celeron N4500/ 8GB/ 256GB SSD/ Win11 Home)', 27990, 45, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(376, 'asus', 'Asus Vivobook Pro 15 OLED M6500QC-LK741WS Laptop (Ryzen 7 5800HS/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 79970, 63, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(377, 'acer', 'Acer Chromebook CB314-3H NX.K04SI.008 Laptop (Intel Celeron N4500/ 8GB/ 64GB SSD/ Chrome OS)', 23990, 38, 'intel', 'celeron', 2, 2, 8, 'SSD', 64, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1080, 1920, 'chrome', 1),
(378, 'dell', 'Dell Inspiron 3520 IN3520KTMFJS01ORS1 Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 51487, 58, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(379, 'lenovo', 'Lenovo IdeaPad Gaming 3 15ACH6 82K20289IN Laptop (AMD Ryzen 5 5500H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB', 51990, 63, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(380, 'dell', 'Dell Inspiron 7430 2 in 1 2023 Laptop (13th Gen Core i3/ 8GB/ 256GB SSD/ Win11)', 56990, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(381, 'hp', 'HP Omen 17-ck2011TX Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win11/ 16GB Graph)', 342500, 88, 'intel', 'core i9', 24, 32, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 2560, 1440, 'windows', 1),
(382, 'zebronics', 'Zebronics Pro Series Z ZEB-NBC 4S 2023 Laptop (12th Gen Core i5 / 8GB/ 512GB SSD/ Win11 Home)', 39990, 66, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(383, 'zebronics', 'Zebronics ZEB-NBC 2S 2023 Laptop (11th Gen Core i5 / 8GB/ 512GB SSD/ Win11 Home)', 32990, 60, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(384, 'primebook', 'Primebook PBMTWIFI11064 Wi-Fi Laptop (MediaTek MT8183/ 4GB/ 64B eMMC/ Prime OS)', 12990, 31, 'other', 'other', 8, 0, 4, 'HDD', 64, 'No secondary storage', 0, 'arm', 'integrated', 0, 116, 1366, 768, 'other', 1),
(385, 'acer', 'Acer Aspire 5 A515-58GM 15 2023 Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graphic', 63999, 65, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(386, 'acer', 'Acer Nitro V ANV15-51 NH.QNASI.001 Gaming Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 4GB Graph', 65990, 62, 'intel', 'core i5', 8, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(387, 'ultimus', 'Ultimus Lite NU14U4INC54BN-CS Laptop (Celeron N4020/ 8GB/ 256GB SSD/ Win11 Home)', 16490, 47, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 141, 1366, 768, 'windows', 1),
(388, 'hp', 'HP 15s-fy5007TU Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 53190, 62, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(389, 'zebronics', 'Zebronics ZEB-NBC 5S Laptop (12th Gen Core i7 / 16GB/ 512GB SSD/ Win11 Home)', 50990, 72, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(390, 'hp', 'HP Pavilion Plus 14-ey0789AU Laptop (AMD Ryzen 7 7840H/ 16GB/ 1TB SSD/ Win 11)', 92590, 70, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(391, 'hp', 'HP Omen 17-ck2008AX Gaming Laptop (13th Gen Core i7/ 16 GB RAM/ 1TB SSD/ Win 11/ 12GB Graphics)', 259499, 85, 'intel', 'core i7', 16, 24, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 2560, 1440, 'windows', 1),
(392, 'hp', 'HP Omen 16-u0024TX Gaming Laptop (13th Gen Core i9/ 32GB/ 2TB SSD/ Win11 Home/ 8GB Graph)', 292999, 88, 'intel', 'core i9', 24, 32, 32, 'SSD', 2048, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1600, 'windows', 1),
(393, 'hp', 'HP Omen 17-cm2002TX Gaming Laptop (13th Gen Core i7/ 16 GB RAM/ 512 GB SSD/ Win 11/ 8 GB Graphics)', 165999, 79, 'intel', 'core i7', 16, 24, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 1),
(394, 'hp', 'HP Omen 16-u0022TX Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 168500, 78, 'intel', 'core i7', 16, 24, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1600, 'windows', 1),
(395, 'asus', 'Asus TUF Gaming F17 FX707ZC4-HX048WS Gaming Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 4GB Gra', 85990, 70, 'intel', 'core i5', 12, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 1),
(396, 'lenovo', 'Lenovo Yoga Slim 6 14IRH8 83E00015IN Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home)', 84990, 58, 'intel', 'core i5', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(397, 'lenovo', 'Lenovo Yoga Slim 6 83E00006IN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 80190, 57, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(398, 'lenovo', 'Lenovo IdeaPad Pro 5 83AQ005SIN Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 109190, 63, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 3),
(399, 'lenovo', 'Lenovo IdeaPad Gaming 3 82K2027CIN Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 54190, 65, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(400, 'lenovo', 'Lenovo IdeaPad Gaming 3 15IHU6 82K101R3IN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB ', 54190, 69, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(401, 'asus', 'Asus CX1101CMA-GJ0004 Chromebook (Celeron N4020/ 4GB/ 32GB eMMC/ Chrome OS)', 14990, 38, 'intel', 'celeron', 2, 2, 4, 'HDD', 32, 'No secondary storage', 0, 'intel', 'integrated', 0, 116, 1366, 768, 'chrome', 1),
(402, 'asus', 'Asus TUF Gaming F17 FX706HF-HX019W Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 66718, 66, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 1),
(403, 'asus', 'Asus Vivobook 15 X1502ZA-EJ531WS Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 53990, 51, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(404, 'asus', 'Asus Chromebook 14 CX1400CKA-EK0266 Laptop (Celeron N4500/ 8GB/ 128GB eMMC/ Chrome OS)', 20990, 38, 'intel', 'celeron', 2, 2, 8, 'SSD', 128, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'chrome', 1),
(405, 'lenovo', 'Lenovo IdeaPad Flex 5 14IRU8 82Y00051IN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 78190, 64, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(406, 'lenovo', 'Lenovo IdeaPad 1 15ALC7 82R400BSIN Laptop (AMD Ryzen 5 5500U / 8GB/ 512GB SSD/ Win11 Home)', 39990, 56, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(407, 'dell', 'Dell Inspiron 5430 IN5430FR0KC001ORS1 Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 61990, 53, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(408, 'hp', 'HP 15s-fy5006TU Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 38990, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(409, 'lenovo', 'Lenovo Yoga Slim 6 14IRH8 83E00007IN Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 93190, 58, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(410, 'lenovo', 'Lenovo Legion Pro 5 82WM00B7IN Gaming Laptop ( AMD Ryzen 7 7745HX/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Gr', 164190, 84, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(411, 'lenovo', 'Lenovo Legion Pro 7 2023 82WQ007TIN Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win11 Home/ 12GB', 298990, 85, 'intel', 'core i9', 24, 32, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(412, 'lenovo', 'Lenovo Legion Slim 5 82YA00DXIN Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 139190, 78, 'intel', 'core i7', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(413, 'lenovo', 'Lenovo IdeaPad Slim 5 82XD005RIN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 70190, 58, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 2),
(414, 'lenovo', 'Lenovo Legion 5 Pro 82JQ010EIN Laptop (AMD Ryzen 7 5800H/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 103395, 77, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(415, 'lenovo', 'Lenovo IdeaPad 1 82VG00ESIN Laptop (AMD Ryzen 5 7520U / 8GB/ 512GB SSD/ Win11 Home)', 39990, 57, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(416, 'msi', 'MSI CreatorPro Z16 HX B13VKTO-214IN Laptop (13th Gen Core i9/ 64GB/ 2TB SSD/ Win11/ RTX 3000 Ada)', 449990, 89, 'intel', 'core i9', 24, 32, 4, 'SSD', 2048, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 2),
(417, 'lenovo', 'Lenovo IdeaPad Flex 5 14IRU8 82Y0004TIN Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 90000, 65, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(418, 'lenovo', 'Lenovo IdeaPad 3 15IAU7 82RK00XDIN Laptop (12th Gen Core i3/ 8GB/ 256GB SSD/ Win11 Home)', 34990, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(419, 'msi', 'MSI Bravo 15 B7ED-011IN Gaming Laptop (AMD Ryzen 7 7735HS/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 79990, 70, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(420, 'hp', 'HP 14s-dr3002TU Laptop (Intel Celeron N4500/ 8GB/ 512GB SSD/ Win11 Home)', 28990, 47, 'intel', 'celeron', 2, 2, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(421, 'acer', 'Acer TravelMate P2 TMP214-53 Business Laptop (11th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)', 49990, 67, 'intel', 'core i7', 4, 8, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(422, 'acer', 'Acer Aspire 5 2023 A515-58GM Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graphics)', 61700, 65, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(423, 'lenovo', 'Lenovo IdeaPad Slim 1 82VG00EVIN Laptop (AMD Ryzen 3 7320U/ 8GB/ 512GB SSD/ Win11 Home)', 32990, 57, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(424, 'lenovo', 'Lenovo IdeaPad Gaming 3 82K101PCIN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 49990, 67, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(425, 'asus', 'Asus Vivobook 16 2023 X1605VA-MB957WS Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11 Home)', 86689, 73, 'intel', 'core i9', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(426, 'acer', 'Acer Chromebook CB314-3H NX.K04SI.007 Laptop (Intel Celeron N4500/ 8GB/ 128GB SSD/ Chrome OS)', 25490, 38, 'intel', 'celeron', 2, 2, 8, 'SSD', 128, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1280, 1024, 'chrome', 1),
(427, 'dell', 'Dell Inspiron 15 3511 IN35117W5CCS01ORB1 Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 68028, 53, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(428, 'hp', 'HP Zbook FireFly 14 G8 4F0W6PA Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 )', 89999, 70, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1);
INSERT INTO `myapp1_laptop` (`index`, `brand`, `model`, `price`, `rating`, `processor_brand`, `processor_tier`, `num_cores`, `num_threads`, `ram_memory`, `primary_storage_type`, `primary_storage_capacity`, `secondary_storage_type`, `secondary_storage_capacity`, `gpu_brand`, `gpu_type`, `is_touch_screen`, `display_size`, `resolution_width`, `resolution_height`, `os`, `year_of_warranty`) VALUES
(429, 'asus', 'Asus Vivobook S14 Flip TN3402QA-LZ551WS Laptop (AMD Ryzen 5 5600H/ 16GB/ 1TB SSD/Win11)', 69437, 58, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(430, 'asus', 'Asus Vivobook S14 Flip TN3402QA-LZ751WS Laptop (AMD Ryzen 7/ 16GB/ 1TB SSD/Win11)', 73990, 62, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(431, 'lenovo', 'Lenovo IdeaPad 1 15AMN7 82VG00J5IN Laptop (AMD Ryzen 5 7520U / 8GB/ 512GB SSD/ Win11 Home)', 39990, 58, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(432, 'lenovo', 'Lenovo IdeaPad Gaming 3 82SB00V4IN Laptop (AMD Ryzen 5 6600H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 63712, 60, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(433, 'lenovo', 'Lenovo IdeaPad Gaming 3 82K2028AIN Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 49990, 62, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(434, 'lenovo', 'Lenovo IdeaPad Slim 3 82RK011DIN Laptop (12th Gen Core i3/ 8GB/ 256GB SSD/ Win11)', 32990, 51, 'intel', 'core i3', 6, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(435, 'dell', 'Dell Vostro 3520 Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 56340, 57, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(436, 'lenovo', 'Lenovo IdeaPad 1 15AMN7 82VG00EQIN Laptop (AMD Athlon 7120U / 8GB/ 512GB SSD/ Win11 Home)', 30190, 46, 'amd', 'other', 2, 2, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(437, 'dell', 'Dell Inspiron 15 3520 IN352092K4N001ORS1 Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 56880, 57, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(438, 'dell', 'Dell Vostro 3530 Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 56990, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(439, 'acer', 'Acer Aspire 5 A515-57 UN.K3JSI.013 Laptop (12th Gen Core i3/ 16GB/ 512GB SSD/ Win11 Home)', 39990, 58, 'intel', 'core i3', 6, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(440, 'lenovo', 'Lenovo V14 G4 Laptop (AMD Ryzen 3 7320U / 8GB/ 512GB SSD/ Win11 Home)', 29990, 51, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(441, 'lenovo', 'Lenovo V15 G3 82TTA02UIH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 46990, 63, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(442, 'dell', 'Dell Inspiron 3520 15 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 50990, 57, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(443, 'lenovo', 'Lenovo Thinkpad E15 G4 21DJA0Y0IN Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 54990, 64, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(444, 'dell', 'Dell Vostro 3525 Laptop (AMD Ryzen 5-5500U/ 8GB/ 512GB SSD/ Win11)', 38990, 56, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(445, 'msi', 'MSI Creator Pro M16 B13VJ-1272IN Gaming Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win 11/ 8GB Graph)', 196580, 83, 'intel', 'core i7', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 2),
(446, 'asus', 'Asus ROG Strix G16 2023 G614JJ-N3088WS Gaming Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11/ 6GB Gr', 99990, 70, 'intel', 'core i5', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(447, 'hp', 'HP 240 G9 821J4PA Laptop (12th Gen Core i5/ 8GB/ 512 GB SSD/ Win11)', 74999, 64, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(448, 'lenovo', 'Lenovo IdeaPad Slim 3i 82X70032IN Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 42499, 43, 'intel', 'core i3', 5, 6, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(449, 'lenovo', 'Lenovo IdeaPad Flex 5 Gen 8 82XX0070IN Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 67990, 69, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(450, 'asus', 'Asus ROG Strix G17 G713RC-HX109WS Gaming Laptop (AMD Ryzen 7 6800H/ 16GB/ 512GB SSD/ Win11/ 4GB Grap', 86189, 71, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 1),
(451, 'lenovo', 'Lenovo IdeaPad 3 82H802L3IN Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 36650, 58, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(452, 'hp', 'HP ZBook Firefly 16 G9 6V2X7PA Workstation PC Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 113999, 75, 'intel', 'core i7', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(453, 'dell', 'Dell Inspiron 3530 15 Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home)', 65990, 57, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(454, 'lenovo', 'Lenovo IdeaPad Slim 3 82H803HPIN Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 48990, 59, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(455, 'lenovo', 'Lenovo IdeaPad Gaming 3 15IHU6 82K101PCIN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 4GB Graph', 49990, 65, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(456, 'acer', 'Acer Aspire Lite 15 AL15-51 Laptop (11th Gen Core i3/16GB/ 512GB SSD/ Win11)', 34990, 62, 'intel', 'core i3', 2, 4, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(457, 'lenovo', 'Lenovo Yoga 6 13ABR8 83B2007UIN Laptop (AMD Ryzen 7 7730U/ 16GB/ 1TB SSD/ Win11 Home)', 86990, 71, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 1, 133, 1920, 1200, 'windows', 1),
(458, 'lenovo', 'Lenovo IdeaPad Flex 5 82R900D4IN Laptop (AMD Ryzen 7 5700U/ 16GB/ 512GB SSD/ Win11 Home)', 65990, 63, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(459, 'microsoft', 'Microsoft Surface Laptop Go 3 (12th Gen Core i5/ 16 GB RAM/ 256 GB SSD/ Win 11)', 97490, 60, 'intel', 'core i5', 10, 12, 16, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 1, 124, 1536, 1024, 'windows', 1),
(460, 'ultimus', 'Ultimus Neo NU14U3INT54BN Laptop (10th Gen Core i3/ 8GB/ 256GB SSD/Win11 Home)', 22913, 52, 'intel', 'core i3', 2, 4, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 141, 1920, 1080, 'windows', 1),
(461, 'lenovo', 'Lenovo Legion Slim 7 16IRH8 82Y3007QIN Gaming Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11 Home/ 8', 185990, 89, 'intel', 'core i9', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 3200, 2000, 'windows', 1),
(462, 'dell', 'Dell Inspiron 7430 2023 Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 99480, 62, 'intel', 'core i7', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(463, 'lenovo', 'Lenovo Legion Slim 5 16APH8 82Y90042IN Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11/ 8G', 128990, 83, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(464, 'lenovo', 'Lenovo Legion Slim 5 82Y9009KIN Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11/ 6GB Graph', 113990, 79, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(465, 'hp', 'HP Victus 15-fb0158AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 51990, 67, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(466, 'lenovo', 'Lenovo IdeaPad Gaming 3 15IHU6 82K101PBIN Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB ', 51990, 67, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(467, 'hp', 'HP Pavilion x360 14-ek1021TU Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 90689, 70, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1080, 'windows', 1),
(468, 'lenovo', 'Lenovo IdeaPad Gaming 3 15IAH7 82S9014LIN Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB', 69990, 66, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(469, 'lenovo', 'Lenovo S14 Gen 3 82TW001DIH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 47990, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 3),
(470, 'lenovo', 'Lenovo Yoga Pro 7 82Y700A2IN Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)', 100190, 65, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 145, 2560, 1600, 'windows', 1),
(471, 'hp', 'HP 15-fc0027AU Laptop (AMD Ryzen 3 7320U/ 8GB/ 512GB SSD/ Win11 Home)', 40100, 57, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(472, 'lenovo', 'Lenovo Legion Slim 5 16APH8 82Y9008MIN Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11/ 8G', 137490, 83, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(473, 'lenovo', 'Lenovo ThinkBook 15 Gen 5 21JF0026MJ Laptop (AMD Ryzen 7 7730U/ 16GB/ 512GB SSD/ Win11)', 53990, 69, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 160, 1920, 1080, 'windows', 1),
(474, 'acer', 'Acer Aspire 5 A515-58M NX.KHFSI.003 Gaming Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 42990, 50, 'intel', 'core i3', 5, 6, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(475, 'asus', 'Asus VivoBook 15 X515MA-BR022WS Laptop (Celeron N4020/ 8GB/ 512GB SSD/ Win11 Home)', 28190, 43, 'intel', 'celeron', 2, 2, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(476, 'fujitsu', 'Fujitsu CH 4ZR1L82434 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 73990, 67, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 133, 1920, 1080, 'windows', 2),
(477, 'asus', 'Asus Vivobook 15X OLED M3504YA-LK752WS Laptop (AMD Ryzen 7 7730U/ 16GB/ 1TB SSD/ Win11 Home)', 73463, 67, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(478, 'asus', 'Asus Vivobook 15 X1502ZA-EJ993WS Laptop (12th Gen Core i3/ 16GB/ 512GB SSD/ Win11)', 44990, 59, 'intel', 'core i3', 6, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(479, 'asus', 'Asus Vivobook 15 X1504ZA-NJ542WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 60379, 60, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(480, 'hp', 'HP Pavilion 15-eg3018TU Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home)', 75890, 59, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(481, 'hp', 'HP 15s-fq3066TU Laptop (Intel Celeron N4500/ 8GB/ 512GB SSD/ Win11 Home)', 27990, 51, 'intel', 'celeron', 2, 2, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(482, 'lenovo', 'Lenovo Ideapad 3 15ITL06 82H803GUIN Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 37000, 52, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(483, 'lenovo', 'Lenovo IdeaPad Flex 5 82Y00053IN Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 88190, 58, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(484, 'lenovo', 'Lenovo IdeaPad 3 82H803HRIN Laptop (11th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 62990, 60, 'intel', 'core i7', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(485, 'asus', 'Asus Vivobook Pro 15 M6500QC-HN751WS Laptop (AMD Ryzen 7 5800HS/ 16 GB RAM/ 1 TB SSD/ Win 11/ 4 GB G', 73990, 64, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(486, 'asus', 'Asus Vivobook Pro 15 M6500QC-HN551WS Laptop (AMD Ryzen 5 5600HS/ 16 GB RAM/ 1 TB SSD/ Win 11/ 4 GB G', 69990, 63, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(487, 'lenovo', 'Lenovo Ideapad Slim 5 82XE004QIN Laptop (AMD Ryzen 5 7530U/ 16 GB RAM/ 512 GB SSD/ Win 11)', 66389, 62, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(488, 'hp', 'HP 250 G9 7N179PA Laptop (12th Gen Core i5/ 8 GB RAM/ 512 GB SSD/ Win 11)', 60999, 58, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(489, 'lenovo', 'Lenovo Ideapad Slim 5 82XF007CIN Laptop (13th Gen Core i5/ 16 GB RAM/ 1 TB SSD/ Win 11)', 71990, 58, 'intel', 'core i5', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(490, 'lenovo', 'Lenovo IdeaPad Slim 5i 83BG000DIN Laptop (12th Gen Core i5/ 16 GB RAM/ 512 GB SSD/ Win 11)', 61859, 58, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(491, 'asus', 'Asus Vivobook 16X 2023 K3605ZC-MBN752WS Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/ 4GB Gra', 98990, 73, 'intel', 'core i7', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(492, 'lenovo', 'Lenovo IdeaPad Slim 3 82RK00VVIN Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 36990, 53, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(493, 'dell', 'Dell Inspiron 3530 IN3530RW8JY001ORS1 Laptop (13th Gen Core i5/ 8GB/ 1TB SSD/ Win11 Home)', 59990, 53, 'intel', 'core i5', 10, 12, 8, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(494, 'acer', 'Acer Aspire 7 A715-76G UN.QMYSI.002 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4G', 56990, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(495, 'acer', 'Acer Aspire 7 A715-76G NH.QMYSI.001 Gaming Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB', 52990, 70, 'intel', 'core i5', 8, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(496, 'asus', 'Asus TUF Gaming F15 90NR0GW1-M00F00 Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 4GB Graph)', 90990, 64, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(497, 'asus', 'Asus Vivobook 16X 2023 K3605ZV-MBN741WS Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 114990, 72, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(498, 'asus', 'Asus Chromebook CX1400CKA-EK0257 Laptop (Celeron N4500/ 4GB/ 64GB eMMC/ Chrome OS)', 16990, 37, 'intel', 'celeron', 2, 2, 4, 'SSD', 64, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'chrome', 1),
(499, 'asus', 'Asus Chromebook CX1400FKA-EC0158 Laptop (Celeron N4500/ 4GB/ 64GB eMMC/ Chrome OS)', 25751, 41, 'intel', 'celeron', 2, 2, 4, 'SSD', 64, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1080, 'chrome', 1),
(500, 'asus', 'Asus Chromebook CX1400CKA-EK0335 Laptop (Celeron N4500/ 4GB/ 128GB eMMC/ Chrome OS)', 18990, 37, 'intel', 'celeron', 2, 2, 4, 'SSD', 128, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'chrome', 1),
(501, 'asus', 'Asus Vivobook 16 2023 X1605ZAB-MB322WS Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 44639, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(502, 'hp', 'HP 250 G9 7M659PA Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 44490, 62, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(503, 'asus', 'Asus Chromebook CX1500CKA-EJ0275 Laptop (Celeron N4500/ 8GB/ 64GB eMMC/ Chrome OS)', 22991, 37, 'intel', 'celeron', 2, 2, 8, 'SSD', 64, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'chrome', 1),
(504, 'gigabyte', 'Gigabyte G5 KF-E3IN313SH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 8GB Graph)', 89990, 73, 'intel', 'core i5', 12, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(505, 'lenovo', 'Lenovo IdeaPad Slim 5 16IAH8 83BG000PIN Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 62190, 63, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(506, 'asus', 'Asus Vivobook 16X K3605ZU-MBN742WS Laptop (12th Gen Core i7/ 16 GB RAM/ 512 GB SSD/ Win 11/ 6GB Grap', 98468, 72, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(507, 'lenovo', 'Lenovo IdeaPad Flex 5 82Y0004YIN Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 58990, 58, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(508, 'lenovo', 'Lenovo IdeaPad Slim 5 14IAH8 83BF000UIN Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 60190, 59, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(509, 'fujitsu', 'Fujitsu UH-X 4ZR1M37246 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 73990, 65, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 2),
(510, 'lenovo', 'Lenovo IdeaPad Slim 5 82XE0072IN Laptop (AMD Ryzen 7 7730U/ 16GB/ 512GB SSD/ Win11)', 64190, 69, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(511, 'lenovo', 'Lenovo IdeaPad Slim 3 82XQ008UIN Laptop (AMD Ryzen 5 7520U/ 8GB/ 512GB SSD/ Win11 Home)', 41990, 58, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(512, 'lenovo', 'Lenovo IdeaPad Slim 3 82XQ0096IN Laptop (AMD Ryzen 5 7520U/ 16GB/ 512GB SSD/ Win11 Home)', 44990, 60, 'amd', 'ryzen 5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(513, 'lenovo', 'Lenovo V15 G3 IAP 82TT004VIH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ DOS)', 45490, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(514, 'asus', 'Asus Vivobook 16X K3605ZC-MBN542WS Laptop (12th Gen Core i5/ 16 GB RAM/ 512 GB SSD/ Win 11/ 4 GB Gra', 75990, 65, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(515, 'asus', 'Asus Vivobook 16X K3605ZC-MBN541WS Laptop (12th Gen Core i5/ 16 GB RAM/ 512 GB SSD/ Win 11/ 4 GB Gra', 75990, 66, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(516, 'asus', 'Asus Vivobook 16X K3605ZU-MBN541WS Laptop (12th Gen Core i5/ 16 GB RAM/ 512 GB SSD/ Win 11/ 6GB Grap', 94369, 70, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(517, 'msi', 'MSI Thin GF63 11UC-1291IN Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 62990, 71, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(518, 'lenovo', 'Lenovo Thinkpad E15 21E6S0W700 Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 47490, 65, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(519, 'msi', 'MSI Katana 15 B12UDXK-1004IN Gaming Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph', 94990, 76, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(520, 'acer', 'Acer TMP214-41-G3 UN.VSQSI.007 Notebook (AMD Ryzen 5 5500U/ 16GB/ 512GB SSD/ Win11 Home)', 36990, 63, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(521, 'acer', 'Acer TMP214-41-G3 UN.VSQSI.006 Notebook (AMD Ryzen 5 5500U/ 8GB/ 512GB SSD/ Win11 Home)', 41990, 60, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(522, 'asus', 'Asus VivoBook 15 X1504ZA-NJ326WS Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 40926, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(523, 'asus', 'Asus Vivobook Pro 15 OLED M6500QC-LK541WS Laptop (Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 71600, 62, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(524, 'asus', 'Asus Vivobook Go 14 2023 E1404FA-NK327WS Laptop (Ryzen 3 7320U / 8GB/ 512GB SSD/ Win11 Home)', 33990, 56, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(525, 'hp', 'HP Omen 16-xf0043AX Gaming Laptop (AMD Ryzen 9 7940HS/ 32GB/ 1TB SSD/ Win11/ 8GB Graph)', 182990, 78, 'amd', 'ryzen 9', 8, 16, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1440, 'windows', 1),
(526, 'dell', 'Dell Vostro 3520 Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 37490, 58, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(527, 'dell', 'Dell Inspiron 5430 IN54308DXWP001ORS1 Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 85990, 57, 'intel', 'core i7', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(528, 'asus', 'Asus TUF Gaming F15 FX506HF-HN076W Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Grap', 57990, 69, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(529, 'hp', 'HP Victus 15-fb1018AX Gaming Laptop (AMD Ryzen 5 7535HS/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 58070, 63, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(530, 'fujitsu', 'Fujitsu UH-X 4ZR1L73352 2-in-1 Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 109990, 76, 'intel', 'core i7', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 2),
(531, 'hp', 'HP 15S-EQ1550AU Laptop (AMD Ryzen 3 3250U/ 8 GB RAM/ 512 GB SSD/ Win 11)', 31990, 51, 'amd', 'ryzen 3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(532, 'hp', 'HP Omen 16-wf0056TX 834U0PA Gaming Laptop (13th Gen Core i7/ 16 GB RAM/ 512 GB SSD/ Win 11/ 8 GB Gra', 152990, 70, 'intel', 'core i7', 16, 24, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(533, 'lenovo', 'Lenovo IdeaPad Gaming 3i 82K101GTIN Laptop (11th Gen Core i5/ 8 GB RAM/ 512 GB SSD/ Win 11/ 4 GB Gra', 58850, 64, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(534, 'dell', 'Dell Alienware x15 R2 D569947WIN9 Gaming Laptop (12th Gen Core i9/ 32 GB RAM/ 1 TB SSD/ Win 11/ 8 GB', 223275, 78, 'intel', 'core i9', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(535, 'asus', 'Asus Vivobook Pro 15 M6500QF-HN541WS Creator Laptop (AMD Ryzen 5 5600H/ 16 GB RAM/ 512 GB SSD/ Win 1', 59990, 63, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(536, 'lenovo', 'Lenovo IdeaPad Slim 5 14IAH8 83BF0045IN Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11)', 63990, 60, 'intel', 'core i5', 8, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(537, 'wings', 'Wings Nuvobook S2 Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 26990, 51, 'intel', 'core i3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1080, 1920, 'windows', 1),
(538, 'acer', 'Acer Aspire 3 Spin 14 NX.KENSI.002 Laptop (Intel Core i3 N305/ 8GB/ 512GB SSD/ Win11 Home)', 41490, 45, 'intel', 'core i3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(539, 'lenovo', 'Lenovo IdeaPad Slim 5 16IRL8 82XF003GIN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 70190, 60, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(540, 'lenovo', 'Lenovo IdeaPad 3 15ITL6 82H803GSIN Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 36690, 60, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(541, 'lenovo', 'Lenovo IdeaPad Slim 5 82XD003NIN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 67190, 62, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 2),
(542, 'infinix', 'Infinix INBook X3 Slim Series XL422 Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win 11 Home)', 44990, 57, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(543, 'lenovo', 'Lenovo V15 82KB00RJIH Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 46990, 65, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(544, 'dell', 'Dell Inspiron 3530 2023 Laptop (13th Gen Core i3/ 8GB/ 1TB SSD/ Win11 Home)', 45870, 56, 'intel', 'core i3', 5, 6, 8, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(545, 'dell', 'Dell Inspiron 3520 Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 38349, 58, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(546, 'lenovo', 'Lenovo IdeaPad Slim 5 16IRL8 82XF003JIN Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 84190, 64, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1080, 'windows', 1),
(547, 'lenovo', 'Lenovo IdeaPad Slim 5i 82XD0040IN Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 86990, 62, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(548, 'dell', 'Dell Inspiron 13 5330 Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 98990, 63, 'intel', 'core i7', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 133, 2560, 1600, 'windows', 1),
(549, 'dell', 'Dell Inspiron 3525 Laptop (AMD Ryzen R3 5300U/ 8GB/ 512GB SSD/ Win11)', 32990, 58, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(550, 'dell', 'Dell Inspiron 5330 2023 Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11)', 87490, 62, 'intel', 'core i5', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 133, 2560, 1600, 'windows', 1),
(551, 'dell', 'Dell Inspiron 3535 2023 Laptop (AMD Ryzen R5-7520U/ 8GB/ 1TB SSD/ Win11)', 47990, 54, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(552, 'dell', 'Dell Inspiron 7430 2023 2 in 1 Laptop (13th Gen Core i5/ 8GB/ 1TB SSD/ Win11)', 77490, 59, 'intel', 'core i5', 10, 12, 8, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(553, 'dell', 'Dell Vostro 3430 Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 41433, 57, 'intel', 'core i3', 5, 6, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(554, 'hp', 'HP Victus 15-FB0142AX Gaming Laptop (AMD Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 74950, 71, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(555, 'dell', 'Dell Inspiron 7430 2 in 1 Touch Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11)', 87290, 60, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(556, 'dell', 'Dell Vostro 3430 VN3430RHXFG001ORB1 Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Pro)', 60490, 63, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(557, 'lenovo', 'Lenovo Yoga 6 82WV0058IN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 77990, 60, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(558, 'asus', 'Asus TUF Gaming F15 FX577ZC-HN192W Gaming Laptop (12th Gen Core i7/ 16GB/1TB SSD/ Win11 / 4GB Graph)', 89990, 76, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(559, 'msi', 'MSI Thin GF63 12VE-664IN Gaming Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 96990, 76, 'intel', 'core i7', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(560, 'msi', 'MSI Thin GF63 12VF-663IN Gaming Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 8GB Graph)', 104990, 77, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(561, 'msi', 'MSI Katana 17 B12VGK-672IN Gaming Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 149990, 79, 'intel', 'core i7', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 2),
(562, 'msi', 'MSI Pulse 17 B13VGK-666IN Gaming Laptop (13th Gen Core i7/ 8GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 149990, 76, 'intel', 'core i7', 14, 20, 8, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 2560, 1440, 'windows', 2),
(563, 'msi', 'MSI Katana 17 B12VFK-668IN Gaming Laptop (12th Gen Core i7/ 8GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 114990, 77, 'intel', 'core i7', 10, 16, 8, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 2),
(564, 'msi', 'MSI Thin GF63 11UCX-1497IN Gaming Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 55990, 69, 'intel', 'core i5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(565, 'msi', 'MSI Thin GF63 11UCX-1496IN Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 58990, 71, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(566, 'msi', 'MSI Thin GF63 11SC-1493IN Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 55990, 70, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(567, 'msi', 'MSI Pulse 17 B13VGK-652IN Gaming Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 199990, 83, 'intel', 'core i9', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 2),
(568, 'hp', 'HP Victus 15-fa1064TX Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 119400, 72, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(569, 'hp', 'HP Victus  15-fa1060TX  Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 99999, 71, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(570, 'lenovo', 'Lenovo Ideapad Slim 3 15ITL05 81X800N1IN Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 37500, 59, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(571, 'hp', 'HP Omen 16-u0023TX Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 239299, 86, 'intel', 'core i9', 24, 32, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1600, 'windows', 1),
(572, 'hp', 'HP Omen 16-wf0052TX Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 132599, 75, 'intel', 'core i5', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(573, 'hp', 'HP Victus 15-fb0153AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 50999, 67, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(574, 'asus', 'Asus VivoBook 14 2023 X1404ZA-NK321WS Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 37588, 59, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(575, 'asus', 'Asus Vivobook 15 X1504ZA-NJ325WS Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 36990, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(576, 'lenovo', 'Lenovo IdeaPad Slim 5 82XE004RIN Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11)', 58990, 64, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(577, 'hp', 'HP Envy x360 13-bf0141tu Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 105036, 67, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 133, 2880, 1800, 'windows', 1),
(578, 'lenovo', 'Lenovo IdeaPad Slim 3 82XQ008VIN Laptop (AMD Ryzen 5 7520U/ 16GB/ 512GB SSD/ Win11)', 43990, 58, 'amd', 'ryzen 5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(579, 'hp', 'HP Omen 16-wd0770TX Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 101800, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(580, 'asus', 'Asus Vivobook 16X 2023 K3605ZC-MBN741WS Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 4GB G', 94990, 72, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(581, 'asus', 'Asus Vivobook Pro 15 M6500QFB-LK541WS Laptop (AMD Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 69990, 66, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(582, 'acer', 'Acer Predator 16 NH.QLUSI.005 Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 159990, 79, 'intel', 'core i9', 24, 32, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(583, 'asus', 'Asus Vivobook Pro 15 M6500QFB-LK742WS Laptop (Ryzen 7 5800H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 72990, 72, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(584, 'msi', 'MSI Prestige 16 A13UCX-250IN Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 4GB Graphic)', 119990, 73, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 2),
(585, 'hp', 'HP Victus 15-fb0134AX Gaming Laptop (AMD Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 56490, 70, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(586, 'dell', 'Dell Inspiron 3520 IN3520KTMFJ001ORS1 Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 37281, 58, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(587, 'lenovo', 'Lenovo IdeaPad Slim 5 82XD003PIN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 69494, 60, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 2),
(588, 'asus', 'Asus VivoBook 15 X1500EA-EJ326WS Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 32790, 54, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(589, 'lenovo', 'Lenovo LOQ 15IRH8 82XV00F7IN 2023 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 8GB Graph', 97990, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(590, 'hp', 'HP Pavilion x360 14-ek1074TU Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 78100, 67, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1080, 'windows', 1),
(591, 'lenovo', 'Lenovo LOQ 15IRH8 82XV00F6IN 2023 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 6GB Graph', 91490, 71, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(592, 'hp', 'HP 15s-fr2515TU Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 36790, 60, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(593, 'lenovo', 'Lenovo LOQ 15APH8 82XT004HIN 2023 Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11/ 6GB Gra', 88527, 73, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(594, 'asus', 'Asus Vivobook 15 X1502ZA-EJ545WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 59990, 64, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(595, 'msi', 'MSI Vector GP68HX 13VH-072IN Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win11/ 12GB Graph)', 299990, 89, 'intel', 'core i9', 24, 32, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 2),
(596, 'lenovo', 'Lenovo LOQ 15APH8 82XT004JIN 2023 Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11/ 6GB Gra', 99990, 73, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(597, 'hp', 'HP Omen 16-wf0111TX Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 146990, 77, 'intel', 'core i7', 16, 24, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(598, 'lenovo', 'Lenovo LOQ 15APH8 82XT009CIN 2023 Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11/ 8GB Gra', 109990, 75, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(599, 'hp', 'HP Omen 16-xf0059AX Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11/ 8GB Graph)', 123010, 73, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1080, 'windows', 1),
(600, 'asus', 'Asus Vivobook Go 15 E510MA-EJ001W Laptop (Celeron N4020/ 4GB/ 256GB SSD/ Win11 Home)', 25990, 45, 'intel', 'celeron', 2, 2, 4, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(601, 'hp', 'HP Omen 16-wf0055TX Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 8GB Graph)', 139990, 77, 'intel', 'core i7', 16, 24, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(602, 'acer', 'Acer Nitro 5 AN515-58 NH.QFHSI.008 Gaming Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 4GB Graph', 67499, 65, 'intel', 'core i5', 8, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(603, 'acer', 'Acer Aspire Lite AL15-51 2023 Laptop (AMD Ryzen 5 5500U/ 8GB/ 512GB SSD/ Win11)', 35990, 58, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(604, 'lenovo', 'Lenovo Yoga Book 9i 2023 82YQ001DIN Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 225190, 73, 'intel', 'core i7', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 133, 2880, 1800, 'windows', 3),
(605, 'hp', 'HP 255 G8 Laptop (AMD Athlon 3050U/ 4GB/ 256GB SSD/ Win11)', 22990, 44, 'amd', 'other', 2, 2, 4, 'SSD', 256, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(606, 'dell', 'Dell Inspiron 5330 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 84490, 60, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 133, 2560, 1600, 'windows', 1),
(607, 'dell', 'Dell XPS 15 9530 Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 257490, 85, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 1, 156, 3456, 2160, 'windows', 1),
(608, 'dell', 'Dell Inspiron 5330 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 95990, 63, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 133, 2560, 1600, 'windows', 1),
(609, 'asus', 'Asus Vivobook 15 X1504ZA-NJ321WS Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 39390, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(610, 'dell', 'Dell Inspiron 5518 D560667WIN9S Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 2GB Graph)', 60900, 65, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(611, 'msi', 'MSI Prestige 14 Evo B12M-472IN Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 81990, 63, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(612, 'lenovo', 'Lenovo IdeaPad Slim 5i 82XF003DIN Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 89889, 63, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 2),
(613, 'dell', 'Dell Alienware X16 Gaming Laptop (13th Gen Core i9/ 32GB/ 2TB SSD/ Win 11/ 16GB Graph)', 454490, 83, 'intel', 'core i9', 14, 20, 32, 'SSD', 2048, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 3200, 1800, 'windows', 1),
(614, 'dell', 'Dell Inspiron 5425 Laptop (AMD Ryzen 75825U/ 16GB/ 512GB SSD/ Win11) 84 votes', 67890, 65, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(615, 'dell', 'Dell Alienware X16 R1 2023 Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win 11/ 12GB Graph)', 323990, 85, 'intel', 'core i9', 24, 32, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 3200, 1800, 'windows', 1),
(616, 'dell', 'Dell Alienware m16 2023 Gaming Laptop (AMD Ryzen 7 7745HX/ 16GB/ 1TB SSD/ Win 11/ 8GB Graph)', 188990, 80, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(617, 'msi', 'MSI Modern 15 B12M-613IN Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 36990, 58, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(618, 'msi', 'MSI Creator Pro M16 B13VI-1273IN Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win 11/ 6GB Graph)', 159427, 77, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 2),
(619, 'msi', 'MSI Prestige 14H B12UCX-412IN Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/Win11 Home/ 4GB Graphic)', 89990, 71, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 1920, 1200, 'windows', 2),
(620, 'dell', 'Dell Alienware M18 R1 2023 Gaming Laptop (13th Gen Core i9/ 64GB/ 1TB SSD/ Win 11/ 16GB Graph)', 450990, 83, 'intel', 'core i9', 24, 32, 4, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 180, 3200, 1800, 'windows', 1),
(621, 'hp', 'HP 15s-fy5005TU Laptop (12th Gen Core i3/ 8GB/ 1TB SSD/ Win11 Home)', 43735, 56, 'intel', 'core i3', 6, 8, 8, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(622, 'lenovo', 'Lenovo Yoga 6 83B2005TIN Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 74990, 69, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 133, 1920, 1200, 'windows', 3),
(623, 'asus', 'Asus Vivobook 16X 2023 K3605ZF-MBN543WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB G', 64990, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(624, 'asus', 'Asus Vivobook 16X 2023 K3605ZF-MBN741WS Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 4GB G', 89000, 75, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(625, 'lenovo', 'Lenovo IdeaPad Flex 5 82R900D9IN Laptop (AMD Ryzen 7 5700U/ 16GB/ 512GB SSD/ Win11 Home)', 64990, 72, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(626, 'hp', 'HP 15s-fy5004TU Laptop (12th Gen Core i3/ 16GB/ 512GB SSD/ Win11 Home)', 43400, 57, 'intel', 'core i3', 6, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(627, 'lenovo', 'Lenovo IdeaPad Slim 3 82XQ008GIN Laptop (AMD Ryzen 5 7520U/ 8GB/ 512GB SSD/ Win11)', 40590, 57, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(628, 'asus', 'Asus Vivobook Pro 15 M6500QC-LK542WS Laptop (AMD R5 5600H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 70000, 70, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(629, 'asus', 'Asus ROG Zephyrus G16 2023 GU603ZU-N3023WS Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/ 6GB ', 141989, 82, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(630, 'lg', 'LG Gram 14 2023 14Z90R-G.CH54A2 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 98999, 67, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1200, 1920, 'windows', 1),
(631, 'dell', 'Dell Alienware m16 Gaming Laptop (AMD Ryzen 9 7845HX/ 32GB/ 2TB SSD/ Win 11/ 12GB Graph)', 299990, 89, 'amd', 'ryzen 9', 12, 24, 32, 'SSD', 2048, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(632, 'acer', 'Acer Nitro 16 AN16-41 Gaming Laptop (AMD Ryzen 7 7840HS/ 16GB/ 512GB SSD/ Win11 Home/ 8GB Graph)', 129990, 80, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(633, 'lenovo', 'Lenovo IdeaPad Flex 5 82XX007KIN Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 65990, 69, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1);
INSERT INTO `myapp1_laptop` (`index`, `brand`, `model`, `price`, `rating`, `processor_brand`, `processor_tier`, `num_cores`, `num_threads`, `ram_memory`, `primary_storage_type`, `primary_storage_capacity`, `secondary_storage_type`, `secondary_storage_capacity`, `gpu_brand`, `gpu_type`, `is_touch_screen`, `display_size`, `resolution_width`, `resolution_height`, `os`, `year_of_warranty`) VALUES
(634, 'acer', 'Acer Aspire 5 2023 A515-58M Gaming Laptop (13th Gen Core i7/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graphic', 75499, 59, 'intel', 'core i7', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(635, 'hp', 'HP Chromebook x360 14a-ca0505TU Laptop (Intel Celeron N4120/ 4GB/ 64GB eMMC/ Chrome OS)', 25990, 44, 'intel', 'celeron', 4, 4, 4, 'HDD', 64, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1366, 768, 'chrome', 1),
(636, 'asus', 'Asus Vivobook Pro 15 M6500QC-LK742WS Laptop (Ryzen 7 5800H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 76600, 72, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(637, 'hp', 'HP ZBook Firefly 16 G9 2023 Workstation PC Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11/ 4GB Graph', 126800, 69, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(638, 'fujitsu', 'Fujitsu UH-X 4ZR1L12856 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 99990, 73, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 2),
(639, 'hp', 'HP 2023 ZBook Firefly 16 G9 WUXGA Workstation Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 4GB ', 133269, 69, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(640, 'acer', 'Acer Aspire Lite AL15-51 2023 Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 41990, 64, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(641, 'hp', 'HP 15s-fq3073TU Laptop Intel Pentium Silver N6000/ 8GB/ 512GB SSD/ Win11 Home)', 32990, 46, 'intel', 'pentium', 4, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(642, 'hp', 'HP ZBook Firefly 16 G9 2023 Workstation Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graphi', 120449, 67, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(643, 'asus', 'Asus ROG Zephyrus G14 GA402NJ-L8094WS Gaming Laptop (AMD Ryzen 7 7735HS/ 16GB/ 512GB SSD/ Win11/ 6GB', 129990, 71, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2560, 1600, 'windows', 1),
(644, 'lg', 'LG UltraPC 16 16U70R-G.AH56A2 Laptop (AMD Ryzen5-7530U/ 16GB/ 512GB SSD/ Win11)', 78299, 72, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 160, 1920, 1200, 'windows', 1),
(645, 'hp', 'HP ZBook Studio G9 16 WUXGA Workstation Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 230060, 80, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(646, 'lenovo', 'Lenovo IdeaPad 1 82V6005CIN Laptop (Celeron N4020/ 4GB/ 256GB SSD/ Win11 Home)', 24190, 38, 'intel', 'celeron', 2, 2, 4, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 116, 1366, 768, 'windows', 1),
(647, 'lg', 'LG gram360 16 Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 152499, 78, 'intel', 'core i7', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 160, 1600, 2560, 'windows', 1),
(648, 'hp', 'HP Chromebook 15a-nb0002TU Laptop ( Intel Core i3-N305/ 8GB/ 256GB SSD/ Chrome OS)', 50990, 38, 'intel', 'core i3', 8, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'chrome', 1),
(649, 'lg', 'LG Gram 14 2023 14Z90R-G.CH75A2 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 117899, 69, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1200, 1920, 'windows', 1),
(650, 'acer', 'Acer Nitro 5 AN515-58 UN.QFHSI.026 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Grap', 71990, 70, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(651, 'asus', 'Asus Vivobook 15 2023 X1504VA-NJ544WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 63990, 65, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(652, 'walker', 'Walker NU14A1 Laptop (Celeron N4020/ 4GB/ 128GB SSD / Win11 Home)', 15990, 37, 'intel', 'celeron', 2, 2, 4, 'SSD', 128, 'No secondary storage', 0, 'intel', 'integrated', 0, 141, 1920, 1080, 'windows', 1),
(653, 'hp', 'HP 255 G8 6E3Z0PA Laptop (Ryzen 3 3250U/ 8GB/512GB SSD/ Dos)', 23999, 52, 'amd', 'ryzen 3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1366, 768, 'dos', 1),
(654, 'dell', 'Dell Inspiron 14 5430 2023 Laptop (13th Gen Core i5/ 8GB/ 1TB SSD/ Win11)', 65500, 60, 'intel', 'core i5', 10, 12, 8, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(655, 'dell', 'Dell Inspiron 2023 14 5430 Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11)', 73990, 63, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(656, 'hp', 'HP Omen 16-wd0990TX Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 97999, 73, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1440, 'windows', 1),
(657, 'lenovo', 'Lenovo S14 Gen 3 82TW001CIH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 52990, 62, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 2),
(658, 'lenovo', 'Lenovo IdeaPad Gaming 3 15ACH6 82K2022YIN Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB', 62990, 65, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(659, 'msi', 'MSI Katana GF66 12UCOK 2023 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 73990, 65, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(660, 'lenovo', 'Lenovo ThinkBook 15 21JF002CIN Laptop (AMD Ryzen 3 7330U/ 8 GB/ 512 GB SSD/ DOS)', 32899, 59, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(661, 'lenovo', 'Lenovo IdeaPad 1 14IGL7 82V6005EIN Laptop (Celeron Dual Core/ 8GB/ 256GB SSD/ Win11 Home)', 24990, 50, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(662, 'msi', 'MSI Thin GF63 11SC-1477IN Gaming Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 47990, 67, 'intel', 'core i5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(663, 'asus', 'Asus Vivobook 15 OLED 2023 X1505VAU-LK543WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 73990, 60, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(664, 'asus', 'Asus Vivobook 16X 2023 K3605ZU-MB541WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Gr', 99990, 75, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(665, 'lenovo', 'Lenovo IdeaPad Gaming 3 82K101LHIN Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 52990, 70, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(666, 'asus', 'Asus Vivobook 15 2023 X1504VA-NJ543WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 61990, 64, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(667, 'lenovo', 'Lenovo ThinkPad E14 21JRS00T00 Laptop (AMD Ryzen 5 7530U/ 8GB/ 512GB SSD/ Win11 Home)', 69345, 62, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1200, 'windows', 1),
(668, 'lenovo', 'Lenovo IdeaPad Slim 3 2023 82X70033IN Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 44990, 58, 'intel', 'core i3', 5, 6, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(669, 'hp', 'HP Envy x360 15-fe0028TU Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 96590, 66, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(670, 'hp', 'HP Envy x360 15-fe0027TU Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 87990, 66, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(671, 'hp', 'HP Envy x360 15-fh0016AU Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 86690, 66, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(672, 'hp', 'HP Envy x360 15-fh0019AU Laptop (AMD Ryzen 7 7730U/ 16GB/ 512GB SSD/ Win11 Home)', 87690, 70, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(673, 'hp', 'HP Envy x360 15-fh0015AU Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 78890, 66, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(674, 'hp', 'HP Envy x360 15-ew0041TU Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 83990, 72, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(675, 'hp', 'HP 14-em0025AU Laptop (AMD Ryzen  3 7320U/ 8GB/ 512GB SSD/ Win11 Home)', 38990, 57, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(676, 'hp', 'HP 14-em0027AU Laptop (AMD Ryzen 5 7520U/ 16GB/ 512GB SSD/ Win11 Home)', 50990, 60, 'amd', 'ryzen 5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(677, 'asus', 'Asus Vivobook 15 X1502ZA-EJ523WS Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 55990, 60, 'intel', 'core i5', 12, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(678, 'dell', 'Dell Vostro 15 3510 Laptop (11th Gen Core i3/ 8GB/ 1TB 256GB SSD/ Win11 Home)', 39290, 60, 'intel', 'core i3', 2, 4, 8, 'HDD', 1024, 'SSD', 256, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 0),
(679, 'hp', 'HP Pavilion Plus 14-eh1047TU Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win 11)', 107763, 71, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(680, 'dell', 'Dell Inspiron 7430 2 in 1 Laptop (13th Gen Core i3/ 8GB/ 1TB SSD/ Win11)', 59990, 56, 'intel', 'core i3', 6, 8, 8, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(681, 'lenovo', 'Lenovo IdeaPad Gaming 3 82K2025LIN Laptop (AMD Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph', 72990, 69, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(682, 'lenovo', 'Lenovo ThinkPad E14 21JRS00U00 Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 56700, 64, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(683, 'lenovo', 'Lenovo Thinkpad E15 21E6S05B00 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 65990, 67, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(684, 'lenovo', 'Lenovo Thinkbook 15 21DJ00EXIH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 53990, 66, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(685, 'hp', 'HP Pavilion Plus 14-eh1022TU Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win 11)', 78019, 69, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2240, 1400, 'windows', 1),
(686, 'acer', 'Acer Aspire Lite AL15-51 UN.431SI.252 Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 30790, 59, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(687, 'lenovo', 'Lenovo IdeaPad Gaming 3 15ACH6 82K2025JIN Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB', 57390, 67, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(688, 'hp', 'HP Zbook Power G4-A 2023 ZHAN 99 Laptop (AMD Ryzen 5 6600H/ 16GB/ 1TB 512GB SSD/ Win11/ 4GB Graph)', 115706, 71, 'amd', 'ryzen 5', 6, 12, 16, 'HDD', 1024, 'SSD', 512, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(689, 'dell', 'Dell Inspiron 3535 Laptop (AMD Ryzen R5-7520U/ 8GB/ 512GB SSD/ Win11)', 41808, 53, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(690, 'hp', 'HP Envy 15-fe0030TU Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 109990, 69, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(691, 'hp', 'HP 14-hr0001AU Laptop (AMD Ryzen 5 7520U/ 8GB/ 512GB SSD/ Win11 Home)', 44990, 58, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(692, 'hp', 'HP 14-gr0000TU Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 47990, 53, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(693, 'hp', 'HP 14-hr0000AU Laptop (AMD Ryzen 5 7520U/ 16GB/ 512GB SSD/ Win11 Home)', 52990, 60, 'amd', 'ryzen 5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(694, 'hp', 'HP Envy 15-fe0032TU Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 115990, 70, 'intel', 'core i7', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 156, 1920, 1080, 'windows', 1),
(695, 'asus', 'Asus Vivobook 16X 2023 K3605ZF-MBN544WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB G', 83599, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(696, 'asus', 'Asus ROG Zephyrus G14 2023 GA402XU-N2045WS Gaming Laptop (AMD Ryzen 9 7940HS/ 16GB/ 1TB SSD/ Win11/ ', 139990, 83, 'amd', 'ryzen 9', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2560, 1600, 'windows', 1),
(697, 'dell', 'Dell Inspiron 5430 2023 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 87990, 56, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(698, 'asus', 'Asus TUF Gaming F15 FX506HF-HN026W Gaming Laptop (11th Gen Core i5/ 8GB/ 1TB SSD/ Win11/ 4GB Graph)', 58990, 71, 'intel', 'core i5', 6, 12, 8, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(699, 'lenovo', 'Lenovo ThinkBook 15 G5 21JFA00QIN Laptop (AMD Ryzen 7 7730U/ 8 GB/ 512 GB SSD/ DOS)', 49990, 64, 'amd', 'ryzen 7', 8, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(700, 'lenovo', 'Lenovo IdeaPad Gaming 3 82K2022VIN Laptop (AMD Ryzen 5-5600H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 60490, 67, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(701, 'lenovo', 'Lenovo IdeaPad 3 15ITL05 81X800N2IN Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 35490, 59, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(702, 'lenovo', 'Lenovo IdeaPad Gaming 3 15IAH7 82S9014KIN Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB', 71990, 70, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(703, 'dell', 'Dell Inspiron 7420 2in1 Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 90490, 67, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(704, 'hp', 'HP 14-em0026AU Laptop (AMD Ryzen 5 7520U/ 8GB/ 512GB SSD/ Win11 Home)', 44990, 58, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(705, 'msi', 'MSI Cyborg 15 A12VF-049IN Gaming Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 8GB Graph)', 111990, 78, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(706, 'lenovo', 'Lenovo ThinkPad E14 Gen 4 21E3S06Q00 Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ DOS)', 45500, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(707, 'dell', 'Dell Vostro 5620 Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 40990, 58, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1080, 'windows', 1),
(708, 'dell', 'Dell Vostro 3525 D560926WIN9B Laptop (AMD Ryzen 5-5500U/ 8GB/ 512GB SSD/ Win11)', 43690, 52, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(709, 'lenovo', 'Lenovo ThinkPad E14 Gen 4 21E3S06D00 Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 49999, 62, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(710, 'lenovo', 'Lenovo Thinkpad E14 21E3S06300 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ DOS)', 66199, 62, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(711, 'acer', 'Acer Aspire 3 A315-510P Laptop (Intel Core i3 N305/ 8GB/ 256GB SSD/ Win11 Home)', 29980, 50, 'intel', 'core i3', 8, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(712, 'dell', 'Dell Inspiron 16 5635 Laptop (AMD Ryzen 5 7530U/ 8GB/ 512GB SSD/ Win11)', 55990, 60, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(713, 'acer', 'Acer Aspire 3 NX.KDESI.008 Laptop (AMD Ryzen 3 7320U/ 8GB/ 512GB SSD/ Win11 Home)', 29490, 57, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(714, 'lenovo', 'Lenovo IdeaPad Slim 3 82XQ008EIN Laptop (AMD Ryzen 3 7320U/ 8GB/ 512GB SSD/ Win11 Home)', 33490, 57, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(715, 'hp', 'HP Pavilion 14-dv1043TU Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 53699, 62, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(716, 'acer', 'Acer Aspire 5 A515-58M 2023 Gaming Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 42990, 50, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(717, 'msi', 'MSI Bravo 15 C7UCXK-094IN Gaming Laptop (AMD Ryzen 5 7535HS/ 16 GB RAM/ 512 GB SSD/ Win 11/ 4 GB Gra', 57990, 67, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(718, 'msi', 'MSI Bravo 15 C7UCXK-095IN Gaming Laptop (AMD Ryzen 5 7535HS/ 8 GB RAM/ 512 GB SSD/ Win 11/ 4 GB Grap', 54990, 65, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(719, 'dell', 'Dell Latitude 3420 GD723YX17 Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Ubuntu)', 47990, 60, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'ubuntu', 1),
(720, 'msi', 'MSI Bravo 15 C7VFK-087IN Gaming Laptop (AMD Ryzen 7 7735HS/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 104990, 78, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(721, 'msi', 'MSI Bravo 15 C7UDXK-093IN Gaming Laptop (AMD Ryzen 5 7535HS/ 16 GB RAM/ 512 GB SSD/ Win 11/ 6 GB Gra', 74990, 69, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(722, 'msi', 'MSI Bravo 15 C7VEK-088IN Gaming Laptop (AMD Ryzen 7 7735HS/ 16GB/ 1TB SSD/ Win11 Home/ 6GB Graph)', 94990, 77, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(723, 'acer', 'Acer One 14 Z8-415 2023 Laptop (11th Gen Core i5 / 16GB/ 512GB SSD/ Win11 Home)', 40990, 60, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(724, 'msi', 'MSI Thin GF63 11UCX-1471IN Gaming Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 50990, 66, 'intel', 'core i5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(725, 'asus', 'Asus Vivobook 15 X1504ZA-NJ521WS Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 47980, 59, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(726, 'msi', 'MSI Bravo 17 C7VEK-035IN Gaming Laptop (AMD Ryzen 7 7735HS/ 16GB/ 1TB SSD/ Win11 Home/ 6GB Graph)', 94990, 77, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 1),
(727, 'msi', 'MSI Bravo 15 C7VEK-089IN Gaming Laptop (AMD Ryzen 5 7535HS/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 84990, 75, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(728, 'hp', 'HP 255 G9 7M654PA Laptop (12th Gen Core i3/ 8GB/ 512 GB SSD/ Win11)', 38990, 63, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(729, 'dell', 'Dell Inspiron 5620 ICC-C783531WIN8 Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 2GB Graph)', 79690, 70, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1080, 'windows', 1),
(730, 'msi', 'MSI Modern 14 C12M-670IN Laptop (12th Gen Core i7/ 8GB/ 512GB SSD/ Win11 Home) Price', 60990, 63, 'intel', 'core i7', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(731, 'msi', 'MSI Thin GF63 11UC-1475IN Gaming Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 51990, 70, 'intel', 'core i5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(732, 'dell', 'Dell XPS 9530 2023 Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win11/ 6GB Graph)', 279490, 88, 'intel', 'core i7', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 1, 156, 3456, 2160, 'windows', 1),
(733, 'dell', 'Dell XPS 13 Plus 9320 2023 Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win11)', 201990, 82, 'intel', 'core i7', 12, 16, 32, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 134, 3840, 2400, 'windows', 1),
(734, 'lenovo', 'Lenovo Thinkpad E14 G4 21E3006UIG Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ DOS)', 67000, 63, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(735, 'lenovo', 'Lenovo Thinkpad E14 G4 21E3S02M00 Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Pro)', 125000, 75, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(736, 'lg', 'LG UltraPC 16 16U70R-G.AH76A2 Laptop (AMD Ryzen7-7730U/ 16GB/ 512GB SSD/ Win11)', 89799, 75, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 160, 1920, 1200, 'windows', 1),
(737, 'lg', 'LG Gram Style 14 14Z90RS-G.CH74A2 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 150999, 72, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(738, 'hp', 'HP Zbook Power G4-A Laptop (AMD Ryzen 7 6800H/ 16GB/ 1TB SSD/ Win11/ 4GB Graph)', 131316, 72, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(739, 'lenovo', 'Lenovo Thinkbook 14 Gen 4 Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Pro)', 75499, 62, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(740, 'axl', 'AXL Vayu Book LAP02 Laptop (Celeron N4020/ 4GB/ 256GB SSD / Win11 Home)', 17990, 38, 'intel', 'celeron', 2, 2, 4, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(741, 'msi', 'MSI Modern 14 C7M-218IN Laptop (Ryzen 7 7730U/ 16GB/ 512GB SSD/ Win11)', 52990, 65, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(742, 'axl', 'AXL Vayu Book LAP01 Laptop (Celeron N4020/ 4GB/ 128GB SSD / Win11 Home)', 14990, 37, 'intel', 'celeron', 2, 2, 4, 'SSD', 128, 'No secondary storage', 0, 'intel', 'integrated', 0, 141, 1920, 1080, 'windows', 1),
(743, 'dell', 'Dell Inspiron 3525 D560927WIN9S Laptop (AMD Ryzen 5-5500U/ 8GB/ 512GB SSD/ Win11)', 40890, 54, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(744, 'lenovo', 'Lenovo ThinkBook 15 G3 ACL 21A4A08UIH Laptop (AMD Ryzen 5 5500U/ 8 GB/ 512 GB SSD/ DOS)', 40990, 57, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(745, 'asus', 'Asus Vivobook 14X 90NB11H2-M004D0 Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/4 GB Graphics)', 69990, 69, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 1920, 1200, 'windows', 1),
(746, 'lenovo', 'Lenovo S14 82TW0019IH Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 46990, 57, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(747, 'hp', 'HP Pavilion 15-EH3101AU Laptop (AMD Ryzen 7- 7730U/ 16GB/ 512GB SSD/ Win11 Home)', 65100, 66, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(748, 'lenovo', 'Lenovo ThinkBook 15 G3 ACL 21A4A08VIH Laptop (AMD Ryzen 5 5500U/ 8 GB/ 512 GB SSD/ Win11 Home)', 38171, 59, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(749, 'asus', 'Asus Vivobook Pro 15 M6500QF-HN741WS  Laptop (Ryzen 7 5800H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 64990, 64, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(750, 'dell', 'Dell Alienware x14 R2 Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win 11/ 6GB Graph)', 205490, 72, 'intel', 'core i7', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2560, 1600, 'windows', 1),
(751, 'asus', 'Asus Vivobook S15 OLED 2023 S5504VA-MA554WS Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11)', 95300, 66, 'intel', 'core i5', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 2880, 1620, 'windows', 1),
(752, 'asus', 'Asus VivoBook 15 X515EA-EJ328WS Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 35083, 53, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(753, 'acer', 'Acer Aspire 7 A715-76G UN.QMESI.004 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4G', 54990, 69, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(754, 'lenovo', 'Lenovo V15 G4 82YU00W6IN Laptop (AMD Ryzen 3 7320U/ 8GB/ 512GB SSD/ DOS)', 27990, 54, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(755, 'lenovo', 'Lenovo Thinkpad E14 20TA00J2IG Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Pro)', 73900, 64, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 3),
(756, 'lenovo', 'Lenovo V15 G3 IAP Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/Win11)', 34990, 53, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(757, 'lenovo', 'Lenovo V14 G3 IAP Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 34990, 54, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(758, 'lenovo', 'Lenovo V15 G3 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/Win11)', 46900, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(759, 'lenovo', 'Lenovo V15 G3 82C7007SGE Laptop (AMD Ryzen 3 7320U/ 8GB/ 512GB SSD/ Win11 Home)', 29990, 59, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(760, 'lenovo', 'Lenovo V14 G3 IAP Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 46490, 57, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(761, 'dell', 'Dell Inspiron 5630 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 94900, 71, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 2560, 1600, 'windows', 1),
(762, 'lenovo', 'Lenovo IdeaPad Slim 3 82H803B6IN Laptop (11th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 52101, 66, 'intel', 'core i7', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(763, 'hp', 'HP Victus 16-d0302TX Gaming Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 58499, 71, 'intel', 'core i5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(764, 'lenovo', 'Lenovo IdeaPad 5 15ITL05 82FG01UUIN Laptop (11th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 2GB Graphic)', 74889, 64, 'intel', 'core i7', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(765, 'dell', 'Dell Inspiron 3530 Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 61990, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(766, 'hp', 'HP 15s-ey1509AU Laptop (AMD Athlon Silver 3050U/ 8GB/ 512GB SSD/ Win11)', 28750, 49, 'amd', 'other', 2, 2, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(767, 'dell', 'Dell G16-7630 2023 Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 157990, 78, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(768, 'dell', 'Dell 2023 G16-7630 Gaming Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win11/ 8GB Graph)', 166490, 82, 'intel', 'core i7', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(769, 'dell', 'Dell Inspiron 7430 IC7430FD64T001ORS1 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 99490, 59, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(770, 'dell', 'Dell Inspiron 7430 IC7430VVR8C001ORS1 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 80020, 58, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(771, 'hp', 'HP 14s-dr3003TU 832T7PA Laptop (Pentium Silver N6000/ 8GB/ 512GB SSD/ Win11 Home)', 28206, 50, 'intel', 'pentium', 4, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(772, 'dell', 'Dell Inspiron 15 3530 Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 42990, 57, 'intel', 'core i3', 5, 6, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(773, 'infinix', 'Infinix INBook X2 Slim Series XL23 Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win 11 Home)', 38990, 58, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(774, 'dell', 'Dell Inspiron 5430 IN54304D6P9M01ORS1 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 88980, 56, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(775, 'dell', 'Dell Inspiron 5430 IN54308TR2G001ORS1 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 71990, 52, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(776, 'dell', 'Dell Inspiron 7430 IC7430PXXWC001ORS1 Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 73990, 57, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(777, 'asus', 'Asus Vivobook Go 15 E510MA-EJ011WS Laptop (Intel Celeron N4020/ 8GB/ 256GB SSD/ Win11 Home)', 27990, 45, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(778, 'hp', 'HP Victus 15-fb0137AX Gaming Laptop (Ryzen 7 5800H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 73990, 67, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(779, 'asus', 'Asus Vivobook 15 X515EA-EJ542WS Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 49490, 58, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(780, 'dell', 'Dell Inspiron 5430 IN5430YXVW9M01ORS1 Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 61990, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(781, 'hp', 'HP ProBook 445 G8 7K2J8PA Business Laptop (AMD Ryzen 7 5800U/ 8GB/ 512GB SSD/ FreeDOS)', 45899, 63, 'amd', 'ryzen 7', 8, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(782, 'hp', 'HP Pavilion 15s-fq5190TU Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 68489, 65, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(783, 'hp', 'HP Victus 15-fb0133AX Gaming Laptop (AMD Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 63314, 67, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(784, 'asus', 'Asus Vivobook 16 2023 M1605YA-MB521WS Laptop (Ryzen 5 7530U / 8GB/ 512GB SSD/ Win11 Home)', 48990, 63, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(785, 'lenovo', 'Lenovo V14 G3 82TSA01KIH Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Dos)', 31490, 50, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(786, 'hp', 'HP 14-ep0068TU Laptop (Core i3-N305/ 8GB/ 512GB SSD/ Win11 Home)', 38990, 47, 'intel', 'core i3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(787, 'hp', 'HP Victus 15-fb0136AX Gaming Laptop (AMD Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 64990, 66, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(788, 'acer', 'Acer One 14 Z2-493 Business Laptop (AMD Ryzen 5 / 8GB/ 512GB SSD/ Win11)', 32890, 56, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(789, 'msi', 'MSI Katana 15 B12UDXK-1017IN Gaming Laptop (12th Gen Core i7/ 8GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 91990, 75, 'intel', 'core i7', 10, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(790, 'msi', 'MSI Katana 15 B12UDXK-1019IN Gaming Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home/ 6GB Graph)', 87990, 75, 'intel', 'core i5', 8, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(791, 'acer', 'Acer One 14 Business Z2-493 Laptop (Ryzen 3 3250U/ 8GB/ 512GB SSD/ Win11)', 28999, 53, 'amd', 'ryzen 3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(792, 'hp', 'HP 15s-fq3071TU Laptop (Intel Celeron N4500/ 8GB/ 512GB SSD/ Win11 Home)', 29490, 50, 'intel', 'celeron', 2, 2, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 150, 1366, 768, 'windows', 1),
(793, 'hp', 'HP Victus 15-fb0135AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 61990, 64, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(794, 'asus', 'Asus Zenbook 14X OLED 2023 UM5401QA-KM751WS Laptop (Ryzen 7 5800HS / 16GB/ 1TB SSD/ Win11 Home)', 76990, 64, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(795, 'dell', 'Dell G15-5530 Gaming 2023 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ RTX 4060 8GB Graph)', 149290, 76, 'intel', 'core i7', 14, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(796, 'acer', 'Acer Aspire 5 A515-58P NX.KHJSI.001 Gaming Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 39990, 51, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(797, 'hp', 'HP Pavilion 15-eg3027TU Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 75533, 66, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(798, 'dell', 'DELL Inspiron 3530 Laptop (13th Gen Core i3/ 8GB/ 256GB SSD/ Win11 Home)', 43000, 52, 'intel', 'core i3', 8, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(799, 'dell', 'Dell G16-7630 Gaming Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 187990, 79, 'intel', 'core i9', 24, 32, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(800, 'dell', 'Dell G15-5530 Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ RTX 4050 6GB Graph)', 109990, 73, 'intel', 'core i7', 14, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(801, 'dell', 'Dell G15-5530 2023 Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ RTX 4050 6GB Graph)', 129990, 75, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(802, 'dell', 'Dell G15-5530 GN553064GRM002ORB1 Gaming Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11/ 6GB Graph)', 81402, 69, 'intel', 'core i5', 10, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(803, 'acer', 'Acer Aspire Vero AV14-52P NX.KJTSI.002 Laptop (13th Gen Core i3/ 16GB/ 512GB SSD/ Win11 Home)', 49990, 50, 'intel', 'core i3', 6, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(804, 'acer', 'Acer Aspire Vero AV14-52P NX.KJSSI.002 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 58269, 59, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(805, 'acer', 'Acer Aspire 5 A515-58M NX.KHGSI.002 Gaming Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 56490, 52, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(806, 'acer', 'Acer Aspire 5 A515-58M NX.KHFSI.001 Gaming Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 55900, 50, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(807, 'hp', 'HP Pavilion x360 14-ek1020TU Laptop (13th Gen Core i7/ 16GB/ 512 GB SSD/ Win11)', 92070, 71, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1080, 'windows', 1),
(808, 'asus', 'Asus Vivobook 15X 2023 K3504VAB-NJ321WS Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 39990, 54, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(809, 'msi', 'MSI Stealth 17 Studio A13VG-029IN Gaming Laptop (13th Gen Core i7/ 16GB/ 2TB SSD/ Win11 Home/ 8GB Gr', 279990, 85, 'intel', 'core i7', 14, 20, 16, 'SSD', 2048, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 2560, 1440, 'windows', 2),
(810, 'asus', 'Asus TUF A15 FA577RM-HQ032WS Laptop (Ryzen 7 6800H/ 16GB/ 1TB SSD/ Win11 Home/ 6GB Graph)', 104749, 71, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 2560, 1440, 'windows', 1),
(811, 'asus', 'Asus TUF Gaming F15 2023 FX507VU-LP083WS Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Hom', 126890, 73, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(812, 'asus', 'Asus ROG Zephyrus G14 2023 GA402XV-N2034WS Gaming Laptop (AMD Ryzen 9 7940HS/ 32GB/ 1TB SSD/ Win11/ ', 199990, 89, 'amd', 'ryzen 9', 8, 16, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2560, 1600, 'windows', 1),
(813, 'asus', 'Asus TUF Gaming A15 2023 FA577XU-LP041WS Gaming Laptop (AMD Ryzen 9 7940HS/ 16GB/ 1TB SSD/ Win11 Hom', 131990, 84, 'amd', 'ryzen 9', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(814, 'asus', 'Asus TUF Gaming F15 2023 FX507VU-LP091WS Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/', 133890, 75, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(815, 'asus', 'Asus TUF Gaming A15 2023 FA577XV-HQ036WS Gaming Laptop (AMD Ryzen 9 7940HS/ 16GB/ 1TB SSD/ Win11 Hom', 154990, 83, 'amd', 'ryzen 9', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 2560, 1440, 'windows', 1),
(816, 'lenovo', 'Lenovo IdeaPad Slim 5 82FG01B3IN Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 52900, 67, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(817, 'asus', 'Asus ROG Strix G16 2023 G614JU-N3221WS Gaming Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11/ 6GB Gr', 144406, 73, 'intel', 'core i5', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(818, 'asus', 'Asus TUF Gaming A15 FA577NU-LP082W Gaming Laptop (AMD Ryzen 7 7735HS/ 16GB/ 512GB SSD/ Win11/ 6GB Gr', 94990, 77, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(819, 'asus', 'Asus ROG Zephyrus G14 2023 GA402XZ-N2020WS Gaming Laptop (AMD Ryzen 9 7940HS/ 32GB/ 1TB SSD/ Win11/ ', 260990, 89, 'amd', 'ryzen 9', 8, 16, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2560, 1600, 'windows', 1),
(820, 'asus', 'Asus ROG Zephyrus G14 2023 GA402NU-N2023WS Gaming Laptop (AMD Ryzen 7 7735HS/ 16GB/ 1TB SSD/ Win11/ ', 149990, 76, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2560, 1600, 'windows', 1),
(821, 'asus', 'Asus TUF Gaming A17 FA777XU-HX026WS Gaming Laptop (AMD Ryzen 9 7940HS / 16GB/ 1TB SSD/ Win11 Home/ 6', 134990, 80, 'amd', 'ryzen 9', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 173, 1920, 1080, 'windows', 1),
(822, 'asus', 'Asus Vivobook 15X OLED M3504YA-LK541WS Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 60379, 67, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(823, 'lenovo', 'Lenovo IdeaPad 3 15IAU7 82RK00LWIN Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 52794, 58, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(824, 'asus', 'Asus ROG Flow Z13 2023 GZ301VV-MU014WS Gaming Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11 Home/ 8', 209890, 73, 'intel', 'core i9', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 1, 134, 2560, 1600, 'windows', 1),
(825, 'asus', 'Asus TUF Gaming F15 2023 FX507VV-LP071WS Gaming Laptop (13th Gen Core i9/ 16GB/1TB SSD/ Win11 Home/ ', 154990, 82, 'intel', 'core i9', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(826, 'asus', 'Asus Vivobook S15 2022 K3502ZA-KJ542WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 69990, 66, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(827, 'asus', 'Asus Vivobook 16X 2023 K3605ZC-MB541WS Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Gr', 84950, 72, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(828, 'hp', 'HP Victus 15-fa0092TX Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 69990, 65, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(829, 'acer', 'Acer Predator Helios 16 PH16-71 Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 8GB Graph)', 143400, 70, 'intel', 'core i7', 16, 24, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(830, 'asus', 'Asus Vivobook Pro 15 OLED K6502VU-MA541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 6GB', 113401, 75, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 2880, 1620, 'windows', 1),
(831, 'dell', 'Dell Alienware x14 R2 2023 Gaming Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win 11/ 8GB Graph)', 225490, 78, 'intel', 'core i7', 10, 16, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2560, 1600, 'windows', 1),
(832, 'dell', 'Dell Alienware m16 Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win 11/ 8GB Graph)', 220990, 83, 'intel', 'core i7', 16, 24, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(833, 'hp', 'HP 15-hr0000TU Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 67400, 57, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(834, 'hp', 'HP 15-hr0001TU Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 64990, 59, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(835, 'msi', 'MSI Thin GF63 12UCX-269IN Gaming Laptop (12th Gen Core i5/ 16GB/ 1TB 256GB SSD/ Win11 Home/ 4GB Grap', 76990, 69, 'intel', 'core i5', 8, 12, 16, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(836, 'msi', 'MSI Katana 15 B12UDXK-1006IN Gaming Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 72990, 71, 'intel', 'core i5', 8, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(837, 'acer', 'Acer Swift Go 14 SFG14-41 NX.KG3SI.003 Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 58990, 62, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(838, 'hp', 'HP 15s-eq1580AU Laptop (AMD Ryzen 3 3250U/ 8GB/ 512GB SSD/ Win11 Home)', 32990, 58, 'amd', 'ryzen 3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(839, 'hp', 'HP 15-fd0021TU Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 61490, 57, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(840, 'asus', 'Asus Vivobook S15 OLED 2023 S5504VA-MA741WS Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 105990, 66, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 2880, 1620, 'windows', 1);
INSERT INTO `myapp1_laptop` (`index`, `brand`, `model`, `price`, `rating`, `processor_brand`, `processor_tier`, `num_cores`, `num_threads`, `ram_memory`, `primary_storage_type`, `primary_storage_capacity`, `secondary_storage_type`, `secondary_storage_capacity`, `gpu_brand`, `gpu_type`, `is_touch_screen`, `display_size`, `resolution_width`, `resolution_height`, `os`, `year_of_warranty`) VALUES
(841, 'msi', 'MSI Thin GF63 12VE-267IN Gaming Laptop (12th Gen Core i5/ 16GB/ 1TB 256GB SSD/ Win11/6GB Graphics)', 86990, 73, 'intel', 'core i5', 8, 12, 16, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(842, 'asus', 'Asus Vivobook 16X 2023 K3605VC-MB951WS Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11 Home/ 4GB Grap', 111439, 76, 'intel', 'core i9', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 1),
(843, 'msi', 'MSI Stealth 16 Studio A13VG-030IN Gaming Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win11 Home/ 8GB Gr', 249990, 86, 'intel', 'core i7', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 2),
(844, 'asus', 'Asus Vivobook 14X 2023 K3405VF-LY541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/4 GB Graphic', 76619, 66, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 1920, 1200, 'windows', 1),
(845, 'acer', 'Acer Predator Helios Neo 16 PHN16-71 2023 Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11/ 8GB', 142999, 78, 'intel', 'core i7', 16, 24, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(846, 'asus', 'Asus Vivobook 14X OLED 2023 K3405VCB-KM542WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/4 GB G', 93999, 70, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2880, 1800, 'windows', 1),
(847, 'asus', 'Asus Vivobook Pro 15 OLED K6502VU-MA951WS Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11 Home/ 6GB G', 161513, 84, 'intel', 'core i9', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 2880, 1620, 'windows', 1),
(848, 'asus', 'Asus Zenbook Pro 14 Duo OLED 2023 UX8402VU-MZ551WS Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Ho', 199990, 71, 'intel', 'core i5', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 1, 145, 2880, 1800, 'windows', 1),
(849, 'hp', 'HP ProBook 440 G9 6J8T1PA Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 118000, 75, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(850, 'hp', 'HP 15-fd0024TU Laptop (13th Gen Core i7/ 16GB/ 512 GB SSD/ Win11 Home)', 79590, 66, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(851, 'msi', 'MSI GF63 Thin 11SC-1298IN Gaming Laptop (11th Gen Core i7/ 16GB/ 1TB 256GB SSD/ Win11/ 4GB Graph)', 63990, 71, 'intel', 'core i7', 8, 16, 16, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(852, 'asus', 'Asus VivoBook 15 X515EA-EJ342WS Laptop (11th Gen Core i3/ 16GB/ 512GB SSD/ Win11)', 35990, 56, 'intel', 'core i3', 2, 4, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(853, 'hp', 'HP 15s-fy5002TU Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 52990, 57, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(854, 'lenovo', 'Lenovo IdeaPad Gaming 3 15ACH6 82K2022XIN Laptop (AMD Ryzen 7-5800H/ 8GB/ 512GB SSD/ Win11 Home/ 4GB', 63190, 67, 'amd', 'ryzen 7', 8, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(855, 'lenovo', 'Lenovo Ideapad Gaming 3 15ACH6 82K20145IN Laptop (Ryzen 7 5800H/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Gr', 81000, 71, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(856, 'acer', 'Acer One 14 Z8-415 Laptop (11th Gen Core i5 / 8GB/ 512GB SSD/ Win11 Home)', 39990, 58, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(857, 'dell', 'Dell Alienware X16 R1 Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win 11/ 12GB Graph)', 388490, 82, 'intel', 'core i9', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 3200, 1800, 'windows', 1),
(858, 'hp', 'HP 15s-fy5003TU Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 40100, 54, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(859, 'dell', 'Dell Alienware M18 R1 Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win 11/ 12GB Graph)', 368490, 83, 'intel', 'core i9', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 180, 3200, 1800, 'windows', 1),
(860, 'acer', 'Acer One 11 Z8-284 UN.013SI.014 Laptop ( Intel Celeron N4500/ 8GB/ 256GB SSD/ Win11 Home)', 36800, 47, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 116, 1366, 768, 'windows', 1),
(861, 'hp', 'HP 15-fc0030AU Laptop (AMD Ryzen 5 7520U/ 16GB/ 512GB SSD/ Win11 Home)', 46490, 54, 'amd', 'ryzen 5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(862, 'acer', 'Acer 16 Predator Neo NH.QLTSI.001 Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 6GB Graph)', 104999, 65, 'intel', 'core i5', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(863, 'hp', 'HP 15-fd0018TU Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 47650, 51, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(864, 'acer', 'Acer Predator Helios Neo 16 NH.QLTSI.002 Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 6GB Graph', 114990, 66, 'intel', 'core i7', 16, 24, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(865, 'hp', 'HP 15-fd0006TU Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 46990, 51, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(866, 'hp', 'HP 15-fd0011TU Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 60490, 54, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(867, 'hp', 'HP Victus 15-fb0122AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 49990, 67, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(868, 'hp', 'HP 15-fd0012TU Laptop (13th Gen Core i5/ 8GB/ 1TB SSD/ Win11 Home)', 65590, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(869, 'realme', 'Realme Book Prime CloudPro002 Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 42990, 62, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2160, 1440, 'windows', 1),
(870, 'hp', 'HP ProBook 440 G8 5D6U3PA Notebook PC (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 71000, 67, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(871, 'asus', 'Asus VivoBook 15 X515MA-BR024WS Laptop (Celeron N4020/ 8GB/ 512GB SSD/ Win11 Home)', 30927, 45, 'intel', 'celeron', 2, 2, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(872, 'dell', 'Dell Vostro 15 3510 2023 Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 47990, 63, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(873, 'asus', 'Asus Vivobook 15 2023 X1504VA-NJ321WS Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 46288, 56, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(874, 'asus', 'Asus Vivobook Pro 16 OLED 2023 K6602VU-LZ542WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 6GB', 124990, 78, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 3200, 2000, 'windows', 1),
(875, 'dell', 'Dell Vostro 3420 Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 51990, 63, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(876, 'asus', 'Asus Vivobook Go 15 OLED 2023 E1504FA-LK545WS Laptop (Ryzen 5 7520U / 16GB/ 512GB SSD/ Win11 Home)', 58990, 60, 'amd', 'ryzen 5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(877, 'dell', 'Dell Vostro 3425 Laptop (AMD Ryzen 5-5500U/ 8GB/ 512GB SSD/ Win11 Home)', 38490, 59, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(878, 'acer', 'Acer Aspire 5 A515-56G Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 2GB Graph)', 44994, 64, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(879, 'acer', 'Acer Nitro 5 AN515-46 Gaming Laptop (Ryzen 5 6600H/ 16GB/ 1TB SSD/ Win11 Home/ 4GB Graph)', 88990, 65, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 2560, 1440, 'windows', 1),
(880, 'msi', 'MSI Thin GF63 12VF-268IN Laptop (12th Gen Core i5/ 16GB/ 1TB 256GB SSD/ Win11/ 8GB Graph)', 96990, 77, 'intel', 'core i5', 8, 12, 16, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(881, 'asus', 'Asus VivoBook 14 X1400EA-EK322WS Notebook (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 31990, 59, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(882, 'asus', 'Asus Zenbook 14 Flip OLED 2023 UP3404VA-KN742WS Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Hom', 132000, 73, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 2880, 1800, 'windows', 1),
(883, 'asus', 'Asus Zenbook 14 OLED 2023 UX3402VA-KN741WS Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 115990, 73, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(884, 'asus', 'Asus Vivobook 14X OLED 2023 K3405VFB-KM541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11/4 GB G', 89990, 70, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 2880, 1800, 'windows', 1),
(885, 'hp', 'HP Victus 15-fa1066TX Gaming Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/ 6GB Graph)', 109990, 71, 'intel', 'core i7', 14, 20, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(886, 'msi', 'MSI Summit E13 Flip Evo A11MT-213IN Laptop (11th Gen Core i7/ 16GB/ 512GB SSD/ Win10)', 81990, 65, 'intel', 'core i7', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 134, 1920, 1200, 'windows', 2),
(887, 'hp', 'HP Pavilion 15-eg2017TU Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 52590, 60, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(888, 'asus', 'Asus Zenbook 14 OLED 2023 UX3402VA-KN541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 91240, 75, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 2880, 1800, 'windows', 1),
(889, 'asus', 'Asus Vivobook 16 2023 X1605VAB-MB544WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 62990, 59, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(890, 'msi', 'MSI Summit E13 Flip Evo A11MT-214IN Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win10)', 69990, 70, 'intel', 'core i5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 134, 1920, 1200, 'windows', 2),
(891, 'hp', 'HP Victus 16-d0333TX Gaming Laptop (11th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 64500, 75, 'intel', 'core i5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 1920, 1080, 'windows', 1),
(892, 'asus', 'Asus Vivobook Flip 14 2023 TP3402VAB-LZ542WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 71938, 64, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(893, 'hp', 'HP Victus 15-fb0121AX Gaming Laptop (AMD Ryzen 5 5600H/ 8GB/ 512GB SSD/ Win11/ 4GB Graph)', 51990, 67, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(894, 'hp', 'HP 15s-fq2738TU Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win 11 Home)', 33989, 56, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(895, 'asus', 'Asus Vivobook 15 X1502ZA-EJ953WS Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11)', 39790, 52, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(896, 'hp', 'HP Omen 16-n0123AX Gaming Laptop (AMD Ryzen 7 6800H/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 119990, 77, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 161, 2560, 1440, 'windows', 1),
(897, 'msi', 'MSI Raider GE68HX 13VG-027IN Gaming Laptop (13th Gen Core i9/ 32GB/ 2TB SSD/ Win11 Home/ 8GB Graph)', 260990, 89, 'intel', 'core i9', 24, 24, 32, 'SSD', 2048, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 2),
(898, 'asus', 'Asus Vivobook Go 14 E1404GA-NK322WS Laptop (Intel Core i3-N305/ 8GB/ 512GB SSD/ Win11 Home)', 38980, 48, 'intel', 'core i3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(899, 'asus', 'Asus Vivobook 15 2023 X1504VA-NJ523WS Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 55990, 59, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(900, 'msi', 'MSI Thin GF63 12UCX-265IN Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 65190, 65, 'intel', 'core i5', 8, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(901, 'msi', 'MSI GF63 Thin 11UC-1295IN Gaming Laptop (11th Gen Core i5/ 16GB/ 1TB 256GB SSD/ Win11 Home/ 4GB Grap', 72990, 71, 'intel', 'core i5', 6, 12, 16, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(902, 'acer', 'Acer Nitro 5 AN515-47 2023 Gaming Laptop (AMD Ryzen 5 7535HS/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 68990, 73, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(903, 'acer', 'Acer Predator Helios 16 PH16-71 Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win11/ 8GB Graph)', 200090, 74, 'intel', 'core i7', 16, 24, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(904, 'acer', 'Acer Nitro 5 AN515-47 Gaming Laptop (AMD Ryzen 7 7735HS/ 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 77890, 72, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(905, 'msi', 'MSI Stealth 16 Studio A13VF-023IN Gaming Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win11 Home/ 8GB Gr', 219990, 84, 'intel', 'core i7', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 2560, 1600, 'windows', 2),
(906, 'lenovo', 'Lenovo ThinkPad P14s 21AKS02800 Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Pro/ 4GB Graphics)', 123271, 78, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 140, 1920, 1080, 'windows', 3),
(907, 'asus', 'Asus Vivobook 15X OLED 2023 K3504VA-LK552WS Laptop (13th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home)', 70990, 63, 'intel', 'core i5', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(908, 'msi', 'MSI Raider GE68HX 13VG-026IN Gaming Laptop (13th Gen Core i7/ 32GB/ 2TB SSD/ Win11 Home/ 8GB Graph)', 215990, 87, 'intel', 'core i7', 16, 24, 32, 'SSD', 2048, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 2),
(909, 'msi', 'MSI Stealth 14 Studio A13VF-037IN Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Gr', 171990, 80, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 2560, 1600, 'windows', 2),
(910, 'msi', 'MSI GF63 Thin 11UC-1297IN Gaming Laptop (11th Gen Core i5/ 8GB/ 1TB 256GB SSD/ Win11 Home/ 4GB Graph', 69990, 70, 'intel', 'core i5', 6, 12, 8, 'HDD', 1024, 'SSD', 256, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 0),
(911, 'asus', 'Asus Vivobook 15X 2023 K3504VAB-NJ541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 62500, 56, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(912, 'asus', 'Asus Vivobook 16 2023 X1605VA-MB541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 68800, 62, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(913, 'hp', 'HP Spectre x360 2023 13.5-ef2034TU Laptop (13th Gen Core i7/ 32GB/ 1TB SSD/ Win11 Home)', 143824, 75, 'intel', 'core i7', 10, 12, 32, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 135, 3000, 2000, 'windows', 1),
(914, 'asus', 'Asus Vivobook S15 OLED 2023 K5504VA-LK542WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 85990, 60, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(915, 'asus', 'Asus VivoBook 14 2023 X1404VA-NK321WS Laptop (13th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 45990, 57, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(916, 'asus', 'Asus VivoBook 14 2023 X1404VA-NK522WS Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 59990, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(917, 'asus', 'Asus Zenbook 14 Flip OLED 2023 UP3404VA-KN542WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Hom', 104990, 71, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 2880, 1800, 'windows', 1),
(918, 'asus', 'Asus Vivobook 15X OLED 2023 K3504VA-LK542WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 68390, 64, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(919, 'asus', 'Asus Zenbook S13 OLED 2023 UX5304VA-NQ542WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 97990, 64, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 133, 2880, 1800, 'windows', 1),
(920, 'asus', 'Asus Zenbook 14 OLED 2023 UX3402VA-KM541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 92990, 70, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(921, 'asus', 'Asus Vivobook 15 2023 X1502VA-NJ541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11)', 64990, 62, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(922, 'asus', 'Asus Vivobook 15 OLED 2023 X1505VA-LK542WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 74990, 60, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(923, 'asus', 'Asus Vivobook Go 15 OLED 2023 E1504GA-LK322WS Laptop (Intel Core i3-N305/ 8GB/ 512GB SSD/ Win11 Home', 43990, 53, 'intel', 'core i3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(924, 'dell', 'Dell Inspiron 3525 D560771WIN9S Laptop (AMD Ryzen 5 5625U/ 8GB/ 512GB SSD/ Win11)', 44990, 62, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(925, 'asus', 'Asus VivoBook 14 2023 X1404VA-NK541WS Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 63990, 58, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(926, 'asus', 'Asus Vivobook Go 15 2023 E1504GA-NJ322WS Laptop (Intel Core i3-N305/ 8GB/ 512GB SSD/ Win11 Home)', 39242, 51, 'intel', 'core i3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(927, 'asus', 'Asus Zenbook 14 Flip OLED 2023 UP3404VA-KN753WS Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)', 129990, 74, 'intel', 'core i7', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 140, 2880, 1800, 'windows', 1),
(928, 'asus', 'Asus Vivobook S14 Flip 2022 TN3402QA-LZ520WS Laptop (AMD Ryzen 5-5600H/ 8GB/ 512GB SSD/Win11)', 58990, 62, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(929, 'lenovo', 'Lenovo V15 82QYA00MIN Laptop (Celeron N4020/ 8GB/ 256GB SSD/ Win11 Home)', 22239, 47, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(930, 'hp', 'HP 255 G9 7B1L8PA Laptop (AMD Ryzen 5 5625U/ 8GB/ 512 GB SSD/ Win11 Home)', 37490, 64, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(931, 'dell', 'Dell Vostro 3420 D552317WIN9B Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11)', 55900, 59, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(932, 'msi', 'MSI Bravo 15 B5ED-035IN Gaming Laptop (AMD Ryzen 7 / 16GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 61990, 72, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(933, 'hp', 'HP Spectre x360 16-f2002TU Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)', 145899, 79, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 160, 3072, 1920, 'windows', 1),
(934, 'hp', 'HP Spectre x360 2023 13.5-ef2033TU Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home)', 138511, 72, 'intel', 'core i7', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 135, 3000, 2000, 'windows', 1),
(935, 'lenovo', 'Lenovo V15 G2 IJL 82QYA00HIN Laptop (Celeron N4500/ 8GB/ 256GB SSD/ DOS)', 21990, 43, 'intel', 'celeron', 2, 2, 8, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(936, 'honor', 'Honor MagicBook 15 BMH-WFQ9HN Laptop (AMD Ryzen 5 5500U/ 16GB/ 512GB SSD/ Win11)', 43990, 59, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(937, 'acer', 'Acer Aspire 7 A715-75G Gaming Laptop (10th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home/ 4GB Graph)', 45990, 59, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(938, 'acer', 'Acer Aspire 3 15 A315-510P Laptop (Intel Core i3 N305/ 8GB/ 512GB SSD/ Win11 Home)', 32990, 50, 'intel', 'core i3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(939, 'acer', 'Acer Aspire 3 14 A314-36M Laptop (Intel Core i3 N305/ 8GB/ 512GB SSD/ Win11 Home)', 32090, 44, 'intel', 'core i3', 8, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(940, 'acer', 'Acer Predator Helios 16 NH.QJRSI.003 Laptop (13th Gen Core i9/ 16GB/ 1TB SSD/ Win11/ 8GB Graph)', 184999, 71, 'intel', 'core i9', 24, 32, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(941, 'acer', 'Acer Predator Helios 16 Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win11/ 12GB Graph)', 249990, 77, 'intel', 'core i9', 24, 32, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(942, 'lenovo', 'Lenovo V14-IGL 82C40185PB Laptop (Celeron N4020/ 4GB/ 256GB SSD/ DOS)', 21990, 45, 'intel', 'celeron', 2, 2, 4, 'SSD', 256, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(943, 'lenovo', 'Lenovo V14 82KAA04QIH Laptop (11th Gen Core i5/ 8GB/ 512GB SSD/ DOS)', 45990, 58, 'intel', 'core i5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1366, 768, 'dos', 1),
(944, 'lenovo', 'Lenovo ThinkBook 15 G3 21A4A08WIH Laptop (AMD Ryzen 3 5300U/ 8 GB/ 512 GB SSD/ Win11 Home)', 33490, 56, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(945, 'lenovo', 'Lenovo V15 G2 82KDA022IH Laptop (AMD Ryzen 5 5500U/ 8GB/ 512GB SSD/ Win11 Home)', 35890, 56, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(946, 'asus', 'Asus Vivobook Pro 15 OLED M3500QC-L1712WS Laptop (Ryzen 7 5800H/ 16GB/ 1TB SSD/ Win11/ 4GB Graph)', 79500, 67, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(947, 'fujitsu', 'Fujitsu FMV MH 4ZR1K10326 Laptop (AMD Ryzen 7 5825U/ 16GB/ 512GB SSD/ Win11)', 56494, 70, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 2),
(948, 'hp', 'HP 15s-eq2223AU Laptop (AMD Ryzen 5 5500U/ 8GB/ 512GB SSD/ Win11 Home)', 43190, 58, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(949, 'msi', 'MSI Modern 15 B7M-072IN Laptop (Ryzen 5 7530U/ 8GB/ 512GB SSD/ Win11)', 43990, 53, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(950, 'dell', 'Dell XPS 9315 D560076WIN9S Laptop (12th Gen Core i5 / 16GB/ 512GB SSD/ Win11)', 119600, 68, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 130, 1920, 1080, 'windows', 1),
(951, 'acer', 'Acer Aspire 3 A315-24P Laptop (Ryzen 3 7520U/ 8GB/ 256GB SSD/ Win11 Home)', 27990, 52, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 256, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(952, 'lenovo', 'Lenovo IdeaPad 3 15ITL6 82H803DNIN Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 36490, 60, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(953, 'msi', 'MSI Modern 15 B7M-071IN Laptop (AMD Ryzen 5-7530U/ 16GB/ 512GB SSD/ Win11)', 48990, 54, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(954, 'lenovo', 'Lenovo Thinkpad E15 21E6S05A00 Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)', 45990, 66, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(955, 'lenovo', 'Lenovo Thinkpad E15 21E6S05G00 Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ DOS)', 65999, 55, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(956, 'dell', 'Dell Vostro 5620 M552319WIN9S Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11/ 2GB Graph)', 87990, 72, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1080, 'windows', 1),
(957, 'lenovo', 'Lenovo E41-55 82FJ00A0IH Laptop (AMD Ryzen 3 3250U/ 8GB/ 1TB HDD/ DOS)', 33990, 52, 'amd', 'ryzen 3', 2, 4, 8, 'HDD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(958, 'asus', 'Asus Vivobook Go 15 OLED 2023 E1504FA-LK541WS Laptop (Ryzen 5 7520U / 16GB/ 512GB SSD/ Win11 Home)', 50785, 59, 'amd', 'ryzen 5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(959, 'hp', 'HP Pavilion 15s-fq5013nia Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 57990, 59, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'windows', 1),
(960, 'lenovo', 'Lenovo Thinkpad P16s 21BTS02000 Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Pro/ 4GB Graph)', 146271, 75, 'intel', 'core i7', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 1920, 1200, 'windows', 3),
(961, 'hp', 'HP 247 G8 Laptop (AMD Ryzen 3 3500U/ 8GB/ 512GB SSD/Win11)', 32890, 52, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1366, 768, 'windows', 1),
(962, 'lenovo', 'Lenovo ThinkBook 14 20VDA0V1IH Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ DOS)', 43500, 54, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(963, 'asus', 'Asus Vivobook 14 OLED 2023 M1405YA-KM541WS Laptop (AMD Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 61900, 67, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(964, 'hp', 'HP Chromebook x360 13b-ca0006MU Laptop (MediaTek Kompanio 1200/ 8GB/ 256 GB SSD/ Chrome OS)', 39551, 43, 'other', 'other', 8, 0, 8, 'SSD', 256, 'No secondary storage', 0, 'arm', 'integrated', 1, 133, 1920, 1080, 'chrome', 1),
(965, 'hp', 'HP Chromebook 15a-na0012TU Laptop (Intel Celeron N4500/ 4GB/ 128GB eMMC/ Chrome OS)', 20990, 37, 'intel', 'celeron', 2, 2, 4, 'HDD', 128, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'chrome', 1),
(966, 'lenovo', 'Lenovo V14 82KAA08BIH Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Dos)', 30990, 50, 'intel', 'core i3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'dos', 1),
(967, 'hp', 'HP 255 G8 689T4PA Laptop (Ryzen 3 3250U/ 8GB/512GB SSD/ Win11 Home)', 26999, 59, 'amd', 'ryzen 3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(968, 'lenovo', 'Lenovo V15 G3 82TTA01EIN Laptop (12th Gen Core i3/ 8GB/ 512GB SSD/ DOS)', 32200, 48, 'intel', 'core i3', 6, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'dos', 1),
(969, 'asus', 'Asus ROG Zephyrus M16 2023 GU604VZ-NM050WS Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win11 / 12GB Gra', 249990, 89, 'intel', 'core i9', 14, 20, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(970, 'asus', 'Asus Vivobook Go 14 2023 E1404FA-NK522WS Laptop (Ryzen 5 7520U / 8GB/ 512GB SSD/ Win11)', 44970, 58, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(971, 'asus', 'Asus Vivobook Go 14 2023 E1404FA-NK542WS Laptop (Ryzen 5 7520U / 16GB/ 512GB SSD/ Win11)', 45690, 59, 'amd', 'ryzen 5', 4, 8, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(972, 'lenovo', 'Lenovo Thinkbook 15 21DJA0D9IH Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11 Home)', 59990, 64, 'intel', 'core i5', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(973, 'msi', 'MSI Modern 14 C7M-063IN Laptop (Ryzen 5 7530U/ 8GB/ 512GB SSD/ Win11)', 41990, 60, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(974, 'hp', 'HP 247 G8 796Z3PA Laptop (AMD Ryzen 3 3250U/ 8GB/ 512GB SSD/ DOS)', 30999, 47, 'amd', 'ryzen 3', 2, 4, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1366, 768, 'dos', 1),
(975, 'acer', 'Acer Nitro 5 AN515-58 UN.QFHSI.002 Gaming Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11/ 4GB Grap', 76499, 71, 'intel', 'core i5', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(976, 'msi', 'MSI Modern 14 C12M-440IN Laptop (12th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 37990, 58, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(977, 'msi', 'MSI Modern 14 C12M-439IN Laptop (12th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 47490, 59, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(978, 'msi', 'MSI Prestige 13 Evo A13M-063IN Laptop(13th Gen Core i7/ 16 GB/ 1TB SSD/Win11 Home)', 92990, 72, 'intel', 'core i7', 12, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 133, 1920, 1200, 'windows', 2),
(979, 'msi', 'MSI Sword 15 A12UDX-468IN Gaming Laptop (12th Gen Core i5/ 16GB/ 1TB SSD/ Win11/ 6GB Graph)', 82990, 74, 'intel', 'core i5', 8, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(980, 'acer', 'Acer Aspire 3 A315-24P NX.KDESI.003 Laptop (Ryzen 3 7520U/ 8GB/ 512GB SSD/ Win11 Home)', 29990, 54, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(981, 'asus', 'Asus Vivobook Go 14 2023 E1404FA-NK322WS Laptop (Ryzen 3 7320U / 8GB/ 512GB SSD/ Win11 Home)', 32190, 53, 'amd', 'ryzen 3', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(982, 'asus', 'Asus Vivobook Pro 15 M6500QC-HN742WS Laptop (Ryzen 7 5800H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 68990, 72, 'amd', 'ryzen 7', 8, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(983, 'lg', 'LG Gram 16T90Q-G.AH75A2 Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11)', 118499, 72, 'intel', 'core i7', 12, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 1, 160, 2560, 1600, 'windows', 1),
(984, 'msi', 'MSI Prestige 14 Evo B13M-279IN Laptop(13th Gen Core i7/ 16 GB/ 1TB SSD/Win11 Home)', 87391, 67, 'intel', 'core i7', 14, 20, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1200, 'windows', 2),
(985, 'acer', 'Acer Nitro 5 AN515-47 NH.QL3SI.001 Gaming Laptop (AMD Ryzen 5 7535HS/ 8GB/ 512GB SSD/ Win11/ 4GB Gra', 68999, 71, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(986, 'msi', 'MSI Modern 15 B13M-289IN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 50591, 59, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(987, 'msi', 'MSI Modern 14 C13M-435IN Laptop (13th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home)', 60990, 61, 'intel', 'core i7', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(988, 'asus', 'Asus ROG Strix SCAR 16 2023 G634JZ-N4062WS Gaming Laptop (13th Gen Core i9/ 32GB/ 1TB SSD/ Win11 Hom', 279990, 83, 'intel', 'core i9', 24, 32, 32, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 160, 2560, 1600, 'windows', 1),
(989, 'msi', 'MSI Modern 14 C13M-436IN Laptop (13th Gen Core i5/ 16GB/ 512GB SSD/ Win11 Home)', 53990, 58, 'intel', 'core i5', 10, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(990, 'msi', 'MSI Modern 14 C13M-437IN Laptop (13th Gen Core i5/ 8GB/ 512GB SSD/ Win11 Home)', 40990, 56, 'intel', 'core i5', 10, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'intel', 'integrated', 0, 140, 1920, 1080, 'windows', 1),
(991, 'hp', 'HP Spectre x360 14-ef0075TU Laptop (12th Gen Core i7/ 16GB/ 1TB SSD/ Win11)', 154999, 73, 'intel', 'core i7', 10, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'intel', 'integrated', 1, 135, 3000, 2000, 'windows', 1),
(992, 'asus', 'Asus Vivobook Flip 14 2023 TN3402YAB-LZ522WS Laptop (Ryzen 5 7530U/ 8GB/ 512GB SSD/ Win11 Home)', 54990, 68, 'amd', 'ryzen 5', 6, 12, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 1, 140, 1920, 1200, 'windows', 1),
(993, 'msi', 'MSI Katana 15 B13VFK-296IN Gaming Laptop (13th Gen Core i7/ 16GB/ 1TB SSD/ Win11 Home/ 8GB Graph)', 119990, 76, 'intel', 'core i7', 10, 16, 16, 'SSD', 1024, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(994, 'asus', 'Asus Zenbook 14 OLED 2023 UM3402YA-KM551WS Laptop (Ryzen 5 7530U / 16GB/ 1TB SSD/ Win11 Home)', 77990, 68, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 2880, 1800, 'windows', 1),
(995, 'asus', 'Asus Vivobook 16 2023 M1605YA-MB551WS Laptop (Ryzen 5 7530U / 16GB/ 1TB SSD/ Win11 Home)', 66990, 65, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 1024, 'No secondary storage', 0, 'amd', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(996, 'asus', 'Asus Vivobook 16 2023 M1605YA-MB541WS Laptop (Ryzen 5 7530U / 16GB/ 512GB SSD/ Win11 Home)', 59990, 64, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 160, 1920, 1200, 'windows', 1),
(997, 'acer', 'Acer Nitro 5 AN515-47 NH.QL3SI.003 Gaming Laptop (AMD Ryzen 7 7735HS/ 8GB/ 512GB SSD/ Win11 Home/ 4G', 75500, 67, 'amd', 'ryzen 7', 8, 16, 8, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(998, 'asus', 'Asus Vivobook Pro 15 M6500QC-HN542WS Laptop (Ryzen 5 5600H/ 16GB/ 512GB SSD/ Win11/ 4GB Graph)', 65990, 68, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 1),
(999, 'msi', 'MSI Thin GF63 12VE-070IN Gaming Laptop (12th Gen Core i7/ 16GB/ 512GB SSD/ Win11 Home/6GB Graphics)', 91990, 73, 'intel', 'core i7', 10, 16, 16, 'SSD', 512, 'No secondary storage', 0, 'nvidia', 'dedicated', 0, 156, 1920, 1080, 'windows', 2),
(1000, 'asus', 'Asus Vivobook Go 15 2023 E1504FA-NJ522WS Laptop (Ryzen 5 7520U / 8GB/ 512GB SSD/ Win11 Home)', 44990, 59, 'amd', 'ryzen 5', 4, 8, 8, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 156, 1920, 1080, 'windows', 1),
(1001, 'asus', 'Asus Zenbook 14 2023 UM3402YA-KP541WS Laptop (Ryzen 5 7530U/ 16GB/ 512GB SSD/ Win11 Home)', 67990, 68, 'amd', 'ryzen 5', 6, 12, 16, 'SSD', 512, 'No secondary storage', 0, 'amd', 'integrated', 0, 140, 2560, 1600, 'windows', 1),
(1002, 'hp', 'HP Chromebook 15a-na0008TU Laptop (Intel Celeron N4500/ 4GB/ 128GB eMMC/ Chrome OS)', 20990, 37, 'intel', 'celeron', 2, 2, 4, 'HDD', 128, 'No secondary storage', 0, 'intel', 'integrated', 0, 156, 1366, 768, 'chrome', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp1_software`
--

CREATE TABLE `myapp1_software` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `software` varchar(100) NOT NULL,
  `cpu_intel` varchar(100) DEFAULT NULL,
  `cpu_amd` varchar(100) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `ssd` int(11) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `myapp1_software`
--

INSERT INTO `myapp1_software` (`id`, `software`, `cpu_intel`, `cpu_amd`, `ram`, `ssd`, `tipo`) VALUES
(1, 'AutoCAD', 'core i7', 'ryzen 7', 16, 512, 1),
(2, 'Blender', 'core i5', 'ryzen 5', 16, 512, 1),
(3, 'Fusion', 'core i7', 'ryzen 7', 16, 512, 1),
(4, 'Office 365', 'core i3', 'ryzen 3', 4, 256, 3),
(5, 'Visual Studio', 'core i7', 'ryzen 7', 16, 512, 2),
(6, 'Visual Studio Code', 'core i3', 'ryzen 3', 8, 256, 2),
(7, 'Arena', 'core i7', 'ryzen 7', 16, 512, 2),
(8, 'Unity', 'core i7', 'ryzen 7', 16, 512, 2),
(9, 'DaVinci Resolve', 'core i7', 'ryzen 7', 16, 512, 1),
(10, 'OBS', 'core i5', 'ryzen 5', 8, 512, 0),
(11, 'Arduino IDE', 'core i3', 'ryzen 3', 8, 256, 2),
(12, 'Android Studio', 'core i7', 'ryzen 7', 16, 512, 2),
(13, 'Google Chrome', 'core i3', 'ryzen 3', 8, 256, 5),
(14, 'XAMP', 'core i3', 'ryzen 3', 8, 512, 2),
(15, 'Virtual Box', 'core i5', 'ryzen 5', 8, 512, 6),
(16, 'GitHub', 'core i3', 'ryzen 3', 8, 256, 2),
(17, 'Krita', 'core i5', 'ryzen 5', 8, 512, 1),
(18, 'PyCharm', 'core i7', 'ryzen 7', 16, 512, 2),
(19, 'Revit', 'core i7', 'ryzen 7', 16, 512, 1),
(20, 'MATLAB', 'core i7', 'ryzen 7', 16, 512, 2),
(21, 'Multism', 'core i5', 'ryzen 5', 8, 512, 2),
(22, 'Eclipse', 'core i5', 'ryzen 5', 8, 512, 2),
(23, 'Zoom', 'core i3', 'ryzen 3', 8, 256, 0),
(24, 'GitLab', 'core i3', 'ryzen 3', 8, 256, 2),
(25, 'LOL', 'core i5', 'ryzen 5', 8, 256, 4),
(26, 'Fornite', 'core i5', 'ryzen 5', 8, 512, 4),
(27, 'CSGO', 'core i5', 'ryzen 5', 8, 512, 4),
(28, 'FIFA', 'core i5', 'ryzen 5', 8, 512, 4),
(29, 'Valorant', 'core i3', 'ryzen 3', 8, 256, 4),
(30, 'Minecraft', 'core i5', 'ryzen 5', 8, 512, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `myapp1_laptop`
--
ALTER TABLE `myapp1_laptop`
  ADD PRIMARY KEY (`index`);

--
-- Indices de la tabla `myapp1_software`
--
ALTER TABLE `myapp1_software`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `myapp1_software`
--
ALTER TABLE `myapp1_software`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
