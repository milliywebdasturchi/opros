-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 07 2022 г., 10:52
-- Версия сервера: 5.6.51
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `survey`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `s_is` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `ans_uz` varchar(255) NOT NULL,
  `ans_ru` varchar(255) NOT NULL,
  `ans_en` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `q_uz` varchar(255) NOT NULL,
  `q_ru` varchar(255) NOT NULL,
  `q_en` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `name_uz` varchar(100) NOT NULL,
  `name_ru` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `name_uz`, `name_ru`, `name_en`) VALUES
(1, 'Toshkent', 'Ташкент ', 'Tashkent city '),
(2, 'Toshkent viloyati', 'Ташкентская область', 'Tashkent region'),
(3, 'Andijon viloyati', 'Андижанская область', 'Andijan region'),
(4, 'Buxoro viloyati', 'Бухарская область', 'Bukhara region'),
(5, 'Jizzax viloyati', 'Джизакская область', 'Jizzakh region'),
(6, 'Qashqadaryo viloyati', 'Кашкадарьинская область', 'Kashkadarya region'),
(7, 'Navoiy viloyati', 'Навоийская область', 'Navoi region'),
(8, 'Namangan viloyati', 'Наманганская область', 'Namangan region'),
(9, 'Samarqand viloyati', 'Самаркандская область', 'Samarkand region'),
(10, 'Surxondaryo viloyati', 'Сурхандарьинская область', 'Surkhandarya region'),
(11, 'Sirdaryo viloyati', 'Сырдарьинская область', 'Syrdarya region'),
(12, 'Farg‘ona viloyati', 'Ферганская область', 'Fergana region'),
(13, 'Xorazm viloyati', 'Хорезмская область', 'Khorezm region'),
(14, 'Qoraqalpog‘iston Respublikasi', 'Республика Каракалпакстан', 'Republic of Karakalpakstan');

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ans_1` int(11) NOT NULL,
  `ans_2` int(11) NOT NULL,
  `ans_3` int(11) NOT NULL,
  `ans_4` int(11) NOT NULL,
  `ans_5` int(11) NOT NULL,
  `ans_6` int(11) NOT NULL,
  `ans_7` int(11) NOT NULL,
  `ans_8` int(11) NOT NULL,
  `ans_9` int(11) NOT NULL,
  `ans_10` int(11) NOT NULL,
  `ans_11` int(11) NOT NULL,
  `ans_12` int(11) NOT NULL,
  `ans_13` int(11) NOT NULL,
  `ans_14` int(11) NOT NULL,
  `ans_15` int(11) NOT NULL,
  `ans_16` int(11) NOT NULL,
  `ans_17` int(11) NOT NULL,
  `ans_18` int(11) NOT NULL,
  `ans_19` int(11) NOT NULL,
  `ans_20` int(11) NOT NULL,
  `message` text NOT NULL,
  `createdAt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `surveys`
--

CREATE TABLE `surveys` (
  `id` int(11) NOT NULL,
  `title_uz` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `startDate` int(11) NOT NULL,
  `endDate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `surveys`
--

INSERT INTO `surveys` (`id`, `title_uz`, `title_ru`, `title_en`, `startDate`, `endDate`) VALUES
(1, 'Коррупция даражасини  баҳолаш', 'Оценка уровня коррупционных фактов', 'Assessment of the level of corruption facts', 1646183916, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
