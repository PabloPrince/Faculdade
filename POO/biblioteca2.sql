-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Jan-2017 às 01:05
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` int(11) NOT NULL,
  `telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `endereco`, `email`, `cpf`, `telefone`) VALUES
(1, 'felipe', 'rua tupinamba 167', 'felipe@gmail.com', 12954783, 758490543),
(2, 'maria', 'rua jao ferreira', 'maria@hotmail.com', 39405943, 29483054),
(11, 'Kasper Mullen', 'P.O. Box 901, 6457 Pharetra Ave', 'eget.ipsum.Donec@sagittisaugue.org', 49366392, 71638144),
(12, 'Cody Noble', 'P.O. Box 669, 1624 Condimentum Street', 'odio@egestasa.org', 37630579, 69006263),
(13, 'Thane Fernandez', '328-5689 Adipiscing St.', 'non.nisi.Aenean@magna.edu', 36288602, 17198946),
(14, 'Keaton Griffith', 'P.O. Box 930, 1099 Interdum. Rd.', 'Nulla.aliquet@mollisvitae.org', 17778236, 26667714),
(15, 'Ryder Miller', 'Ap #156-1446 Auctor St.', 'auctor@utmolestiein.net', 27457749, 57803377),
(16, 'Kibo Day', 'Ap #791-1638 Lectus Ave', 'orci.quis.lectus@adipiscinglobortis.ca', 5657059, 22394446),
(17, 'Ray Williams', 'Ap #813-187 Ac Avenue', 'magna@ut.com', 33407748, 34798034),
(18, 'Keefe Wright', 'P.O. Box 572, 7464 A, Avenue', 'amet.consectetuer@felis.co.uk', 17169698, 42104395),
(19, 'Allen Bradford', '857-916 Felis St.', 'Donec@mattisInteger.com', 32083117, 73070228),
(20, 'Jack Wells', '760-6672 Quisque Avenue', 'fringilla@ornaretortorat.co.uk', 39094916, 94006113),
(21, 'Hilel West', 'P.O. Box 332, 1140 Mi St.', 'orci@Fuscefermentum.net', 12014394, 786551),
(22, 'Amal Snyder', '988-8186 Urna. Ave', 'arcu@arcuiaculisenim.com', 43966683, 10010805),
(23, 'Benedict Cox', 'P.O. Box 757, 4017 Venenatis St.', 'turpis.non@iaculisquis.org', 20509931, 82442573),
(24, 'Quamar Wilder', 'P.O. Box 216, 5662 Ut, Road', 'orci.Ut@acfacilisis.edu', 36138467, 7850389),
(25, 'Sawyer Glass', 'Ap #999-1513 Fusce Av.', 'dictum.eu.eleifend@sitametlorem.edu', 41370041, 24224443),
(26, 'Bradley Ramos', '4755 Mi Avenue', 'magna.Cras@Nunc.edu', 21299720, 10047977),
(27, 'Adam Beach', '9329 Eu, Rd.', 'ac.turpis.egestas@CuraePhasellus.edu', 42413114, 75764713),
(28, 'Louis Farmer', '966-9412 Tempus Avenue', 'pede@tinciduntneque.ca', 18656131, 86984601),
(29, 'Hop Carson', 'Ap #531-1268 Et, Rd.', 'sagittis@acfermentum.com', 38071753, 93823245),
(30, 'Guy Franco', 'Ap #360-3299 Lacinia Road', 'consectetuer@et.ca', 19960645, 87345948),
(31, 'Stuart Durham', 'P.O. Box 564, 9382 Nullam St.', 'malesuada.vel.convallis@ipsum.co.uk', 23809456, 66526390),
(32, 'Noble Snyder', 'P.O. Box 674, 6112 Mattis. Street', 'Proin@venenatisvel.com', 20411462, 63023211),
(33, 'Leo Decker', '6970 Arcu. St.', 'interdum@luctus.edu', 48638720, 21445813),
(34, 'Carter Valencia', 'Ap #568-115 Velit. Av.', 'in.hendrerit.consectetuer@liberoProin.edu', 41609282, 96136532),
(35, 'Branden Gonzalez', '643-6555 Amet Av.', 'nec@scelerisque.co.uk', 47039329, 24733487),
(36, 'Brendan Mathews', 'P.O. Box 922, 5086 Suspendisse Av.', 'Curabitur@idnuncinterdum.com', 28180410, 75775471),
(37, 'Kenyon Ford', 'Ap #609-5449 Dignissim Rd.', 'non.bibendum.sed@ornare.co.uk', 40593358, 37004090),
(38, 'Mannix Walton', 'P.O. Box 290, 8134 Nec St.', 'est@arcuAliquam.com', 35927176, 59059320),
(39, 'Ezekiel Fernandez', 'P.O. Box 867, 3715 Aliquam Rd.', 'Aenean.egestas@scelerisqueduiSuspendisse.com', 19548012, 68179522),
(40, 'Malik Mclaughlin', '4551 Sit Rd.', 'ultricies.ornare.elit@orci.org', 11038377, 66857104),
(41, 'Rogan Buck', '8820 Amet Street', 'ac.mattis@magnaPraesentinterdum.edu', 20310714, 19347662),
(42, 'Michael Short', '240 Eleifend. Avenue', 'arcu.Vestibulum@penatibuset.com', 27162210, 9805296),
(43, 'Abbot Vega', '812-9530 Suspendisse Av.', 'Quisque.ac.libero@Mauris.edu', 42857489, 32995273),
(44, 'Chaney Preston', '850-3896 Etiam St.', 'id.libero.Donec@molestiesodalesMauris.edu', 36129451, 14955497),
(45, 'Honorato Baker', 'Ap #634-611 Viverra. Avenue', 'nonummy.Fusce@aliquam.co.uk', 45016205, 71507057),
(46, 'Tyrone Raymond', 'Ap #895-9328 Ut St.', 'in@aaliquet.net', 6591002, 29147703),
(47, 'Philip Sosa', '7093 Velit Road', 'fringilla@venenatis.co.uk', 38347693, 59739712),
(48, 'Porter Steele', 'P.O. Box 577, 8445 Odio. Rd.', 'nec.ligula@augue.net', 50291712, 5617529),
(49, 'Hamilton Cobb', '4724 Luctus Rd.', 'eu.dolor.egestas@erosNamconsequat.ca', 26021333, 48160499),
(50, 'Kenyon Talley', '436-1501 Eget Rd.', 'vestibulum.nec@anteNuncmauris.com', 41343847, 85084599),
(51, 'Kato Powers', '630-9544 Urna Rd.', 'nisi@Quisque.com', 27498496, 53992481),
(52, 'Rogan Duke', 'Ap #834-9280 Orci Rd.', 'ipsum.Curabitur@magna.co.uk', 43198587, 23174285),
(53, 'Lars Curry', 'Ap #239-4616 Lacus Ave', 'nulla.Integer.urna@Aliquamrutrumlorem.ca', 50902572, 59951398),
(54, 'Reuben Rogers', '762-5852 Ipsum St.', 'dui.nec.tempus@ipsumnunc.org', 14314534, 71206216),
(55, 'Vincent Norton', '550-4546 Libero Av.', 'Aliquam.adipiscing.lobortis@turpis.edu', 30078932, 69612990),
(56, 'Kenneth Buchanan', '686-9050 Magnis Rd.', 'aliquet.libero@accumsan.net', 11509574, 93605902),
(57, 'Henry Boyle', '785-5371 Dapibus Av.', 'tincidunt.nibh@augueporttitor.co.uk', 7796412, 9474559),
(58, 'Brennan Roman', 'P.O. Box 338, 1582 Tellus Av.', 'ac@nec.ca', 12934357, 18439140),
(59, 'Ezra Talley', '368-4290 Aenean Rd.', 'inceptos@viverraMaecenas.ca', 34084227, 85250672),
(60, 'Vaughan Cantrell', 'P.O. Box 156, 4530 Nec Road', 'amet.massa@Nulla.edu', 41105796, 57452594),
(61, 'Barrett Hayden', '3925 Lorem, Rd.', 'non.enim@elementum.org', 13135521, 13990405),
(62, 'Beau Madden', 'Ap #440-6433 Gravida. St.', 'tincidunt@disparturient.edu', 33833612, 84702905),
(63, 'Mason Ferguson', 'P.O. Box 590, 2822 Pede Street', 'neque.non.quam@nondapibus.com', 48754526, 46012044),
(64, 'Reed Gray', '194-7810 Accumsan Street', 'augue@Curae.edu', 38917042, 27694531),
(65, 'Octavius Christensen', 'P.O. Box 858, 2873 Ultricies Rd.', 'sollicitudin.a@Mauriseu.org', 37811769, 39460060),
(66, 'Zachery Benson', '9577 Lacus. Ave', 'ad.litora@a.co.uk', 17836815, 73818437),
(67, 'Sylvester Mills', '9451 Cursus. Av.', 'dolor.Quisque@Suspendisse.co.uk', 19834045, 77960284),
(68, 'Grant Battle', '956-6389 Sagittis Road', 'torquent@dolor.net', 37387470, 34105166),
(69, 'Alan Merrill', '510-978 Malesuada Street', 'sit@commodoipsumSuspendisse.co.uk', 50559654, 52366945),
(70, 'Clinton Meyer', 'Ap #655-2349 Duis Street', 'vel.lectus@tempusnon.org', 7878459, 39493249),
(71, 'Knox Mcdonald', 'Ap #986-7358 Vitae Street', 'gravida@Nullamsuscipit.net', 16661932, 90831804),
(72, 'Axel Fischer', 'P.O. Box 423, 8251 Augue Avenue', 'Integer@ipsumsodales.edu', 21648275, 14468826),
(73, 'Lance Riggs', 'Ap #195-8643 Tristique St.', 'tortor.Nunc@magnatellusfaucibus.org', 34962172, 99129744),
(74, 'Wing Le', 'P.O. Box 114, 6736 Magna. Rd.', 'sed.pede@scelerisque.ca', 50843353, 86766572),
(75, 'Thane Hogan', '224-9164 Erat Rd.', 'ut.nisi@nuncsed.co.uk', 34218828, 57219384),
(76, 'Ray Gross', '890-9013 Ornare. St.', 'non@lobortisnisi.com', 26453423, 13981088),
(77, 'Ali Lawrence', 'Ap #874-9692 Molestie Avenue', 'a@etcommodoat.com', 8918738, 11670659),
(78, 'Yardley Peck', 'Ap #747-5324 Nullam St.', 'tincidunt.adipiscing@nonarcuVivamus.org', 6272302, 14549400),
(79, 'Xenos Rowland', '347-1263 Gravida Av.', 'enim.consequat.purus@ultriciesadipiscing.ca', 38946614, 57076770),
(80, 'Hilel Alvarez', 'Ap #252-5418 Nunc Rd.', 'orci@lacus.net', 10963711, 25672734),
(81, 'Bruno Schneider', '886-2647 Ultrices Av.', 'elit@hendrerit.org', 48499637, 67497628),
(82, 'Dalton Mccarthy', 'Ap #315-3202 Aliquam Av.', 'diam@eleifendnondapibus.net', 29968279, 32275321),
(83, 'Erich Ingram', 'Ap #946-9914 Non, Street', 'Vestibulum.ante@Aeneangravidanunc.co.uk', 38893016, 29771808),
(84, 'Benjamin Fischer', 'Ap #330-7482 Libero Road', 'diam.Proin.dolor@pharetranibh.org', 26656053, 62354188),
(85, 'Odysseus Stephenson', 'Ap #838-6321 Arcu. Street', 'at.risus.Nunc@sedhendrerit.org', 24390145, 52555593),
(86, 'Wayne Mclean', 'P.O. Box 666, 6567 Est St.', 'nibh@molestiesodales.org', 24125052, 39664996),
(87, 'Cooper George', 'Ap #706-8062 Posuere Street', 'ut.sem@mauris.ca', 48591158, 56516457),
(88, 'Darius Pittman', 'P.O. Box 960, 2812 Aliquet Ave', 'orci@orci.edu', 31341994, 20680230),
(89, 'Howard Kidd', 'P.O. Box 289, 2814 Pede Ave', 'Duis.at@velitPellentesque.co.uk', 24963118, 50122064),
(90, 'Drake Elliott', '1126 Orci Rd.', 'et.netus.et@fringillaeuismod.edu', 7107694, 71813586),
(91, 'Coby Bender', 'P.O. Box 173, 3384 Mi Rd.', 'mi@augue.net', 38090382, 51045571),
(92, 'Nolan Moore', '632 Ut St.', 'est.congue@necmalesuada.ca', 36870895, 67961080),
(93, 'Magee Vang', 'Ap #818-1624 Gravida Street', 'justo@erosturpisnon.com', 10972429, 47603989),
(94, 'Jerome Spears', 'P.O. Box 216, 7916 Turpis. Ave', 'Sed.nulla.ante@imperdieteratnonummy.co.uk', 42881137, 93945793),
(95, 'Malcolm Solis', 'P.O. Box 144, 1611 Mauris, St.', 'Sed.molestie@liberoInteger.edu', 30156791, 50739184),
(96, 'Prescott Tanner', '184-6611 Ut Avenue', 'Integer@laciniamattis.org', 26654153, 80528762),
(97, 'Garrett Yates', 'P.O. Box 607, 8200 Cursus. Street', 'et@porttitorscelerisqueneque.co.uk', 49413335, 15212441),
(98, 'Emerson Washington', 'P.O. Box 949, 4845 Cursus Rd.', 'Proin.dolor.Nulla@elementumdui.org', 32748200, 74631816),
(99, 'Silas Walters', '947-1720 Dolor Rd.', 'Fusce@Sed.org', 21540894, 92160597),
(100, 'Julian Talley', '658-2762 Lacus. Rd.', 'risus.Duis@dolor.edu', 44941836, 19788908);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'ação'),
(2, 'romance'),
(3, 'comedia'),
(4, 'ficção'),
(5, 'comedia, romance'),
(6, 'ação, ficção'),
(7, 'drama'),
(8, 'terror'),
(9, 'misterio'),
(10, 'misterio, terror'),
(11, 'ação, comedia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conexao`
--

CREATE TABLE `conexao` (
  `id` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `id_prazo` int(11) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conexao`
--

INSERT INTO `conexao` (`id`, `id_livro`, `id_prazo`, `id_status`) VALUES
(1, 2, 2, 2),
(10, 3, 1, 2),
(11, 1, 1, 2),
(12, 2, 1, 2);

--
-- Acionadores `conexao`
--
DELIMITER $$
CREATE TRIGGER `atualizar_status_livro_i` BEFORE INSERT ON `conexao` FOR EACH ROW update livro set id_status = new.id_status where id = new.id_livro
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `atualizar_status_livro_u` BEFORE UPDATE ON `conexao` FOR EACH ROW update livro set id_status = new.id_status where id = new.id_livro
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conexao_pessoa`
--

CREATE TABLE `conexao_pessoa` (
  `id` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conexao_pessoa`
--

INSERT INTO `conexao_pessoa` (`id`, `id_pessoa`, `id_aluno`, `id_funcionario`) VALUES
(1, 3, NULL, 1),
(2, 2, 1, 3),
(3, 1, 1, NULL),
(4, 1, 2, NULL),
(5, 2, NULL, 11),
(6, 1, 11, NULL),
(7, 1, 12, NULL),
(8, 1, 13, NULL),
(9, 1, 14, NULL),
(10, 1, 16, NULL),
(11, 1, 20, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` int(11) NOT NULL,
  `telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `nome`, `endereco`, `email`, `cpf`, `telefone`) VALUES
(1, 'joao', 'rua julio cesar 5543', 'joao@hotmail.com', 38594360, 86950274),
(2, 'luis', 'rua julia helios', 'luis@hotmail.com', 98402703, 788738479),
(3, 'felipe', 'rua tupinamba 167', 'felipe@gmail.com', 12954783, 758490543),
(11, 'Garth Francis', '2755 Et, Av.', 'feugiat.nec@magnisdisparturient.com', 22506790, 21753713),
(12, 'Zephania Rodriquez', 'P.O. Box 892, 3425 Mattis. Av.', 'lobortis@fringillacursus.net', 44013515, 49322072),
(13, 'Ross Nixon', 'Ap #399-3122 Leo Street', 'aliquam.eu@duinectempus.org', 44657034, 54690943),
(14, 'Nissim Hart', 'Ap #722-7533 Blandit Street', 'purus.ac@nuncinterdum.co.uk', 19431882, 10571775),
(15, 'Rooney Galloway', 'P.O. Box 229, 2191 Lorem Street', 'aliquet@volutpatNulla.co.uk', 37686290, 4768897),
(16, 'Len Carney', 'P.O. Box 702, 894 Id, Road', 'dictum.ultricies@libero.co.uk', 49215880, 17073563),
(17, 'Amery Rogers', '4014 Hendrerit Road', 'nibh.Quisque@tellussem.ca', 5808673, 15388017),
(18, 'Kato Tillman', '703-4751 Et Street', 'orci@etarcuimperdiet.ca', 18633607, 22119803),
(19, 'Gregory Murphy', '7494 Lorem, Road', 'non.justo.Proin@liberonec.org', 15502520, 45748931),
(20, 'Cairo Rogers', '953-9231 Gravida. Av.', 'sit.amet.luctus@semper.org', 21517638, 55885232),
(21, 'Ferris Stafford', '2190 Aliquet, Rd.', 'tempor.erat@scelerisqueduiSuspendisse.com', 10508714, 30667887),
(22, 'Eric Sargent', '232-3142 Amet Avenue', 'porttitor.eros@ipsumCurabitur.edu', 24086277, 51549118),
(23, 'Ronan Dotson', 'P.O. Box 755, 8408 At St.', 'vel.quam@cursusetmagna.ca', 32108968, 61893306),
(24, 'David Merrill', 'Ap #415-2669 Nunc Rd.', 'ornare@rhoncus.com', 35231037, 18693095),
(25, 'Vance Mckee', 'Ap #165-9120 Leo. Ave', 'diam.eu@quis.org', 7132519, 23776087),
(26, 'Knox Bartlett', '269-2703 Imperdiet Rd.', 'aliquet@nequevenenatis.ca', 42747998, 85956479),
(27, 'Judah Carney', '9965 Libero. Road', 'Mauris.vestibulum@mollisdui.ca', 25537041, 33224551),
(28, 'Jesse Clements', '269-9866 Tortor Rd.', 'Donec.feugiat.metus@ornarefacilisis.edu', 41164293, 50634423),
(29, 'Grant Yang', '2477 Odio. St.', 'ante.ipsum.primis@Integersem.co.uk', 39495143, 33591378),
(30, 'Quinlan Armstrong', '8165 Lectus Road', 'natoque.penatibus@liberoDonec.com', 38158419, 74701920),
(31, 'Howard Casey', 'Ap #402-3601 Lectus St.', 'lectus@ipsumSuspendisse.net', 7573887, 77272759),
(32, 'Vernon Gilliam', 'P.O. Box 371, 9932 Vivamus Rd.', 'consectetuer@sedlibero.com', 31997420, 94423923),
(33, 'Dillon Haney', 'P.O. Box 115, 8964 Lorem, Road', 'posuere@velquam.edu', 17059200, 8928779),
(34, 'Porter Caldwell', '1681 Sed Av.', 'leo.Cras@pellentesque.edu', 15038606, 60416706),
(35, 'Uriah Odom', 'P.O. Box 993, 5782 Gravida St.', 'sit.amet@fermentummetusAenean.co.uk', 49286102, 46867082),
(36, 'Neville Abbott', '143-838 Nunc Avenue', 'magna@tempus.org', 23444868, 36951122),
(37, 'Bradley Mcknight', '2527 Tellus Av.', 'semper.et.lacinia@magnaPhasellusdolor.org', 41606749, 24624932),
(38, 'Dorian Carrillo', 'P.O. Box 541, 169 Cras St.', 'est.Nunc@a.com', 45800178, 17883897),
(39, 'Marvin Sanford', 'P.O. Box 693, 9228 Quam Rd.', 'placerat.Cras@penatibuset.org', 11220366, 13275649),
(40, 'Amir Gallagher', 'Ap #641-8771 Molestie Rd.', 'sem.consequat@sociis.edu', 34290988, 13582782),
(41, 'Austin Palmer', 'Ap #674-878 Enim, Avenue', 'Nam.nulla@sagittisplaceratCras.co.uk', 26773165, 72279928),
(42, 'Burke Carter', '3985 Nonummy. Road', 'Aenean.eget@auctornon.co.uk', 41019319, 50312675),
(43, 'Aristotle Beard', 'P.O. Box 255, 9358 Et Av.', 'ipsum.ac@et.com', 8229999, 88846642),
(44, 'Mufutau Kelley', '797-4067 Nibh Street', 'molestie.arcu.Sed@molestiedapibus.ca', 42310041, 99240747),
(45, 'Louis Cantrell', 'P.O. Box 164, 362 Eu Ave', 'fermentum.convallis@Nullamfeugiat.co.uk', 50366650, 29999230),
(46, 'Amos Coleman', '669-1618 Quis St.', 'risus@auctorveliteget.edu', 13869453, 31807158),
(47, 'Nolan Flynn', '8447 Hendrerit Ave', 'amet.diam@variusultrices.org', 37739130, 50150079),
(48, 'Thaddeus Church', 'P.O. Box 512, 4779 Mi Ave', 'non.egestas.a@tortornibhsit.ca', 42327312, 62031555),
(49, 'Kenyon Rosario', 'P.O. Box 761, 7459 Cursus. Street', 'Proin@Phasellus.com', 18699475, 49007584),
(50, 'Cade Booker', 'Ap #772-537 Elit St.', 'in@elementum.net', 13226268, 57883689),
(51, 'Cameron Paul', '2558 Sed Avenue', 'Ut.semper@musDonec.ca', 13096572, 35422550),
(52, 'Caldwell Kemp', 'P.O. Box 139, 1508 Dolor. Av.', 'vitae@iaculis.org', 47365419, 25607378),
(53, 'Jackson Leon', '8298 Tempor Rd.', 'consectetuer.mauris.id@sem.org', 14111412, 83268942),
(54, 'Avram Cunningham', '1864 Sem, Avenue', 'Curae.Donec.tincidunt@Nulla.org', 44203868, 3836725),
(55, 'Tate Caldwell', 'Ap #896-2551 Et, Ave', 'blandit.at@nonjustoProin.ca', 40276854, 95007490),
(56, 'Cairo Figueroa', 'Ap #690-2644 Sem Avenue', 'magna.nec.quam@sodalespurusin.net', 49081294, 94307230),
(57, 'Grant Kane', 'P.O. Box 361, 1745 Vulputate St.', 'Vestibulum.ante@lacus.ca', 13016631, 41221277),
(58, 'Ivan Malone', 'Ap #922-7075 Egestas Avenue', 'quis.turpis@magnis.net', 15401444, 99054066),
(59, 'Forrest Wyatt', '2168 Integer St.', 'interdum@ullamcorper.ca', 5784726, 38149175),
(60, 'Lewis Waters', '963-9583 Montes, Rd.', 'amet@augueeu.ca', 38256905, 76874261),
(61, 'Clinton Cook', '4276 Montes, Avenue', 'egestas@auctor.org', 36141651, 68174557),
(62, 'Hamish Olson', '2965 Suscipit, St.', 'per@veliteget.edu', 26887918, 28714109),
(63, 'Guy Hoffman', '3590 Curabitur St.', 'at.libero@Nullamsuscipitest.edu', 26915228, 78738212),
(64, 'Henry Faulkner', 'P.O. Box 781, 7473 Eget Rd.', 'lacus.Nulla@ullamcorpermagna.ca', 19320482, 94807788),
(65, 'Lars Sandoval', '336-6580 Ullamcorper Avenue', 'eu@adipiscingMauris.net', 48392121, 70954276),
(66, 'Porter Eaton', 'P.O. Box 421, 6667 Integer St.', 'quis.diam@Phaselluslibero.edu', 22723316, 27177559),
(67, 'August Mason', 'Ap #836-1955 Cras St.', 'imperdiet.ullamcorper.Duis@mauris.edu', 25111579, 34617726),
(68, 'Cairo Cohen', '2640 Eu, Road', 'Cras.eget@Ut.com', 16872626, 80631456),
(69, 'Stewart Wilcox', 'Ap #855-6269 Placerat, Rd.', 'ornare.lectus@diamloremauctor.net', 42738256, 11956782),
(70, 'Kibo Blanchard', 'P.O. Box 498, 9886 Consectetuer, Rd.', 'at.pede@semperNam.com', 11519174, 59726074),
(71, 'Honorato Everett', 'P.O. Box 311, 5341 Mauris St.', 'hendrerit@accumsan.co.uk', 41868334, 14940160),
(72, 'Marvin Kemp', 'P.O. Box 561, 7182 Magna Street', 'Suspendisse.dui.Fusce@ipsum.co.uk', 21514483, 5173491),
(73, 'Curran Mckinney', 'P.O. Box 706, 9984 Vestibulum Road', 'eleifend.nunc.risus@insodaleselit.net', 20997867, 42201491),
(74, 'Drew Franco', '7483 Adipiscing Road', 'Vivamus@Mauris.edu', 49498973, 53813392),
(75, 'Michael Davidson', 'P.O. Box 255, 3526 Velit. St.', 'feugiat.Lorem@felis.net', 6672239, 72794581),
(76, 'Dolan Wyatt', 'Ap #353-4109 Mauris Av.', 'eget@Crasloremlorem.edu', 7122365, 71610699),
(77, 'Thaddeus Jensen', 'Ap #601-1040 Cursus. Avenue', 'eget.dictum@SedmolestieSed.edu', 20936184, 16835088),
(78, 'Fitzgerald Charles', '637-3186 Dolor. Rd.', 'consectetuer.adipiscing.elit@egestas.org', 14801352, 52507323),
(79, 'Graiden Dorsey', 'P.O. Box 330, 6482 Sagittis Ave', 'dolor.elit@at.co.uk', 38552995, 10529909),
(80, 'Fuller Wilcox', 'P.O. Box 606, 2437 Duis Road', 'faucibus@Inornare.co.uk', 45710582, 75759289),
(81, 'Benedict Adkins', '281-1232 Enim, Road', 'nulla@a.ca', 16712448, 5538296),
(82, 'Finn Madden', '5172 Ipsum Av.', 'dolor.Quisque@necanteMaecenas.ca', 46754498, 50588572),
(83, 'Thaddeus Downs', 'P.O. Box 740, 9030 Ornare, Road', 'ipsum.dolor.sit@semNulla.co.uk', 46642454, 84176536),
(84, 'Gavin Raymond', 'Ap #267-2225 Convallis Rd.', 'Etiam.vestibulum@ametanteVivamus.ca', 13374441, 39099579),
(85, 'Fritz Maldonado', '623-7738 Nibh. Street', 'egestas@eu.co.uk', 27568972, 33817438),
(86, 'Blake Garza', '6397 Ullamcorper. St.', 'tellus.lorem@AeneanmassaInteger.edu', 38562558, 56661907),
(87, 'Jacob Walker', 'P.O. Box 134, 5557 Erat. Rd.', 'justo@utlacus.edu', 8454732, 37854310),
(88, 'Alan Jacobs', '795-9344 Quam Ave', 'velit.Sed.malesuada@etultrices.org', 49502308, 60954809),
(89, 'Lewis Adams', '738 Euismod St.', 'turpis.Aliquam@Nullam.ca', 35344259, 55314266),
(90, 'Reese Lyons', '163-8576 Magna. Rd.', 'velit@imperdiet.edu', 8390340, 11894564),
(91, 'Lester Johnson', 'Ap #552-5532 Purus, Avenue', 'sit.amet.diam@accumsannequeet.co.uk', 24952442, 5441873),
(92, 'Abdul Pennington', '165-2617 Faucibus. St.', 'pellentesque.eget@Proin.edu', 30715808, 42754694),
(93, 'Evan Parker', 'P.O. Box 324, 7827 Et, Rd.', 'accumsan.interdum.libero@AliquamnislNulla.ca', 32675113, 34452624),
(94, 'Adrian Richard', '6690 Pede. Rd.', 'nulla.Donec@pedesagittisaugue.co.uk', 38751959, 32726594),
(95, 'Timon Beard', '984-2616 Elit, Rd.', 'arcu@ornareFusce.edu', 44821501, 67170323),
(96, 'Declan Gardner', '6185 Eget Rd.', 'tellus.justo@magna.ca', 19853935, 28827288),
(97, 'Kareem West', 'P.O. Box 121, 7048 Dolor. Ave', 'ligula.tortor@idrisus.org', 48725805, 83418849),
(98, 'Gareth Davis', '1701 Vulputate, St.', 'tempor.est@necante.com', 31479460, 77188028),
(99, 'Armando Pennington', 'P.O. Box 746, 9871 Nunc Rd.', 'nunc.nulla.vulputate@lobortismaurisSuspendisse.com', 27007884, 29989653),
(100, 'Denton Castillo', 'P.O. Box 529, 8866 Purus, St.', 'elementum@cursus.co.uk', 15004846, 88718695);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_status` int(11) NOT NULL DEFAULT '2',
  `titulo` varchar(50) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `sinopse` varchar(100) NOT NULL,
  `numero_pag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `id_categoria`, `id_status`, `titulo`, `descricao`, `sinopse`, `numero_pag`) VALUES
(1, 2, 2, 'livro 1', 'fgbnlfmlmvkmlfsdfsd', 'fgbhhnlfmlmvkmlfsdfsd', 321),
(2, 1, 2, 'livro 2', 'ewirjafsf', 'fgbnlfmlmvkmlfsdfsd', 222),
(3, 2, 2, 'livro 3', 'fdkmskfksmfksd 21', 'fgbnlfmlmvkmlfsdfsd', 654),
(4, 5, 1, 'livro 4', 'heaidgjfhgjdfgskhgjfsdhgfjsfhgsdjfs', 'hsakhhkhjfsdgfgsdjfgshgjfsdfgjsdg', 198),
(5, 9, 1, 'livro 5', 'ahfdjhsjkdfhskjfjsdhfsdj', 'lhjakahkjahdhkjashdhkas', 474),
(6, 7, 1, 'livro 6', 'jfskhlkdjdkljfjksdhjshkfhshfkshkfjsh', 'ahjdkfhsjhfksdhfjhksdhfjsdkfhsdjfksdhjf', 987),
(7, 4, 1, 'livro 7', 'klshkdfhsdkjfsjfksldlfjsdiofuisdufiusiuofsuifusduofisdfsdjflsdhfkjsdhfjsdhfksdjhkfhsjdhfdskuhuk', 'nbshfkhsjfkshdfusdukfhksdfnsdhfsjdlfhsdfhusdh', 3845);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id`, `nome`) VALUES
(1, 'aluno'),
(2, 'funcionario'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prazo`
--

CREATE TABLE `prazo` (
  `id` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `data_entrega` date NOT NULL,
  `data_devolucao` date NOT NULL,
  `atrazo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prazo`
--

INSERT INTO `prazo` (`id`, `id_aluno`, `data_entrega`, `data_devolucao`, `atrazo`) VALUES
(1, 1, '2016-12-05', '2016-12-06', 0),
(2, 2, '2016-12-07', '2016-12-08', 0),
(3, 1, '2016-12-20', '2016-12-21', 0),
(5, 2, '2017-01-25', '2017-01-31', 0),
(6, 11, '2017-01-18', '2017-01-31', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `status`
--

INSERT INTO `status` (`id`, `nome`) VALUES
(1, 'Disponivel'),
(2, 'Indisponivel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `telefone` (`telefone`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conexao`
--
ALTER TABLE `conexao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_conexao_id_livro` (`id_livro`),
  ADD KEY `fk_conexao_id_prazo` (`id_prazo`),
  ADD KEY `fk_conexao_id_status` (`id_status`);

--
-- Indexes for table `conexao_pessoa`
--
ALTER TABLE `conexao_pessoa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_conexao_pessoa_id_pessoa` (`id_pessoa`),
  ADD KEY `fk_conexao_pessoa_id_aluno` (`id_aluno`),
  ADD KEY `fk_conexao_pessoa_id_funcionario` (`id_funcionario`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `telefone` (`telefone`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_livro_id_categoria` (`id_categoria`),
  ADD KEY `fk_livro_id_status` (`id_status`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prazo`
--
ALTER TABLE `prazo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prazo_id_aluno` (`id_aluno`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `conexao`
--
ALTER TABLE `conexao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `conexao_pessoa`
--
ALTER TABLE `conexao_pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `prazo`
--
ALTER TABLE `prazo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `conexao`
--
ALTER TABLE `conexao`
  ADD CONSTRAINT `fk_conexao_id_livro` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id`),
  ADD CONSTRAINT `fk_conexao_id_prazo` FOREIGN KEY (`id_prazo`) REFERENCES `prazo` (`id`),
  ADD CONSTRAINT `fk_conexao_id_status` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`);

--
-- Limitadores para a tabela `conexao_pessoa`
--
ALTER TABLE `conexao_pessoa`
  ADD CONSTRAINT `fk_conexao_pessoa_id_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id`),
  ADD CONSTRAINT `fk_conexao_pessoa_id_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id`),
  ADD CONSTRAINT `fk_conexao_pessoa_id_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `fk_livro_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `fk_livro_id_status` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`);

--
-- Limitadores para a tabela `prazo`
--
ALTER TABLE `prazo`
  ADD CONSTRAINT `fk_prazo_id_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
