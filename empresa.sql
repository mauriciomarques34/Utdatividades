-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Ago-2021 às 22:51
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
-- Banco de dados: `empresa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `Cliente_id` int(11) NOT NULL,
  `Cliente_nome` varchar(100) NOT NULL,
  `Cliente_email` varchar(100) NOT NULL,
  `Cliente_CPF` varchar(30) NOT NULL,
  `Cliente_datanasc` date NOT NULL,
  `Cliente_endereco` varchar(100) NOT NULL,
  `Cliente_telefone` varchar(30) NOT NULL,
  `Cliente_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`Cliente_id`, `Cliente_nome`, `Cliente_email`, `Cliente_CPF`, `Cliente_datanasc`, `Cliente_endereco`, `Cliente_telefone`, `Cliente_cadastradoem`) VALUES
(1, 'Mauricio', 'Mauricio@yahoo.com', '800.567.452-03', '2010-10-15', 'Rua Primeiro de Maio,1326', '(85)989590567', '2021-08-28 18:42:42'),
(2, 'Anthony', 'anthony@gmail.com', '857.444.100-56', '2002-12-16', 'Av. Presidente Costa e Silva,2078', '(85)985274975', '2021-08-28 18:42:42'),
(3, 'Maria', 'maria23@gmail.com', '800.497.987-78', '1993-03-15', 'Rua Verbena,1630', '(85)982732764', '2021-08-28 18:42:42'),
(4, 'Larissa', 'larissa93@hotmail.com', '087.675.743-27', '1990-06-23', 'Rua Oscar Araripe,2367', '(85)997478523', '2021-08-28 18:42:42'),
(5, 'Heitor', 'Heitorl@outlook.com', '456.908.675-90', '2009-07-12', 'Rua Duas Nações,560', '(85)989549620', '2021-08-28 18:42:42'),
(6, 'Antonia', 'Antonia2367@gmail.com', '897.234.876-04', '1889-09-21', 'Rua Vital Brasil, 2789', '(85)984573425', '2021-08-28 18:42:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `Id_fornecedor` int(4) NOT NULL,
  `Fornecedor_nome` varchar(100) NOT NULL,
  `Fornecedor_CNPJ` varchar(50) NOT NULL,
  `Fornecedor_email` varchar(100) NOT NULL,
  `fornecedor_especialização` varchar(100) NOT NULL,
  `Fornecedor_endereco` varchar(100) NOT NULL,
  `fornecedor_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`Id_fornecedor`, `Fornecedor_nome`, `Fornecedor_CNPJ`, `Fornecedor_email`, `fornecedor_especialização`, `Fornecedor_endereco`, `fornecedor_cadastradoem`) VALUES
(1, 'Santa Clara', '02.423.253 / 0001-51', 'santaclara@gmail.com', 'Alimento', 'Rua Emilio de Meneses,2367', '2021-08-28 22:35:18'),
(2, 'Havainas', '07.678.159 / 0001-52', 'havaianas@hotmail.com', 'Calçados', 'Rua Coronel linhares,2563', '2021-08-28 22:35:18'),
(3, 'Avine', '02.626.255 / 0001-34', 'avine@gmail.com', 'Alimentos', 'Av. Presidente Costa e Silva 2097', '2021-08-28 22:35:18'),
(4, 'Emoções', '11.623.183 / 0001-04', 'emocoesalimentos@hotmail.com', 'Alimentos', 'Rua Vicente Linhares,2345', '2021-08-28 22:35:18'),
(5, 'Fibra LTDA', '04.543.749 / 0001-65', 'Fibraltda@outlook.com', 'Alimentos', 'Rua Osvaldo Cruz,265', '2021-08-28 22:35:18'),
(6, 'Ypê', '06.626.253 / 0001-78', 'lojasypê@hotmail.com', 'Higiene', 'Rua Joaquim Nabuco,6754', '2021-08-28 22:35:18'),
(7, 'Bonamesa', '10.540.752 / 0001-25', 'bonamesa@outlook.com', 'Alimentos', 'Rua Tiburcio Cavalcante, 2345', '2021-08-28 22:35:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `Produto_id` int(6) NOT NULL,
  `Produto_nome` varchar(100) NOT NULL,
  `Produto_valor` float(7,2) NOT NULL,
  `Produto_codigo` varchar(50) NOT NULL,
  `Produto_estoque` int(6) NOT NULL,
  `Fornecedor_id` int(4) NOT NULL,
  `Produto_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`Produto_id`, `Produto_nome`, `Produto_valor`, `Produto_codigo`, `Produto_estoque`, `Fornecedor_id`, `Produto_cadastradoem`) VALUES
