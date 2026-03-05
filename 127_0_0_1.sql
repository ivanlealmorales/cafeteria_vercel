-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/12/2025 às 21:08
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
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lanches`
--

INSERT INTO `lanches` (`id`, `nome`, `descricao`, `imagem`) VALUES
('4c184922-4ecb-49a4-80e2-0576f42f743f', 'Mortadela III', 'Mortadela', '/uploads/lanches/bf7ef952-9de9-421c-b639-20a2d91d1a4a.jpeg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `menu`
--

CREATE TABLE `menu` (
  `id` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `menu`
--

INSERT INTO `menu` (`id`, `nome`, `descricao`, `preco`, `imagem`) VALUES
('426b800c-54e7-41b8-a1f9-3e0dfd0dfd1f', 'cafe legal iii', 'cafe gostoso', NULL, '/uploads/menu/fbb24e47-2fa8-4f64-a5b5-b27b1865c36a.jpeg'),
('66c0548a-c352-40b3-806e-7c3360adad97', 'cafe bauru', 'bauru', NULL, '/uploads/menu/e2ade48c-8874-4c64-a14c-f09ad2afcc0a.jpeg'),
('76a21868-86f4-40de-9999-dfdcbd4f63fc', 'cafe do daniel', 'cafe forte', NULL, '/uploads/menu/a3ef4f7f-d2b6-4925-97aa-ab175d7e8a22.jpeg');

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
  `estado` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoafisica`
--

INSERT INTO `pessoafisica` (`id`, `nome`, `telefone`, `endereco`, `numero`, `bairro`, `cidade`, `estado`) VALUES
(0, 'Ivan', '997817908', 'Rua parque dobrado', '456', 'vvvvvvvvvvvv', '', ''),
(5, 'Ivan', '997817908', 'Rua parque dobrado', '456', '', '', ''),
(7, 'teste LEAL MORALES', '14996718097', 'blabla', '4444444444444', '4444444444', 'BAURU', 'São Paulo - Outras cidades'),
(25, 'teste', '997817908', 'Rua parque dobrado', '456', 'fd', 'fd', ''),
(2147483647, 'Ivan', '997817908', 'Rua parque dobrado', '456', '', '', '');

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
  `id` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sucos`
--

INSERT INTO `sucos` (`id`, `nome`, `descricao`, `imagem`) VALUES
('97550c1f-af2f-4477-a76d-bb9e601de814', '', '', '/uploads/sucos/c61a4eed-49b3-43b3-8459-6b0d944d3012.jpeg'),
('7d50bd7e-9d82-4571-a8a1-da13dd7e8bdf', 'Suco de Laranja', 'Gostovo e saboroso', '/uploads/sucos/94ad31db-9df1-4595-8dfc-ce20785a6692.jpeg'),
('81d3f239-c479-4ae2-ad34-9948600319f1', 't', 't', '/uploads/sucos/c408cbda-cc1b-4c14-a8e1-d14c36a8d8e2.jpeg');

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
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

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
-- Índices de tabela `pessoafisica`
--
ALTER TABLE `pessoafisica`
  ADD PRIMARY KEY (`id`);

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
-- Banco de dados: `calendario`
--
CREATE DATABASE IF NOT EXISTS `calendario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `calendario`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `convites`
--

