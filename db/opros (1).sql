-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 07 2022 г., 04:55
-- Версия сервера: 5.6.43
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `opros`
--

-- --------------------------------------------------------

--
-- Структура таблицы `hisobot`
--

CREATE TABLE `hisobot` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `v_name` varchar(255) NOT NULL,
  `s_id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ans_1` varchar(100) NOT NULL,
  `ans_2` varchar(100) NOT NULL,
  `ans_3` varchar(100) NOT NULL,
  `ans_4` varchar(100) NOT NULL,
  `ans_5` varchar(100) NOT NULL,
  `ans_6` varchar(100) NOT NULL,
  `ans_7` varchar(100) NOT NULL,
  `ans_8` varchar(100) NOT NULL,
  `ans_9` varchar(100) NOT NULL,
  `ans_10` varchar(100) NOT NULL,
  `ans_11` varchar(100) NOT NULL,
  `ans_12` varchar(100) NOT NULL,
  `ans_13` varchar(100) NOT NULL,
  `ans_14` varchar(100) NOT NULL,
  `ans_15` varchar(100) NOT NULL,
  `ans_16` varchar(100) NOT NULL,
  `ans_17` varchar(100) NOT NULL,
  `ans_18` varchar(100) NOT NULL,
  `ans_19` varchar(100) NOT NULL,
  `ans_20` varchar(100) NOT NULL,
  `subject` text NOT NULL,
  `createDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hisobot`
--

INSERT INTO `hisobot` (`id`, `ip`, `v_name`, `s_id`, `fullName`, `phoneNumber`, `address`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `ans_5`, `ans_6`, `ans_7`, `ans_8`, `ans_9`, `ans_10`, `ans_11`, `ans_12`, `ans_13`, `ans_14`, `ans_15`, `ans_16`, `ans_17`, `ans_18`, `ans_19`, `ans_20`, `subject`, `createDate`) VALUES
(31, '127.0.0.1', 'Тошкент', 1, NULL, NULL, NULL, 'Ҳа, мавжуд', 'Бундай ҳолатлар мавжуд эмас', 'Ҳа', 'Совға сўраш (талаб қилиш), бериш', 'Мониторинг, текширув, назорат тадбирлари ўтказиш давомида', 'Коррупцион ҳолатлар камайди', 'Ҳа биламан', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1646485061),
(32, '127.0.0.1', 'Тошкент вилояти', 1, NULL, NULL, NULL, 'Йўқ, мавжуд эмас', 'Бундай ҳолатлар мавжуд эмас', 'Ҳа', 'Пул маблағлари кўринишида пора талаб қилиш', 'Махсулотни рўйхатдан ўтказиш жараёнида', 'Коррупцион ҳолатлар кўпайди', 'Йўқ билмайман', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1646485081),
(33, '127.0.0.1', 'Сурхондарё вилояти', 1, NULL, NULL, NULL, 'Жавоб беришга қийналаман', 'Паст даражада', 'Ҳа', 'Ёрдам эвазига турли хизматлар талаб қилиш', 'Фаолиятга оид зарур ахборотларни тақдим этиш жараёнида', 'Коррупцион ҳолатлар камайди', 'Йўқ билмайман', '', '', '', '', '', '', '', '', '', '', '', '', '', 'qq', 1646485945),
(34, '127.0.0.1', 'Сирдарё вилояти', 1, NULL, NULL, NULL, 'Жавоб беришга қийналаман', 'Бундай ҳолатлар мавжуд эмас', 'Йўқ', 'Совға сўраш (талаб қилиш), бериш', 'Фаолиятни лицензиялаш жараёнида', 'Коррупцион ҳолатлар кўпайди', 'Ҳа биламан', '', '', '', '', '', '', '', '', '', '', '', '', '', 'aa', 1646486030),
(35, '127.0.0.1', 'Тошкент вилояти', 2, NULL, NULL, NULL, 'Ҳа', 'Қизиқмайман', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'цйц', 1646487839),
(36, '127.0.0.1', 'Жиззах вилояти', 2, NULL, NULL, NULL, 'Йўқ', 'Қизиқаман', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'қффқв', 1646487856),
(37, '127.0.0.1', 'Навоий вилояти', 2, NULL, NULL, NULL, 'Ҳа', 'Қизиқмайман', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'фқвқфв', 1646487867),
(38, '127.0.0.1', 'Самарқанд вилояти', 2, NULL, NULL, NULL, 'Йўқ', 'Мени соҳам бошқа', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'қфвқф', 1646487877),
(39, '127.0.0.1', 'Тошкент вилояти', 3, NULL, NULL, NULL, 'Ha', 'Juda zo`r', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'OK', 1646557090),
(40, '127.0.0.1', 'Қашқадарё вилояти', 3, NULL, NULL, NULL, 'Yo`q', 'Yaxshi emas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BAD', 1646557113);

