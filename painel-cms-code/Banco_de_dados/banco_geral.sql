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
-- Banco de dados: `teste_geral`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `arquivo_backup`
--

CREATE TABLE IF NOT EXISTS `arquivo_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(250) DEFAULT NULL,
  `local` mediumtext,
  `data` varchar(250) DEFAULT NULL,
  `size` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `backup`
--

CREATE TABLE IF NOT EXISTS `backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(11) NOT NULL DEFAULT 'N',
  `tempo` varchar(11) DEFAULT NULL,
  `horario` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `backup_automatizado`
--

CREATE TABLE IF NOT EXISTS `backup_automatizado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(11) NOT NULL DEFAULT 'N',
  `tempo` varchar(250) NOT NULL,
  `horario` varchar(250) NOT NULL,
  `server` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bancoemail`
--

CREATE TABLE IF NOT EXISTS `bancoemail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bit`
--

CREATE TABLE IF NOT EXISTS `bit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `api` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(11) NOT NULL DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `captcha`
--

INSERT INTO `captcha` (`id`, `status`) VALUES
(1, 'N');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comprar`
--

CREATE TABLE IF NOT EXISTS `comprar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `comprador` varchar(250) DEFAULT NULL,
  `referencia` varchar(250) DEFAULT NULL,
  `dias` varchar(250) DEFAULT NULL,
  `valor` varchar(250) DEFAULT NULL,
  `perfil` text,
  `conexao` varchar(250) DEFAULT NULL,
  `PrePago` varchar(11) NOT NULL DEFAULT 'N',
  `Quantidade` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `config_suporte`
--

CREATE TABLE IF NOT EXISTS `config_suporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `SuportePaginacao` int(11) DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contabancaria`
--

CREATE TABLE IF NOT EXISTS `contabancaria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `banco` varchar(250) DEFAULT NULL,
  `tipo` varchar(11) DEFAULT 'C',
  `agencia` varchar(250) DEFAULT NULL,
  `operacao` varchar(250) DEFAULT NULL,
  `conta` varchar(250) DEFAULT NULL,
  `favorecido` varchar(250) DEFAULT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contamercadopago`
--

CREATE TABLE IF NOT EXISTS `contamercadopago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `clientid` varchar(250) DEFAULT NULL,
  `clientsecret` varchar(250) DEFAULT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contapagseguro`
--

CREATE TABLE IF NOT EXISTS `contapagseguro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `token` varchar(250) DEFAULT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contapaypal`
--

CREATE TABLE IF NOT EXISTS `contapaypal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cupom`
--

CREATE TABLE IF NOT EXISTS `cupom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `CriadoEm` varchar(250) DEFAULT NULL,
  `Cupom` varchar(250) DEFAULT NULL,
  `UserDescontar` varchar(250) DEFAULT NULL,
  `UserDescontarEm` varchar(250) DEFAULT NULL,
  `dias` varchar(250) DEFAULT NULL,
  `perfil` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `emailtemporario`
--

CREATE TABLE IF NOT EXISTS `emailtemporario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_adicionar`
--

CREATE TABLE IF NOT EXISTS `email_adicionar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `servidor` varchar(250) DEFAULT NULL,
  `exibicao` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `SMTPSecure` varchar(250) DEFAULT NULL,
  `Host` varchar(250) DEFAULT NULL,
  `Port` int(11) DEFAULT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_modelo`
--

CREATE TABLE IF NOT EXISTS `email_modelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT 'Painel',
  `assunto` varchar(250) DEFAULT NULL,
  `mensagem` longtext,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_preferencias`
--

CREATE TABLE IF NOT EXISTS `email_preferencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `DadosDeAcesso` int(11) DEFAULT NULL,
  `DadosDeAcessoTeste` int(11) DEFAULT NULL,
  `Vencimento` int(11) DEFAULT NULL,
  `Renovacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_teste`
--

CREATE TABLE IF NOT EXISTS `email_teste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupodeacesso`
--

CREATE TABLE IF NOT EXISTS `grupodeacesso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `leiaute`
--

CREATE TABLE IF NOT EXISTS `leiaute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `leiaute` int(11) DEFAULT NULL,
  `wall` varchar(250) DEFAULT NULL,
  `cabecalho` int(11) DEFAULT NULL,
  `barralateral` int(11) DEFAULT NULL,
  `scroll` int(11) DEFAULT NULL,
  `barradireita` int(11) DEFAULT NULL,
  `navpersonalizado` int(11) DEFAULT NULL,
  `alternarnav` int(11) DEFAULT NULL,
  `minimizar` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `liberarcomputador`
--

CREATE TABLE IF NOT EXISTS `liberarcomputador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `gethostbyaddr` varchar(250) DEFAULT NULL,
  `computador` varchar(250) DEFAULT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `codigo` varchar(250) DEFAULT NULL,
  `ativo` varchar(11) NOT NULL DEFAULT 'N',
  `data` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mascaraurl`
--

CREATE TABLE IF NOT EXISTS `mascaraurl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `porta` varchar(250) DEFAULT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mercadopago`
--

CREATE TABLE IF NOT EXISTS `mercadopago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comprador` varchar(250) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `payment_status` varchar(250) DEFAULT NULL,
  `item_number` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagseguro`
