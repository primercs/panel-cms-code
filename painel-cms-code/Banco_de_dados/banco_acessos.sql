-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 03/09/2017 às 19:52
-- Versão do servidor: 5.5.53-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `teste_acessos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `AdminVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `AdminAcesso` varchar(11) NOT NULL DEFAULT 'N',
  `AdminInfo` varchar(11) NOT NULL DEFAULT 'N',
  `AdminMensagem` varchar(11) NOT NULL DEFAULT 'N',
  `AdminBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `AdminDesativar` varchar(11) NOT NULL DEFAULT 'N',
  `AdminEditar` varchar(11) NOT NULL DEFAULT 'N',
  `AdminExcluir` varchar(11) NOT NULL DEFAULT 'N',
  `AdminAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `AdminLogin` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `admin`
--

INSERT INTO `admin` (`id`, `grupo`, `id_grupo`, `CadUser`, `AdminVisualizar`, `AdminAcesso`, `AdminInfo`, `AdminMensagem`, `AdminBloquear`, `AdminDesativar`, `AdminEditar`, `AdminExcluir`, `AdminAdicionar`, `AdminLogin`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_adicionar`
--

CREATE TABLE IF NOT EXISTS `email_adicionar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `EmailadicionarVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `EmailadicionarAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `EmailadicionarBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `EmailadicionarEditar` varchar(11) NOT NULL DEFAULT 'N',
  `EmailadicionarExcluir` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `email_adicionar`
--

INSERT INTO `email_adicionar` (`id`, `grupo`, `id_grupo`, `CadUser`, `EmailadicionarVisualizar`, `EmailadicionarAdicionar`, `EmailadicionarBloquear`, `EmailadicionarEditar`, `EmailadicionarExcluir`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_modelo`
--

CREATE TABLE IF NOT EXISTS `email_modelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `EmailModeloVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `EmailModeloPreferencias` varchar(11) NOT NULL DEFAULT 'N',
  `EmailModeloAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `EmailModeloBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `EmailModeloEditar` varchar(11) NOT NULL DEFAULT 'N',
  `EmailModeloExcluir` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `email_modelo`
--

INSERT INTO `email_modelo` (`id`, `grupo`, `id_grupo`, `CadUser`, `EmailModeloVisualizar`, `EmailModeloPreferencias`, `EmailModeloAdicionar`, `EmailModeloBloquear`, `EmailModeloEditar`, `EmailModeloExcluir`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagemperfil`
--

CREATE TABLE IF NOT EXISTS `imagemperfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `ImagemperfilVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `ImagemperfilAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `ImagemperfilExcluir` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `imagemperfil`
--

INSERT INTO `imagemperfil` (`id`, `grupo`, `id_grupo`, `CadUser`, `ImagemperfilVisualizar`, `ImagemperfilAdicionar`, `ImagemperfilExcluir`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `opcoes`
--

CREATE TABLE IF NOT EXISTS `opcoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `OpcoesExportar` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesImportar` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesVencimento` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesRelatorio` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesGrupoAcesso` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesMascaraURL` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesLiberarComputador` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesCircular` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesDesenvolvedor` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesStatusServer` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesBackup` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesEmailTemporario` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesEmailTeste` varchar(11) NOT NULL DEFAULT 'N',
  `OpcoesCupom` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `opcoes`
--

INSERT INTO `opcoes` (`id`, `grupo`, `id_grupo`, `CadUser`, `OpcoesExportar`, `OpcoesImportar`, `OpcoesVencimento`, `OpcoesRelatorio`, `OpcoesGrupoAcesso`, `OpcoesMascaraURL`, `OpcoesLiberarComputador`, `OpcoesCircular`, `OpcoesDesenvolvedor`, `OpcoesStatusServer`, `OpcoesBackup`, `OpcoesEmailTemporario`, `OpcoesEmailTeste`, `OpcoesCupom`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamentos`
--

CREATE TABLE IF NOT EXISTS `pagamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `PagamentoPagSeguro` varchar(11) NOT NULL DEFAULT 'N',
  `PagamentoPayPal` varchar(11) NOT NULL DEFAULT 'N',
  `PagamentoMercadoPago` varchar(11) NOT NULL DEFAULT 'N',
  `PagamentoContaBancaria` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `pagamentos`
--

INSERT INTO `pagamentos` (`id`, `grupo`, `id_grupo`, `CadUser`, `PagamentoPagSeguro`, `PagamentoPayPal`, `PagamentoMercadoPago`, `PagamentoContaBancaria`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `PerfilVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `PerfilAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `PerfilBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `PerfilEditar` varchar(11) NOT NULL DEFAULT 'N',
  `PerfilExcluir` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `perfil`
--

INSERT INTO `perfil` (`id`, `grupo`, `id_grupo`, `CadUser`, `PerfilVisualizar`, `PerfilAdicionar`, `PerfilBloquear`, `PerfilEditar`, `PerfilExcluir`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rev`
--

CREATE TABLE IF NOT EXISTS `rev` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `RevVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `RevAcesso` varchar(11) NOT NULL DEFAULT 'N',
  `RevInfo` varchar(11) NOT NULL DEFAULT 'N',
  `RevMensagem` varchar(11) NOT NULL DEFAULT 'N',
  `RevBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `RevDesativar` varchar(11) NOT NULL DEFAULT 'N',
  `RevEditar` varchar(11) NOT NULL DEFAULT 'N',
  `RevExcluir` varchar(11) NOT NULL DEFAULT 'N',
  `RevAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `RevUrldeTeste` varchar(11) NOT NULL DEFAULT 'N',
  `RevLogin` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `rev`
--

INSERT INTO `rev` (`id`, `grupo`, `id_grupo`, `CadUser`, `RevVisualizar`, `RevAcesso`, `RevInfo`, `RevMensagem`, `RevBloquear`, `RevDesativar`, `RevEditar`, `RevExcluir`, `RevAdicionar`, `RevUrldeTeste`, `RevLogin`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servidorcsp`
--

CREATE TABLE IF NOT EXISTS `servidorcsp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `ServidorcspVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `ServidorcspAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `ServidorcspConfig` varchar(11) NOT NULL DEFAULT 'N',
  `ServidorcspInfo` varchar(11) NOT NULL DEFAULT 'N',
  `ServidorcspBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `ServidorcspEditar` varchar(11) NOT NULL DEFAULT 'N',
  `ServidorcspExcluir` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `servidorcsp`
--

INSERT INTO `servidorcsp` (`id`, `grupo`, `id_grupo`, `CadUser`, `ServidorcspVisualizar`, `ServidorcspAdicionar`, `ServidorcspConfig`, `ServidorcspInfo`, `ServidorcspBloquear`, `ServidorcspEditar`, `ServidorcspExcluir`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sms_adicionar`
--

CREATE TABLE IF NOT EXISTS `sms_adicionar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `SMSadicionarVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `SMSadicionarAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `SMSadicionarBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `SMSadicionarEditar` varchar(11) NOT NULL DEFAULT 'N',
  `SMSadicionarExcluir` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `sms_adicionar`
--

INSERT INTO `sms_adicionar` (`id`, `grupo`, `id_grupo`, `CadUser`, `SMSadicionarVisualizar`, `SMSadicionarAdicionar`, `SMSadicionarBloquear`, `SMSadicionarEditar`, `SMSadicionarExcluir`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sms_modelo`
--

CREATE TABLE IF NOT EXISTS `sms_modelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `SMSModeloVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `SMSModeloPreferencias` varchar(11) NOT NULL DEFAULT 'N',
  `SMSModeloAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `SMSModeloBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `SMSModeloEditar` varchar(11) NOT NULL DEFAULT 'N',
  `SMSModeloExcluir` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `sms_modelo`
--

INSERT INTO `sms_modelo` (`id`, `grupo`, `id_grupo`, `CadUser`, `SMSModeloVisualizar`, `SMSModeloPreferencias`, `SMSModeloAdicionar`, `SMSModeloBloquear`, `SMSModeloEditar`, `SMSModeloExcluir`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `StatusOnline` varchar(11) NOT NULL DEFAULT 'N',
  `StatusDesconectado` varchar(11) NOT NULL DEFAULT 'N',
  `StatusFalhado` varchar(11) NOT NULL DEFAULT 'N',
  `StatusLogs` varchar(11) NOT NULL DEFAULT 'N',
  `StatusReshare` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `status`
--

INSERT INTO `status` (`id`, `grupo`, `id_grupo`, `CadUser`, `StatusOnline`, `StatusDesconectado`, `StatusFalhado`, `StatusLogs`, `StatusReshare`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `template`
--

CREATE TABLE IF NOT EXISTS `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `TemplateTema` varchar(11) NOT NULL DEFAULT 'N',
  `TemplateInfo` varchar(11) NOT NULL DEFAULT 'N',
  `TemplatePParede` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `template`
--

INSERT INTO `template` (`id`, `grupo`, `id_grupo`, `CadUser`, `TemplateTema`, `TemplateInfo`, `TemplatePParede`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tempoteste`
--

CREATE TABLE IF NOT EXISTS `tempoteste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `TesteTempoVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `TesteTempoAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `TesteTempoExcluir` varchar(11) NOT NULL DEFAULT 'N',
  `TesteTempoBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `TesteTempoEditar` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `tempoteste`
--

INSERT INTO `tempoteste` (`id`, `grupo`, `id_grupo`, `CadUser`, `TesteTempoVisualizar`, `TesteTempoAdicionar`, `TesteTempoExcluir`, `TesteTempoBloquear`, `TesteTempoEditar`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `teste`
--

CREATE TABLE IF NOT EXISTS `teste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `TesteVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `TesteInfo` varchar(11) NOT NULL DEFAULT 'N',
  `TesteMensagem` varchar(11) NOT NULL DEFAULT 'N',
  `TesteBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `TesteEditar` varchar(11) NOT NULL DEFAULT 'N',
  `TesteExcluir` varchar(11) NOT NULL DEFAULT 'N',
  `TesteAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `TesteLogin` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `teste`
--

INSERT INTO `teste` (`id`, `grupo`, `id_grupo`, `CadUser`, `TesteVisualizar`, `TesteInfo`, `TesteMensagem`, `TesteBloquear`, `TesteEditar`, `TesteExcluir`, `TesteAdicionar`, `TesteLogin`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(11) NOT NULL DEFAULT 'N',
  `id_grupo` int(11) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `UserVisualizar` varchar(11) NOT NULL DEFAULT 'N',
  `UserInfo` varchar(11) NOT NULL DEFAULT 'N',
  `UserMensagem` varchar(11) NOT NULL DEFAULT 'N',
  `UserBloquear` varchar(11) NOT NULL DEFAULT 'N',
  `UserEditar` varchar(11) NOT NULL DEFAULT 'N',
  `UserExcluir` varchar(11) NOT NULL DEFAULT 'N',
  `UserAdicionar` varchar(11) NOT NULL DEFAULT 'N',
  `UserLogin` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `user`
--

INSERT INTO `user` (`id`, `grupo`, `id_grupo`, `CadUser`, `UserVisualizar`, `UserInfo`, `UserMensagem`, `UserBloquear`, `UserEditar`, `UserExcluir`, `UserAdicionar`, `UserLogin`) VALUES
(1, 'N', NULL, 'Admin', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