(1, 'Café', 5.00, '000000000301', 500, 1, '2021-08-28 19:18:35'),
(2, 'Havaianas', 35.00, '000000430', 200, 2, '2021-08-28 19:18:35'),
(3, 'Caixa de ovos', 12.00, '000000000978', 50, 3, '2021-08-28 19:18:35'),
(4, 'Arroz', 5.00, '000000023', 250, 4, '2021-08-28 19:18:35'),
(5, 'Feijão', 6.00, '0000000768', 300, 5, '2021-08-28 19:18:35'),
(6, 'Detergente', 2.00, '000001000010', 100, 6, '2021-08-28 19:18:35'),
(7, 'Macarrão', 3.00, '000000010010', 350, 7, '2021-08-28 19:18:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `Usuario_id` int(4) NOT NULL,
  `Usuario_Nome` varchar(100) NOT NULL,
  `Usuario_CPF` varchar(30) NOT NULL,
  `Usuario_login` varchar(50) NOT NULL,
  `Usuario_senha` varchar(10) NOT NULL,
  `Usuario_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`Usuario_id`, `Usuario_Nome`, `Usuario_CPF`, `Usuario_login`, `Usuario_senha`, `Usuario_cadastradoem`) VALUES
(1, 'Farias Brito de Sousa', '645.478.985-09', 'fariasbri12', '25678', '2021-08-28 21:55:32'),
(2, 'Luanna de Castro Sousa', '754.562.890-23', 'Luasousa18', '48523', '2021-08-28 21:55:32'),
(3, 'Mauricio Marques da Silva', '478.980.256-65', 'mmarques789', '23897', '2021-08-28 21:55:32'),
(4, 'Maria da Silva Soares', '678.334.567-23', 'marias29', '37845', '2021-08-28 21:55:32'),
(5, 'Carlos de Oliveira Sousa', '902.457.987-45', 'carlossousa34', '78972', '2021-08-28 21:55:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `Venda_id` int(6) NOT NULL,
  `Venda_usuario` varchar(100) NOT NULL,
  `Venda_clientecpf` varchar(50) NOT NULL,
  `venda_produto` varchar(50) NOT NULL,
  `venda_quantidade` int(6) NOT NULL,
  `Venda_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`Venda_id`, `Venda_usuario`, `Venda_clientecpf`, `venda_produto`, `venda_quantidade`, `Venda_cadastradoem`) VALUES
(1, 'fariasbri12', '049.786.532-87', 'Havaianas', 2, '2021-08-28 23:14:28'),
(2, 'mmarques789', '908.563.890-09', 'Arroz', 4, '2021-08-28 23:14:28'),
(3, 'Carlossousa34', '285.789.357-02', 'Detergente', 5, '2021-08-28 23:14:28'),
(4, 'maria29', '234.674.987-29', 'macarrão', 10, '2021-08-28 23:14:28'),
(5, 'luasousa18', '908.346.675-67', 'Café', 5, '2021-08-28 23:14:28');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Cliente_id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`Id_fornecedor`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Produto_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Usuario_id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`Venda_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `Id_fornecedor` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `Produto_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Usuario_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `Venda_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