--

CREATE TABLE IF NOT EXISTS `pagseguro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comprador` varchar(250) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `TipoPagamento` varchar(250) DEFAULT NULL,
  `StatusTransacao` varchar(250) DEFAULT NULL,
  `Referencia` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `painel`
--

CREATE TABLE IF NOT EXISTS `painel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `porta` int(11) DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `protocolo` varchar(250) DEFAULT NULL,
  `block` varchar(11) NOT NULL DEFAULT 'N',
  `atualizar` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `painel_config`
--

CREATE TABLE IF NOT EXISTS `painel_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senha` varchar(250) DEFAULT NULL,
  `deskeys` varchar(250) DEFAULT NULL,
  `ip` text,
  `iplock` varchar(11) NOT NULL DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `paypal`
--

CREATE TABLE IF NOT EXISTS `paypal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comprador` varchar(250) DEFAULT NULL,
  `CadUser` varchar(250) DEFAULT NULL,
  `payment_status` varchar(250) DEFAULT NULL,
  `item_number` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `painel` int(11) DEFAULT NULL,
  `imagem` int(11) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `valorcsp` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `porta` int(11) DEFAULT NULL,
  `tipo` varchar(250) NOT NULL DEFAULT 'SAT',
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perfil_icone`
--

CREATE TABLE IF NOT EXISTS `perfil_icone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `planos`
--

CREATE TABLE IF NOT EXISTS `planos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `nomeplano` varchar(250) DEFAULT NULL,
  `tipoperfil` varchar(250) NOT NULL DEFAULT 'SAT',
  `tipoplano` varchar(250) DEFAULT 'N',
  `dias` varchar(250) DEFAULT NULL,
  `valor` varchar(250) DEFAULT NULL,
  `perfil` text,
  `quantidade` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `rede_social`
--

CREATE TABLE IF NOT EXISTS `rede_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `facebook` mediumtext,
  `whatsapp` mediumtext,
  `telegram` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro_acesso`
--

CREATE TABLE IF NOT EXISTS `registro_acesso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `ip` varchar(250) DEFAULT NULL,
  `navegador` varchar(250) DEFAULT NULL,
  `versao` varchar(250) DEFAULT NULL,
  `plataforma` varchar(250) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `server`
--

CREATE TABLE IF NOT EXISTS `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `ip` mediumtext,
  `porta` mediumtext NOT NULL,
  `user` mediumtext NOT NULL,
  `senha` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `site_config`
--

CREATE TABLE IF NOT EXISTS `site_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NomePainel` varchar(250) DEFAULT 'CSPainel',
  `LegendaPainel` varchar(250) DEFAULT 'Gerenciador de Painel',
  `TemaPainel` varchar(250) NOT NULL DEFAULT 'theme-default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sms`
--

CREATE TABLE IF NOT EXISTS `sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sms_modelo`
--

CREATE TABLE IF NOT EXISTS `sms_modelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT 'Painel',
  `assunto` varchar(250) DEFAULT NULL,
  `mensagem` longtext,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sms_preferencias`
--

CREATE TABLE IF NOT EXISTS `sms_preferencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(250) DEFAULT NULL,
  `DadosDeAcesso` int(11) DEFAULT NULL,
  `DadosDeAcessoTeste` int(11) DEFAULT NULL,
  `Vencimento` int(11) DEFAULT NULL,
  `Renovacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `status_servidor`
--

CREATE TABLE IF NOT EXISTS `status_servidor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(11) NOT NULL DEFAULT 'N',
  `celular` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suporte`
--

CREATE TABLE IF NOT EXISTS `suporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmissor` varchar(250) DEFAULT NULL,
  `UserReceptor` varchar(250) DEFAULT NULL,
  `Assunto` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `Mensagem` longtext,
  `LidaEmissor` varchar(11) NOT NULL DEFAULT 'N',
  `LidaReceptor` varchar(11) NOT NULL DEFAULT 'N',
  `PastaEmissor` int(11) NOT NULL DEFAULT '2',
  `PastaReceptor` int(11) NOT NULL DEFAULT '1',
  `Marcacao` int(11) NOT NULL DEFAULT '5',
  `Estrela` varchar(11) NOT NULL DEFAULT 'N',
  `ExcluirEmissor` varchar(11) NOT NULL DEFAULT 'N',
  `ExcluirReceptor` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suporteresp`
--

CREATE TABLE IF NOT EXISTS `suporteresp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_suporte` int(11) DEFAULT NULL,
  `UserEmissor` varchar(250) DEFAULT NULL,
  `mensagem` longtext,
  `anexo` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tempoteste`
--

CREATE TABLE IF NOT EXISTS `tempoteste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tempo` int(11) NOT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tempovencimento`
--

CREATE TABLE IF NOT EXISTS `tempovencimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tempo` int(11) DEFAULT NULL,
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `urlteste`
--

CREATE TABLE IF NOT EXISTS `urlteste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(2500) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'N',
  `tempo` int(11) DEFAULT NULL,
  `cemail` varchar(11) NOT NULL DEFAULT 'N',
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `versao`
--

CREATE TABLE IF NOT EXISTS `versao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `versao`
--

INSERT INTO `versao` (`id`, `versao`) VALUES
(1, '2.8');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
