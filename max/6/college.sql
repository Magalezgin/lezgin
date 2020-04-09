-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 26 2020 г., 12:51
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `college`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_classroom`
--

CREATE TABLE `lezgin_classroom` (
  `classroom_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_course`
--

CREATE TABLE `lezgin_course` (
  `course_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_id` int(11) NOT NULL,
  `hours` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lezgin_course`
--

INSERT INTO `lezgin_course` (`course_id`, `name`, `special_id`, `hours`) VALUES
(1, 'Основы алгоритмизации', 1, 90),
(2, 'Электротехника', 3, 106),
(3, 'Основы алгоритмизации', 5, 52),
(4, 'Мультимедиа технологии', 1, 36),
(5, 'Техническая механика', 6, 96),
(6, 'Промышленная электротехника', 4, 108),
(7, 'Автоматизированные информационные системы', 1, 86);

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_day`
--

CREATE TABLE `lezgin_day` (
  `day_id` tinyint(4) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lezgin_day`
--

INSERT INTO `lezgin_day` (`day_id`, `name`) VALUES
(1, 'Понедельник'),
(2, 'Вторник'),
(3, 'Среда'),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота'),
(7, 'Воскресенье');

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_gender`
--

CREATE TABLE `lezgin_gender` (
  `gender_id` tinyint(4) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lezgin_gender`
--

