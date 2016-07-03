-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 04 2016 г., 00:41
-- Версия сервера: 5.5.48
-- Версия PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phalcon_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `departaments`
--

CREATE TABLE IF NOT EXISTS `departaments` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `departaments`
--

INSERT INTO `departaments` (`id`, `title`, `user_id`) VALUES
(1, 'Легкой промышлености', 0),
(2, 'Тяжелой промышлености', 0),
(3, 'Статистики', 0),
(4, 'Логистики', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`) VALUES
(7, 'Инженер'),
(8, 'Менеджер'),
(9, 'Лаборант'),
(10, 'Ассистент');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) DEFAULT NULL,
  `dept_id` int(11) NOT NULL,
  `notes` text
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `email`, `phone`, `parent_id`, `post_id`, `dept_id`, `notes`) VALUES
(1, 'Amery', 'Rush', 'Fusce.mi.lorem@nullaInteger.ca', '(879) 287-1497', 29, 7, 2, 'Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra.'),
(2, 'Dustin', 'Wiley', 'arcu.Sed.et@lacinia.edu', '(330) 321-3650', 33, 9, 1, 'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a'),
(4, 'Alan', 'Moore', 'sem.ut@eleifendCras.co.uk', '(565) 861-6065', 0, 7, 2, 'orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna'),
(5, 'Warren', 'Rojas', 'orci.in.consequat@nullavulputatedui.co.uk', '(871) 749-1082', 0, 7, 3, 'Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.'),
(6, 'Uriel', 'Lang', 'dictum@lacusEtiam.com', '(833) 624-6508', 5, 7, 3, 'mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet,'),
(7, 'Reese', 'Vazquez', 'pellentesque.eget.dictum@fermentum.com', '(995) 237-1849', 0, 9, 2, 'amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing'),
(8, 'Magee', 'Maynard', 'Aliquam@auctornunc.net', '(867) 892-6074', 0, 10, 2, 'velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc'),
(9, 'Marsden', 'Odom', 'sodales.Mauris.blandit@ligulaNullamenim.edu', '(570) 930-9805', 0, 10, 2, 'in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit'),
(10, 'Sean', 'Bishop', 'non.lacinia@Crasegetnisi.ca', '(500) 198-9137', 21, 10, 4, 'sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis'),
(11, 'Cruz', 'Sutton3333', 'ipsum.Phasellus@interdumligula.edu', '(849) 901-3584', 0, 10, 3, 'Sed et libero. Proin mi. Aliquam gravida mauris ut mi.'),
(12, 'Baxter', 'Middleton', 'Nulla.tincidunt.neque@duisemper.ca', '(413) 413-5936', 0, 9, 4, 'tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi'),
(13, 'Beck', 'Moody', 'Donec.nibh.Quisque@Namtempor.net', '(854) 715-0170', 0, 10, 2, 'libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus'),
(14, 'Jack', 'Sanders', 'Phasellus.ornare.Fusce@dictumcursus.co.uk', '(160) 367-8605', 0, 9, 2, 'Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis'),
(15, 'Fuller', 'Howard', 'consectetuer@Suspendissecommodo.ca', '(127) 138-0637', 14, 9, 2, 'nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat'),
(16, 'Dorian', 'Oconnor', 'ac.mattis.ornare@quisdiam.net', '(226) 790-1526', 0, 7, 4, 'at arcu. Vestibulum ante ipsum primis in faucibus orci luctus'),
(17, 'Price', 'Monroe', 'pharetra@semperet.co.uk', '(632) 421-7579', 12, 8, 4, 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi.'),
(18, 'Dean', 'Ortiz', 'hendrerit.a.arcu@semper.ca', '(373) 408-5564', 72, 8, 3, 'mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada.'),
(19, 'Callum', 'Fry', 'odio.auctor@parturientmontesnascetur.com', '(347) 638-7385', 0, 10, 3, 'faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.'),
(20, 'Kermit', 'Sargent', 'Ut@vitae.edu', '(744) 767-0226', 0, 9, 4, 'Duis a mi fringilla mi lacinia mattis. Integer eu lacus.'),
(21, 'Gavin', 'Dalton', 'Vivamus@luctus.edu', '(170) 451-4998', 12, 8, 4, 'aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque'),
(22, 'Marvin', 'Barton', 'purus.mauris.a@sagittisNullam.com', '(382) 898-8455', 0, 10, 4, 'enim. Nunc ut erat. Sed nunc est, mollis non, cursus'),
(23, 'Salvador', 'English', 'Nam.nulla@nequetellusimperdiet.org', '(568) 988-6450', 0, 10, 1, 'vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce'),
(24, 'Rashad', 'Osborne', 'Proin@hendreritconsectetuercursus.com', '(496) 802-4306', 0, 9, 4, 'sagittis felis. Donec tempor, est ac mattis semper, dui lectus'),
(25, 'Wallace', 'Wolf', 'Donec.luctus@Inornare.net', '(958) 597-7118', 46, 9, 4, 'non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum'),
(26, 'Theodore', 'House', 'vehicula@nequepellentesque.org', '(982) 152-1112', 0, 10, 4, 'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus'),
(27, 'Edan', 'Boyer', 'arcu@eu.net', '(824) 965-5053', 61, 7, 4, 'consectetuer euismod est arcu ac orci. Ut semper pretium neque.'),
(28, 'Craig', 'Wise', 'fermentum@ametloremsemper.com', '(459) 148-8030', 0, 10, 4, 'eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit'),
(29, 'Tate', 'Cervantes', 'Vivamus.non@convallis.org', '(460) 181-0021', 0, 8, 2, 'rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at,'),
(30, 'Dean', 'Mendoza', 'felis@sapiencursusin.net', '(561) 917-9579', 44, 9, 4, 'dui. Cum sociis natoque penatibus et magnis dis parturient montes,'),
(31, 'Ralph', 'Sharp', 'lobortis.quam.a@orciUt.ca', '(664) 954-9821', 0, 10, 2, 'Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel'),
(32, 'Christian', 'Watkins', 'nec.ante.Maecenas@tincidunt.co.uk', '(840) 739-5145', 0, 9, 3, 'lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc'),
(33, 'Garth', 'Cooper', 'nibh.enim@Fuscediam.net', '(888) 474-3295', 23, 10, 1, 'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,'),
(34, 'Ishmael', 'Hawkins', 'Fusce.mi@cursuspurus.com', '(731) 491-8495', 0, 10, 3, 'ut erat. Sed nunc est, mollis non, cursus non, egestas'),
(35, 'Vincent', 'Burt', 'quam@accumsaninterdum.net', '(974) 284-8387', 61, 10, 4, 'Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi'),
(36, 'Rahim', 'Banks', 'mauris@ullamcorper.org', '(603) 682-8022', 0, 9, 3, 'Aenean gravida nunc sed pede. Cum sociis natoque penatibus et'),
(37, 'Brennan', 'Farrell', 'mi.pede@ametornare.net', '(638) 681-0681', 0, 10, 2, 'egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem'),
(38, 'Hamilton', 'Poole', 'Quisque.imperdiet.erat@sem.com', '(564) 988-6633', 0, 7, 3, 'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat.'),
(39, 'Baxter', 'Carroll', 'eu@elementum.com', '(850) 281-9432', 46, 9, 4, 'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus'),
(40, 'Honorato', 'Sampson', 'venenatis.lacus@mieleifendegestas.co.uk', '(206) 893-6431', 0, 7, 3, 'ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper'),
(41, 'Myles', 'Webster', 'ligula@Vestibulumut.co.uk', '(438) 675-3012', 0, 7, 1, 'non lorem vitae odio sagittis semper. Nam tempor diam dictum'),
(42, 'Brett', 'Lopez', 'lacus.Etiam.bibendum@etnuncQuisque.edu', '(252) 305-8213', 0, 10, 2, 'est tempor bibendum. Donec felis orci, adipiscing non, luctus sit'),
(43, 'Zane', 'Garza', 'lorem.sit.amet@porttitor.org', '(648) 301-4970', 0, 10, 1, 'auctor, nunc nulla vulputate dui, nec tempus mauris erat eget'),
(44, 'August', 'Maxwell', 'non@nonummyacfeugiat.net', '(453) 675-7414', 61, 9, 4, 'cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam'),
(45, 'Colorado', 'Holman', 'nec.tellus@lobortisrisusIn.ca', '(857) 869-8131', 0, 10, 2, 'montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique'),
(46, 'Basil', 'Barron', 'vulputate@eu.edu', '(583) 853-2069', 61, 9, 4, 'Quisque libero lacus, varius et, euismod et, commodo at, libero.'),
(47, 'Baker', 'Cotton', 'ac@Nam.org', '(703) 118-2797', 0, 8, 3, 'Sed molestie. Sed id risus quis diam luctus lobortis. Class'),
(48, 'Hayden', 'Pena', 'natoque@nulla.ca', '(429) 329-6744', 46, 9, 4, 'nibh enim, gravida sit amet, dapibus id, blandit at, nisi.'),
(49, 'Cyrus', 'Rogers', 'elit@acfeugiatnon.com', '(860) 312-2289', 0, 9, 3, 'lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum'),
(50, 'Richard', 'Barrera', 'dolor@Curabiturdictum.co.uk', '(608) 327-0203', 44, 7, 4, 'nunc. Quisque ornare tortor at risus. Nunc ac sem ut'),
(51, 'Chaney', 'Cox', 'enim.Etiam@tellusNunclectus.co.uk', '(888) 338-1622', 0, 10, 2, 'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum'),
(52, 'Jared', 'Hendricks', 'sagittis.felis.Donec@necmetus.org', '(500) 450-5086', 0, 9, 2, 'mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut,'),
(53, 'Daniel', 'Whitney', 'egestas@eratvitaerisus.org', '(610) 432-1135', 0, 9, 3, 'ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem'),
(54, 'Kasimir', 'Dale', 'cursus@luctus.org', '(131) 495-9162', 0, 9, 3, 'ornare lectus justo eu arcu. Morbi sit amet massa. Quisque'),
(55, 'Cole', 'Rice', 'vel.convallis@augue.com', '(614) 486-4643', 0, 8, 1, 'luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget,'),
(56, 'Theodore', 'Gentry', 'a.magna.Lorem@semPellentesque.com', '(878) 570-2434', 0, 7, 2, 'ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit'),
(57, 'Beau', 'Ramos', 'et@Crasdictumultricies.ca', '(845) 899-0547', 0, 8, 3, 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.'),
(58, 'Todd', 'Brock', 'ac.turpis.egestas@erosProin.org', '(507) 409-0801', 0, 7, 3, 'velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc'),
(59, 'Stone', 'Horton', 'congue.elit.sed@Donec.co.uk', '(857) 307-8303', 0, 9, 1, 'lacinia orci, consectetuer euismod est arcu ac orci. Ut semper'),
(60, 'Marvin', 'Griffin', 'nibh.enim.gravida@MorbivehiculaPellentesque.edu', '(579) 193-0625', 0, 10, 3, 'fames ac turpis egestas. Fusce aliquet magna a neque. Nullam'),
(61, 'Lucius', 'Chambers', 'feugiat@Maurisquis.ca', '(489) 636-5384', 24, 9, 4, 'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce'),
(62, 'Cruz', 'Ballard', 'augue.scelerisque@lobortis.net', '(525) 330-7257', 0, 9, 2, 'ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu'),
(63, 'Guy', 'Lynn', 'suscipit.nonummy.Fusce@anuncIn.co.uk', '(348) 505-0507', 0, 10, 2, 'egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor'),
(64, 'Peter', 'Hawkins', 'amet.metus.Aliquam@turpisnonenim.org', '(518) 237-4959', 0, 10, 1, 'amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,'),
(65, 'Ferdinand', 'Nguyen', 'sit.amet.consectetuer@nullaante.org', '(234) 131-6838', 0, 7, 2, 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis'),
(66, 'Nicholas', 'Dalton', 'faucibus.Morbi@porttitor.net', '(192) 378-8260', 0, 7, 3, 'in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit'),
(67, 'Steel', 'Hamilton', 'lacus.vestibulum.lorem@laoreetliberoet.edu', '(207) 988-3593', 0, 7, 1, 'libero et tristique pellentesque, tellus sem mollis dui, in sodales'),
(68, 'Clark', 'Sharp', 'scelerisque@facilisis.net', '(264) 494-5562', 0, 9, 4, 'sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula'),
(69, 'Evan', 'Olson', 'Vivamus.nibh@velvenenatis.ca', '(154) 933-1241', 0, 8, 1, 'eu, odio. Phasellus at augue id ante dictum cursus. Nunc'),
(70, 'August', 'Miranda', 'dis.parturient.montes@hendreritDonecporttitor.co.uk', '(157) 482-3720', 0, 7, 1, 'elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et'),
(71, 'Jarrod', 'Cole', 'semper.tellus@vitaepurus.com', '(707) 722-2276', 0, 8, 2, 'gravida nunc sed pede. Cum sociis natoque penatibus et magnis'),
(72, 'Gannon', 'Donovan', 'metus.Vivamus@magnaPraesent.net', '(582) 594-7052', 0, 8, 3, 'habitant morbi tristique senectus et netus et malesuada fames ac'),
(73, 'Donovan', 'Miles', 'posuere.enim.nisl@sollicitudin.edu', '(726) 113-6776', 0, 9, 4, 'lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque.'),
(74, 'Amery', 'Bryan', 'molestie.arcu@pedesagittisaugue.org', '(732) 736-9249', 0, 9, 2, 'Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu'),
(75, 'Driscoll', 'Underwood', 'justo.nec.ante@ipsum.ca', '(698) 632-5363', 0, 8, 1, 'Donec non justo. Proin non massa non ante bibendum ullamcorper.'),
(101, 'dfgdfg', 'werwer', 'ruslan.ua@mail.ru', '123123123123', 0, 7, 1, ''),
(77, 'Colt', 'Moss', 'in.dolor@Donec.com', '(487) 812-0153', 0, 7, 4, 'gravida nunc sed pede. Cum sociis natoque penatibus et magnis'),
(80, 'Harrison', 'Williams', 'turpis.Aliquam.adipiscing@ullamcorperDuis.com', '(290) 116-5324', 0, 9, 1, 'ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque'),
(81, 'Keaton', 'Trujillo', 'nisl@eu.co.uk', '(983) 931-7413', 0, 8, 3, 'mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut,'),
(82, 'Preston', 'Booth', 'pellentesque.massa.lobortis@lectusa.org', '(782) 370-1406', 0, 10, 4, 'tristique senectus et netus et malesuada fames ac turpis egestas.'),
(83, 'Eric', 'Curtis', 'Duis.volutpat.nunc@molestiearcu.org', '(711) 778-0611', 0, 10, 3, 'commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac,'),
(84, 'Lyle', 'Jennings', 'lacinia@eu.com', '(984) 201-9430', 0, 7, 4, 'ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor'),
(85, 'Asher', 'Carson', 'sapien.Aenean@libero.ca', '(967) 573-0446', 0, 7, 3, 'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce'),
(86, 'Stephen', 'William', 'non.magna@purusgravidasagittis.co.uk', '(898) 910-7017', 0, 8, 1, 'orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean'),
(87, 'Elmo', 'Cleveland', 'ornare@Sed.co.uk', '(142) 320-8571', 0, 8, 1, 'Cras eu tellus eu augue porttitor interdum. Sed auctor odio'),
(88, 'Walter', 'Anthony', 'lacinia.vitae@Etiamvestibulum.co.uk', '(987) 891-8136', 0, 10, 2, 'neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc'),
(89, 'Reece', 'Conner', 'arcu.Vestibulum.ante@feugiatnec.ca', '(450) 833-3750', 0, 9, 1, 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed'),
(90, 'Kenneth', 'Roy', 'ipsum@montesnasceturridiculus.ca', '(407) 766-8983', 0, 8, 3, 'et netus et malesuada fames ac turpis egestas. Fusce aliquet'),
(91, 'Donovan', 'Ward', 'Nunc.ullamcorper@afeugiat.com', '(852) 179-0967', 101, 9, 1, 'vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh'),
(92, 'Cameron', 'Norris', 'fringilla.ornare.placerat@vitaenibhDonec.ca', '(208) 645-0326', 0, 7, 2, 'risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed'),
(93, 'Colby', 'Mills', 'ac@enimnon.ca', '(889) 423-5169', 0, 7, 1, 'Sed eget lacus. Mauris non dui nec urna suscipit nonummy.'),
(94, 'Jakeem', 'Higgins', 'lacus@ac.org', '(150) 834-8914', 0, 8, 3, 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus'),
(95, 'Denton', 'Griffith', 'odio.vel.est@Integeraliquamadipiscing.co.uk', '(905) 974-1875', 63, 8, 2, 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec'),
(96, 'Elton', 'Castro', 'at.nisi.Cum@Aeneanegestas.co.uk', '(731) 962-9758', 0, 7, 3, 'rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida'),
(97, 'Dexter', 'Goodwin', 'Nullam.ut.nisi@pharetra.org', '(146) 510-5251', 0, 7, 3, 'Aenean gravida nunc sed pede. Cum sociis natoque penatibus et'),
(98, 'Otto', 'Pierce', 'Duis@tellus.edu', '(267) 448-6217', 0, 8, 4, 'Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus.'),
(99, 'Hu', 'Waller', 'per.conubia@infaucibus.co.uk', '(338) 551-9284', 0, 9, 4, 'Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam'),
(100, 'Price', 'Kidd', 'sem@quisdiam.org', '(973) 444-5387', 0, 7, 1, 'et netus et malesuada fames ac turpis egestas. Fusce aliquet');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `departaments`
--
ALTER TABLE `departaments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `departaments`
--
ALTER TABLE `departaments`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
