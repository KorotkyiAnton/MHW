-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 16 2021 г., 08:10
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `korotkyianton`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `pubdate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `photo`, `title`, `text`, `categorie_id`, `pubdate`, `views`) VALUES
(13, 'uploaded/main_photoarxfat.jpg', 'ОБ ИГРЕ ARX FATALIS', '&lt;h1 style=&#039;text-align: center&#039;&gt;ОБ ИГРЕ ARX FATALIS&lt;/h1&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Я тут посидел, и подумал: для чего нужен блог? Блог нужен для высказывания своих мыслей. И вот, спасибо главному редактору за идею, я решил рискнуть и сделать свой небольшой обзор (если это, конечно, обзор) одной старой игры «Arx Fatalis». Всё, что мне удалось найти на этом сайте — это пару трейнеров и несколько уже старых новостей. Я, как любитель старых игр, пожалуй рискну взять на себя смелость и залепить этот неправильный пробел своими пятью копейками. Итак.&lt;/p&gt;&lt;h2 style=&#039;text-align: left&#039;&gt;Arx Fatalis. Последний бастион.&lt;/h2&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Игра, разработанная Arkane Studios, в России вышла в мае 2003 года, под издательством «1С». В Ваши руки передают управление неким безымянным человеком, попавшим в тюрьму гоблинов. Как только Вам удаётся выбраться из камеры, отправить в нокаут гоблина и выпустив из камеры товарища по несчастью, Вы получаете имя. «Благодарю тебя, Ам-Шегар. Если ты не помнишь своё имя — возьми это. Оно означает „безымянный“ на одном языке.»&lt;/p&gt;&lt;img style=&quot;width: 500px; max-width: 100%; display: block; margin-left: auto; margin-right: auto&quot; src=&quot;uploaded/5-imgarxfat.jpg&quot;&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;После этого Вы пускаете своего протагониста в нелёгкое путешествие по подземельям мира Экзоста. Собственно подземные — это всё что нам дадут увидеть. Ибо солнце, силами сюжета, в этом мире угасло. А в подземельях темно. Поэтому одной из проблем станет наличие света. Вернее его отсутствие. Хотя даже это кажется мелочью, по сравнению с неудобным управлением. Не, не так. Управление не удобно только первые пятнадцать минут игры. Потом к нему привыкаешь навсегда. Даже через несколько лет, после того, как Вы прошли (а может и не прошли) Arx Fatalis впервые, руки всё ещё помнят. Единственным неудобством управления может остаться система заклинаний. Ведь чтобы совершить то или иное «колдунство», нужно сначала найти руны для этого «колдунства», потом каждую руну нужно будет ещё и рисовать самостоятельно. Нет, большинство рун, конечно просты. Те-же полосы вверх или в сторону, или незамысловатые углы. Но бывают и такие символы, с которыми не сразу справляешься. А мышка не всегда адекватно на это самое «рисование» отклик&lt;/p&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Где Вам только не придётся побывать: и в королевстве людей, и в городе гоблинов, и в самых нижних катакомбах, принадлежащих гномам, и даже в склепах, по которому без дела слоняются зомби и мумии. А здешняя живность вообще достойна отдельного пункта. Чисто формально всех обитателей Экзосты можно поделить на четыре категории: те, кто на протяжение всего прохождения будет давать Вам все возможные задания, за выполнение которых Вы будете получать различные полезности, будь то деньги, предметы и… и прочее; торговцы, суть которых понятна и так; нейтральные личности, максимум пользы от них — крохи, частенько, не нужной информации; и враги. Кстати, Вашим врагом может стать абсолютно любое существо в этом мире. К примеру если в королевстве людей ударить хотя-бы одного человека, да даже если и кулаком, то все в королевстве ополчатся на Вас. И с этим уже ничего не поделать. Загружай последнее сохранение. Единственное, что я не могу расхваливать очень сильно Arx Fatalis, так это звуковое сопровождение. Саундтрек? Отсутствует в принципе. Вместо него мы слышим шум подземелий. Какие-то сквозняки и капли падающие со сталактитов в открытых пещерах, звон кандалов и крики мучеников в гоблинской тюрьме. Везде своё. За это плюс. А вот за озвучку минус. Нет, озвучка вполне хорошая, но она не сравнима с оригиналом. К примеру, меня очень бесило, когда нужно было разговаривать с троллями. Они на столько медленно и растянуто произносят слова, что хочется уже плюнуть на сюжет, лишь бы не слушать эту тягомотину. Если-же не обращать внимание на такие мелочи, то играть обязательно всем. Море эмоций и вагон не забываемых ощущений вам обеспечены.&lt;/p&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Те, кто уже играл, думаю согласятся, что это действительно культовая игра. Тем-же, кто ещё не успел лицезрение Arx Fatalis, мой совет — обязательно поиграйте.&lt;/p&gt;', 1, '2021-11-07 23:44:30', 222),
(14, 'uploaded/main_photovampire.jpg', 'VAMPIRE: THE MASQUERADE', '&lt;h1 style=&#039;text-align: center&#039;&gt;VAMPIRE: THE MASQUERADE&lt;/h1&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Все медиапродукты, уж тем более игры со словами Vampire: The Masquerade в названии, автоматом попадают в центр внимания. Другое дело, что любители вселенной World of Darkness ждут от них волнительных ролевых игр с готическими клыкастыми девицами — на уровне Bloodlines. А Vampire: The Masquerade — Coteries of New York — это не RPG, а визуальная новелла, которую написали не Леонард Боярский (Leonard Boyarsky) со товарищи из Troika Games, а толком никому не известные поляки из Draw Distance, авторы недавнего экшена Ritual: Crown of Horns. Вряд ли кто-то удивился тому, что у игры смешанные отзывы и достаточно много критики. Так ли уж работа братьев-славян плоха?&lt;/p&gt;&lt;img style=&quot;width: 500px; max-width: 100%; display: block; margin-left: auto; margin-right: auto&quot; src=&quot;uploaded/3-imgvampire.jpg&quot;&gt;&lt;h2 style=&#039;text-align: left&#039;&gt;Я классный парень, я вампир!&lt;/h2&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Безусловно, Coteries of New York — очень красивая и атмосферная визуальная новелла. Все задники нарисованы со вкусом и вниманием к деталям — и даже с анимацией: можно увидеть танцы дождя на крышах нью-йоркских авто, вспышки огней от рекламных вывесок, светофоров или фар. Жаль только, что лица героев и их выражения никогда не меняются. Вкупе с правильно подобранной музыкой, а также отлично написанными текстами и диалогами он создает атмосферу дымного нуара с привкусами готической романтики — как раз в духе оригинальной вселенной.&lt;/p&gt;&lt;h2 style=&#039;text-align: left&#039;&gt;И нет надежды у меня, в гробу смыкаю свои очи&lt;/h2&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Впрочем, на самом деле история в Coteries of New York не такая прямолинейная — за простым, казалось бы, тезисом скрываются свои интриги и нюансы, которые дарят нам действительно увлекательную историю. А её финал настолько волнует, что хочется обязательно найти какой-то другой его вариант и всё переиграть.&lt;/p&gt;', 1, '2021-11-08 12:35:37', 36),
(15, 'uploaded/main_photoelg.jpg', 'Обзор на книгу цветы для Элджерона', '&lt;h1 style=&#039;text-align: center&#039;&gt;Обзор на книгу цветы для Элджерона&lt;/h1&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Тридцать лет назад это считалось фантастикой. Тридцать лет назад это читалось как фантастика. Исследующая и расширяющая границы жанра, жадно впитывающая всевозможные новейшие веяния, примеряющая общечеловеческое лицо, отважно игнорирующая каинову печать &quot;жанрового гетто&quot;. Сейчас это воспринимается как одно из самых человечных произведений новейшего времени, как роман пронзительной психологической силы, как филигранное развитие темы любви и ответственности. Не зря вышедшую уже в 90-е книгу воспоминаний Киз назвал &quot;Элджернон и я&quot;.&lt;/p&gt;&lt;h2 style=&#039;text-align: left&#039;&gt;Голые знания, не пронизанные человеческими чувствами, не стоят и ломаного гроша.&lt;/h2&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Тридцатитрёхлетний Чарли Гордон не такой, как все. Ведь у него проблемы с умственным развитием. Но Чарли не сдается. Он усердно учиться в надежде стать умнее. И тут Судьба подкинула ему шанс. Ему предлагают поучаствовать в одном эксперименте, в ходе которого, Чарли может стать очень умным. И Чарли соглашается. Но есть ли цена знаниям??? Много я слышал восторженных отзывов об этой книге. Да и 1 место в категории &quot;Зарубежная фантастика&quot; просто так не дают. И наконец я прочитал эту книгу... Чарли Гордон - главный герой. Человек, который всю свою жизнь прожил с умственным расстройством. Несмотря на это, он не теряет веру в жизнь. Он работает в пекарне, общается с друзьями, и пытается стать умнее. Автор, наглядно показывает, что такие люди тоже способны вести хорошую жизнь. Это была одна сторона персонажа, так сказать Чарли До. Теперь о персонаже Чарли После. Чарли понял, что жизнь очень жестока.&lt;/p&gt;', 2, '2021-11-08 12:48:45', 20),
(16, 'uploaded/main_photoprespective.jpg', 'Перспектива (Prospect)', '&lt;h1 style=&#039;text-align: center&#039;&gt;Перспектива (Prospect)&lt;/h1&gt;&lt;h2 style=&#039;text-align: left&#039;&gt;Рецензия на фильм&lt;/h2&gt;&lt;img style=&quot;width: 500px; max-width: 100%; display: block; margin-left: auto; margin-right: auto&quot; src=&quot;uploaded/3-imgprespective.jpg&quot;&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Если вы не смотрели это кино, то не советую читать рецензию. В ней нет спойлеров, просто фильм меня слишком очаровал, и вы рискуете нахвататься чужого восторга перед просмотром. А завышенные ожидания ещё ни одному фильму не пошли на пользу – а уж  такой странный и нетипичный фильм, как Prospect, они и вовсе могут погубить.  Так что вместо того, чтобы тратить время на какие-то буковки в интернете, лучше посмотрите саму картину.&lt;/p&gt;&lt;h2 style=&#039;text-align: left&#039;&gt;Старая школа&lt;/h2&gt;&lt;img style=&quot;width: 500px; max-width: 100%; display: block; margin-left: auto; margin-right: auto&quot; src=&quot;uploaded/6-imgProspect5.jpg&quot;&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;У вас когда-нибудь бывало такое, что начинаешь смотреть фильм и буквально в первые десять секунд понимаешь, что уже в него влюблён? Уникальное сочетание первого звука, первой картинки, первого движения в кадре – всё это складывается в единый образ и сразу же «достукивается» до зачерствевшей киноманской душонки.&lt;/p&gt;', 3, '2021-11-08 13:00:32', 47),
(17, 'uploaded/main_photounnamed.jpg', 'Видоизмененный углерод', '&lt;h1 style=&#039;text-align: center&#039;&gt;Видоизмененный углерод&lt;/h1&gt;&lt;h2 style=&#039;text-align: left&#039;&gt;Про что сериал «Видоизмененный углерод»:&lt;/h2&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Действие сериала разворачивается в далёком будущем, где человечество научилось избегать физической смерти, записывая сознание и воспоминания отдельного человека на специальные носители, после чего перенося личность в новое тело. В центре сюжета оказывается Такеши Ковач – элитный наёмник, который спустя 250 лет после своей гибели получает новое тело по инициативе Лоренса Бэнкрофта – одного из самых состоятельных людей на планете. Физическое тело Бэнкрофта погибло, но его личность была восстановлена из автоматического резервного копирования, которое было сделано за несколько часов до смерти, поэтому сам пострадавший совершенно не помнит о том, как он умер. Несмотря на утверждения полиции, что причиной его смерти является самоубийство, Бэнкрофт абсолютно уверен, что его убили, поэтому он поручает нашему герою в кратчайшие сроки выяснить истинную причину.&lt;/p&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/xuIqTY0QmsE&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;&lt;/p&gt;', 3, '2021-11-08 18:05:36', 50),
(21, 'uploaded/main_photoguardian.jpg', 'MARVEL&#039;S GUARDIANS OF THE GALAXY', '&lt;h1 style=&#039;text-align: center&#039;&gt;MARVEL&#039;S GUARDIANS OF THE GALAXY&lt;/h1&gt;&lt;img class=&quot;img_in_article&quot; src=&quot;uploaded/2-imgguardian.jpg&quot;&gt;&lt;h2 style=&#039;text-align: left&#039;&gt;MARVEL&#039;S GUARDIANS OF THE GALAXY: ПРЕВЬЮ ПО ПРЕСС-ВЕРСИИ&lt;/h2&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Анонс «Стражей Галактики» от Eidos Montreal многие восприняли в штыки. Создатели современной дилогии Deus Ex представили не долгожданное продолжение Mankind Divided, а странный супергеройский проект. Предприятие вдвойне сомнительное, если учесть, что часть студии работала над провальной Marvel’s Avengers. В середине сентября мы побывали на закрытом показе игры, где дважды прошли одну из миссий и узнали больше о разработке. Теперь рассказываем, почему скепсис неоправдан, а Marvel’s Guardians of the Galaxy, похоже, действительно стоит ждать.&lt;/p&gt;&lt;h2 style=&#039;text-align: left&#039;&gt;По заветам Шепарда&lt;/h2&gt;&lt;p style=&#039;text-align: left; margin-right: 14px&#039;&gt;Сюжет миссии, в которую нам дали поиграть, стартует на пути Стражей к базе «Скала» Корпуса Нова (эдакой космической полиции из комиксов Marvel), где они должны выплатить штраф. По прибытии игрок начинает управлять Питером Квиллом и может исследовать корабль Стражей «Милано». Это одна из важнейших частей игры, аналог «Нормандии» из Mass Effect. В доме Стражей даже можно в любой момент включить какой-нибудь хит 80-х — безопасное убежище, где сразу проникаешься теплом и уютом.&lt;/p&gt;', 1, '2021-11-13 19:30:41', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE `articles_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `title`) VALUES
(1, 'Игры'),
(2, 'Книги'),
(3, 'Фильмы');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `text` text NOT NULL,
  `pubdate` datetime NOT NULL DEFAULT current_timestamp(),
  `articles_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author`, `text`, `pubdate`, `articles_id`) VALUES
