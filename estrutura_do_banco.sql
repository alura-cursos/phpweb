-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2019 at 11:41 AM
-- Server version: 5.7.27-0ubuntu0.19.04.1
-- PHP Version: 7.2.19-0ubuntu0.19.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `artigos`
--

DROP TABLE IF EXISTS `artigos`;
CREATE TABLE IF NOT EXISTS `artigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `conteudo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artigos`
--

INSERT INTO `artigos` (`id`, `titulo`, `conteudo`) VALUES
(1, 'Primeiros passos Spring', 'Fomos chamados para implementar um sistema em uma loja de produtos eletrônicos que ajudasse no controle das quantidades de produto que temos em loja. Começamos alinhando quais eram as operações que o cliente esperava poder realizar nesse controle de produtos.'),
(2, 'Praticando para a Olimpíada Brasileira de Informática', 'Quando eu era mais novo, na época do segundo ano do ensino médio, estava decidido a fazer um curso técnico. Na época, estava indeciso entre dois cursos técnicos: química ou informática. Acabei optando por informática e gostei muito do curso. A parte que mais chamou minha atenção foi a parte de programação.'),
(3, 'O que é Metodologia Ágil?', 'Uma vez fui contratada por uma empresa que desenvolvia softwares e aplicativos para outras empresas. Nela, um dos meus primeiros trabalhos era auxiliar no desenvolvimento de um aplicativo que visa permitir que as pessoas encontrem restaurantes baratos perto de onde ela se encontra.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
