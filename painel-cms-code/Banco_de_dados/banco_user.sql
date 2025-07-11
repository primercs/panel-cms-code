-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 03/09/2017 às 19:53
-- Versão do servidor: 5.5.53-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `teste_user`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `sobrenome` varchar(250) DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `celular` varchar(250) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `perfil` text,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  `inativo` varchar(11) NOT NULL DEFAULT 'N',
  `data_cadastro` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_nascimento` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ValorCobrado` varchar(250) DEFAULT NULL,
  `ValorCobradoCabo` varchar(250) DEFAULT NULL,
  `xml` varchar(11) NOT NULL DEFAULT 'S',
  `MensagemInterna` longtext,
  `obs` text,
  `data_premio` varchar(250) DEFAULT NULL,
  `conexao` int(11) DEFAULT NULL,
  `grupo` int(11) NOT NULL DEFAULT '1',
  `PrePago` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `admin`
--

INSERT INTO `admin` (`id`, `CadUser`, `nome`, `sobrenome`, `usuario`, `senha`, `email`, `celular`, `foto`, `perfil`, `bloqueado`, `inativo`, `data_cadastro`, `data_nascimento`, `ValorCobrado`, `ValorCobradoCabo`, `xml`, `MensagemInterna`, `obs`, `data_premio`, `conexao`, `grupo`, `PrePago`) VALUES
(1, 'Admin', 'admin', 'istrador', 'Admin', '12345678', 'admin@admin.com', '(11) 22334-4556', '1494885228_be0f8c7f693234410a1a73a3387e2055edebfac4.png', '[vivo][NETBSB][NETSP][claro][via2]', 'N', 'N', '2016-11-01 21:24:16', '1980-01-01 05:00:00', '10.00', '20.00', 'S', '', '', NULL, NULL, 1, 'N');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rev`
--

CREATE TABLE IF NOT EXISTS `rev` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `sobrenome` varchar(250) DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `celular` varchar(250) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `perfil` text,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  `inativo` varchar(11) NOT NULL DEFAULT 'N',
  `data_cadastro` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_premio` varchar(250) DEFAULT NULL,
  `data_nascimento` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VencEmail` varchar(11) NOT NULL DEFAULT 'S',
  `VencSMS` varchar(11) NOT NULL DEFAULT 'S',
  `PrePago` varchar(11) NOT NULL DEFAULT 'N',
  `Cota` int(11) DEFAULT NULL,
  `CotaDias` int(11) DEFAULT NULL,
  `ValorCobrado` varchar(250) DEFAULT NULL,
  `ValorCobradoCabo` varchar(250) DEFAULT NULL,
  `DataEnviado` varchar(250) NOT NULL DEFAULT '0',
  `xml` varchar(11) NOT NULL DEFAULT 'S',
  `MensagemInterna` longtext,
  `obs` text,
  `LimiteTeste` varchar(250) DEFAULT NULL,
  `LimiteUser` varchar(250) DEFAULT NULL,
  `conexao` int(11) DEFAULT NULL,
  `grupo` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `teste`
--

CREATE TABLE IF NOT EXISTS `teste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `sobrenome` varchar(250) DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `celular` varchar(250) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `conexao` int(11) NOT NULL DEFAULT '1',
  `perfil` text,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  `data_cadastro` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_premio` varchar(250) DEFAULT NULL,
  `data_nascimento` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VencEmail` varchar(11) NOT NULL DEFAULT 'S',
  `VencSMS` varchar(11) NOT NULL DEFAULT 'S',
  `ValorCobrado` varchar(250) DEFAULT NULL,
  `DataEnviado` varchar(250) NOT NULL DEFAULT '0',
  `PrePago` varchar(11) NOT NULL DEFAULT 'N',
  `xml` varchar(11) NOT NULL DEFAULT 'S',
  `MensagemInterna` longtext,
  `obs` text,
  `grupo` int(11) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `sobrenome` varchar(250) DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `celular` varchar(250) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `conexao` int(11) NOT NULL DEFAULT '1',
  `perfil` text,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  `data_cadastro` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_premio` varchar(250) DEFAULT NULL,
  `data_nascimento` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VencEmail` varchar(11) NOT NULL DEFAULT 'S',
  `VencSMS` varchar(11) NOT NULL DEFAULT 'S',
  `ValorCobrado` varchar(250) DEFAULT NULL,
  `ValorCobradoCab` varchar(250) DEFAULT NULL,
  `DataEnviado` varchar(250) NOT NULL DEFAULT '0',
  `PrePago` varchar(11) NOT NULL DEFAULT 'N',
  `xml` varchar(11) NOT NULL DEFAULT 'S',
  `MensagemInterna` longtext,
  `obs` text,
  `grupo` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