-- --------------------------------------------------------

--
-- Структура таблицы `javoblar`
--

CREATE TABLE `javoblar` (
  `id` int(11) NOT NULL,
  `sorov_id` int(11) NOT NULL,
  `savol_id` int(11) NOT NULL,
  `javob` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `javoblar`
--

INSERT INTO `javoblar` (`id`, `sorov_id`, `savol_id`, `javob`, `count`, `percent`) VALUES
(1, 1, 1, 'Ҳа, мавжуд', 1, 25),
(2, 1, 1, 'Йўқ, мавжуд эмас', 1, 25),
(3, 1, 1, 'Жавоб беришга қийналаман', 2, 50),
(4, 1, 2, 'Бундай ҳолатлар мавжуд эмас', 3, 75),
(5, 1, 2, 'Юқори даражада', 0, 0),
(6, 1, 2, 'Паст даражада', 1, 25),
(7, 1, 3, 'Ҳа', 3, 75),
(8, 1, 3, 'Йўқ', 1, 25),
(9, 1, 4, 'Совға сўраш (талаб қилиш), бериш', 2, 50),
(10, 1, 4, 'Пул маблағлари кўринишида пора талаб қилиш', 1, 25),
(11, 1, 4, 'Ёрдам эвазига турли хизматлар талаб қилиш', 1, 25),
(12, 1, 5, 'Мониторинг, текширув, назорат тадбирлари ўтказиш давомида', 1, 25),
(13, 1, 5, 'Махсулотни рўйхатдан ўтказиш жараёнида', 1, 25),
(14, 1, 5, 'Фаолиятни лицензиялаш жараёнида', 1, 25),
(15, 1, 5, 'Эркин иқтисодий зоналарда ер ажратиш жараёнида', 0, 0),
(16, 1, 5, 'Маҳсулотларни сертификатлаштириш давомида', 0, 0),
(17, 1, 5, 'Фаолиятга оид зарур ахборотларни тақдим этиш жараёнида', 1, 25),
(18, 1, 6, 'Коррупцион ҳолатлар камайди', 2, 50),
(19, 1, 6, 'Коррупцион ҳолатлар кўпайди', 2, 50),
(20, 1, 6, 'Соҳада коррупцияга чек қўйилган', 0, 0),
(21, 1, 7, 'Ҳа биламан', 2, 50),
(22, 1, 7, 'Йўқ билмайман', 2, 50),
(23, 2, 8, 'Ҳа', 3, 75),
(24, 2, 8, 'Йўқ', 1, 25),
(25, 2, 9, 'Қизиқаман', 1, 25),
(26, 2, 9, 'Қизиқмайман', 2, 50),
(27, 2, 9, 'Мени соҳам бошқа', 1, 25),
(28, 3, 10, 'Ha', 1, 50),
(29, 3, 10, 'Yo`q', 1, 50),
(30, 3, 11, 'Juda zo`r', 1, 50),
(31, 3, 11, 'Yaxshi', 0, 0),
(32, 3, 11, 'Yomon emas', 0, 0),
(33, 3, 11, 'Yaxshi emas', 1, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `savollar`
--

CREATE TABLE `savollar` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `savol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `savollar`
--

INSERT INTO `savollar` (`id`, `s_id`, `savol`) VALUES
(1, 1, 'Сизнинг фикрингизча фаолият юритаётган худудингизда Фармацевтика тармоғини ривожлантириш агентлиги ва унинг ҳудудий бўлинмалари фаолиятида коррупцион ҳолатлар мавжудми?'),
(2, 1, 'Ҳудудингизда Фармацевтика тармоғи бўлинмасидаги коррупция даражасини қандай баҳолаган бўлардингиз?'),
(3, 1, 'Фармацевтика тармоғи фаолиятида шахсан ўзингиз коррупция ҳолатларига дуч келганмисиз?'),
(4, 1, 'Фармацевтика тармоғи фаолиятида коррупцион ҳолатнинг қандай кўринишига дуч келгансиз?'),
(5, 1, 'Фармацевтика тармоғи фаолиятида қайси соҳаларда коррупцион ҳолатлар кўпроқ мавжуд деб ҳисоблайсиз?'),
(6, 1, 'Фармацевтика тармоғи фаолиятида сўнгги 3 йилда коррупция даражасининг ўзгаришини қандай баҳолайсиз?'),
(7, 1, 'Фармацевтика тармоғи фаолиятида коррупция фактлари юзасидан ҳабар бериш учун @Stop_corruptionbot телеграм бот мавжудлигини биласизми?'),
(8, 2, 'Сизга ушбу сўровнома ёқдими?'),
(9, 2, 'Сиз веб дастурлаш тилларига қизиқасизми?'),
(10, 3, 'Ushbu so\'rovnoma sizga yoqdimi?'),
(11, 3, 'Ushbu so\'rovnoma qay darajada yoqdi?');

-- --------------------------------------------------------

--
-- Структура таблицы `sorovnoma`
--

CREATE TABLE `sorovnoma` (
  `id` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `startDate` int(20) DEFAULT NULL,
  `endDate` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sorovnoma`
--

INSERT INTO `sorovnoma` (`id`, `sname`, `startDate`, `endDate`) VALUES
(1, 'Коррупция даражасини  баҳолаш', 1646183916, NULL),
(2, 'Янги сўровнома', 1646487668, 1646490221),
(3, 'Yangi so\'rovnoma', 1646556931, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `viloyatlar`
--

CREATE TABLE `viloyatlar` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `viloyatlar`
--

INSERT INTO `viloyatlar` (`id`, `name`) VALUES
(1, 'Тошкент'),
(2, 'Тошкент вилояти'),
(3, 'Андижон вилояти'),
(4, 'Бухоро вилояти'),
(5, 'Жиззах вилояти'),
(6, 'Қашқадарё вилояти'),
(7, 'Навоий вилояти'),
(8, 'Наманган вилояти'),
(9, 'Самарқанд вилояти'),
(10, 'Сурхондарё вилояти'),
(11, 'Сирдарё вилояти'),
(12, 'Фарғона вилояти'),
(13, 'Хоразм вилояти'),
(14, 'Қорақалпоғистон Республикаси');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `hisobot`
--
ALTER TABLE `hisobot`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `javoblar`
--
ALTER TABLE `javoblar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `savollar`
--
ALTER TABLE `savollar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sorovnoma`
--
ALTER TABLE `sorovnoma`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `viloyatlar`
--
ALTER TABLE `viloyatlar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `hisobot`
--
ALTER TABLE `hisobot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `javoblar`
--
ALTER TABLE `javoblar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `savollar`
--
ALTER TABLE `savollar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `sorovnoma`
--
ALTER TABLE `sorovnoma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `viloyatlar`
--
ALTER TABLE `viloyatlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
