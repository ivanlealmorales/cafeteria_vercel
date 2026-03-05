-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/12/2025 às 14:25
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cafeteria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `lanches`
--

DROP TABLE IF EXISTS `lanches`;
CREATE TABLE IF NOT EXISTS `lanches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `ativo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lanches`
--

INSERT INTO `lanches` (`id`, `nome`, `descricao`, `imagem`, `preco`, `ativo`) VALUES
(1, 'Mortadela 3', 'Mortadela', '/uploads/lanches/1766069093330.jpg', 11.00, 0),
(2, 'Mortadela 2', 'Mort', '/uploads/lanches/1766069259727.jpg', 12.00, 0),
(3, 'Mortadela', 'mort', '/uploads/lanches/1766072070237.jpg', 20.00, 1),
(4, 'Hamburguer', 'H', '/uploads/lanches/1766075563433.jpg', 100.00, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `menu`
--

INSERT INTO `menu` (`id`, `nome`, `descricao`, `preco`, `imagem`, `ativo`) VALUES
(1, 'Café Cremoso 2', 'Café cremoso com pedaços de chocolate', 10.60, '/uploads/menu/1766068668634.jpeg', 0),
(2, 'Café com creme 3', 'Cremoso', 5.60, '/uploads/menu/1766068697824.jpeg', 0),
(4, 'Cafe teste 4', 'cafe', 10.00, '/uploads/menu/1766069057010.jpeg', 0),
(5, 'café 2', 'café 2', 1.30, '/uploads/menu/1766075532990.jpeg', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `produto_nome` varchar(150) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `total` decimal(10,2) NOT NULL,
  `data_pedido` datetime DEFAULT current_timestamp(),
  `concluido` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_menu` (`menu_id`),
  KEY `fk_pedido_cliente` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`id`, `cpf`, `menu_id`, `produto_nome`, `preco`, `quantidade`, `total`, `data_pedido`, `concluido`) VALUES
(1, '55555555555', 1, 'Café Cremoso 2', 10.60, 5, 53.00, '2025-12-18 12:27:57', 1),
(2, '11111111111', 1, 'Mortadela 3', 11.00, 10, 110.00, '2025-12-18 12:31:53', 1),
(3, '77777777777', 4, 'l', 1.00, 1, 1.00, '2025-12-18 12:59:09', 1),
(4, '11111111111', 2, 'Mortadela 2', 12.00, 1, 12.00, '2025-12-18 13:14:43', 0),
(5, '03063424803', 5, 'café', 1.30, 10, 13.00, '2025-12-18 13:33:36', 1),
(6, '03063424803', 5, 'café 2', 1.30, 10, 13.00, '2025-12-18 13:34:41', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoafisica`
--

DROP TABLE IF EXISTS `pessoafisica`;
CREATE TABLE IF NOT EXISTS `pessoafisica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoafisica`
--

INSERT INTO `pessoafisica` (`id`, `nome`, `cpf`, `telefone`, `endereco`, `numero`, `bairro`, `cidade`, `estado`) VALUES
(1, 'IVAN LEAL', '03063424803', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã'),
(3, 'IVAN LEAL', '11111111111', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã'),
(4, 'IVAN LEAL', '22222222222', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã'),
(7, 'IVAN LEAL', '33333333333', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã'),
(8, 'IVAN LEAL', '44444444444', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã'),
(10, 'IVAN LEAL senac', '55555555555', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã'),
(12, 'IVAN LEAL', '77777777777', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sucos`
--

DROP TABLE IF EXISTS `sucos`;
CREATE TABLE IF NOT EXISTS `sucos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sucos`
--

INSERT INTO `sucos` (`id`, `nome`, `descricao`, `preco`, `imagem`, `ativo`) VALUES
(2, 'Uva', 'Uva', 16.00, '/uploads/sucos/1766069384140.jpg', 1),
(3, 'l', 'l', 2.30, '/uploads/sucos/1766073263429.jpg', 0),
(4, 'l', 'l', 1.00, '/uploads/sucos/1766073527799.jpg', 0),
(5, 'Laranja', 'Laranja gostosa', 200.00, '/uploads/sucos/1766075590905.jpg', 1);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`cpf`) REFERENCES `pessoafisica` (`cpf`),
  ADD CONSTRAINT `fk_pedido_menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
