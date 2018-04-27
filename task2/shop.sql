-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 27 2018 г., 09:06
-- Версия сервера: 5.5.53
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`) VALUES
(1, 'Ноутбуки', 0),
(2, 'Комплектующие', 0),
(3, 'Компьютеры', 0),
(4, 'Планшеты', 0),
(5, 'Процессоры', 2),
(6, 'Материнские платы', 2),
(7, 'Оперативная память', 2),
(8, 'SSD-накопители', 2),
(9, 'Intel', 5),
(10, 'AMD', 5),
(11, 'Intel Core i3', 9),
(12, 'Intel Core i5', 9),
(13, 'Intel Core i7', 9),
(14, 'Intel Core i9', 9),
(15, 'AMD Ryzen 3', 10),
(16, 'AMD Ryzen 5', 10),
(17, 'AMD Ryzen 7', 10),
(18, 'AMD Ryzen Threadripper', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(1, 'Процессор AMD Ryzen 5 2400G 3.6GHz/4MB', '4800.00'),
(2, 'Процессор AMD Ryzen 5 1500X 3.5GHz/16MB', '4500.00'),
(3, 'Процессор AMD Ryzen 7 2700X 3.7GHz/16MB', '10800.00'),
(4, 'Процессор AMD Ryzen 7 1700 3.0GHz/16MB', '9200.00'),
(5, 'Процессор Intel Core i3-8350K 4.0GHz/8GT/s/8MB', '5700.00'),
(6, 'Процессор Intel Core i3-8100 3.6GHz/8GT/s/6MB', '3300.00'),
(7, 'Процессор Intel Core i9-7900X X-Series 3.3GHz/8GT/s/13.75MB', '31900.00'),
(8, 'Процессор Intel Core i9-7980XE Extreme Edition 2.6GHz/8GT/s/24.75MB', '70700.00');

-- --------------------------------------------------------

--
-- Структура таблицы `product_to_category`
--

CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_to_category`
--

INSERT INTO `product_to_category` (`product_id`, `category_id`, `id`) VALUES
(8, 14, 1),
(8, 9, 4),
(8, 5, 5),
(8, 2, 6),
(1, 16, 7),
(1, 10, 8),
(1, 5, 9),
(1, 2, 10),
(2, 5, 11),
(2, 2, 12),
(2, 10, 13),
(2, 16, 14),
(3, 5, 15),
(3, 2, 16),
(3, 10, 17),
(3, 17, 18),
(4, 5, 19),
(4, 2, 20),
(4, 10, 21),
(4, 17, 22),
(5, 5, 23),
(5, 2, 24),
(5, 9, 25),
(5, 12, 26),
(6, 5, 27),
(6, 2, 28),
(6, 9, 29),
(6, 11, 30),
(7, 5, 31),
(7, 2, 32),
(7, 9, 33),
(7, 14, 34);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `product_to_category`
--
ALTER TABLE `product_to_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
