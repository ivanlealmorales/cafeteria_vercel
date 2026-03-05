-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/12/2025 às 16:15
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
-- Banco de dados: `anaemaria`
--
CREATE DATABASE IF NOT EXISTS `anaemaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `anaemaria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastrofun`
--

CREATE TABLE `cadastrofun` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `endereço` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(40) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `datanascimento` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `registroprofissional` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `confsenha` varchar(20) NOT NULL,
  `datacadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastrofun`
--

INSERT INTO `cadastrofun` (`id`, `nome`, `cargo`, `endereço`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `cpf`, `rg`, `datanascimento`, `email`, `telefone`, `registroprofissional`, `senha`, `confsenha`, `datacadastro`) VALUES
(1, 'Joaquim', 'Farmacêutico', 'asdfdsfds', '435', 'ssadsad', 'asdsad', 'SP', '1111111111', '222222222222222', '333333333333333', '0000-00-00', 'alo@alo.com.br', '1111111111111', '1231321', '8cb2237d0679ca88db64', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id` int(11) NOT NULL,
  `nomecomercial` varchar(40) NOT NULL,
  `principioativo` varchar(50) NOT NULL,
  `dosagem` varchar(10) NOT NULL,
  `formatipo` varchar(11) NOT NULL,
  `datadevalidade` date NOT NULL,
  `descriçãoindicação` text NOT NULL,
  `valordecusto` varchar(10) NOT NULL,
  `valordevenda` varchar(10) NOT NULL,
  `fabricante` varchar(60) NOT NULL,
  `datadecadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastrofun`
--
ALTER TABLE `cadastrofun`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastrofun`
--
ALTER TABLE `cadastrofun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `bdcafe`
--
CREATE DATABASE IF NOT EXISTS `bdcafe` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `bdcafe`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `cpf` varchar(191) NOT NULL,
  `datanascimento` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lanche`
--

CREATE TABLE `lanche` (
  `id` int(11) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `descricao` varchar(191) NOT NULL,
  `imagem` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `descricao` varchar(191) NOT NULL,
  `imagem` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `menu`
--

INSERT INTO `menu` (`id`, `nome`, `descricao`, `imagem`) VALUES
(1, 'Cafe básico', 'Cafe simples', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `suco`
--

CREATE TABLE `suco` (
  `id` int(11) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `descricao` varchar(191) NOT NULL,
  `imagem` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `suco`
--

INSERT INTO `suco` (`id`, `nome`, `descricao`, `imagem`) VALUES
(1, 'Groselha', 'Supervermelho', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('ad71c54f-989c-4868-bf4d-ccd23f0d26da', 'dfe90a8cf2b6f447b49f41e184fbeb04461e64e5d2bf61d9f2e7a70739bbbc97', '2025-12-08 11:49:25.415', '20251208114925_bdcafe', NULL, NULL, '2025-12-08 11:49:25.333', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Cliente_cpf_key` (`cpf`);

--
-- Índices de tabela `lanche`
--
ALTER TABLE `lanche`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `suco`
--
ALTER TABLE `suco`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lanche`
--
ALTER TABLE `lanche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `suco`
--
ALTER TABLE `suco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Banco de dados: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `email`, `telefone`) VALUES
(1, 'IVAN LEAL MORALES', 'ilmoralesbr@hotmail.com', '14996718097'),
(2, 'IVAN LEAL MORALES 2', 'ilmoralesbr@hotmail.com', '14996718095');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Banco de dados: `cadfunc`
--
CREATE DATABASE IF NOT EXISTS `cadfunc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cadfunc`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--
-- Erro ao ler a estrutura para a tabela cadfunc.funcionarios: #1932 - Table &#039;cadfunc.funcionarios&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela cadfunc.funcionarios: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `cadfunc`.`funcionarios`&#039; na linha 1
--
-- Banco de dados: `cafeteria`
--
CREATE DATABASE IF NOT EXISTS `cafeteria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cafeteria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lanches`
--

CREATE TABLE `lanches` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lanches`
--

INSERT INTO `lanches` (`id`, `nome`, `descricao`, `imagem`, `ativo`, `preco`) VALUES
(1, 'Mortadela 32', 'teste', '/uploads/lanches/1765801914494.jpeg', 1, 0.00),
(19, 'Mortadela II', 'Mortadelao', '/uploads/lanches/4577cf07-4e71-4072-9a33-30618d66ac84.jpeg', 1, 0.00),
(756539, 'Mortadelas', 'Mortadelas', '/uploads/lanches/e685981a-e362-43bd-a855-aefdea0c4857.jpeg', 1, 0.00),
(34198327, 'lanche 1', 'lanche 1', '/uploads/lanches/e72c5816-c662-4fab-85f2-0265d4a524bc.jpeg', 1, 0.00),
(34198328, 'yyyyyyyyyyy', 'yyyyyyyyyyyyyyyy', '/uploads/lanches/591f1c8f-9528-45fd-a50a-a89de0f9ec9c.jpg', 1, 0.00),
(34198330, 'Mortadela nobre', 'Super gostosa', '/uploads/lanches/1765886066429.jpeg', 1, 2.60);

-- --------------------------------------------------------

