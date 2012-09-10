-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Вер 10 2012 р., 05:02
-- Версія сервера: 5.5.24
-- Версія PHP: 5.3.10-1ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- БД: `paciorky_development`
--

-- --------------------------------------------------------

--
-- Структура таблиці `assets`
--

CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_file_size` int(11) DEFAULT NULL,
  `asset_updated_at` datetime DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Дамп даних таблиці `assets`
--

INSERT INTO `assets` (`id`, `asset_file_name`, `asset_content_type`, `asset_file_size`, `asset_updated_at`, `item_id`, `created_at`, `updated_at`) VALUES
(3, 'dsc_0979_small.jpg', 'image/jpeg', 78655, '2012-08-26 16:23:00', 2, '2012-08-26 16:23:02', '2012-08-26 16:23:02'),
(4, 'dsc_0972_small.jpg', 'image/jpeg', 100461, '2012-08-26 16:23:01', 2, '2012-08-26 16:23:02', '2012-08-26 16:23:02'),
(5, 'dsc_9804_small.jpg', 'image/jpeg', 65020, '2012-08-29 10:36:43', 3, '2012-08-29 10:36:44', '2012-08-29 10:36:44'),
(7, 'dsc_9782_small.jpg', 'image/jpeg', 58945, '2012-08-29 10:38:19', 4, '2012-08-29 10:38:20', '2012-08-29 10:38:20'),
(8, 'dsc_9783_small.jpg', 'image/jpeg', 57469, '2012-08-29 10:38:20', 4, '2012-08-29 10:38:20', '2012-08-29 10:38:20'),
(9, 'dsc_9637_small.jpg', 'image/jpeg', 72219, '2012-09-04 23:56:32', 5, '2012-09-04 23:56:35', '2012-09-04 23:56:35'),
(10, 'dsc_9637_small.jpg', 'image/jpeg', 72219, '2012-09-04 23:56:52', 6, '2012-09-04 23:56:52', '2012-09-04 23:56:52'),
(11, '6332651621_60ddf85105_o.jpg', 'image/jpeg', 295295, '2012-09-10 00:49:38', 3, '2012-09-10 00:49:39', '2012-09-10 00:49:39');

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cover_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `cover_id`) VALUES
(1, 'Сережки', '2012-08-26 15:42:10', '2012-09-04 23:17:18', 2),
(2, 'Намиста і кольє', '2012-08-26 15:47:14', '2012-09-04 23:16:49', 3),
(3, 'Перстені', '2012-08-26 15:47:26', '2012-09-04 23:16:57', 4),
(5, 'Брошки', '2012-09-04 23:52:36', '2012-09-04 23:59:32', 6);

-- --------------------------------------------------------

--
-- Структура таблиці `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_items_on_slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп даних таблиці `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`, `category_id`, `slug`) VALUES
(2, 'Франсуаза ', '<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;">Вишукані й романтичні сережки ручної роботи з намистинок, обплетених чеським бісером ніжних благородних кольорів. Скляні підвски-крапельки дивовижно сяють і переливаються, відбиваючи кожен промінчик світла. Можуть стати прекрасним доповненням до Вашого весільного вбрання.</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Довжина</strong>: 5 см (зі швензою).&nbsp;</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Діаметр</strong>&nbsp;плетеної намистинки ~ 14 мм.&nbsp;</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Матеріяли</strong>: чеський бісер, скло, срібло 925 проби.</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><em>Кожну прикрасу я безкоштовно запаковую в оригінальну подарункову коробочку чи торбинку з органзи.</em></p>', 125, '2012-08-26 16:23:02', '2012-09-03 21:23:25', 1, '--2'),
(3, 'Шафран', '<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;">Прекрасне авторське кольє ручної роботи кольору весняних крокусів. Складається з 13 низок. Кожна намистинка (а їх понад 300!) виліплена вручну з полімерної глини. Зібрано з рожевим коралом та бронзовою фурнітурою. Низки в кольє можна злегка перекрутити між собою, так гарніше лягає на шиї. Уявляю його як розкішну акцентну прикрасу, наприклад, до сірої чи світло-бузкової сукні.&nbsp;</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Довжина:&nbsp;</strong>45 см (із застібкою).</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Розмір</strong>&nbsp;циліндричної намистинки ~ 12 мм.</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Матеріяли</strong>: полімерна глина, рожевий корал, фурнітура.&nbsp;</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><em>Кожну прикрасу я безкоштовно запаковую в оригінальну подарункову коробочку чи торбинку з органзи.</em></p>', 550, '2012-08-29 10:36:44', '2012-09-03 21:23:25', 2, '--3'),
(4, 'Beige', '<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;">Перстеньок ручної роботи з полімерної глини в етно-стилі. Імітація кераміки, штамп. Основа безрозмірна, але найменший розмір - 16,5. Надійне кріплення забезпечене за допомогою двокомпонентного епоксидного клею.</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Діаметр:</strong>&nbsp;~18 мм.</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Матеріяли:</strong>&nbsp;полімерна глина, бронзова фурнітура.</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><em>Кожну прикрасу я безкоштовно запаковую в оригінальну подарункову коробочку чи торбинку з органзи.</em></p>', 90, '2012-08-29 10:38:20', '2012-09-03 21:23:25', 3, 'beige'),
(6, 'Квіточка (червона) ', '<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;">5 милих брошок-квіточок ручної роботи в різних кольорах з маленькими хризолітами в серединці. &nbsp;Зроблені з полімерної глини. Витиснений візерунок на пелюстках трохи відблискує срібним чи золотим. Не лише прикрасять Ваш яскравий образ, а й неодмінно підіймуть настрій! ;)</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;">Продаються поштучно.</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Розмір:&nbsp;</strong>~ 5х5 см.</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><strong>Матеріяли:</strong>&nbsp;полімерна глина, хризоліт, фурнітура.</p>\r\n<p style="margin: 1.5em 0px; color: #463829; font-family: Georgia, ''Times New Roman'', Times, serif; font-size: 14px; line-height: 21px;"><em>Кожну прикрасу я безкоштовно запаковую в оригінальну подарункову коробочку чи торбинку з органзи.</em></p>', 55, '2012-09-04 23:56:52', '2012-09-04 23:56:52', 5, '--5');

