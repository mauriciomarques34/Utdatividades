-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Set-2021 às 15:05
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `formulario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `formulario`
--

CREATE TABLE `formulario` (
  `ID` int(4) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `CPF` varchar(50) NOT NULL,
  `Data de Nascimento` date NOT NULL,
  `nome_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `formulario`
--

INSERT INTO `formulario` (`ID`, `Nome`, `Email`, `CPF`, `Data de Nascimento`, `nome_cadastradoem`) VALUES
(1, 'Mauricio Marques', 'mauricio@gmail.com', '234.456.789-09', '2000-09-12', '2021-09-01 13:00:41'),
(2, 'Larissa Lima', 'larissalim@outlook.com', '093.256.309-34', '1998-03-20', '2021-09-01 13:00:41'),
(3, 'Heitor de Sousa', 'heitorso@yahoo.com.br', '234.478.367-98', '2002-12-06', '2021-09-01 13:00:41'),
(4, 'Daniel Lima', 'daniellima@gmail.com', '987.567.345-78', '2014-03-15', '2021-09-01 13:00:41'),
(5, 'Luanna ferreira', 'luannafer@hotmail.com', '789.234.589-98', '1990-05-25', '2021-09-01 13:00:41'),
(6, 'Carlos Augusto', 'Carlos@hotmail.com', '234.098.675-90', '2003-09-17', '2021-09-01 13:00:41');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `formulario`
--
ALTER TABLE `formulario`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