--
-- Estrutura para tabela `menu`
--

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
(1, 'Café Expresso', 'Café forte', 6.50, '/uploads/menu/cafe.jpg', 0),
(12, 'Café super expresso', 'Café maravilha', 5.50, '/uploads/menu/806a159e-771b-4e07-8eb1-04434f942916.jpeg', 0),
(13, 'cafe', 'teste', 4.90, '/uploads/menu/1765632019533.jpeg', 0),
(14, 'café expresso bom2', 'teste', 2.60, '/uploads/menu/1765797077407.jpeg', 1),
(15, 'Café 3', '2', 2.30, '/uploads/menu/1765797521038.jpeg', 1),
(16, 'café 1', '1', 5.00, '/uploads/menu/1765797729478.jpeg', 0),
(17, 'cafe 3', 'cafe 3', 2.30, '/uploads/menu/1765884715926.jpeg', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `data_pedido` datetime DEFAULT current_timestamp(),
  `concluido` tinyint(1) DEFAULT 0,
  `quantidade` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`id`, `cpf`, `menu_id`, `preco`, `total`, `data_pedido`, `concluido`, `quantidade`) VALUES
(1, '123.456.789-00', 1, 6.50, 0.00, '2025-12-13 08:55:18', 1, 1),
(2, '03063424803', 14, 2.60, 0.00, '2025-12-16 11:15:26', 1, 1),
(3, '03063424803', 15, 4.60, 0.00, '2025-12-16 11:16:54', 1, 1),
(4, '03063424803', 17, 4.60, 0.00, '2025-12-16 11:17:31', 1, 1),
(5, '03063424803', 14, 2.60, 5.20, '2025-12-16 11:36:41', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoafisica`
--

CREATE TABLE `pessoafisica` (
  `id` int(11) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `telefone` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `bairro` varchar(191) DEFAULT NULL,
  `cidade` varchar(191) DEFAULT NULL,
  `estado` varchar(191) DEFAULT NULL,
  `cpf` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoafisica`
--

INSERT INTO `pessoafisica` (`id`, `nome`, `telefone`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `cpf`) VALUES
(84, 'IVAN LEAL', '14996718097', 'rua Machado de Assis', '46', 'a3', 'BAURU', 'São Paulo - Outras cidades', '03063424803'),
(85, 'IVAN LEAL LEALf', '14996718097', '03063424803', '46', 'a3', 'BAURU', 'São Paulo - Outras cidades', '030');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `descricao` varchar(191) NOT NULL,
  `imagem` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `receitas`
--

CREATE TABLE `receitas` (
  `id` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sucos`
--

CREATE TABLE `sucos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `preco` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sucos`
--

INSERT INTO `sucos` (`id`, `nome`, `descricao`, `imagem`, `ativo`, `preco`) VALUES
(1, 'Suco de Laranja 2', 'Laranja', '/uploads/sucos/b6e374db-e5ea-46c5-aeb2-425a5d698ec0.jpeg', 1, 34.60),
(2, 'laranja', 'laranja', '/uploads/sucos/9eb94eae-4c00-4e7f-85a0-e08fe39f2f76.jpeg', 1, 0.00),
(4, 'Laranja', 'laranja', '/uploads/sucos/1765887018157.jpeg', 1, 5.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('45ef4c2e-d195-497d-ba71-7999e3198a1a', 'cb49fb39285311f00818115059f2ae551739e56735744819ab0316fbe26fa4d4', '2025-12-06 12:45:40.246', '20251206124540_init', NULL, NULL, '2025-12-06 12:45:40.222', 1),
('aab5a3e2-d9eb-49be-8755-d623b23af34c', '80d97f37482cd2b0982d6862e57ab340f7ba8b5c013582846c6b30ebd010133c', '2025-12-06 13:15:24.006', '20251206131523_create_produtos', NULL, NULL, '2025-12-06 13:15:23.981', 1);

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
  ADD KEY `fk_pedido_menu` (`menu_id`);

--
-- Índices de tabela `pessoafisica`
--
ALTER TABLE `pessoafisica`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_pessoafisica_cpf` (`cpf`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `cpf_2` (`cpf`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `receitas`
--
ALTER TABLE `receitas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sucos`
--
ALTER TABLE `sucos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `lanches`
--
ALTER TABLE `lanches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34198331;

--
-- AUTO_INCREMENT de tabela `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `pessoafisica`
--
ALTER TABLE `pessoafisica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sucos`
--
ALTER TABLE `sucos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON UPDATE CASCADE;
--
-- Banco de dados: `escola_tecnica`
--
CREATE DATABASE IF NOT EXISTS `escola_tecnica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escola_tecnica`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--
-- Erro ao ler a estrutura para a tabela escola_tecnica.cursos: #1932 - Table &#039;escola_tecnica.cursos&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela escola_tecnica.cursos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `escola_tecnica`.`cursos`&#039; na linha 1
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cafeteria\",\"table\":\"pessoafisica\"},{\"db\":\"cafeteria\",\"table\":\"pedido\"},{\"db\":\"cafeteria\",\"table\":\"clientes\"},{\"db\":\"cafeteria\",\"table\":\"sucos\"},{\"db\":\"cafeteria\",\"table\":\"lanches\"},{\"db\":\"cafeteria\",\"table\":\"menu\"},{\"db\":\"cafeteria\",\"table\":\"produto\"},{\"db\":\"cafeteria\",\"table\":\"receitas\"},{\"db\":\"cafeteria\",\"table\":\"pessoafisicas\"},{\"db\":\"cafeteria\",\"table\":\"pessoasfisicas\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-12-16 15:13:38', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt_BR\",\"NavigationWidth\":387}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