CREATE TABLE `convites` (
  `id_convite` int(11) NOT NULL,
  `fk_id_destinatario` int(11) NOT NULL,
  `fk_id_remetente` int(11) NOT NULL,
  `fk_id_evento` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `convites`
--

INSERT INTO `convites` (`id_convite`, `fk_id_destinatario`, `fk_id_remetente`, `fk_id_evento`, `status`) VALUES
(1, 2, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `fk_id_usuario` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `cor` varchar(7) DEFAULT NULL,
  `inicio` datetime NOT NULL,
  `termino` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `eventos`
--

INSERT INTO `eventos` (`id_evento`, `fk_id_usuario`, `titulo`, `descricao`, `cor`, `inicio`, `termino`) VALUES
(1, 1, 'Aniversario', 'Aniversario do Fulano', '#40E0D0', '2019-07-06 13:30:00', '2019-07-06 16:30:00'),
(2, 1, 'Entrevista Tecnica', 'Entrevista com Carlos da TokenLab.', '#FF0000', '2019-07-11 09:30:00', '2019-07-11 10:30:00'),
(3, 2, 'Jogatina', 'Dia de jogatina com amigos.', '#0071c5', '2019-07-12 18:00:00', '2019-07-13 00:00:00'),
(4, 1, 'fghdfgfdg', 'dfgd', '#40E0D0', '2025-11-10 00:00:00', '2025-11-11 00:00:00'),
(5, 1, 'fghdfgfdg', 'dfgd', '#40E0D0', '2025-11-10 00:00:00', '2025-11-11 00:00:00'),
(6, 1, 'fghdfgfdg', 'dfgd', '#40E0D0', '2025-11-11 00:00:00', '2025-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `senha` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `senha`) VALUES
(1, 'Gabriel', '63ab910cb3a7bc89faae5a46aa337aa22f5f4d30'),
(2, 'Carlos', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `convites`
--
ALTER TABLE `convites`
  ADD PRIMARY KEY (`id_convite`),
  ADD KEY `fk_id_destinatario` (`fk_id_destinatario`),
  ADD KEY `fk_id_remetente` (`fk_id_remetente`),
  ADD KEY `fk_id_evento` (`fk_id_evento`);

--
-- Índices de tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `fk_id_usuario` (`fk_id_usuario`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `convites`
--
ALTER TABLE `convites`
  MODIFY `id_convite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `convites`
--
ALTER TABLE `convites`
  ADD CONSTRAINT `convites_ibfk_1` FOREIGN KEY (`fk_id_destinatario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `convites_ibfk_2` FOREIGN KEY (`fk_id_remetente`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `convites_ibfk_3` FOREIGN KEY (`fk_id_evento`) REFERENCES `eventos` (`id_evento`);

--
-- Restrições para tabelas `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `usuarios` (`id_usuario`);
--
-- Banco de dados: `crud_login2024`
--
CREATE DATABASE IF NOT EXISTS `crud_login2024` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud_login2024`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_grupos`
--

CREATE TABLE `cadastro_grupos` (
  `id` varchar(191) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `data_criacao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `data_alteracao` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cadastro_grupos`
--

INSERT INTO `cadastro_grupos` (`id`, `nome`, `data_criacao`, `data_alteracao`) VALUES
('4d3c6706-012c-4058-bd58-c6535067a68d', 'Operadores', '2025-11-25 17:30:01.639', '2025-11-25 17:30:01.639'),
('9d171962-79bd-42eb-bcda-41292be38a7f', 'Diretores', '2025-11-26 17:10:03.709', '2025-11-26 17:10:03.709'),
('e160af14-b77f-4987-b230-bc637db5933d', 'Admin', '2025-11-25 17:29:01.354', '2025-11-25 17:29:01.354');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_usuarios`
--

CREATE TABLE `cadastro_usuarios` (
  `id` varchar(191) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `senha` varchar(191) NOT NULL,
  `funcionario` tinyint(1) NOT NULL DEFAULT 1,
  `cliente` tinyint(1) NOT NULL DEFAULT 0,
  `data_criacao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `data_alteracao` datetime(3) NOT NULL,
  `idGrupos` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cadastro_usuarios`
--

INSERT INTO `cadastro_usuarios` (`id`, `nome`, `email`, `senha`, `funcionario`, `cliente`, `data_criacao`, `data_alteracao`, `idGrupos`) VALUES
('a80645a0-b619-458f-8f52-8de6f06be845', 'Luciano', 'lucianosilva@teste.com.br', '$2a$08$t0SJA6djfSArcKSn8HNpbuFClZPZR45YzmHwpQqc87fv.SzEsOQre', 1, 0, '2025-11-25 17:30:36.545', '2025-11-25 17:30:36.545', 'e160af14-b77f-4987-b230-bc637db5933d');

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` varchar(191) NOT NULL,
  `n_pedido` int(11) NOT NULL,
  `valor_total` decimal(9,2) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'Aguardando',
  `draft` tinyint(1) NOT NULL DEFAULT 1,
  `entrega` tinyint(1) NOT NULL DEFAULT 0,
  `aceito` tinyint(1) NOT NULL DEFAULT 0,
  `id_cliente` varchar(191) NOT NULL,
  `data_criacao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `data_alteracao` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `n_pedido`, `valor_total`, `status`, `draft`, `entrega`, `aceito`, `id_cliente`, `data_criacao`, `data_alteracao`) VALUES
('a8fe55d9-3bd3-4486-8050-115759e24f20', 2, NULL, 'Aguardando', 0, 0, 1, '8fc2d175-e377-41f7-83f8-0a0e629983d5', '2025-11-25 17:43:28.539', '2025-11-25 20:30:24.495');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` varchar(191) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `cpf` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `cep` varchar(191) NOT NULL,
  `rua` varchar(191) NOT NULL,
  `numero` varchar(191) NOT NULL,
  `complemento` varchar(191) DEFAULT NULL,
  `bairro` varchar(191) NOT NULL,
  `cidade` varchar(191) NOT NULL,
  `estado` varchar(191) NOT NULL,
  `funcionario` tinyint(1) NOT NULL DEFAULT 1,
  `cliente` tinyint(1) NOT NULL DEFAULT 0,
  `data_criacao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `data_alteracao` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `email`, `password`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `funcionario`, `cliente`, `data_criacao`, `data_alteracao`) VALUES
('8fc2d175-e377-41f7-83f8-0a0e629983d5', 'Luciano Custodio', '11111111111', 'luciano@teste.com.br', '$2a$08$sVnzkgSuL.78eGcF5wZjmeiOnxhHCM3sc9DovyViQGR5jWGNsE37m', '17015040', 'Rua Quinze de Novembro', '348', 'Sala L', 'Centro', 'Bauru', 'SP', 0, 1, '2025-11-25 17:25:49.456', '2025-11-25 17:25:49.456');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_carrinho`
--

CREATE TABLE `itens_carrinho` (
  `id` varchar(191) NOT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `valor` decimal(9,2) NOT NULL,
  `id_carrinho` varchar(191) NOT NULL,
  `id_produto` varchar(191) NOT NULL,
  `data_criacao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `data_alteracao` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `itens_carrinho`
--

INSERT INTO `itens_carrinho` (`id`, `quantidade`, `valor`, `id_carrinho`, `id_produto`, `data_criacao`, `data_alteracao`) VALUES
('863fa019-dd1c-4663-862f-4b377de4c6d4', 1, 5.50, 'a8fe55d9-3bd3-4486-8050-115759e24f20', 'a69a9c31-862a-4c02-8a20-03c062991f1e', '2025-11-25 17:43:28.553', '2025-11-25 17:43:28.553'),
('b1b7f8e1-c184-4fc4-89ec-b5948e015ed5', 1, 36.42, 'a8fe55d9-3bd3-4486-8050-115759e24f20', '4a010426-9b0d-4fc8-92f1-4bbec4b80b45', '2025-11-25 17:43:29.397', '2025-11-25 17:43:29.397');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` varchar(191) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `preco` varchar(191) NOT NULL,
  `altura` varchar(191) DEFAULT NULL,
  `largura` varchar(191) DEFAULT NULL,
  `comprimento` varchar(191) DEFAULT NULL,
  `peso` varchar(191) DEFAULT NULL,
  `banner` varchar(191) NOT NULL,
  `data_criacao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `data_alteracao` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `altura`, `largura`, `comprimento`, `peso`, `banner`, `data_criacao`, `data_alteracao`) VALUES
('4a010426-9b0d-4fc8-92f1-4bbec4b80b45', 'X-FOME', '36.42', '.20', '.30', '.40', '250', '95efb1655627716105007563b8154d91-lanche1.png', '2025-11-25 17:35:14.430', '2025-11-25 17:35:14.430'),
('a69a9c31-862a-4c02-8a20-03c062991f1e', 'Coca Lata', '5.50', '.20', '.20', '.30', '350', 'c3da87821b0ad813d3497c57c5a74831-coca.png', '2025-11-25 17:32:05.053', '2025-11-25 17:32:05.053');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro_grupos`
--
ALTER TABLE `cadastro_grupos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastro_usuarios`
--
ALTER TABLE `cadastro_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cadastro_usuarios_idGrupos_fkey` (`idGrupos`);

--
-- Índices de tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carrinho_n_pedido_key` (`n_pedido`),
  ADD KEY `carrinho_id_cliente_fkey` (`id_cliente`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `itens_carrinho`
--
ALTER TABLE `itens_carrinho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itens_carrinho_id_carrinho_fkey` (`id_carrinho`),
  ADD KEY `itens_carrinho_id_produto_fkey` (`id_produto`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `n_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cadastro_usuarios`
--
ALTER TABLE `cadastro_usuarios`
  ADD CONSTRAINT `cadastro_usuarios_idGrupos_fkey` FOREIGN KEY (`idGrupos`) REFERENCES `cadastro_grupos` (`id`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `carrinho_id_cliente_fkey` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `itens_carrinho`
--
ALTER TABLE `itens_carrinho`
  ADD CONSTRAINT `itens_carrinho_id_carrinho_fkey` FOREIGN KEY (`id_carrinho`) REFERENCES `carrinho` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itens_carrinho_id_produto_fkey` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`) ON UPDATE CASCADE;
--
-- Banco de dados: `crud_senac`
--
CREATE DATABASE IF NOT EXISTS `crud_senac` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud_senac`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` varchar(191) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `cpf` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `senha` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `data_criacao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `data_alteracao` datetime(3) NOT NULL,
  `idHierarquia` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cpf`, `email`, `senha`, `status`, `data_criacao`, `data_alteracao`, `idHierarquia`) VALUES
('7c6d5604-d3f5-4077-b199-18fb1445b468', 'Galinha Pintadinha', '22222222222', 'galinhapintadinha@teste.com.br', '$2a$08$gtsQ.nOdt4LWQT5xOee39u8dzYWmE/un2VIGuZgAcuxJ04yCUdLwu', 1, '2025-12-02 18:32:29.385', '2025-12-02 18:32:29.385', '93c79849-54da-4d3c-af7a-aa3bc3c180b5'),
('cd02be7a-3195-45e1-8dfe-06b038749b17', 'Luciano Silva', '12121212125', 'luciano.silva@teste.com.br', '$2a$08$tJqwberMs0oPPAYI2hCeH.J6P2BuFcehc01Gpgi72pADGyK.dwT3e', 1, '2025-12-01 18:36:38.967', '2025-12-03 20:19:54.945', '93c79849-54da-4d3c-af7a-aa3bc3c180b5');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hierarquia`
--

CREATE TABLE `hierarquia` (
  `id` varchar(191) NOT NULL,
  `nome` varchar(191) NOT NULL,
  `data_criacao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `data_alteracao` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `hierarquia`
--

INSERT INTO `hierarquia` (`id`, `nome`, `data_criacao`, `data_alteracao`) VALUES
('93c79849-54da-4d3c-af7a-aa3bc3c180b5', 'Gerencia', '2025-11-26 17:30:22.049', '2025-11-26 17:30:22.049');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `funcionarios_cpf_key` (`cpf`),
  ADD KEY `funcionarios_idHierarquia_fkey` (`idHierarquia`);

--
-- Índices de tabela `hierarquia`
--
ALTER TABLE `hierarquia`
  ADD PRIMARY KEY (`id`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_idHierarquia_fkey` FOREIGN KEY (`idHierarquia`) REFERENCES `hierarquia` (`id`) ON UPDATE CASCADE;
--
-- Banco de dados: `ensin368_app`
--
CREATE DATABASE IF NOT EXISTS `ensin368_app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ensin368_app`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `denuncias`
--

CREATE TABLE `denuncias` (
  `id` int(11) NOT NULL,
  `turmaagredida` varchar(20) NOT NULL,
  `turmadenunciada` varchar(20) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `statusrecorrer` varchar(15) NOT NULL,
  `descrecorrer` varchar(255) NOT NULL,
  `veredito` varchar(255) NOT NULL,
  `gravidade` varchar(30) NOT NULL,
  `pontosperdidos` int(11) NOT NULL,
  `responsavel` varchar(50) NOT NULL,
  `respanalise` varchar(50) NOT NULL,
  `datadenuncia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `id` int(11) NOT NULL,
  `modalidade` varchar(30) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `time1` varchar(20) NOT NULL,
  `time2` varchar(20) NOT NULL,
  `local` varchar(25) NOT NULL,
  `resultado` varchar(30) NOT NULL,
  `vencedor` varchar(20) NOT NULL,
  `pontos` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `responsavel` varchar(50) NOT NULL,
  `hora` time NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`id`, `modalidade`, `sexo`, `time1`, `time2`, `local`, `resultado`, `vencedor`, `pontos`, `tipo`, `responsavel`, `hora`, `data`) VALUES
(1, 'Futsal', '', 'Odisséia', 'Kairós', 'Ginásio interno', '05x02', 'Kairós', 50, 1, 'clerisonbueno@gmail.com', '10:00:00', '2025-11-17'),
(2, 'Cabo de guerra masculino', '', 'Corsário', 'Odisséia', 'Área externa', 'dfdsf', 'Odisséia', 50, 1, 'clerisonbueno@gmail.com', '10:30:00', '2025-11-17'),
(3, 'Cabo de guerra feminino', '', 'Kairós', 'Atena', 'Ginásio interno', 'gdfg', 'Corsário', 50, 1, 'clerisonbueno@gmail.com', '11:00:00', '2025-11-17'),
(4, 'Gincana de LGG', '', 'Juízo Final', '', '', 'Campeão', 'Juízo Final', 200, 2, 'clerisonbueno@gmail.com', '00:00:00', '2025-11-17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `times`
--

CREATE TABLE `times` (
  `id` int(11) NOT NULL,
  `turma` varchar(20) NOT NULL,
  `modalidade` varchar(20) NOT NULL,
  `ano` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `turma` varchar(20) NOT NULL,
  `tipo` int(11) NOT NULL,
  `responsavel` varchar(50) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `turma`, `tipo`, `responsavel`, `data`) VALUES
(107, 'Clerison', 'clerisonbueno@gmail.com', '0839bf75510366296a68867b037c088b4c927219', 'Professor', 2, 'adm@gmail.com', '2024-10-01'),
(108, 'Douglas', 'douglas.agalbiatti@sp.senac.br', 'f0aefcafe647405efcbb7409f206fc04b750b0ee', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-02'),
(109, 'Rafael', 'rafael.gcottonicar@senacsp.edu.br', 'ecc0833b4c195c5bdfadb97323ea2a43592ee18c', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-02'),
(110, 'luispauloravazi', 'luis.pravazi@sp.senac.br', 'c6d038fd1fa7125b992c9609dff9afaabbe4ff79', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-02'),
(111, 'Diego', 'diegobragagnolo@gmail.com', 'cd57a57373c7489d1635564f08076817a5d0162c', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-02'),
(114, 'Maria Clara Ramos', 'mariaclararamos1402@gmail.com', 'd2e0248f113045235583adde5294da3d9072510d', 'Corsário', 1, 'clerisonbueno@gmail.com', '2024-10-04'),
(122, 'Davi', 'davipebala@gmail.com', '7553e93ea4d3e307174906d488f55dcfc678aa6b', 'Atena', 1, 'clerisonbueno@gmail.com', '2024-10-04'),
(123, 'Duilio ', 'duiliobritosegura@outlook.com.br', 'd064e587ab89109aaf44a33bc874c2f40fb184d0', 'Atena', 1, 'clerisonbueno@gmail.com', '2024-10-04'),
(126, 'Letícia Resende', 'leticia.bresende@senacsp.edu.br', '71d93dd4ff05d0109b9c12b5822cb25b308c520f', 'Fênix', 1, 'clerisonbueno@gmail.com', '2024-10-04'),
(127, 'Alexandre', 'alexandremorelli1@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-09'),
(128, 'rbguerra', 'renan.bguerra@senacsp.edu.br', 'cfc35be6c05a32997d33f97563f429def7265ac5', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-09'),
(129, 'Marcos Maia', 'marcos.imjunior@sp.senac.br', 'c0eada84798b721d4f5261e63b1075217b16a8e4', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-09'),
(130, 'Lucas ', 'burato.lucas@gmail.com', 'c6a3ced877cff6d4ac728b0a0d0fb3fc08266ca3', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-11'),
(131, 'amanddamarar', 'amandda_marar@hotmail.com', 'd2f8a855ed4e93cc8cf320f21da8a0b7226f15ef', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-14'),
(132, 'Isabella Zaneratto', 'isabellaelisazaneratto@gmail.com', '6ccce5db798d2f9ebadeb509273f7c88e313ba33', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-15'),
(133, 'Ariane Rosa', 'arirosa_@hotmail.com', 'ef8e0bb693df4ff0dd77d5e8bc83a1dce4b493d8', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-15'),
(134, 'Talita ', 'talitalexta@gmail.com', 'e4a8ac492de30e20c6d336a8db3c5b4b657d9745', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-15'),
(135, 'Mira', 'jose.emira@sp.senac.br', '7fe53f753d1c19a50228ffec965dd924c617ce48', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-15'),
(136, 'Gabriela', 'gabrielarmlongo@gmail.com', 'adddddad7e9fb0eb5416c003b7e7073869e8ce82', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-15'),
(137, 'Sol', 'sol_bonjardim@hotmail.com', '7733f5dedde34996edad9ff865af48a18ac2fa88', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-15'),
(139, 'Khalil Axcar', 'octaviano.kaxcar@sp.senac.br', '7d42b72b7d2260f68d20a2f10507244e3b8a9fb8', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-15'),
(140, 'Lucas Guersi', 'lucas.agsilva@sp.senac.br', '6ca7e711b10725d551cc3a683901ae92936ae7bb', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-15'),
(141, 'Matheus Bueno', 'mathcremonini@gmail.com', 'bfbfbac96693fc127aae277ca3b1db6c6d0df3e6', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-16'),
(142, 'Fernanda Barbosa ', 'fernanda.alamino@hotmail.com', 'a9195e78db4e2313e6c0860d0137aea2046cb6f3', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-16'),
(143, 'Vinícius ', 'vinicius.p.silva@unesp.br', '947901d178c1ab9e1228478a01a52751789f4155', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-16'),
(144, 'Marcos Maia', 'marcos.imjunior@senacs.edu.br', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-16'),
(145, 'Bruna', 'bruhamer@gmail.com', 'b244b3ab10eb1cc7129bee1d4ded0a7cbcb6a4fa', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-17'),
(147, 'Marcela', 'marcelapfernandes08@gmail.com', 'ddd7d8e84c3e4c591802c2bf0c851f134042bc0b', 'Corsário', 1, 'clerisonbueno@gmail.com', '2024-10-17'),
(148, 'Marcos Maiia', 'marcos.j.maiia@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Professor', 2, 'clerisonbueno@gmail.com', '2024-10-18'),
(149, 'Isabelly de Fátima Nunes da Silva', 'isabelly.silbva.nunes21@gmail.com', '7a7ae5b51b4e416e25df0a0803c814e24e77bee4', 'Kairós', 1, 'clerisonbueno@gmail.com', '2025-11-17');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `denuncias`
--
ALTER TABLE `denuncias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `denuncias`
--
ALTER TABLE `denuncias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `times`
--
ALTER TABLE `times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- Banco de dados: `lar`
--
CREATE DATABASE IF NOT EXISTS `lar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lar`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `faleconosco`
--

CREATE TABLE `faleconosco` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TELEFONE` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `ENDERECO` varchar(255) NOT NULL,
  `ASSUNTO` varchar(255) NOT NULL,
  `MENSAGEM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `institution`
--

CREATE TABLE `institution` (
  `ID` varchar(255) NOT NULL,
  `EMPRESA` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `institution`
--

INSERT INTO `institution` (`ID`, `EMPRESA`, `EMAIL`, `PASSWORD`) VALUES
('e3a0b3e0-afcd-4604-a7eb-811ce6016a6a', 'Instituto Lumina', 'contato@institutolumina.org', '$2b$10$25jol.jjrfGsg4SxqbLDAOrTjWj6fEcI0i8ZSexGPYn0ylZhGA8su');

-- --------------------------------------------------------

--
-- Estrutura para tabela `precisoajuda`
--

CREATE TABLE `precisoajuda` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TELEFONE` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `ASSUNTO` varchar(255) NOT NULL,
  `INSTITUICAO` varchar(255) NOT NULL,
  `CIDADE` varchar(255) NOT NULL,
  `ESTADO` varchar(255) NOT NULL,
  `TREMOR` tinyint(4) NOT NULL,
  `CANSACO` tinyint(4) NOT NULL,
  `DESANIMO` tinyint(4) NOT NULL,
  `FALTAAR` tinyint(4) NOT NULL,
  `AGONIA` tinyint(4) NOT NULL,
  `FALTAFOCO` tinyint(4) NOT NULL,
  `ALTERACAOHUMOR` tinyint(4) NOT NULL,
  `SENSACAOCONEXAO` tinyint(4) NOT NULL,
  `PREOCUPACAOPESO` tinyint(4) NOT NULL,
  `PERDAINTERESSE` tinyint(4) NOT NULL,
  `ABUSOPSICOLOGICO` tinyint(4) NOT NULL,
  `ABUSOFISICO` tinyint(4) NOT NULL,
  `ABUSOSEXUAL` tinyint(4) NOT NULL,
  `ABUSOPATRIMONIAL` tinyint(4) NOT NULL,
  `ABUSOMORAL` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `queroajudar`
--

CREATE TABLE `queroajudar` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TELEFONE` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `VALOR` varchar(255) NOT NULL,
  `INSTITUICAO` varchar(255) NOT NULL,
  `CIDADE` varchar(255) NOT NULL,
  `ESTADO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `ID` varchar(255) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `faleconosco`
--
ALTER TABLE `faleconosco`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IDX_71f04ec7a8b78235f984132e58` (`EMAIL`);

--
-- Índices de tabela `precisoajuda`
--
ALTER TABLE `precisoajuda`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `queroajudar`
--
ALTER TABLE `queroajudar`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IDX_9d86b1f4a13ac660473a9f8324` (`EMAIL`);
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
('root', '[{\"db\":\"cafeteria\",\"table\":\"pessoafisica\"},{\"db\":\"cafeteria\",\"table\":\"sucos\"},{\"db\":\"cafeteria\",\"table\":\"lanches\"},{\"db\":\"cafeteria\",\"table\":\"menu\"},{\"db\":\"cafeteria\",\"table\":\"produto\"},{\"db\":\"cafeteria\",\"table\":\"receitas\"},{\"db\":\"crud_senac\",\"table\":\"funcionarios\"},{\"db\":\"crud_senac\",\"table\":\"hierarquia\"},{\"db\":\"crud_login\",\"table\":\"funcionarios\"},{\"db\":\"crud_login2024\",\"table\":\"carrinho\"}]');

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
('root', '2025-12-11 19:36:21', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt_BR\"}');

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
-- Banco de dados: `projeto_novo`
--
CREATE DATABASE IF NOT EXISTS `projeto_novo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projeto_novo`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `ID` varchar(255) NOT NULL,
  `IDFILME` varchar(255) DEFAULT NULL,
  `IDUSUARIO` varchar(255) DEFAULT NULL,
  `DTMOV` datetime DEFAULT NULL,
  `TIPO` int(11) DEFAULT NULL,
  `IDMOV` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluguel`
--

INSERT INTO `aluguel` (`ID`, `IDFILME`, `IDUSUARIO`, `DTMOV`, `TIPO`, `IDMOV`) VALUES
('1', '1', '2', '2024-01-25 00:00:00', 0, NULL),
('10', '2', '2', '2024-10-02 00:00:00', 1, '9'),
('2', '1', '2', '2024-01-26 00:00:00', 1, '1'),
('3', '4', '3', '2024-01-24 00:00:00', 0, NULL),
('4', '4', '3', '2024-02-26 00:00:00', 1, '3'),
('5', '2', '1', '2024-01-10 00:00:00', 0, NULL),
('6', '2', '1', '2024-11-26 00:00:00', 1, '5'),
('7', '2', '1', '2024-08-30 00:00:00', 0, NULL),
('8', '2', '1', '2024-09-01 00:00:00', 1, '7'),
('9', '2', '2', '2024-10-01 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `files`
--

CREATE TABLE `files` (
  `ID` varchar(255) NOT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `CONTENTLENGTH` varchar(255) DEFAULT NULL,
  `CONTENTTYPE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `files`
--

INSERT INTO `files` (`ID`, `FILENAME`, `CONTENTLENGTH`, `CONTENTTYPE`, `URL`) VALUES
('e571d117-0e08-4e42-adf8-2a9fd7138583', 'imagem_bunita.png', '61686', 'image/png', 'e571d117-0e08-4e42-adf8-2a9fd7138583_id_imagem_bunita.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `filme`
--

CREATE TABLE `filme` (
  `ID` varchar(255) NOT NULL,
  `NOME` varchar(255) DEFAULT NULL,
  `DURACAO` int(11) DEFAULT NULL,
  `SINOPSE` text DEFAULT NULL,
  `ANO` int(11) DEFAULT NULL,
  `IDGENERO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filme`
--

INSERT INTO `filme` (`ID`, `NOME`, `DURACAO`, `SINOPSE`, `ANO`, `IDGENERO`) VALUES
('0d12d312-3457-48b1-b60a-0014b73d7329', 'teste jnovo', 120, 'Um filme que conta a historia de ......', 1990, '3'),
('1', 'Risos na Casa Assombrada', 120, 'Uma família se muda para uma casa supostamente assombrada, mas as coisas ficam mais engraçadas do que assustadoras quando descobrem que os fantasmas são trapalhões.', 2019, '2'),
('100', 'A volta dos que não foram', 120, 'Um filme que conta a historia de ......', 1990, NULL),
('2', 'Espetacular - Caçadores da Maldição Perdida', 90, 'Uma equipe de arqueólogos se aventura em uma selva perigosa em busca de um artefato lendário, enfrentando armadilhas mortais e rivais implacáveis.', 2019, '3'),
('23895dc8-1094-4fde-aad5-1ebef9f76dae', 'A volta dos que não foram', 120, 'Um filme que conta a historia de ......', 1990, 'd7d57a42-5ea4-47fc-bae5-f56e2276b108'),
('3', 'Operação Resgate', 120, 'Um ex-agente secreto embarca em uma missão perigosa para resgatar seu filho sequestrado, enfrentando um cartel de drogas impiedoso e suas próprias memórias sombrias.', 2021, '3'),
('3074d75e-b9ec-4794-839a-33f9936dfbc9', 'A volta dos que não foram', 120, 'Um filme que conta a historia de ......', 1990, '3'),
('4', 'Missão Explosiva', 110, 'Uma equipe de mercenários é contratada para recuperar um artefato roubado de um bunker de alta segurança, desencadeando uma série de explosões espetaculares.', 2015, '3'),
('5', 'O Palhaço Assassino', 180, 'Em uma pequena cidade, um palhaço macabro começa a aterrorizar os habitantes, deixando um rastro de morte e loucura por onde passa.', 2001, '1'),
('6', 'A Máquina dos Sonhos espetacular', 120, 'Um inventor solitário cria uma máquina capaz de explorar os sonhos humanos, mas logo se vê preso em um labirinto de ilusões e realidades alternativas.', 2019, NULL),
('7', 'O espetacular Código da Sobrevivência', 90, 'Em um mundo pós-apocalíptico, um grupo de sobreviventes luta para decifrar um antigo código que pode conter a chave para a salvação da humanidade.', 2019, NULL),
('72b68416-4206-4adc-948f-225c8166bd18', 'teste jnovo', 120, 'Um filme que conta a historia de ......', 1990, '3'),
('770d4417-75d3-41b2-9a3b-753003bc4293', 'teste jnovo', 120, 'Um filme que conta a historia de ......', 1990, '3'),
('c6e44db9-f3cc-45fa-9474-4644aa9eb748', 'A volta dos que não foram', 120, 'Um filme que conta a historia de ......', 1990, NULL),
('ebad8027-c73e-4eae-af76-f8adf3ce826e', 'teste jnovo', 120, 'Um filme que conta a historia de ......', 1990, '4'),
('fae1bd8e-cc85-4261-b1b3-e71846eeaadb', 'A CAMA FOI QUEBRADA', 110, 'Uma serie de um professor que busca uma nova profissão, marceneiro', 2012, '3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `filme_pessoa`
--

CREATE TABLE `filme_pessoa` (
  `ID` varchar(255) NOT NULL,
  `IDFILME` varchar(255) DEFAULT NULL,
  `IDPESSOA` varchar(255) DEFAULT NULL,
  `FUNCAO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filme_pessoa`
--

INSERT INTO `filme_pessoa` (`ID`, `IDFILME`, `IDPESSOA`, `FUNCAO`) VALUES
('1', '1', '7', 'ATOR'),
('10', '4', '1', 'ATOR'),
('11', '4', '3', 'ATOR'),
('12', '4', '6', 'ATOR'),
('13', '4', '9', 'DIRETOR'),
('14', '4', '6', 'ATOR'),
('15', '4', '7', 'ATOR'),
('16', '4', '9', 'ATOR'),
('17', '4', '3', 'DIRETOR'),
('18', '5', '1', 'ATOR'),
('19', '5', '3', 'ATOR'),
('2', '1', '9', 'ATOR'),
('20', '5', '4', 'ATOR'),
('21', '5', '6', 'DIRETOR'),
('22', '6', '4', 'ATOR'),
('23', '6', '5', 'ATOR'),
('24', '6', '2', 'ATOR'),
('25', '6', '9', 'DIRETOR'),
('26', '4', '10', 'ATOR'),
('27', '3', '9', 'ATOR'),
('3', '1', '3', 'ATOR'),
('4', '1', '4', 'DIRETOR'),
('5', '2', '8', 'ATOR'),
('6', '2', '10', 'ATOR'),
('7', '2', '3', 'ATOR'),
('8', '2', '4', 'DIRETOR'),
('9', '3', '6', 'ATOR'),
('999', 'fae1bd8e-cc85-4261-b1b3-e71846eeaadb', NULL, NULL),
('a6452b54-6723-4e7e-ac8c-09d1890e60f1', '3074d75e-b9ec-4794-839a-33f9936dfbc9', '9ce1fcd0-ac0e-48d5-a126-0696a8fea2fb', 'ATOR'),
('a73c7658-9982-4766-8bb9-171fbbebc05d', 'fae1bd8e-cc85-4261-b1b3-e71846eeaadb', '10', 'DIRETOR'),
('b3c4bbf6-535a-4309-a592-07b6f59c80ad', 'fae1bd8e-cc85-4261-b1b3-e71846eeaadb', '10', 'ATOR');

-- --------------------------------------------------------

--
-- Estrutura para tabela `genero`
--

CREATE TABLE `genero` (
  `ID` varchar(255) NOT NULL,
  `NOME` varchar(255) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `genero`
--

INSERT INTO `genero` (`ID`, `NOME`, `DESCRICAO`) VALUES
('1', 'TERROR', 'PARA FICAR COM MEDO'),
('2', 'COMEDIA', 'PARA RIR MUITO'),
('3', 'AÇÃO', 'CHEIOS DE AÇÃO E EXPLOSÕES'),
('4', 'SUSPENSE', 'PARA FICAR SUSPENSO'),
('d7d57a42-5ea4-47fc-bae5-f56e2276b108', 'Terror', 'Descricação geral do gênero');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `ID` varchar(255) NOT NULL,
  `NOME` varchar(255) DEFAULT NULL,
  `NASCIMENTO` varchar(255) DEFAULT NULL,
  `PAIS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoa`
--

INSERT INTO `pessoa` (`ID`, `NOME`, `NASCIMENTO`, `PAIS`) VALUES
('1', 'JOAO ROBERTO BARROSO', '01/01/2000', 'BRASIL'),
('10', 'LUDVIK VON KADOV', '09/06/1985', 'RUSSIA'),
('2', 'JONAS FARACO', '13/01/1960', 'EUA'),
('3', 'JAMES JIM', '21/12/1990', 'EUA'),
('4', 'ALBERTO JUAN CABRERO', '12/12/1950', 'MEXICO'),
('5', 'DOUGLAS DURINO', '09/06/1990', 'BRASIL'),
('5712b46d-5e0f-4935-8f4b-9ee764853e4f', 'Roberto Silva', '1990-01-01 00:00:00.000', 'Brasil'),
('6', 'CARLOS JOAO BEIRADA', '06/10/2010', 'BRASIL'),
('7', 'LEONARDO DI TAOXIM', '09/12/1980', 'CHINA'),
('8', 'ARNOLD SHOPEWHAUER', '11/09/1956', 'ALEMANHA'),
('9', 'JACKIE BIEBER', '01/01/1995', 'CANADA'),
('9ce1fcd0-ac0e-48d5-a126-0696a8fea2fb', 'JOAO', '1995-01-01 00:00:00.000', 'BRASIL');

-- --------------------------------------------------------

--
-- Estrutura para tabela `serie`
--

CREATE TABLE `serie` (
  `ID` varchar(255) NOT NULL,
  `NOMESERIE` varchar(255) DEFAULT NULL,
  `TEMPORADA` varchar(255) DEFAULT NULL,
  `EPISODIO` varchar(255) DEFAULT NULL,
  `IDFILME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `serie`
--

INSERT INTO `serie` (`ID`, `NOMESERIE`, `TEMPORADA`, `EPISODIO`, `IDFILME`) VALUES
('ad56e2fc-c491-4a99-930f-4792123873ac', 'Breaking Bed', '01', '02', 'fae1bd8e-cc85-4261-b1b3-e71846eeaadb');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `ID` varchar(255) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `SENHA` varchar(255) DEFAULT NULL,
  `TELEFONE` varchar(255) DEFAULT NULL,
  `CIDADE` varchar(255) DEFAULT NULL,
  `ENDERECO` varchar(255) DEFAULT NULL,
  `CEP` varchar(255) DEFAULT NULL,
  `ASSINATURA` datetime DEFAULT NULL,
  `IDPESSOA` varchar(255) DEFAULT NULL,
  `FOTO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`ID`, `EMAIL`, `SENHA`, `TELEFONE`, `CIDADE`, `ENDERECO`, `CEP`, `ASSINATURA`, `IDPESSOA`, `FOTO`) VALUES
('1', 'JRBARROSO@TESTANDO.COM', '123456', '1488899', 'BAURU', 'RUA DAS FLORES 171', '17000000', '0000-00-00 00:00:00', '1', NULL),
('2', 'DOUGRINHA@GMAIL.COM', '882000477', '498498', 'SÃO PAULO', 'SANTA EFIGENIA 999', '00110000', '0000-00-00 00:00:00', '5', NULL),
('27fe8365-fcef-4e7f-8a73-6902d53c8bde', 'joaosilva@joao.com.br', '$2b$10$B/V/80XEJQQvyX/RF/YeWOaSPW6GK3fbPkJWKYA20ribsY6aQhZ0S', '(11) 99999-9999', 'São Paulo', NULL, NULL, '2025-11-11 20:18:06', '9ce1fcd0-ac0e-48d5-a126-0696a8fea2fb', NULL),
('3', 'JONASATOR@ATORESBRASIL.COM.BR', '$2b$10$PnR0o1hypuIfngl2RZ4vGODUOTSQjqdaO7P.FYJirxu9SPXvvME7W', '9840980498', 'RIO DE JANEIRO', 'COPACABANA', '990815200', '0000-00-00 00:00:00', '5', NULL),
('c93d2720-9be6-4f64-842b-6c041cb179d6', 'teste@teste.com', '$2b$10$iFnFMFYl4v7L4bQf4NDsneODbrLQY3vbHUc6s8Xy7D0pODMibJ6DK', '(00)00000-0000', 'São Paulo', 'Rua Engenheiro Saint Martin', '17010150', '2030-02-18 21:50:54', '5712b46d-5e0f-4935-8f4b-9ee764853e4f', 'nomearquivo-idarquivo.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDFILME` (`IDFILME`),
  ADD KEY `IDUSUARIO` (`IDUSUARIO`);

--
-- Índices de tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDGENERO` (`IDGENERO`);

--
-- Índices de tabela `filme_pessoa`
--
ALTER TABLE `filme_pessoa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDFILME` (`IDFILME`),
  ADD KEY `IDPESSOA` (`IDPESSOA`);

--
-- Índices de tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDFILME` (`IDFILME`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDPESSOA` (`IDPESSOA`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`IDFILME`) REFERENCES `filme` (`ID`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`IDUSUARIO`) REFERENCES `usuario` (`ID`);

--
-- Restrições para tabelas `filme`
--
ALTER TABLE `filme`
  ADD CONSTRAINT `filme_ibfk_1` FOREIGN KEY (`IDGENERO`) REFERENCES `genero` (`ID`);

--
-- Restrições para tabelas `filme_pessoa`
--
ALTER TABLE `filme_pessoa`
  ADD CONSTRAINT `filme_pessoa_ibfk_1` FOREIGN KEY (`IDFILME`) REFERENCES `filme` (`ID`),
  ADD CONSTRAINT `filme_pessoa_ibfk_2` FOREIGN KEY (`IDPESSOA`) REFERENCES `pessoa` (`ID`);

--
-- Restrições para tabelas `serie`
--
ALTER TABLE `serie`
  ADD CONSTRAINT `serie_ibfk_1` FOREIGN KEY (`IDFILME`) REFERENCES `filme` (`ID`);

--
-- Restrições para tabelas `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`IDPESSOA`) REFERENCES `pessoa` (`ID`);
--
-- Banco de dados: `sistema_mercado`
--
CREATE DATABASE IF NOT EXISTS `sistema_mercado` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistema_mercado`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mercado`
--

CREATE TABLE `mercado` (
  `id` char(36) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id` char(36) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `peso` varchar(50) DEFAULT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_mercado`
--

CREATE TABLE `produto_mercado` (
  `id` char(36) NOT NULL,
  `id_produto` char(36) NOT NULL,
  `id_mercado` char(36) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` char(36) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `mercado`
--
ALTER TABLE `mercado`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto_mercado`
--
ALTER TABLE `produto_mercado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produto` (`id_produto`),
  ADD KEY `id_mercado` (`id_mercado`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produto_mercado`
--
ALTER TABLE `produto_mercado`
  ADD CONSTRAINT `produto_mercado_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produto_mercado_ibfk_2` FOREIGN KEY (`id_mercado`) REFERENCES `mercado` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Banco de dados: `sporthub`
--
CREATE DATABASE IF NOT EXISTS `sporthub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sporthub`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `escola`
--

CREATE TABLE `escola` (
  `ID` varchar(255) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `HORARIO` varchar(255) NOT NULL,
  `DIA` varchar(255) NOT NULL,
  `LOCAL` varchar(255) NOT NULL,
  `FAIXAETARIA` varchar(255) NOT NULL,
  `ESPORTE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `evento`
--

CREATE TABLE `evento` (
  `ID` varchar(255) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `DESCRICAO` varchar(500) NOT NULL,
  `HORARIO` varchar(50) NOT NULL,
  `DIA` varchar(50) NOT NULL,
  `LOCAL` varchar(255) NOT NULL,
  `IDADE` varchar(255) NOT NULL,
  `ESPORTE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`ID`);
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
