CREATE DATABASE UDF_2;
USE UDF_2;

CREATE TABLE Produtos
(
    codigo         INT,
    nome           VARCHAR(100),
    valor_unitario DECIMAL(7, 2),
    qtd_estoque    INT
);


INSERT INTO Produtos (codigo, nome, valor_unitario, qtd_estoque) VALUES
(1, 'Smartphone X1', 2999.90, 150),
(2, 'Notebook Pro', 7499.50, 80),
(3, 'Smart TV 55" 4K', 3899.00, 120),
(4, 'Fone de Ouvido Bluetooth', 249.99, 300),
(5, 'Mouse Gamer RGB', 189.50, 250),
(6, 'Teclado Mecânico', 349.90, 200),
(7, 'Cadeira de Escritório Ergonômica', 899.00, 90),
(8, 'Monitor Ultrawide 34"', 2599.00, 75),
(9, 'Impressora Multifuncional', 699.80, 110),
(10, 'HD Externo 2TB', 450.00, 180),
(11, 'Cafeteira Expresso', 399.90, 130),
(12, 'Air Fryer 5L', 499.50, 160),
(13, 'Aspirador de Pó Robô', 1299.00, 60),
(14, 'Liquidificador Power', 179.90, 220),
(15, 'Furadeira de Impacto', 299.00, 140),
(16, 'Caixa de Som Portátil', 320.00, 280),
(17, 'Webcam Full HD', 210.70, 190),
(18, 'Mochila para Notebook', 199.99, 210),
(19, 'Lâmpada Inteligente Wi-Fi', 89.90, 500),
(20, 'Console de Videogame', 4500.00, 50),
(21, 'Jogo para Console - Aventura', 299.90, 100),
(22, 'Controle Sem Fio Adicional', 450.00, 150),
(23, 'Bicicleta Aro 29', 1890.00, 70),
(24, 'Capacete para Ciclismo', 150.00, 180),
(25, 'Tênis de Corrida Masculino', 599.90, 240),
(26, 'Tênis de Corrida Feminino', 599.90, 260),
(27, 'Camiseta Dry Fit', 79.90, 400),
(28, 'Garrafa Térmica 1L', 119.50, 350),
(29, 'Panela de Pressão Elétrica', 480.00, 100),
(30, 'Jogo de Facas do Chef', 280.90, 120),
(31, 'Tábua de Corte de Bambu', 99.90, 300),
(32, 'Relógio Smartwatch', 999.00, 170),
(33, 'Óculos de Sol', 340.00, 230),
(34, 'Perfume Masculino 100ml', 499.00, 130),
(35, 'Perfume Feminino 100ml', 520.00, 140),
(36, 'Creme Hidratante Corporal', 59.90, 450),
(37, 'Protetor Solar FPS 50', 69.90, 380),
(38, 'Shampoo Anticaspa', 45.50, 550),
(39, 'Escova de Dentes Elétrica', 219.00, 160),
(40, 'Livro - Ficção Científica', 55.00, 600),
(41, 'Livro - Romance', 49.90, 650),
(42, 'Roteador Wi-Fi 6', 599.00, 110),
(43, 'Cabo HDMI 2.1 3m', 89.00, 400),
(44, 'Filtro de Linha 8 Tomadas', 75.00, 320),
(45, 'Ventilador de Coluna', 239.90, 190),
(46, 'Aquecedor Elétrico Portátil', 189.00, 95),
(47, 'Mesa Digitalizadora', 420.00, 85),
(48, 'Pilha Recarregável AA (4 un)', 65.00, 700),
(49, 'Carregador Portátil (Power Bank)', 159.90, 250),
(50, 'Drone com Câmera 4K', 3200.00, 40);

