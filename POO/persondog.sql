-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/01/2017 às 15:04
-- Versão do servidor: 5.6.17-log
-- Versão do PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `line1` varchar(50) NOT NULL,
  `line2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `address`
--

INSERT INTO `address` (`address_id`, `line1`, `line2`, `city`, `region`, `country`, `postal_code`) VALUES
(1, '100 Data Street', 'Suite 432', 'San Francisco', 'California', 'USA', '94103');

-- --------------------------------------------------------

--
-- Estrutura para tabela `billable`
--

CREATE TABLE IF NOT EXISTS `billable` (
  `billable_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `consultant_id` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_department_number` smallint(6) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `hours` smallint(6) NOT NULL,
  `hourly_rate` decimal(6,2) NOT NULL,
  `billable_hourly_rate` decimal(6,2) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `artifacts` text,
  PRIMARY KEY (`billable_id`),
  KEY `billable_fk_consultant` (`consultant_id`),
  KEY `billable_fk_project` (`client_name`,`client_department_number`,`project_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `billable`
--

INSERT INTO `billable` (`billable_id`, `consultant_id`, `client_name`, `client_department_number`, `project_name`, `start_date`, `end_date`, `hours`, `hourly_rate`, `billable_hourly_rate`, `description`, `artifacts`) VALUES
(1, 1, 'Big Data Corp.', 2000, 'Secret Project', '2008-10-13 03:00:00', '2008-10-17 03:00:00', 40, '80.00', '120.00', 'begin gathering requirements', NULL),
(2, 1, 'Big Data Corp.', 2000, 'Secret Project', '2008-10-20 02:00:00', '2008-10-24 02:00:00', 40, '80.00', '120.00', 'finish gathering requirements', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_name` varchar(50) NOT NULL,
  `client_department_number` smallint(6) NOT NULL,
  `billing_address` int(11) NOT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `contact_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`client_name`,`client_department_number`),
  UNIQUE KEY `client_uk_billing_address` (`billing_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `client`
--

INSERT INTO `client` (`client_name`, `client_department_number`, `billing_address`, `contact_email`, `contact_password`) VALUES
('Big Data Corp.', 2000, 1, 'accounting@bigdatacorp.com', 'accounting');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `Preferencias` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `sexo`, `Preferencias`) VALUES
(1, 'Plácido Marinho DIas', '1', '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `consultant`
--

CREATE TABLE IF NOT EXISTS `consultant` (
  `consultant_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` char(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hourly_rate` decimal(6,2) NOT NULL,
  `billable_hourly_rate` decimal(6,2) NOT NULL,
  `hire_date` date DEFAULT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `resume` mediumtext,
  PRIMARY KEY (`consultant_id`),
  KEY `consultant_fk_consultant_status` (`status_id`),
  KEY `consultant_fk_recruiter` (`recruiter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `consultant`
--

INSERT INTO `consultant` (`consultant_id`, `status_id`, `email`, `password`, `hourly_rate`, `billable_hourly_rate`, `hire_date`, `recruiter_id`, `resume`) VALUES
(1, 'A', 'janet.smart@jsfcrudconsultants.com', 'janet.smart', '80.00', '120.00', '2007-02-15', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `consultant_status`
--

CREATE TABLE IF NOT EXISTS `consultant_status` (
  `status_id` char(1) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `consultant_status`
--

INSERT INTO `consultant_status` (`status_id`, `description`) VALUES
('A', 'Active');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dog`
--

CREATE TABLE IF NOT EXISTS `dog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Fazendo dump de dados para tabela `dog`
--

INSERT INTO `dog` (`id`, `age`, `name`) VALUES
(9, 12, 'assas'),
(11, 3, 'dsdsadsd'),
(12, 1, 'cao 1'),
(13, 3, 'cao 3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `nomeFuncionario` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `version`, `nomeFuncionario`) VALUES
(1, 1, 'placido'),
(2, 1, 'Marcos'),
(3, 1, 'Edilda');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario_projeto`
--

CREATE TABLE IF NOT EXISTS `funcionario_projeto` (
  `Funcionario_id` bigint(20) NOT NULL,
  `projetos_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Funcionario_id`,`projetos_id`),
  KEY `Funcionario_id` (`Funcionario_id`),
  KEY `projetos_id` (`projetos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `hibernate_sequence`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(7),
(7),
(7),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `hibernate_sequences`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `hibernate_sequences`
--

INSERT INTO `hibernate_sequences` (`sequence_name`, `next_val`) VALUES
('default', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(25) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `member`
--

INSERT INTO `member` (`id`, `full_name`, `phone_number`) VALUES
(1, 'asasa', '12345678901'),
(2, 'ass', '121212121212'),
(3, 'ass', '122121212212'),
(4, 'sasas', '1212121212'),
(5, 'qwqwqw', '121212121212'),
(6, 'wqwqwq', '121212121212');

-- --------------------------------------------------------

--
-- Estrutura para tabela `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Fazendo dump de dados para tabela `person`
--

INSERT INTO `person` (`id`, `age`, `name`) VALUES
(3, 23, 'uiuiuiaaaAAAa'),
(4, 12, 'sasas'),
(5, 23, 'jose');

-- --------------------------------------------------------

--
-- Estrutura para tabela `person_dog`
--

CREATE TABLE IF NOT EXISTS `person_dog` (
  `persons_id` int(11) NOT NULL,
  `dogs_id` int(11) NOT NULL,
  PRIMARY KEY (`dogs_id`,`persons_id`),
  KEY `FK9F4A0152D2951C4D` (`dogs_id`),
  KEY `FK9F4A015252A8663` (`persons_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `person_dog`
--

INSERT INTO `person_dog` (`persons_id`, `dogs_id`) VALUES
(3, 9),
(4, 9),
(5, 9),
(5, 11),
(3, 12),
(4, 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `client_name` varchar(50) NOT NULL,
  `client_department_number` smallint(6) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `contact_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`client_name`,`client_department_number`,`project_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `project`
--

INSERT INTO `project` (`client_name`, `client_department_number`, `project_name`, `contact_email`, `contact_password`) VALUES
('Big Data Corp.', 2000, 'Secret Project', 'project.manager@bigdatacorp.com', 'project.manager');

-- --------------------------------------------------------

--
-- Estrutura para tabela `project_consultant`
--

CREATE TABLE IF NOT EXISTS `project_consultant` (
  `client_name` varchar(50) NOT NULL,
  `client_department_number` smallint(6) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `consultant_id` int(11) NOT NULL,
  PRIMARY KEY (`client_name`,`client_department_number`,`project_name`,`consultant_id`),
  KEY `project_consultant_fk_consultant` (`consultant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `project_consultant`
--

INSERT INTO `project_consultant` (`client_name`, `client_department_number`, `project_name`, `consultant_id`) VALUES
('Big Data Corp.', 2000, 'Secret Project', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `projeto`
--

CREATE TABLE IF NOT EXISTS `projeto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `projeto`
--

INSERT INTO `projeto` (`id`, `nome`, `version`) VALUES
(1, 'qq', 1),
(2, '', NULL),
(3, '', NULL),
(4, '', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `recruiter`
--

CREATE TABLE IF NOT EXISTS `recruiter` (
  `recruiter_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `client_name` varchar(50) DEFAULT NULL,
  `client_department_number` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`recruiter_id`),
  KEY `recruiter_fk_client` (`client_name`,`client_department_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `recruiter`
--

INSERT INTO `recruiter` (`recruiter_id`, `email`, `password`, `client_name`, `client_department_number`) VALUES
(1, 'bob@jsfcrudconsultants.com', 'bob', 'Big Data Corp.', 2000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `role`) VALUES
(1, 'placido_md@hotmail.com', 'Placido Dias', 'teste1', 'USER'),
(2, 'placido.dias@embrapa.br', 'placido embrapa', 'teste1', 'ADMIN');

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `billable`
--
ALTER TABLE `billable`
  ADD CONSTRAINT `billable_fk_consultant` FOREIGN KEY (`consultant_id`) REFERENCES `consultant` (`consultant_id`),
  ADD CONSTRAINT `billable_fk_project` FOREIGN KEY (`client_name`, `client_department_number`, `project_name`) REFERENCES `project` (`client_name`, `client_department_number`, `project_name`);

--
-- Restrições para tabelas `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_fk_address` FOREIGN KEY (`billing_address`) REFERENCES `address` (`address_id`);

--
-- Restrições para tabelas `consultant`
--
ALTER TABLE `consultant`
  ADD CONSTRAINT `consultant_fk_consultant_status` FOREIGN KEY (`status_id`) REFERENCES `consultant_status` (`status_id`),
  ADD CONSTRAINT `consultant_fk_recruiter` FOREIGN KEY (`recruiter_id`) REFERENCES `recruiter` (`recruiter_id`);

--
-- Restrições para tabelas `funcionario_projeto`
--
ALTER TABLE `funcionario_projeto`
  ADD CONSTRAINT `funcionario_projeto_ibfk_1` FOREIGN KEY (`projetos_id`) REFERENCES `projeto` (`id`),
  ADD CONSTRAINT `funcionario_projeto_ibfk_2` FOREIGN KEY (`Funcionario_id`) REFERENCES `funcionario` (`id`);

--
-- Restrições para tabelas `person_dog`
--
ALTER TABLE `person_dog`
  ADD CONSTRAINT `FK9F4A015252A8663` FOREIGN KEY (`persons_id`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `FK9F4A0152D2951C4D` FOREIGN KEY (`dogs_id`) REFERENCES `dog` (`id`);

--
-- Restrições para tabelas `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_fk_client` FOREIGN KEY (`client_name`, `client_department_number`) REFERENCES `client` (`client_name`, `client_department_number`);

--
-- Restrições para tabelas `project_consultant`
--
ALTER TABLE `project_consultant`
  ADD CONSTRAINT `project_consultant_fk_consultant` FOREIGN KEY (`consultant_id`) REFERENCES `consultant` (`consultant_id`),
  ADD CONSTRAINT `project_consultant_fk_project` FOREIGN KEY (`client_name`, `client_department_number`, `project_name`) REFERENCES `project` (`client_name`, `client_department_number`, `project_name`);

--
-- Restrições para tabelas `recruiter`
--
ALTER TABLE `recruiter`
  ADD CONSTRAINT `recruiter_fk_client` FOREIGN KEY (`client_name`, `client_department_number`) REFERENCES `client` (`client_name`, `client_department_number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
