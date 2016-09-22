-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 21/09/2016 às 22:43
-- Versão do servidor: 5.6.28-0ubuntu0.15.04.1
-- Versão do PHP: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gomoku`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `sigla` varchar(4) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogada`
--

CREATE TABLE `jogada` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL,
  `linha` int(11) NOT NULL,
  `coluna` int(11) NOT NULL,
  `data_hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1471642520),
('m130524_201442_init', 1471642525);

-- --------------------------------------------------------

--
-- Estrutura para tabela `partida`
--

CREATE TABLE `partida` (
  `id` int(11) NOT NULL,
  `id_user_1` int(11) DEFAULT NULL,
  `id_user_2` int(11) DEFAULT NULL,
  `vencedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `pontuacao` int(11) DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `id_curso`, `pontuacao`, `auth_key`, `password_hash`, `password_reset_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'teste', 'teste@icomp.com', NULL, NULL, 'czguUsUGz8xdK8X0YC7_L26V8l4ke4QY', '$2y$13$YO25kauwgVUyp093htZw3OyrePrg7YDPmuTtLXlpbYJ444RPViYHi', NULL, 10, 1472242208, 1472242208),
(2, 'teste2', 'teste2@icomp.com', NULL, NULL, 'PjGGD6QAG5lBNX-b1Q0wCzYB_fAPdIhR', '$2y$13$Q3V21o.wedk512b9vFVBNemggeYQdpIopBjr09INqdJVdN4Ruu.Bm', NULL, 10, 1472245759, 1472245759),
(3, 'teste3', 'teste3@icomp.com', 1, NULL, 'Z6i_tE-IfybHCFTmDItRqjFc7Ng7Rydj', '$2y$13$r5xD3vI0.ndGdhjfCekY7.X5PEcyDB2/KgcoLHQus8QvQCvWColrC', NULL, 10, 1472246711, 1472246711),
(4, 'load', 'load@gmail.com', 1, NULL, '4lJmLu0pJoanJLabGEzhvYB86yIP2mML', '$2y$13$yJRZFaHQRtgJKsN9TnT9zeQHNpKmoTavVCZk77JEezRoAtcq0E6y6', NULL, 10, 1474485702, 1474485702);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `jogada`
--
ALTER TABLE `jogada`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD UNIQUE KEY `id_partida` (`id_partida`);

--
-- Índices de tabela `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Índices de tabela `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vencedor` (`vencedor`),
  ADD UNIQUE KEY `id_user_2` (`id_user_2`),
  ADD UNIQUE KEY `id_user_1` (`id_user_1`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD KEY `id_curso` (`id_curso`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