(91, 'KotLot220', 'аааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааа\r\n', '2021-11-14 13:23:42', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `user_access_data`
--

CREATE TABLE `user_access_data` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `nickname` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_access_data`
--

INSERT INTO `user_access_data` (`id`, `login`, `password`, `ip`, `status`, `nickname`) VALUES
(12, 'antondp750@gmail.com', '$2y$10$J6Ud6QHOSPlHqgoMuD5FHOBT4.MTUE0VqkkSJxClcOJjdk7FHMYP2', '159.224.64.232', 0, 'KotLot220'),
(13, 'kotdp750@gmail.com', '$2y$10$aKKwBbEf9ssRalpAR314M..jGJiHZZnyM9aqsYwYM8ZHDRRmW3Ea6', '159.224.64.232', 1, 'KitLit'),
(14, 'gfghhg@gmail.com', '$2y$10$ljaTMZ7bz30E7vPoKWRNte76dnSHaqSFhB3xtm8AnATs4uublds8q', '46.98.120.154', 1, 'E1'),
(16, 'bombom@gmail.com', '$2y$10$zVl5EsHxN8NSg.1paeCOP.ouwlxcpYbXb49PgZlfmaRsLQyvj/fCy', '159.224.64.232', 0, 'kotik'),
(15, 'qwe@ku.com', '$2y$10$W7R5dMLi2sYZBQB6jirNE.vm1JYBT8GSOmjB0EnZgOS/wnwTqf83m', '159.224.64.232', 1, 'chel'),
(17, 'tilitili@gmail.com', '$2y$10$9yDaUaayzlY0GN39QXWyK.vCoLONBH89c/FVHy5HRmynR0SJ86Ota', '159.224.64.232', 0, 'bombom');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `text` (`text`) USING HASH;

--
-- Индексы таблицы `user_access_data`
--
ALTER TABLE `user_access_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT для таблицы `user_access_data`
--
ALTER TABLE `user_access_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
