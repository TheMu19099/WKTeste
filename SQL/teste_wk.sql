SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste_wk`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `codigo` int NOT NULL,
  `nome` varchar(64) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `UF` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`codigo`, `nome`, `cidade`, `UF`) VALUES
(1, 'Higor Bueno', 'Valinhos', 'SP'),
(2, 'Jéssica Silva', 'São Paulo', 'SP'),
(3, 'Orlando Teixeira', 'Belo Horizonte', 'MG'),
(4, 'Janaina Bosco', 'Belo Horizonte', 'MG'),
(5, 'Luan Ramalho', 'Belo Horizonte', 'MG'),
(6, 'Arlindo Santana', 'Rio de Janeiro', 'RJ'),
(7, 'João Mathias', 'Rio de Janeiro', 'RJ'),
(8, 'Gabriel Arruda Pereira', 'Rio Branco', 'AC'),
(9, 'José Ferreira Pacheco', 'Rio Branco', 'AC'),
(10, 'Edbrito Silveira', 'Rio Branco', 'AC'),
(11, 'Eduardo Vieira', 'Brasília', 'DF'),
(12, 'Gustavo Pereira da Silva', 'Brasília', 'DF'),
(13, 'Michele Arruda', 'Brasília', 'DF'),
(14, 'Maria das Neves Teixeira', 'Brasília', 'DF'),
(15, 'Thiago de Souza', 'Curitiba', 'PR'),
(16, 'Fernanda Lagos de Souza', 'Curitiba', 'PR'),
(17, 'Mikaela Ferreira Costa', 'Curitiba', 'PR'),
(18, 'Matheus de Oliveira', 'Goiânia', 'GO'),
(19, 'Maycon de Oliveira', 'Goiânia', 'GO'),
(20, 'Emily Ribeiro Lima', 'Goiânia', 'GO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_dados_gerais`
--

CREATE TABLE `pedido_dados_gerais` (
  `codigo` int NOT NULL,
  `numero` int NOT NULL,
  `data_emissao` date NOT NULL DEFAULT '2000-01-01',
  `codigo_cliente` int NOT NULL,
  `valor_total` float NOT NULL,
  `deleted` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido_dados_gerais`
--

INSERT INTO `pedido_dados_gerais` (`codigo`, `numero`, `data_emissao`, `codigo_cliente`, `valor_total`, `deleted`) VALUES
(5, 202200005, '2022-08-24', 6, 43.5, 0),
(6, 202200006, '2022-08-24', 8, 169.25, 1),
(7, 202200007, '2022-08-24', 2, 82.35, 0),
(8, 202200008, '2022-08-24', 20, 230.45, 0),
(9, 202200009, '2022-08-24', 19, 24.6, 0),
(10, 202200010, '2022-08-24', 19, 49.2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_produtos`
--

CREATE TABLE `pedido_produtos` (
  `codigo` int NOT NULL,
  `numero_pedido` int NOT NULL,
  `codigo_produto` int NOT NULL,
  `quantidade` float NOT NULL,
  `valor_unitario` float NOT NULL,
  `valor_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido_produtos`
--

INSERT INTO `pedido_produtos` (`codigo`, `numero_pedido`, `codigo_produto`, `quantidade`, `valor_unitario`, `valor_total`) VALUES
(1, 202201, 7, 1, 27.45, 27.45),
(2, 202201, 8, 4, 27.45, 109.8),
(3, 202201, 16, 2, 46.6, 93.2),
(4, 202200005, 9, 3, 14.5, 43.5),
(5, 202200006, 14, 1, 129.75, 129.75),
(6, 202200006, 13, 1, 39.5, 39.5),
(7, 202200007, 8, 1, 27.45, 27.45),
(8, 202200007, 8, 1, 27.45, 27.45),
(9, 202200007, 8, 1, 27.45, 27.45),
(10, 202200008, 4, 10, 20.3, 203),
(11, 202200008, 8, 1, 27.45, 27.45),
(12, 202200009, 23, 1, 24.6, 24.6),
(13, 202200010, 23, 2, 24.6, 49.2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `codigo` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(255) DEFAULT 'Sem Descrição',
  `preco_venda` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`codigo`, `nome`, `descricao`, `preco_venda`) VALUES
(1, 'Tylenol 20mg', 'Sem Descrição', 10.5),
(2, 'Tylenol 30mg', 'Sem Descrição', 12.5),
(3, 'Tylenol 50mg', 'Sem Descrição', 15.8),
(4, 'Tylenol 100mg', 'Sem Descrição', 20.3),
(5, 'Paracetamol 50ml Xarope', 'Sabor Morango', 27.45),
(6, 'Paracetamol 50ml Xarope', 'Sabor Uva', 27.45),
(7, 'Paracetamol 100ml Xarope', 'Sabor Morango', 27.45),
(8, 'Paracetamol 100ml Xarope', 'Sabor Uva', 27.45),
(9, 'Gripeol 250mg Cartela', 'Cartela com 10', 14.5),
(10, 'Gripeol 500mg Cartela', 'Cartela com 6', 19.5),
(11, 'Soro Fisiológico 500ml', 'Sem Descrição', 7.9),
(12, 'Soro Fisiológico 2000ml', 'Sem Descrição', 17.6),
(13, 'Pack Luvas Descartáveis 100un', 'Sem Descrição', 39.5),
(14, 'Pack Luvas Descartáveis 500un', 'Sem Descrição', 129.75),
(15, 'Pack Máscaras Descartáveis 50un', 'Sem Descrição', 23.6),
(16, 'Pack Máscaras Descartáveis 100un', 'Sem Descrição', 46.6),
(17, 'Alcool Gel 250ml', 'Sem Descrição', 11.4),
(18, 'Alcool Gel 500ml', 'Sem Descrição', 18.8),
(19, 'Alcool Gel 1000ml', 'Sem Descrição', 27.9),
(20, 'Tadafila 25mg Cartela', 'Cartela com 10', 18.3),
(21, 'Tadafila 50mg Cartela', 'Cartela com 10', 23.3),
(22, 'Tadafila 75mg Cartela', 'Cartela com 10', 26.3),
(23, 'Tadafila 100mg Cartela', 'Cartela com 5', 24.6),
(24, 'Insulina cápsula 10ml', 'Cápsula 10ml', 3.4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `pedido_dados_gerais`
--
ALTER TABLE `pedido_dados_gerais`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `pedido_produtos`
--
ALTER TABLE `pedido_produtos`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pedido_dados_gerais`
--
ALTER TABLE `pedido_dados_gerais`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pedido_produtos`
--
ALTER TABLE `pedido_produtos`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