INSERT INTO `lezgin_gender` (`gender_id`, `name`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_graduate`
--

CREATE TABLE `lezgin_graduate` (
  `graduate_id` int(11) NOT NULL,
  `gruppa_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_graduate_time`
--

CREATE TABLE `lezgin_graduate_time` (
  `graduate_time_id` int(11) NOT NULL,
  `graduate_id` int(11) NOT NULL,
  `day_id` tinyint(4) NOT NULL,
  `lesson_num_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_gruppa`
--

CREATE TABLE `lezgin_gruppa` (
  `gruppa_id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_id` int(50) NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lezgin_gruppa`
--

INSERT INTO `lezgin_gruppa` (`gruppa_id`, `name`, `special_id`, `date_begin`, `date_end`) VALUES
(1, '101 ИС', 1, '2016-09-01', '2020-07-01'),
(2, '102 АС', 3, '2016-09-01', '2020-07-01'),
(3, '302 ИС', 1, '2014-09-01', '2018-07-01'),
(4, '302 АС', 3, '2014-09-01', '2018-07-01');

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_lesson_num`
--

CREATE TABLE `lezgin_lesson_num` (
  `lesson_num_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_lesson` time NOT NULL,
  `year_lesson` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_otdel`
--

CREATE TABLE `lezgin_otdel` (
  `otdel_id` smallint(6) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lezgin_otdel`
--

INSERT INTO `lezgin_otdel` (`otdel_id`, `name`) VALUES
(1, 'Информационные системы'),
(2, 'Технические специальности '),
(3, 'Автоматизация и управление');

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_special`
--

CREATE TABLE `lezgin_special` (
  `special_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otdel_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lezgin_special`
--

INSERT INTO `lezgin_special` (`special_id`, `name`, `otdel_id`) VALUES
(1, 'Информационные системы', 1),
(2, 'Нефтегазовое дело', 2),
(3, 'Автоматизация и управление', 3),
(4, 'Электроснабжение', 3),
(5, 'Программное обеспечение ВТ и ПО', 1),
(6, 'Строительство и эксплуатация зданий и сооружений', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_student`
--

CREATE TABLE `lezgin_student` (
  `user_id` bigint(20) NOT NULL,
  `gruppa_id` int(11) NOT NULL,
  `num_zach` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lezgin_student`
--

INSERT INTO `lezgin_student` (`user_id`, `gruppa_id`, `num_zach`) VALUES
(6, 1, 'К1020'),
(7, 2, 'А5292'),
(8, 2, 'В8578'),
(9, 5, 'Р5285'),
(10, 4, 'Ф5285'),
(11, 1, 'К7485'),
(12, 3, 'А2585');

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_teacher`
--

CREATE TABLE `lezgin_teacher` (
  `user_id` bigint(20) NOT NULL,
  `otdel_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lezgin_teacher`
--

INSERT INTO `lezgin_teacher` (`user_id`, `otdel_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(5, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `lezgin_user`
--

CREATE TABLE `lezgin_user` (
  `user_id` bigint(20) NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronomic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` tinyint(4) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lezgin_user`
--

INSERT INTO `lezgin_user` (`user_id`, `lastname`, `firstname`, `patronomic`, `login`, `pass`, `gender_id`, `birthday`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', '', '', 1, '1975-05-25'),
(2, 'Петров', 'Петр', 'Петрович', '', '', 1, '1980-08-06'),
(3, 'Козлов', 'Иван', 'Афанасьевич', '', '', 1, '1985-04-15'),
(4, 'Чурюмова', 'Кристина', 'Фёдоровна', '', '', 2, '1990-05-20'),
(5, 'Васильев', 'Феофан', 'Александрович', '', '', 1, '1991-01-13'),
(6, 'Федорова', 'Милана', 'Андреевна', '', '', 2, '1998-04-15'),
(7, 'Нуржанов', 'Нуржан', 'Нуржанович', '', '', 1, '1999-09-18'),
(8, 'Канатов', 'Канат', 'Канатович', '', '', 1, '1999-07-07'),
(9, 'Золотая', 'Ирина', 'Кайратовна', '', '', 2, '2000-09-14'),
(10, 'Серая', 'Арина', 'Радионовна', '', '', 2, '2001-10-29'),
(11, 'Петухов', 'Виталий', 'Фадеевич', '', '', 1, '2000-02-20'),
(12, 'Котова', 'Аурелия', 'Ароновна', '', '', 2, '2002-12-19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lezgin_classroom`
--
ALTER TABLE `lezgin_classroom`
  ADD PRIMARY KEY (`classroom_id`);

--
-- Индексы таблицы `lezgin_course`
--
ALTER TABLE `lezgin_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `lezgin_day`
--
ALTER TABLE `lezgin_day`
  ADD PRIMARY KEY (`day_id`);

--
-- Индексы таблицы `lezgin_gender`
--
ALTER TABLE `lezgin_gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Индексы таблицы `lezgin_graduate`
--
ALTER TABLE `lezgin_graduate`
  ADD PRIMARY KEY (`graduate_id`),
  ADD KEY `gruppa_id` (`gruppa_id`,`user_id`),
  ADD KEY `gruppa_id_2` (`gruppa_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `lezgin_graduate_time`
--
ALTER TABLE `lezgin_graduate_time`
  ADD PRIMARY KEY (`graduate_time_id`),
  ADD KEY `graduate_id` (`graduate_id`),
  ADD KEY `day_id` (`day_id`),
  ADD KEY `lesson_num_id` (`lesson_num_id`,`classroom_id`),
  ADD KEY `classroom_id` (`classroom_id`);

--
-- Индексы таблицы `lezgin_gruppa`
--
ALTER TABLE `lezgin_gruppa`
  ADD PRIMARY KEY (`gruppa_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `lezgin_lesson_num`
--
ALTER TABLE `lezgin_lesson_num`
  ADD PRIMARY KEY (`lesson_num_id`);

--
-- Индексы таблицы `lezgin_otdel`
--
ALTER TABLE `lezgin_otdel`
  ADD PRIMARY KEY (`otdel_id`);

--
-- Индексы таблицы `lezgin_special`
--
ALTER TABLE `lezgin_special`
  ADD PRIMARY KEY (`special_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `lezgin_student`
--
ALTER TABLE `lezgin_student`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `gruppa_id` (`gruppa_id`);

--
-- Индексы таблицы `lezgin_teacher`
--
ALTER TABLE `lezgin_teacher`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `lezgin_user`
--
ALTER TABLE `lezgin_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lezgin_classroom`
--
ALTER TABLE `lezgin_classroom`
  MODIFY `classroom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lezgin_course`
--
ALTER TABLE `lezgin_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `lezgin_day`
--
ALTER TABLE `lezgin_day`
  MODIFY `day_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `lezgin_gender`
--
ALTER TABLE `lezgin_gender`
  MODIFY `gender_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `lezgin_graduate`
--
ALTER TABLE `lezgin_graduate`
  MODIFY `graduate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lezgin_graduate_time`
--
ALTER TABLE `lezgin_graduate_time`
  MODIFY `graduate_time_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lezgin_gruppa`
--
ALTER TABLE `lezgin_gruppa`
  MODIFY `gruppa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `lezgin_lesson_num`
--
ALTER TABLE `lezgin_lesson_num`
  MODIFY `lesson_num_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lezgin_otdel`
--
ALTER TABLE `lezgin_otdel`
  MODIFY `otdel_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `lezgin_special`
--
ALTER TABLE `lezgin_special`
  MODIFY `special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `lezgin_teacher`
--
ALTER TABLE `lezgin_teacher`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `lezgin_user`
--
ALTER TABLE `lezgin_user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `lezgin_course`
--
ALTER TABLE `lezgin_course`
  ADD CONSTRAINT `lezgin_course_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `lezgin_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `lezgin_graduate`
--
ALTER TABLE `lezgin_graduate`
  ADD CONSTRAINT `lezgin_graduate_ibfk_1` FOREIGN KEY (`gruppa_id`) REFERENCES `lezgin_student` (`gruppa_id`),
  ADD CONSTRAINT `lezgin_graduate_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `lezgin_course` (`course_id`),
  ADD CONSTRAINT `lezgin_graduate_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `lezgin_teacher` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `lezgin_graduate_time`
--
ALTER TABLE `lezgin_graduate_time`
  ADD CONSTRAINT `lezgin_graduate_time_ibfk_1` FOREIGN KEY (`graduate_id`) REFERENCES `lezgin_graduate` (`graduate_id`),
  ADD CONSTRAINT `lezgin_graduate_time_ibfk_2` FOREIGN KEY (`day_id`) REFERENCES `lezgin_day` (`day_id`),
  ADD CONSTRAINT `lezgin_graduate_time_ibfk_3` FOREIGN KEY (`classroom_id`) REFERENCES `lezgin_classroom` (`classroom_id`),
  ADD CONSTRAINT `lezgin_graduate_time_ibfk_4` FOREIGN KEY (`lesson_num_id`) REFERENCES `lezgin_lesson_num` (`lesson_num_id`);

--
-- Ограничения внешнего ключа таблицы `lezgin_gruppa`
--
ALTER TABLE `lezgin_gruppa`
  ADD CONSTRAINT `lezgin_gruppa_ibfk_1` FOREIGN KEY (`gruppa_id`) REFERENCES `lezgin_student` (`gruppa_id`),
  ADD CONSTRAINT `lezgin_gruppa_ibfk_2` FOREIGN KEY (`special_id`) REFERENCES `lezgin_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `lezgin_special`
--
ALTER TABLE `lezgin_special`
  ADD CONSTRAINT `lezgin_special_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `lezgin_otdel` (`otdel_id`);

--
-- Ограничения внешнего ключа таблицы `lezgin_student`
--
ALTER TABLE `lezgin_student`
  ADD CONSTRAINT `lezgin_student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `lezgin_user` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `lezgin_teacher`
--
ALTER TABLE `lezgin_teacher`
  ADD CONSTRAINT `lezgin_teacher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `lezgin_user` (`user_id`),
  ADD CONSTRAINT `lezgin_teacher_ibfk_2` FOREIGN KEY (`otdel_id`) REFERENCES `lezgin_otdel` (`otdel_id`);

--
-- Ограничения внешнего ключа таблицы `lezgin_user`
--
ALTER TABLE `lezgin_user`
  ADD CONSTRAINT `lezgin_user_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `lezgin_gender` (`gender_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
