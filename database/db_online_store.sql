-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/11/2026 às 09:28
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
-- Banco de dados: `db_online_store`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_images`
--

CREATE TABLE `tb_images` (
  `id_image` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `url_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_images`
--

INSERT INTO `tb_images` (`id_image`, `id_product`, `url_image`) VALUES
(1, 1, 'notebook_1.jpg'),
(2, 1, 'notebook_2.jpg'),
(3, 1, 'notebook_3.jpg'),
(4, 2, 'smarttv_1.jpg'),
(5, 2, 'smarttv_2.jpg'),
(6, 3, 'smartphone_1.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_products`
--

CREATE TABLE `tb_products` (
  `id_product` int(11) NOT NULL,
  `product` varchar(200) NOT NULL,
  `value` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_products`
--

INSERT INTO `tb_products` (`id_product`, `product`, `value`) VALUES
(1, 'Notebook Dell Inspiron Ultra Slim Intel Core i7, 16GB RAM and 240GB SSD', 3500.00),
(2, 'Smart TV LED 40\" Samsung Full HD 2 HDMI 1 USB Wi-Fi Integrated', 1475.54),
(3, 'Smartphone LG K10 Dual Chip Android 7.0 4G Wi-Fi Cam de 13MP', 629.99);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_technical_descriptions`
--

CREATE TABLE `tb_technical_descriptions` (
  `id_technical_descriptions` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `technical_descriptions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_technical_descriptions`
--

INSERT INTO `tb_technical_descriptions` (`id_technical_descriptions`, `id_product`, `technical_descriptions`) VALUES
(1, 1, 'The new Dell Inspiron features an elegant design and an edge-to-edge display that expands your senses, while maintaining sophistication and a compact form factor...'),
(2, 2, 'The Samsung smart TV features a 40-inch screen and offers Full HD resolution—delivering images twice as good as those on standard HD TVs...'),
(3, 3, 'Break away from the ordinary. The LG smartphone is more fun, faster, easier to use, perfect for selfies, and features an incredible 5.3-inch HD screen...');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_images`
--
ALTER TABLE `tb_images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_product` (`id_product`);

--
-- Índices de tabela `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`id_product`);

--
-- Índices de tabela `tb_technical_descriptions`
--
ALTER TABLE `tb_technical_descriptions`
  ADD PRIMARY KEY (`id_technical_descriptions`),
  ADD KEY `id_product` (`id_product`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_images`
--
ALTER TABLE `tb_images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_technical_descriptions`
--
ALTER TABLE `tb_technical_descriptions`
  MODIFY `id_technical_descriptions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_images`
--
ALTER TABLE `tb_images`
  ADD CONSTRAINT `tb_images_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `tb_products` (`id_product`);

--
-- Restrições para tabelas `tb_technical_descriptions`
--
ALTER TABLE `tb_technical_descriptions`
  ADD CONSTRAINT `tb_technical_descriptions_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `tb_products` (`id_product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
