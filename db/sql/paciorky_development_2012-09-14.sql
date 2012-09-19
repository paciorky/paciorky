-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Вер 14 2012 р., 22:27
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

--
-- Дамп даних таблиці `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Про автора', '<p class="MsoNormal"><span style="color: #463829;"><img id="__mce_tmp" style="float: left; padding-right: 10px;" src="../../../assets/profile.jpg" alt="" width="239" height="233" />Усім привіт!</span></p>\r\n<p class="MsoNormal"><span style="color: #463829; mso-ansi-language: UK;">Мені дуже приємно, що Ви завітали до моєї крамнички-майстерні, і я сподіваюсь, що Вам тут затишно, зручно й цікаво.</span></p>\r\n<p class="MsoNormal"><span style="color: #463829; mso-ansi-language: UK;">Мене звати Христина Бондар (в мережі - dzjunka). Я художниця, невиправно творча особистість, філософ і естет. Відколи себе пам&rsquo;ятаю, я завжди займалась якоюсь творчістю. Можливо, часом занадто різною, як от літературна творчість і художня, та все ж. На цьому сайті представлені прикраси, які я створюю власноруч з найрізноманітніших матеріалів, наразі віддаючи перевагу полімерній глині.</span></p>\r\n<p class="MsoNormal"><span>Над кожною намистинкою я просиджую чимало часу, працюючи над деталями доти, доки остаточно не залишусь задоволена результатом. Але сам процес мене неймовірно захоплює. Щодня я прагну вдосконалюватись, розвиватись і завжди вчитись чомусь новому. З цієї причини я не надто охоче роблю копії своїх робіт, а частіше за все взагалі відмовляю в повторах. Але мені дуже цікаво створювати прикраси до вбрання, чи просто якісь неординарні речі, тож таким замовленням я завжди рада. </span></p>\r\n<p class="MsoNormal"><span>Якщо Ви маєте якісь питання чи пропозиції, прошу звертатись на мій особистий e-mail: <a href="mailto:dzjunka@gmail.com">dzjunka@gmail.com</a>&nbsp;</span>чи телефонувати на 097 91&nbsp;225 13.</p>', '2012-09-09 14:04:09', '2012-09-09 14:21:55', 'about'),
(2, 'Оплата і доставка', '<p class="MsoNormal" style="text-align: center;"><span><strong>ОПЛАТА</strong></span></p>\r\n<p class="MsoNormal"><span>&nbsp;</span><span>Оплата готівкою можлива тільки для львів&rsquo;</span>ян <span>під час отримання своєї покупки при зустрічі зі мною. В інших випадках оплата здійснюється шляхом грошового переказу на <strong>картковий рахунок Приватбанку</strong> (реквізити будуть надіслані на Ваш e-mail) або також можна здійснити переказ &laquo;Укрпоштою&raquo; (адресу я також надішлю Вам на e-mail).</span></p>\r\n<p class="MsoNormal"><span>Мешканці інших країн можуть оплатити свою покупку за допомогою платіжних систем Unіstreаm, </span><span>Western</span><span>Union</span><span> і т.д.</span></p>\r\n<p class="MsoNormal" style="text-align: center;"><span>&nbsp;</span><strong>ДОСТАВКА</strong></p>\r\n<p class="MsoNormal"><span>&nbsp;</span>Доставка прикрас здійснюється абсолютно в будь-який куточок світу за рахунок замовника і після 100% оплати покупки. Всі прикраси доставляються в подарункових коробочках.</p>\r\n<p class="MsoNormal"><span>&nbsp;</span><strong><span>Якщо Ви мешкаєте у Львові</span></strong><span>, то забрати свою покупку й оплатити її можна при особистій зустрічі зі мною в центрі міста: просто зателефонуйте, і ми домовимось.</span></p>\r\n<p class="MsoNormal"><span>&nbsp;</span><strong><span>Якщо Ви мешкаєте в будь-якому іншому місті України, </span></strong><span>то доставка буде здійснюватись за допомогою компаній &laquo;Нова пошта&raquo;, &laquo;Експрес-пошта&raquo;, &laquo;Інтайм&raquo;, &laquo;Автолюкс&raquo;, &laquo;Гюнсел&raquo; та ін.. Це оперативно й недорого. Отримуєте свою посилку Ви за день-другий після відправки, й самі сплачуєте доставку. Це зазвичай від 10 до 15 грн. (за схемою доставки &laquo;склад-склад&raquo; і в залежності від ваги).</span></p>\r\n<p class="MsoNormal"><span>&nbsp;</span>Якщо у Вашому місті немає таких служб доставки, я надішлю прикраси &laquo;Укрпоштою&raquo;, але тривалість такої доставки &ndash;5-10 робочих днів.</p>\r\n<p class="MsoNormal"><span>&nbsp;</span><strong><span>Якщо Ви мешкаєте в іншій країні, </span></strong><span>доставка буде здійснюватись за допомогою &laquo;Укрпошти&raquo; (приблизна вартість - 80 грн, але все залежить від ваги й країни).</span></p>\r\n<p class="MsoNormal"><span>&nbsp;</span><em><span>*Доставка замовлення, вартість якого перевищує 350 грн., по Україні здійснюється безкоштовно!</span></em></p>\r\n<p class="MsoNormal"><span style="text-decoration: underline;">Для додаткової інформації:</span></p>\r\n<p class="MsoNormal">097 91&nbsp;225 13 &ndash; Христина<br /><span>shop</span>@<span>paciorky.com</span></p>', '2012-09-09 14:27:01', '2012-09-09 14:27:01', 'shipping-and-payments'),
(3, 'Головна', '<p style="text-align: center;" align="center"><span>Рада вітати Вас, шановні відвідувачі, на нашому оновленому сайті творчої майстерні "Пацьорки"!</span></p>\r\n<p style="text-align: center;" align="center"><span>Нарешті Ви можете потішитись новими прикрасами! І сподіваюсь, що тепер Вам тут набагато затишніше, зручніше й цікавіше. Тож почувайтесь як вдома! І не забувайте про те, що зимові свята з кожним днем стають все ближче, тож саме час подбати про презенти для своїх близьких та друзів!</span>&nbsp;&nbsp;</p>\r\n<p><img class="aligncenter" style="vertical-align: middle; display: block;" src="https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-snc6/c0.0.851.315/p851x315/192097_455578184465254_902321211_o.jpg" alt="" width="700" height="315" /></p>', '2012-09-09 15:37:07', '2012-09-09 15:37:07', 'frontpage');

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `name`) VALUES
(1, 'djunka@gmail.com', '$2a$10$1K9Ys7klBC0sw.xL8nlOCOiRTOdkU/ws/V4tF/isuJzGZIJctvmV6', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-09-14 19:27:05', '2012-09-14 19:27:05', 'Christine Bondar'),
(2, 'ikovalisko@gmail.com', '$2a$10$69KfUFYMJSFg2lqvlvsWeexlG.Jh4YkaBVhRH57mj0dsseIEB8McW', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-09-14 19:27:05', '2012-09-14 19:27:05', 'Ivan Kovalisko');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