-- --------------------------------------------------------

--
-- Структура таблиці `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_pages_on_slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп даних таблиці `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Про автора', '<p class="MsoNormal"><span style="color: #463829;"><img id="__mce_tmp" style="float: left; padding-right: 10px;" src="../../../assets/profile.jpg" alt="" width="239" height="233" />Усім привіт!</span></p>\r\n<p class="MsoNormal"><span style="color: #463829; mso-ansi-language: UK;">Мені дуже приємно, що Ви завітали до моєї крамнички-майстерні, і я сподіваюсь, що Вам тут затишно, зручно й цікаво.</span></p>\r\n<p class="MsoNormal"><span style="color: #463829; mso-ansi-language: UK;">Мене звати Христина Бондар (в мережі - dzjunka). Я художниця, невиправно творча особистість, філософ і естет. Відколи себе пам&rsquo;ятаю, я завжди займалась якоюсь творчістю. Можливо, часом занадто різною, як от літературна творчість і художня, та все ж. На цьому сайті представлені прикраси, які я створюю власноруч з найрізноманітніших матеріалів, наразі віддаючи перевагу полімерній глині.</span></p>\r\n<p class="MsoNormal"><span>Над кожною намистинкою я просиджую чимало часу, працюючи над деталями доти, доки остаточно не залишусь задоволена результатом. Але сам процес мене неймовірно захоплює. Щодня я прагну вдосконалюватись, розвиватись і завжди вчитись чомусь новому. З цієї причини я не надто охоче роблю копії своїх робіт, а частіше за все взагалі відмовляю в повторах. Але мені дуже цікаво створювати прикраси до вбрання, чи просто якісь неординарні речі, тож таким замовленням я завжди рада. </span></p>\r\n<p class="MsoNormal"><span>Якщо Ви маєте якісь питання чи пропозиції, прошу звертатись на мій особистий e-mail: <a href="mailto:dzjunka@gmail.com">dzjunka@gmail.com</a>&nbsp;</span>чи телефонувати на 097 91&nbsp;225 13.</p>', '2012-09-09 14:04:09', '2012-09-09 14:21:55', 'about'),
(2, 'Оплата і доставка', '<p class="MsoNormal" style="text-align: center;"><span><strong>ОПЛАТА</strong></span></p>\r\n<p class="MsoNormal"><span>&nbsp;</span><span>Оплата готівкою можлива тільки для львів&rsquo;</span>ян <span>під час отримання своєї покупки при зустрічі зі мною. В інших випадках оплата здійснюється шляхом грошового переказу на <strong>картковий рахунок Приватбанку</strong> (реквізити будуть надіслані на Ваш e-mail) або також можна здійснити переказ &laquo;Укрпоштою&raquo; (адресу я також надішлю Вам на e-mail).</span></p>\r\n<p class="MsoNormal"><span>Мешканці інших країн можуть оплатити свою покупку за допомогою платіжних систем Unіstreаm, </span><span>Western</span><span>Union</span><span> і т.д.</span></p>\r\n<p class="MsoNormal" style="text-align: center;"><span>&nbsp;</span><strong>ДОСТАВКА</strong></p>\r\n<p class="MsoNormal"><span>&nbsp;</span>Доставка прикрас здійснюється абсолютно в будь-який куточок світу за рахунок замовника і після 100% оплати покупки. Всі прикраси доставляються в подарункових коробочках.</p>\r\n<p class="MsoNormal"><span>&nbsp;</span><strong><span>Якщо Ви мешкаєте у Львові</span></strong><span>, то забрати свою покупку й оплатити її можна при особистій зустрічі зі мною в центрі міста: просто зателефонуйте, і ми домовимось.</span></p>\r\n<p class="MsoNormal"><span>&nbsp;</span><strong><span>Якщо Ви мешкаєте в будь-якому іншому місті України, </span></strong><span>то доставка буде здійснюватись за допомогою компаній &laquo;Нова пошта&raquo;, &laquo;Експрес-пошта&raquo;, &laquo;Інтайм&raquo;, &laquo;Автолюкс&raquo;, &laquo;Гюнсел&raquo; та ін.. Це оперативно й недорого. Отримуєте свою посилку Ви за день-другий після відправки, й самі сплачуєте доставку. Це зазвичай від 10 до 15 грн. (за схемою доставки &laquo;склад-склад&raquo; і в залежності від ваги).</span></p>\r\n<p class="MsoNormal"><span>&nbsp;</span>Якщо у Вашому місті немає таких служб доставки, я надішлю прикраси &laquo;Укрпоштою&raquo;, але тривалість такої доставки &ndash;5-10 робочих днів.</p>\r\n<p class="MsoNormal"><span>&nbsp;</span><strong><span>Якщо Ви мешкаєте в іншій країні, </span></strong><span>доставка буде здійснюватись за допомогою &laquo;Укрпошти&raquo; (приблизна вартість - 80 грн, але все залежить від ваги й країни).</span></p>\r\n<p class="MsoNormal"><span>&nbsp;</span><em><span>*Доставка замовлення, вартість якого перевищує 350 грн., по Україні здійснюється безкоштовно!</span></em></p>\r\n<p class="MsoNormal"><span style="text-decoration: underline;">Для додаткової інформації:</span></p>\r\n<p class="MsoNormal">097 91&nbsp;225 13 &ndash; Христина<br /><span>shop</span>@<span>paciorky.com</span></p>', '2012-09-09 14:27:01', '2012-09-09 14:27:01', 'shipping-and-payments'),
(3, 'Головна', '<p style="text-align: center;" align="center"><span>Рада вітати Вас, шановні відвідувачі, на нашому оновленому сайті творчої майстерні "Пацьорки"!</span></p>\r\n<p style="text-align: center;" align="center"><span>Нарешті Ви можете потішитись новими прикрасами! І сподіваюсь, що тепер Вам тут набагато затишніше, зручніше й цікавіше. Тож почувайтесь як вдома! І не забувайте про те, що зимові свята з кожним днем стають все ближче, тож саме час подбати про презенти для своїх близьких та друзів!</span>&nbsp;&nbsp;</p>\r\n<p><img class="aligncenter" style="vertical-align: middle; display: block;" src="https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-snc6/c0.0.851.315/p851x315/192097_455578184465254_902321211_o.jpg" alt="" width="700" height="315" /></p>', '2012-09-09 15:37:07', '2012-09-09 15:37:07', 'frontpage');

-- --------------------------------------------------------

--
-- Структура таблиці `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20120825155016'),
('20120825155023'),
('20120825163523'),
('20120826105634'),
('20120826150221'),
('20120826150514'),
('20120829105105'),
('20120903210345'),
('20120904230504'),
('20120908233728'),
('20120909134208');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `name`) VALUES
(1, 'user@example.com', '$2a$10$nt3ztAAnSE/0rmyfYPuLmecGUl4HSth0rw/Ud4Dsx62cnIIR56Q8K', NULL, NULL, '2012-08-29 11:10:04', 2, '2012-08-29 11:10:04', '2012-08-26 15:24:44', '127.0.0.1', '127.0.0.1', '2012-08-26 15:21:59', '2012-08-29 11:10:04', 'First User'),
(2, 'user2@example.com', '$2a$10$BHxX8a7iTPABk3eCsSP6cO1dOElC.X4E32SOvhW0uq4Zkux3x88Pa', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-08-26 15:22:00', '2012-08-26 15:22:00', 'Second User');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
