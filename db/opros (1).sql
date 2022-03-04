-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 04 2022 г., 05:29
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
  `answers` text NOT NULL,
  `subject` text NOT NULL,
  `createDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hisobot`
--

INSERT INTO `hisobot` (`id`, `ip`, `v_name`, `s_id`, `fullName`, `phoneNumber`, `address`, `answers`, `subject`, `createDate`) VALUES
(10, '127.0.0.2', 'Сурхондарё вилояти', 1, NULL, NULL, NULL, 'Йўқ, мавжуд эмас / Бундай ҳолатлар мавжуд эмас / Ҳа / Ёрдам эвазига турли хизматлар талаб қилиш / Маҳсулотларни сертификатлаштириш давомида / Соҳада коррупцияга чек қўйилган / Йўқ', 'Sorov', 1646056812),
(11, '127.0.0.1', 'Сурхондарё вилояти', 1, 'Muminov Abbosbek Ilxomovich', '915847748', 'Denov tumani', 'Йўқ, мавжуд эмас / Паст даражада / Йўқ / Ёрдам эвазига турли хизматлар талаб қилиш / Фаолиятга оид зарур ахборотларни тақдим этиш жараёнида / Соҳада коррупцияга чек қўйилган / Йўқ', 'Savol', 1646056877),
(12, '127.0.0.1', 'Тошкент', 2, NULL, NULL, NULL, 'sdasd', 'bnvnvnvnv', 1646267054),
(13, '127.0.0.1', 'Жиззах вилояти', 1, NULL, NULL, NULL, 'Ҳа, мавжуд / Юқори даражада / Йўқ / Совға сўраш (талаб қилиш), бериш / Эркин иқтисодий зоналарда ер ажратиш жараёнида / Соҳада коррупцияга чек қўйилган / Йўқ', 'mmmm', 1646353349);

-- --------------------------------------------------------

--
-- Структура таблицы `javoblar`
--

CREATE TABLE `javoblar` (
  `id` int(11) NOT NULL,
  `sorov_id` int(11) NOT NULL,
  `savol_id` int(11) NOT NULL,
  `javob` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `javoblar`
--

INSERT INTO `javoblar` (`id`, `sorov_id`, `savol_id`, `javob`, `count`) VALUES
(1, 1, 1, 'Ҳа, мавжуд', 1),
(2, 1, 1, 'Йўқ, мавжуд эмас', 2),
(3, 1, 1, 'Жавоб беришга қийналаман', 0),
(4, 1, 2, 'Бундай ҳолатлар мавжуд эмас', 2),
(5, 1, 2, 'Юқори даражада', 0),
(6, 1, 2, 'Паст даражада', 0),
(7, 1, 3, 'Ҳа', 2),
(8, 1, 3, 'Йўқ', 2),
(9, 1, 4, 'Совға сўраш (талаб қилиш), бериш', 0),
(10, 1, 4, 'Пул маблағлари кўринишида пора талаб қилиш', 0),
(11, 1, 4, 'Ёрдам эвазига турли хизматлар талаб қилиш', 2),
(12, 1, 5, 'Мониторинг, текширув, назорат тадбирлари ўтказиш давомида', 0),
(13, 1, 5, 'Махсулотни рўйхатдан ўтказиш жараёнида', 0),
(14, 1, 5, 'Фаолиятни лицензиялаш жараёнида', 0),
(15, 1, 5, 'Эркин иқтисодий зоналарда ер ажратиш жараёнида', 0),
(16, 1, 5, 'Маҳсулотларни сертификатлаштириш давомида', 2),
(17, 1, 5, 'Фаолиятга оид зарур ахборотларни тақдим этиш жараёнида', 0),
(18, 1, 6, 'Коррупцион ҳолатлар камайди', 0),
(19, 1, 6, 'Коррупцион ҳолатлар кўпайди', 0),
(20, 1, 6, 'Соҳада коррупцияга чек қўйилган', 2),
(21, 1, 7, 'Ҳа', 2),
(22, 1, 7, 'Йўқ', 2);

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
(7, 1, 'Фармацевтика тармоғи фаолиятида коррупция фактлари юзасидан ҳабар бериш учун @Stop_corruptionbot телеграм бот мавжудлигини биласизми?');

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
(1, 'Коррупция даражасини  баҳолаш', 1646183916, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `javoblar`
--
ALTER TABLE `javoblar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `savollar`
--
ALTER TABLE `savollar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `sorovnoma`
--
ALTER TABLE `sorovnoma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `viloyatlar`
--
ALTER TABLE `viloyatlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
