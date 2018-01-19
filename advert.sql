-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 20, 2018 at 12:48 AM
-- Server version: 10.0.33-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.1.13-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advert`
--

-- --------------------------------------------------------

--
-- Table structure for table `advert`
--

CREATE TABLE `advert` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `main_picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Published` tinyint(1) NOT NULL,
  `expdate` datetime NOT NULL,
  `create_date` datetime NOT NULL,
  `views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advert`
--

INSERT INTO `advert` (`id`, `category_id`, `city_id`, `title`, `description`, `price`, `main_picture`, `Published`, `expdate`, `create_date`, `views_count`) VALUES
(1, 1, 4, 'Ullam quia sequi itaque iste reprehenderit incidunt.', 'Then she went round the court with a yelp of delight, which changed into alarm in another moment, when she was coming back to the Duchess: \'and the moral of that dark hall, and close to her ear..', '37.280', 'ef664182af5c4dac9d1c714e16968157.jpg', 0, '1992-03-15 14:02:25', '2004-05-31 13:20:36', 190946699),
(2, 7, 3, 'Aut ducimus fugiat ducimus omnis nostrum est aut.', 'Alice could see it trying in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an old conger-eel, that used to it as a partner!\' cried the Gryphon, \'that.', '197.340', '5fe1bed7667ae7ee826992bbb541905a.jpg', 1, '2017-06-24 18:56:46', '2005-10-19 03:18:29', 1089807449),
(3, 2, 2, 'Amet a sint eaque iusto ducimus.', 'Dodo solemnly presented the thimble, looking as solemn as she wandered about in the last concert!\' on which the words a little, \'From the Queen. \'Their heads are gone, if it please your Majesty,\'.', '199.420', 'c9f08f35f1fe45738cc55220c4f112ef.jpg', 0, '1986-04-06 09:36:10', '2017-11-25 04:29:07', 1068498424),
(4, 1, 1, 'Sit voluptates est quia enim non.', 'And concluded the banquet--] \'What IS the use of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'I\'ve read that in the sand with wooden spades, then a.', '4.050', '7ef5ff232a972eb2aa7036c1a849c19e.jpg', 1, '2001-09-12 13:41:49', '2015-05-30 18:55:28', 474939341),
(5, 3, 5, 'Et soluta esse eius consequatur debitis delectus aspernatur tenetur.', 'I ought to go on till you come and join the dance. Will you, won\'t you, will you, won\'t you, will you join the dance? "You can really have no answers.\' \'If you knew Time as well as she spoke;.', '154.970', '0fb55346dc926ae99cff3605bf024b30.jpg', 0, '1972-09-15 14:00:18', '1990-06-10 11:11:04', 727569774),
(6, 3, 2, 'Doloribus saepe amet adipisci ratione rerum ut labore.', 'I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you take me for asking! No, it\'ll never do to come down the chimney close above her: then, saying to herself in a voice.', '121.310', '449a91ddd4f781a5437eee629f9e2139.jpg', 1, '1998-08-03 06:49:41', '2004-02-29 07:03:16', 1026843794),
(7, 2, 2, 'Amet veniam laudantium et quibusdam.', 'Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied very politely, \'if I had to pinch it to make out that it was a paper label, with the bread-and-butter getting so thin--and the twinkling.', '42.460', 'f6b2234e14d8ef23fdd8922658c7adf7.jpg', 0, '1990-06-18 15:02:48', '2001-10-15 16:45:04', 396288809),
(8, 4, 1, 'Natus quia harum dicta.', 'MINE,\' said the Dodo, pointing to the rose-tree, she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' he began. \'You\'re a very fine day!\' said a sleepy voice behind.', '116.860', 'a31befa4a4a2e92f661157ac1a4dedb8.jpg', 1, '1978-10-16 17:40:26', '1993-04-03 18:39:05', 177537880),
(9, 7, 4, 'Veritatis reiciendis quod in hic.', 'And she opened it, and behind it was written to nobody, which isn\'t usual, you know.\' \'Not at all,\' said the March Hare. Alice sighed wearily. \'I think I could, if I fell off the cake. * * * * *.', '10.080', 'ce012ffca6a8d0b2aceb9985a4e37c67.jpg', 1, '2007-01-01 12:01:06', '1985-09-04 14:41:16', 1836025657),
(10, 5, 6, 'Recusandae fuga doloremque fugit quo quo.', 'Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I don\'t put my arm round your waist,\' the Duchess was sitting on a crimson velvet cushion; and, last of all the.', '152.160', '69d45dc53d1f545425617c914a5fadd0.jpg', 0, '1971-01-11 13:14:02', '1983-04-03 23:15:41', 502196931),
(11, 1, 2, 'Dolores doloremque vel maxime inventore ea repellendus.', 'On which Seven looked up eagerly, half hoping that the pebbles were all talking at once, and ran till she was beginning to think about stopping herself before she had put on her lap as if she could.', '193.960', 'baf7a761149f38c9c2807737bab7b5db.jpg', 0, '1995-04-10 12:52:07', '1996-06-05 01:26:40', 1167722365),
(12, 8, 4, 'Quia repellat quia voluptatem temporibus ad.', 'Beautiful, beautiful Soup! Soup of the words have got in your knocking,\' the Footman went on planning to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I suppose?\' said.', '67.170', '6fb34df4cac4e7245fb709b785e41427.jpg', 1, '1979-05-23 05:43:21', '1982-11-09 05:25:28', 1311804263),
(13, 1, 3, 'Aliquam iusto iste distinctio ratione possimus voluptatem recusandae.', 'Poor Alice! It was the first really clever thing the King triumphantly, pointing to Alice for some time with the grin, which remained some time without hearing anything more: at last she spread out.', '12.830', 'b83e2c7b52f1df6eb9e7b9b88c973070.jpg', 0, '2007-06-23 17:34:13', '2015-05-07 15:07:07', 127934536),
(14, 4, 5, 'Dolorum sint sit excepturi dicta nobis.', 'Mouse was swimming away from him, and said to the door, she found this a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the shock of being all alone here!\' As she.', '111.190', '757399df5bde063f60502c6bffa54e95.jpg', 1, '2006-08-03 01:46:05', '1993-06-23 16:38:40', 1504035887),
(15, 6, 4, 'Labore eos facere aut voluptatem odio.', 'Rabbit, and had to double themselves up and ran off, thinking while she ran, as well say this), \'to go on in a shrill, passionate voice. \'Would YOU like cats if you please! "William the Conqueror.', '83.640', '8faeb20945613f3a2d6c02be8a2d13f6.jpg', 0, '1995-07-03 06:33:36', '1998-05-16 04:31:14', 403038505),
(16, 4, 5, 'Eaque officia est odit consequatur repellat iusto.', 'Queen had never seen such a curious croquet-ground in her own courage. \'It\'s no use speaking to a farmer, you know, upon the other queer noises, would change (she knew) to the little thing howled.', '83.290', '8bca0768d60dafb4d7fe2a09c2fd3e2e.jpg', 0, '2015-08-02 16:51:15', '1997-06-01 00:18:07', 387697242),
(17, 5, 1, 'Nam voluptatem aut molestiae magni.', 'Hatter. \'I told you butter wouldn\'t suit the works!\' he added in a piteous tone. And the muscular strength, which it gave to my right size: the next witness.\' And he got up in spite of all the same.', '52.510', '7c6d1e010f1f1fcde53da54474212604.jpg', 0, '1977-01-10 09:25:19', '2005-06-09 22:53:40', 340448161),
(18, 4, 7, 'Molestiae eos in pariatur impedit molestiae.', 'So she began: \'O Mouse, do you know about this business?\' the King eagerly, and he went on, taking first one side and then treading on her hand, watching the setting sun, and thinking of little.', '39.120', '6288c722aebda55e4eeb83d91128aeb7.jpg', 0, '2007-06-01 11:33:22', '1998-02-15 08:43:08', 1594849252),
(20, 5, 1, 'Atque autem facere qui consequatur voluptas non.', 'After a minute or two she stood still where she was ready to play croquet.\' The Frog-Footman repeated, in the pool a little quicker. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the.', '110.460', '0ad1ad4b9f5fcf6268625678332ca974.jpg', 1, '1984-02-16 13:41:12', '2009-08-11 15:03:19', 977332641);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(1, 'Designer Perfumes', 'Cupiditate-Est-Esse-Animi-Minus-Aspernatur-Dolorem-Repellendus-Sequi-Cumque-Accusantium-Alias-Odit-Sit-Amet-Reprehenderit-Asperiores-Saepe-Earum-Maiores-Cumque-Voluptatem-Fugiat-Est-Soluta-Illo'),
(2, 'Cameras', 'Omnis-Iure-Dolores-Voluptatum-Tempore-Et-Sunt-Tempore-Non-Quis-Consequatur-Corrupti-Molestiae-Ab-Et-Aliquam-Suscipit-Non-Harum-Blanditiis-Soluta-Non-Amet-Hic-Et-Et-Laborum-Mollitia-Enim-Sit-Placeat-Et-Officiis-Dicta-Molestias'),
(3, 'Electronics', 'Magnam-Dolores-Vel-Sunt-Nisi-Ut-Dolorem-Excepturi-Quis-Libero-Eos-Ipsa-Perferendis-Nihil-Rem-Nihil-Autem-Illo-Illo-Consequuntur-Amet-Suscipit-Molestias-Delectus-Officia-Non-Eius-Quia'),
(4, 'Computers', 'Fugit-Quia-Eius-Quo-Corporis-Aspernatur-Sit-Dolorem-Modi-Nostrum-Enim-Hic-Ut-Quia-Voluptas-Dignissimos-Rerum-Nostrum-Perferendis-Facere-Consectetur-Harum-Et-Nihil-Reprehenderit-Porro'),
(5, 'Electronics', 'Quam-Dolor-Id-Dolorum-Voluptas-Vitae-Voluptatibus-Alias-Et-Porro-Id-Et-Facilis-Architecto-Quis-Consequatur-Et-Illum-Iusto-Ratione-Eligendi-Maxime-Est-Cum-Fugiat-Necessitatibus-Sunt-Qui-Dicta'),
(6, 'Cameras', 'Nulla-Porro-Aut-Quo-Aut-Perspiciatis-Fugiat-Cum-Vero-Id-Sed-Nemo-Laboriosam-Consectetur-Corrupti-Odio-Excepturi-Ullam-Unde-Mollitia-Reiciendis-Ut-Quo-Ullam-Saepe-Qui-Inventore-Consequuntur'),
(7, 'Books', 'Dignissimos-Vero-Sequi-Et-Consequatur-Voluptate-Voluptas-Minima-Omnis-Quia-Sed-Atque-Ut-Non-Quam-Vel-Blanditiis-Iste-In-Et-Laborum-A-Sed-Autem-Et-Aut-Deleniti-Neque-Deserunt-Amet-Sed-Est-Assumenda'),
(8, 'Watches', 'Ab-Praesentium-Et-Non-Eius-Similique-Et-Quis-Sit-Aut-Eos-Iure-Quia-Minus-Et-Dolorem-Eveniet-Itaque-Officia-Sunt-Quibusdam-Et-Modi-Minus-Et-Totam-Qui-Necessitatibus-Incidunt-Quos-Veritatis-Rem-Iste-Eaque');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'Silistra'),
(2, 'Razgrad'),
(3, 'Silistra'),
(4, 'Burgas'),
(5, 'Burgas'),
(6, 'Pavlikeni'),
(7, 'Kainardja');

-- --------------------------------------------------------

--
-- Table structure for table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'user1', 'user1', 'miroslav@parola.bg', 'miroslav@parola.bg', 1, NULL, '$2y$13$UWmaS8P5gjPIhpgj5Ubi7u/akiam1DOnRqZFOhiWoLdb.aY8SkQL.', '2018-01-20 00:38:07', NULL, NULL, 'a:0:{}'),
(2, 'admin', 'admin', 'admin@admin.com', 'admin@admin.com', 1, NULL, '$2y$13$bbFmwSIj8uAC9L0.8MSBDufaEI/ol/QR8c16368olYEF1GEHOB7kW', '2018-01-20 00:38:26', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}'),
(3, 'user2', 'user2', 'user2@parola.bg', 'user2@parola.bg', 1, NULL, '$2y$13$1nd1AqNNqR701ONJXvty8up1U.TB0EaN9cQlOS/Yl0DxkpJdTn94e', '2018-01-19 23:41:01', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `advert_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `advert_id`, `name`, `location`) VALUES
(1, 9, 'Optio rerum itaque quos aliquid ut provident non odit.', '8ac16e0f23a380a3360d9fc129d79d16.jpg'),
(2, 5, 'Explicabo eum dolores laborum in.', '3505445989cad7212d03918d1fdd5172.jpg'),
(3, 3, 'Officiis ab est quo iure.', 'a4ff1d6878a563b1817d9eac1b02bde8.jpg'),
(4, 4, 'Quibusdam ullam voluptate corporis in provident.', '1b4878eb2ce3e6fc861a942d2200766c.jpg'),
(5, 13, 'Veniam voluptatem nihil omnis ut ullam.', '88cbf3df97c67fe4116a0cdc77471acc.jpg'),
(6, 5, 'Sit autem ex quod et.', 'b3d0b77bda994bc4f6f2afbc26a20a4b.jpg'),
(7, 9, 'Sed non aperiam magni impedit aspernatur.', 'ba1749104e8ffc5360704b60e0e54848.jpg'),
(8, 2, 'Consequuntur sit libero et tempora velit in et.', '02baba366db3ef3867ceaa655200cb22.jpg'),
(9, 12, 'Aliquid in possimus voluptatem voluptas hic.', 'e884942b548105187bbc0d39a8747c49.jpg'),
(10, 16, 'Sapiente dolores et asperiores ad et et nam.', 'f0a1eaa9fb914d1cdb18b9000f56e7da.jpg'),
(11, 16, 'Nisi cupiditate qui distinctio et.', '0dc481a8957783bad7a347522a3dde60.jpg'),
(13, 2, 'Dolor aut reiciendis quam.', '11a794bd7ea69249486c3e3503df8d73.jpg'),
(14, 15, 'Distinctio reprehenderit itaque ut in molestiae qui nulla.', '593ca8587a8ec6ac527d9ae5dab2119c.jpg'),
(15, 7, 'Quaerat praesentium est omnis iusto maiores.', 'e0e5e92e102ab7b6945097f38f1ea1f0.jpg'),
(16, 6, 'Harum voluptatibus ullam sit distinctio maiores.', 'd7ad21f0eca15973560eb3a4eee6d250.jpg'),
(17, 1, 'Et a totam nemo aut quo ab asperiores.', '7d05235e2c73e0939382ba509124e03b.jpg'),
(18, 8, 'Magni possimus quas et quia sunt.', '73241d5ec363869d06d67d48eef8a4af.jpg'),
(20, 15, 'Quia quia officia unde voluptas unde sed nihil.', 'd8c2f9f4b740a78cff8b02649831384a.jpg'),
(21, 5, 'Ipsa sit veniam debitis.', '3ba0f3f0b1e4a1470df84729282aa937.jpg'),
(22, 17, 'Magni facilis blanditiis beatae ipsa occaecati nesciunt.', '9d4fd6028a06a6a6956524196e508216.jpg'),
(23, 20, 'Aut nihil qui deserunt voluptatem facilis repudiandae cumque.', '697b79c05fc3c0631adbef61ff8129a0.jpg'),
(24, 5, 'Saepe dolorum explicabo est.', '0b113d87f1bc01701f3dc85f96bc5f84.jpg'),
(25, 5, 'Delectus alias est sed placeat.', '83ede1d5ceca26633da60ebaf937ac0e.jpg'),
(26, 18, 'Corporis necessitatibus eos placeat saepe facere.', 'b2c1c74e4e7a61390ea4e87aa228a0ed.jpg'),
(27, 18, 'Eum facere et exercitationem.', '156d2e315604996dd88fa8bd69850888.jpg'),
(28, 18, 'Explicabo eveniet est minima quae reiciendis molestiae.', 'de68e504e38679006f4469e96766cdd0.jpg'),
(29, 3, 'Culpa repellat corporis eaque voluptatem id sit qui.', 'c634d7b05123b8d224a8265dd39488d8.jpg'),
(30, 5, 'Voluptas ut pariatur aut non ab.', '46e10f69dffbb38490da3143a014c5fe.jpg'),
(31, 11, 'Minus magni voluptates vitae illo sunt.', 'dbcb3a9efb23f4e6c19e02b2f180b09b.jpg'),
(32, 15, 'Modi corrupti incidunt aliquam distinctio.', '18c351005fc0348e3af65ea0e639fce6.jpg'),
(33, 18, 'Ut molestias pariatur ratione id sed at.', 'b7f472d187c32647a275abe3271eb2a1.jpg'),
(34, 3, 'Rerum quis sit quasi dicta optio.', '35fddff98197699ee45f50cefd2700a1.jpg'),
(35, 5, 'Eum sit nihil voluptatibus blanditiis nisi commodi fugiat.', '33b135dc214480562b089cfd239bf4e3.jpg'),
(36, 14, 'Odit velit voluptate cumque autem itaque ut est.', '05f05799cbc075978f6ff5592c4450a6.jpg'),
(37, 3, 'Quasi maxime iure officiis aut molestiae omnis molestias.', 'fcde1db57ab0c5c6844a1529774e4295.jpg'),
(38, 5, 'Architecto sint perspiciatis amet aut.', 'fa2f2cea1053b89c40fd66f8bc21cf57.jpg'),
(39, 12, 'Qui autem aspernatur exercitationem quaerat totam velit nam eum.', 'b56915151c68e8a33e83b5098e725de0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `text`, `picture`, `slug`) VALUES
(1, 'Quo odio sint cum nihil et corporis id.', 'Dormouse shall!\' they both sat silent and looked at Alice. \'It must be a comfort, one way--never to be ashamed of yourself for asking such a curious plan!\' exclaimed Alice. \'That\'s very curious!\'.', 'f50464bf07ffbe55c230f8c0deb213c7.jpg', 'Saepe-Explicabo-Hic-Reiciendis-Delectus-Laudantium-Ea-Eaque-Repellat-Provident-Perferendis-Labore-Harum-Est-Aut-Voluptas-At-Reprehenderit-Voluptatem-Sed'),
(2, 'Molestiae placeat assumenda quia et voluptatum ut repudiandae laboriosam.', 'I could not tell whether they were all in bed!\' On various pretexts they all crowded round it, panting, and asking, \'But who is Dinah, if I chose,\' the Duchess by this time.) \'You\'re nothing but the.', 'a19b6d371b15344ac9f60dc0824be266.jpg', 'Eaque-Vel-Nihil-Nisi-Provident-Autem-Tempora-Nihil-Commodi-Omnis-Molestias-Ad-Non-Qui-Sequi-Porro-Quo-Dignissimos-Laboriosam-Rem'),
(3, 'Voluptatem consequatur quia et praesentium commodi iste error ducimus.', 'Alice, looking down at her with large round eyes, and feebly stretching out one paw, trying to put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon repeated.', 'f9e8edeee2d91d7e410860203e8ee66d.jpg', 'Aspernatur-Sit-Ducimus-Voluptates-Qui-Eum-Labore-Aut-Dolorem-Quis-Tempora-Quia-Et-Magni-Eos-Repellat-Id-Voluptas-Est'),
(4, 'Qui natus cum aut corrupti quis amet beatae quas.', 'For anything tougher than suet; Yet you finished the goose, with the other: the Duchess sneezed occasionally; and as Alice could speak again. The Mock Turtle Soup is made from,\' said the King. On.', '73158ba1242f76e248d806f1c8e5d360.jpg', 'Eos-Laborum-Est-Laborum-Voluptatem-Modi-Qui-Molestiae-Et-Excepturi-Molestiae-Quas-Hic-Et-Ea-Non-Consequuntur-Nisi-Quis-Nihil-Quia-Eum-Alias-Et-Autem-Aut-Dolor-Exercitationem'),
(5, 'Temporibus ad commodi odit in reprehenderit ex dolore.', 'I can\'t quite follow it as she could remember them, all these strange Adventures of hers would, in the distance, screaming with passion. She had just begun \'Well, of all this grand procession, came.', '670fc75479d745018f4d909c47bf68b5.jpg', 'Aut-Iusto-Autem-Vel-Nam-Harum-Dolorem-Quis-Est-Et-Maxime-Nulla-Aut-Ut-Beatae-Vel-Neque-Nulla-Libero-Aliquam-Pariatur-Quis-Ut-Pariatur-Voluptatem-Sapiente-Hic-Cupiditate-Alias-Nihil-Earum-Numquam-Sunt-Architecto-Quia-Quibusdam-Ipsum'),
(6, 'Quas fuga quod quae non quia accusamus repellat recusandae.', 'Bill! I wouldn\'t say anything about it, even if my head would go anywhere without a cat! It\'s the most important piece of evidence we\'ve heard yet,\' said the Dormouse, not choosing to notice this.', '9e84b7086b836d8e651e48b7da9160dd.jpg', 'Esse-Veniam-Voluptatem-Rerum-Sapiente-Consequatur-Molestiae-Ut-Asperiores-Totam-Iusto-Aut-Dolorum-Accusamus-Culpa-Non-Cumque-Inventore-Saepe-Sunt-Odio-Assumenda-Unde-Assumenda'),
(7, 'Accusantium sed in iure rerum ea animi quo.', 'I? Ah, THAT\'S the great concert given by the hand, it hurried off, without waiting for the fan and gloves, and, as the Dormouse again, so violently, that she was now about a thousand times as large.', 'c841b591900028a016f3d038c00f64c0.jpg', 'Fuga-Nesciunt-Et-Molestiae-Nostrum-Perferendis-Consectetur-Voluptatem-Omnis-Iste-Repellat-Consequatur-Voluptatem-Aut-Et-Et-Eveniet-Nemo-Nulla-Consequatur-Dicta-Velit-Quis-Earum-Dignissimos-Aut-Eaque'),
(8, 'Voluptas autem quo eum recusandae dolores.', 'You see, she came upon a little recovered from the shock of being all alone here!\' As she said this, she noticed that they were trying which word sounded best. Some of the Rabbit\'s voice; and the.', 'be6c9d32bebde2f80846e82c7c6dd205.jpg', 'Aut-Explicabo-Nobis-Dolorem-Molestias-Quam-Aut-Perspiciatis-Ipsa-Debitis-Distinctio-Autem-Sapiente-Consequatur-Voluptatibus-Saepe-Consectetur-Quod-Quibusdam-Nesciunt-Dolore-Libero-Nulla'),
(9, 'Dignissimos iusto quae inventore recusandae voluptatem.', 'Dodo suddenly called out \'The race is over!\' and they went up to Alice, and she was going on within--a constant howling and sneezing, and every now and then the puppy made another rush at the.', '6696ff80a3101f530c980e7e84c5f2c3.jpg', 'Quia-Hic-Quo-Molestiae-Totam-Omnis-Accusamus-Et-Vel-Quia-Odio-Quam-Porro-Accusamus-Aut-In'),
(10, 'Eos aut dignissimos optio nostrum recusandae vel sequi et.', 'Alice as he spoke, and the whole party look so grave that she was ready to make out which were the cook, and a Dodo, a Lory and an old crab, HE was.\' \'I never heard of such a noise inside, no one.', 'd59a319b74c741f43870b8a679e32451.jpg', 'Voluptas-Sit-Distinctio-Unde-Illum-Non-Vel-In-Sit-Voluptatibus-Commodi-Quisquam-Necessitatibus-Dolor-Aut-Eos-Provident-Vel-Velit-Molestiae-Consequatur-Incidunt-Aut-Temporibus'),
(11, 'Ut numquam et ut ducimus.', 'But she waited for some time after the others. \'We must burn the house opened, and a large canvas bag, which tied up at the cook, and a large mustard-mine near here. And the Gryphon in an offended.', '945f72a534a5c1fa9a2cfae069905f2d.jpg', 'Laborum-Non-Harum-Consequatur-Aliquam-Eum-Quia-Illo-Excepturi-Cupiditate-Veritatis-Sapiente-Error-Voluptas-Rerum-Molestiae-Officiis'),
(12, 'Fuga sint sit possimus eveniet rerum aut sint autem.', 'I\'ll never go THERE again!\' said Alice to herself. At this moment the King, \'that only makes the world am I? Ah, THAT\'S the great wonder is, that I\'m perfectly sure I can\'t get out at all this time.', '6b716309e1eb358ba9f4cf908ad1d27d.jpg', 'Autem-Officiis-Similique-Minus-Itaque-Commodi-Voluptatem-Facere-Ea-Aut-Quod-Accusamus-Et'),
(13, 'Tempora praesentium possimus nemo aut.', 'The Dormouse had closed its eyes were nearly out of his Normans--" How are you getting on?\' said the Caterpillar contemptuously. \'Who are YOU?\' said the Mock Turtle. \'Very much indeed,\' said Alice..', '6ea491c6b3bfa2fe8a84d1b524ea8c2d.jpg', 'Sequi-Nihil-Repudiandae-Est-Laborum-Voluptate-Repellendus-Veritatis-Quod-Voluptas-Et-Iste-Dolorem-Non-Rem-Accusamus-Deleniti-Quis-Neque-Qui-Repudiandae-Repudiandae-Accusamus-Dolor'),
(14, 'Aut amet inventore illum reprehenderit.', 'The Antipathies, I think--\' (she was obliged to write with one eye; \'I seem to be"--or if you\'d rather not.\' \'We indeed!\' cried the Mouse, who was peeping anxiously into its mouth and began staring.', '183456b063a1ba40ed6010b7625b5dd4.jpg', 'Perferendis-Consectetur-Consequatur-Quo-Velit-Incidunt-Repudiandae-Officia-Rerum-Provident-Ut-Molestias-Laborum-Nobis-Sed-Libero-Ut-Non-Quas-Iste-Consequatur-Quibusdam-Voluptatem'),
(15, 'Velit et minima eum earum.', 'Alice looked at the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'That\'s the first really clever thing the King triumphantly, pointing to Alice a good.', 'ca23971b1508673970f6f3388f7acc66.jpg', 'Totam-Libero-Magnam-Quia-Et-Ut-Ut-Aut-Quae-Quae-Voluptatum-Distinctio-Laboriosam-Quia-Voluptate-Quod-Cum-Et-Magni-Sunt-Voluptas'),
(16, 'Incidunt consequatur excepturi distinctio debitis animi perspiciatis doloribus labore.', 'Caterpillar The Caterpillar was the first day,\' said the Dodo, pointing to Alice for protection. \'You shan\'t be beheaded!\' said Alice, who was trembling down to the King, who had been anxiously.', 'ec5f905976110107b1e23c0674a32808.jpg', 'Repellat-Vel-Culpa-Nam-Harum-Eaque-Est-Natus-Porro-Vel-Voluptatem-Vel-Earum-Et-Eum-Velit-Nihil-Laudantium-Omnis-Nihil-Nulla-Voluptatem'),
(17, 'Nihil dolore accusamus veritatis odio enim sit sunt sed.', 'Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was a very difficult game indeed. The players all played at once crowded round her at the Hatter, and he called the.', '8ba411db4d28720ab4a8047b15625565.jpg', 'Optio-Rerum-Error-Quas-Fugit-Similique-Excepturi-Enim-Est-Et-Est-Eos-Delectus-Qui-Enim-Aut-Quia-Aut-Laudantium-Possimus-Quaerat-Nulla-Quod-Nihil-Qui-Sequi-Cupiditate'),
(18, 'Temporibus assumenda excepturi quasi earum voluptas numquam.', 'PROVES his guilt,\' said the Mock Turtle had just upset the week before. \'Oh, I BEG your pardon!\' she exclaimed in a natural way again. \'I wonder what CAN have happened to me! When I used to it in.', '9078a870e9fb878a56e5b09d3262f639.jpg', 'Nihil-Non-Iure-Et-Eius-Nesciunt-Enim-Voluptatem-Facere-Eos-Voluptas-Eum-Beatae-Porro-Nesciunt-Repellat-Sapiente-Earum-Qui-Eos-Rerum-Et-Dolorem-Sapiente-Nihil-Laudantium-Vel-Deserunt-Omnis-Quas-Tenetur-Aut-Odit-Aliquam-Commodi-Dicta-Ipsum-Ullam'),
(19, 'Provident laboriosam possimus minus omnis accusantium architecto.', 'Alice thought the whole cause, and condemn you to offer it,\' said the Mouse was bristling all over, and she crossed her hands on her spectacles, and began staring at the bottom of the other.', '41db965a0d0965b63743a6332b2e458b.jpg', 'Odio-Dolor-Fugiat-Voluptatem-Nemo-Nobis-Repudiandae-Distinctio-Facilis-Voluptate-Voluptatum-Autem-Et-Sint-Molestiae-Eligendi-Deleniti-Sunt-Quia-Laboriosam-Quo-Illo-Ullam-Recusandae'),
(20, 'Distinctio natus dolorem et totam commodi corporis.', 'But the snail replied "Too far, too far!" and gave a sudden leap out of court! Suppress him! Pinch him! Off with his head!\' she said, \'and see whether it\'s marked "poison" or not\'; for she had tired.', '5292deff14772aa7f15ec0748925a41b.jpg', 'Rerum-Vel-Adipisci-Explicabo-Reiciendis-Ut-Quam-Consequatur-Et-Qui-Recusandae-Aliquid-Exercitationem-Temporibus-Natus-Ipsa-Repellat-Itaque-Rem-Id-Sint-Odit-Ut-Qui-Incidunt-Voluptatem-Corporis-Est');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_54F1F40B12469DE2` (`category_id`),
  ADD KEY `IDX_54F1F40B8BAC62AF` (`city_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045FD07ECCB6` (`advert_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_140AB620989D9B62` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `advert`
--
ALTER TABLE `advert`
  ADD CONSTRAINT `FK_54F1F40B12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_54F1F40B8BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045FD07ECCB6` FOREIGN KEY (`advert_id`) REFERENCES `advert` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
