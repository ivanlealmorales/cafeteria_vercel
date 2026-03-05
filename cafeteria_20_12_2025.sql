-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/12/2025 às 14:41
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
CREATE DATABASE IF NOT EXISTS `cafeteria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cafeteria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lanches`
--

DROP TABLE IF EXISTS `lanches`;
CREATE TABLE `lanches` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lanches`
--

INSERT INTO `lanches` (`id`, `nome`, `descricao`, `imagem`, `preco`, `ativo`) VALUES
(5, 'Mortadela', 'Moratadel', '/uploads/lanches/1766227850631.jpg', 2.00, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `menu`
--

INSERT INTO `menu` (`id`, `nome`, `descricao`, `preco`, `imagem`, `ativo`) VALUES
(7, 'Café', 'C', 1.00, '/uploads/menu/1766227814524.jpeg', 1),
(8, 'OUTROS', 'Lanches e Sucos', 0.00, '', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `produto_nome` varchar(150) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `total` decimal(10,2) NOT NULL,
  `data_pedido` datetime DEFAULT current_timestamp(),
  `concluido` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`id`, `cpf`, `menu_id`, `produto_nome`, `preco`, `quantidade`, `total`, `data_pedido`, `concluido`) VALUES
(8, '03063424803', 7, 'Café', 1.00, 2, 2.00, '2025-12-20 07:56:32', 1),
(10, '22222222222', 7, 'Café', 1.00, 1, 1.00, '2025-12-20 07:56:50', 0),
(14, '11111111111', 7, 'Café', 1.00, 1, 1.00, '2025-12-20 07:58:52', 0),
(20, '11111111111', 7, 'Café', 1.00, 1, 1.00, '2025-12-20 08:16:55', 1),
(31, '11111111111', 7, 'Café', 1.00, 1, 1.00, '2025-12-20 08:35:48', 1),
(34, '11111111111', 8, 'Café', 0.00, 1, 0.00, '2025-12-20 08:42:59', 1),
(38, '11111111111', 7, 'Café', 1.00, 1, 1.00, '2025-12-20 09:03:04', 1),
(43, '03063424803', 8, 'Mortadela', 2.00, 1, 2.00, '2025-12-20 09:24:26', 1),
(44, '03063424803', 7, 'Café', 1.00, 1, 1.00, '2025-12-20 09:24:43', 1),
(45, '11111111111', 8, 'Mortadela', 2.00, 2, 4.00, '2025-12-20 09:24:56', 1),
(46, '03063424803', 8, 'Laranja', 3.00, 1, 3.00, '2025-12-20 09:25:53', 0),
(47, '03063424803', 8, 'Mortadela', 2.00, 1, 2.00, '2025-12-20 09:30:40', 1),
(48, '03063424803', 8, 'Laranja', 3.00, 1, 3.00, '2025-12-20 09:30:50', 1),
(49, '03063424803', 8, 'Café', 0.00, 1, 0.00, '2025-12-20 09:30:59', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoafisica`
--

DROP TABLE IF EXISTS `pessoafisica`;
CREATE TABLE `pessoafisica` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoafisica`
--

INSERT INTO `pessoafisica` (`id`, `nome`, `cpf`, `telefone`, `endereco`, `numero`, `bairro`, `cidade`, `estado`) VALUES
(15, 'IVAN LEAL', '03063424803', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã'),
(16, 'IVAN LEAL', '11111111111', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã'),
(17, 'IVAN LEAL MORALES', '22222222222', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã'),
(18, 'IVAN LEAL', '99999999999', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'Sã');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sucos`
--

DROP TABLE IF EXISTS `sucos`;
CREATE TABLE `sucos` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sucos`
--

INSERT INTO `sucos` (`id`, `nome`, `descricao`, `preco`, `imagem`, `ativo`) VALUES
(6, 'Laranja', 'Laranja', 3.00, '/uploads/sucos/1766227905023.jpg', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `lanches`
--
ALTER TABLE `lanches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_menu` (`menu_id`),
  ADD KEY `fk_pedido_cliente` (`cpf`);

--
-- Índices de tabela `pessoafisica`
--
ALTER TABLE `pessoafisica`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_cpf` (`cpf`);

--
-- Índices de tabela `sucos`
--
ALTER TABLE `sucos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `lanches`
--
ALTER TABLE `lanches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `pessoafisica`
--
ALTER TABLE `pessoafisica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `sucos`
--
ALTER TABLE `sucos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
