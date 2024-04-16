CREATE TABLE Pizza
(
  TAMANHO VARCHAR(20),
  DESCRICAO VARCHAR(80),
  PRECO DECIMAL(10,2),
  SABOR VARCHAR(45),
  ID INTEGER PRIMARY KEY AUTO_INCREMENT,
  INGREDIENTES VARCHAR(100),
  ID_EMBALAGEM INT,
  ID_PIZZAIOLO INT,
  ID_RECEITA INT,
  FOREIGN KEY (ID_EMBALAGEM) REFERENCES Embalagem(ID_EMBALAGEM),
  FOREIGN KEY (ID_PIZZAIOLO) REFERENCES Pizzaiolo(ID_PIZZAIOLO),
  FOREIGN KEY (ID_RECEITA) REFERENCES Receita(ID_RECEITA)
  );
  
  CREATE TABLE Receita
(
  AUTOR VARCHAR(20),
  INSTRUCOES VARCHAR(200),
  ID_RECEITA INTEGER PRIMARY KEY AUTO_INCREMENT
  );
  
  CREATE TABLE Pizzaiolo
(
  SALARIO DECIMAL (10,2),
  NOME VARCHAR (20),
  ID_PIZZAIOLO INTEGER PRIMARY KEY AUTO_INCREMENT
  );
  
  CREATE TABLE Embalagem
(
  MATERIAL VARCHAR(100),
  TAMANHO VARCHAR(45),
  PRECO DECIMAL(10,2),
  ID_EMBALAGEM INTEGER PRIMARY KEY AUTO_INCREMENT
  );
  
  INSERT INTO Pizza (TAMANHO, DESCRICAO, PRECO, SABOR, INGREDIENTES, ID_PIZZAIOLO, ID_RECEITA) VALUES
  ('Pequena', 'Pizza de queijo', 20.00, 'Queijo', 'Molho de tomate, mussarela', 1, 1),
  ('Média', 'Pizza de calabresa', 25.50, 'Calabresa', 'Molho de tomate, mussarela, calabresa', 2, 2),
  ('Grande', 'Pizza de frango com catupiry', 30.00, 'Frango com catupiry', 'Molho de tomate, mussarela, frango, catupiry', 3, 3),
  ('Média', 'Pizza vegetariana', 27.00, 'Vegetariana', 'Molho de tomate, mussarela, tomate, cebola, pimentão, azeitona', 4, 4),
  ('Grande', 'Pizza de pepperoni', 29.00, 'Pepperoni', 'Molho de tomate, mussarela, pepperoni', 5, 5),
  ('Pequena', 'Pizza quatro queijos', 22.00, 'Quatro queijos', 'Molho de tomate, mussarela, gorgonzola, provolone, parmesão', 6 ,6),
  ('Média', 'Pizza de marguerita', 26.00, 'Marguerita', 'Molho de tomate, mussarela, tomate, manjericão', 7, 7),
  ('Grande', 'Pizza de presunto', 28.00, 'Presunto', 'Molho de tomate, mussarela, presunto', 8, 8),
  ('Pequena', 'Pizza de bacon', 23.50, 'Bacon', 'Molho de tomate, mussarela, bacon em pedaços', 9, 9),
  ('Média', 'Pizza de camarão', 31.00, 'Camarão', 'Molho de tomate, mussarela, camarão, cebola, pimentão', 10, 10),
  ('Grande', 'Pizza de carne seca', 32.00, 'Carne seca', 'Molho de tomate, mussarela, carne seca, cebola, requeijão', 11, 11),
  ('Média', 'Pizza de atum', 28.50, 'Atum', 'Molho de tomate, mussarela, atum, cebola, tomate', 12, 12),
  ('Pequena', 'Pizza de rúcula com tomate seco', 24.00, 'Rúcula com tomate seco', 'Molho de tomate, mussarela, rúcula, tomate seco', 13, 13),
  ('Grande', 'Pizza de portuguesa', 30.00, 'Portuguesa', 'Molho de tomate, mussarela, presunto, ovos, cebola, azeitona', 14, 14),
  ('Pequena', 'Pizza de chocolate com morango', 25.00, 'Chocolate com morango', 'Chocolate, morangos', 15, 15),
  ('Média', 'Pizza de banana com canela', 26.50, 'Banana com canela', 'Banana, canela em pó, leite condensado', 16, 16),
  ('Grande', 'Pizza de brigadeiro', 28.00, 'Brigadeiro', 'Chocolate, granulado de chocolate', 17, 17),
  ('Pequena', 'Pizza de abacaxi com bacon', 23.00, 'Abacaxi com bacon', 'Molho de tomate, mussarela, abacaxi, bacon', 18, 18),
  ('Média', 'Pizza de palmito', 27.50, 'Palmito', 'Molho de tomate, mussarela, palmito, tomate, cebola', 19, 19),
  ('Grande', 'Pizza de alho poró', 29.50, 'Alho poró', 'Molho de tomate, mussarela, alho poró, bacon', 20, 20),
  ('Pequena', 'Pizza de cogumelos', 24.50, 'Cogumelos', 'Molho de tomate, mussarela, cogumelos, cebola', 21, 21),
  ('Média', 'Pizza de salmão', 32.00, 'Salmão', 'Molho de tomate, mussarela, salmão, alcaparras, cebola roxa', 22, 22),
  ('Grande', 'Pizza de carne moída', 31.00, 'Carne moída', 'Molho de tomate, mussarela, carne moída, tomate, pimentão', 23, 23),
  ('Pequena', 'Pizza de chocolate branco com frutas vermelhas', 26.00, 'Chocolate branco com frutas vermelhas', 'Chocolate branco, morangos, amoras, framboesas', 24, 24),
  ('Média', 'Pizza de pesto', 27.50, 'Pesto', 'Molho pesto, mussarela, tomate cereja, manjericão', 25, 25),
  ('Grande', 'Pizza de queijo brie com damasco', 31.50, 'Queijo brie com damasco', 'brie, damascos, mel', 26, 26),
  ('Pequena', 'Pizza de carne de sol', 25.00, 'Carne de sol', 'Molho de tomate, mussarela, carne de sol, cebola roxa, manteiga', 27, 27),
  ('Pequena', 'Pizza de camarão com catupiry', 32.00, 'Camarão com catupiry', 'Molho de tomate, mussarela, camarão, catupiry, cebola', 28, 28),
  ('Grande', 'Pizza de lombo com requeijão', 32.00, 'Lombo com requeijão', 'Molho de tomate, mussarela, lombo defumado, requeijão', 29, 29),
  ('Pequena', 'Pizza de chocolate com banana', 24.00, 'Chocolate com banana', 'Chocolate, banana', 30, 30);
  
  INSERT INTO Pizzaiolo (NOME, SALARIO) VALUES
  ('João Silva', 2000),
  ('Maria Oliveira', 1800),
  ('Carlos Santos', 2200),
  ('Ana Souza', 1900),
  ('Pedro Lima', 2100),
  ('Fernanda Pereira', 1950),
  ('Lucas Oliveira', 2050),
  ('Juliana Santos', 1980),
  ('Rafaela Ferreira', 2250),
  ('Gabriel Almeida', 2150),
  ('Luiza Martins', 2300),
  ('Marcos Costa', 1850),
  ('Adriana Pereira', 1920),
  ('Thiago Oliveira', 1990),
  ('Beatriz Silva', 1800),
  ('Renata Santos', 2100),
  ('Roberto Almeida', 2050),
  ('Camila Ferreira', 2200),
  ('André Costa', 1900),
  ('Larissa Oliveira', 2000),
  ('Diego Martins', 2150),
  ('Bruna Souza', 1950),
  ('Júlio Silva', 1980),
  ('Paula Lima', 2250),
  ('Marcelo Santos', 2350),
  ('Aline Ferreira', 2100),
  ('Rafael Oliveira', 1850),
  ('Marina Costa', 1920),
  ('Guilherme Almeida', 1990),
  ('Isabela Martins', 1800);
  
  insert into Receita (INSTRUCOES, AUTOR) VALUES
  ('Misture molho de tomate e mussarela, asse por 15 minutos.', 'Pizzaria Delícia'),
  ('Espalhe molho de tomate, adicione calabresa e mussarela, asse por 20 minutos.', 'Chef Giovanni'),
  ('Cubra com molho de tomate, adicione frango e catupiry, asse por 25 minutos.', 'Chef Ana'),
  ('Espalhe molho de tomate, adicione tomate, cebola, pimentão e azeitona, asse por 20 minutos.', 'Chef Carlos'),
  ('Espalhe molho de tomate, adicione mussarela e pepperoni, asse por 18 minutos.', 'Pizzaiolo Gustavo'),
  ('Cubra com molho de tomate, adicione gorgonzola, provolone, parmesão, asse por 22 minutos.', 'Chef Maria'),
  ('Misture molho de tomate, mussarela, tomate e manjericão, asse por 18 minutos.', 'Pizzaiolo João'),
  ('Espalhe molho de tomate, adicione presunto e mussarela, asse por 20 minutos.', 'Chef Felipe'),
  ('Cubra com molho de tomate, adicione mussarela e bacon, asse por 18 minutos.', 'Pizzaiola Carla'),
  ('Espalhe molho de tomate, adicione camarão, cebola, pimentão, asse por 22 minutos.', 'Chef Renata'),
  ('Cubra com molho de tomate, adicione carne seca, cebola, requeijão, asse por 25 minutos.', 'Pizzaiolo Rafael'),
  ('Misture molho de tomate, mussarela, atum, cebola, tomate, asse por 20 minutos.', 'Chef André'),
  ('Espalhe molho de tomate, adicione rúcula, tomate seco, asse por 18 minutos.', 'Pizzaiola Camila'),
  ('Cubra com molho de tomate, adicione presunto, ovos, cebola, azeitona, asse por 22 minutos.', 'Chef Juliana'),
  ('Cubra com chocolate, adicione morangos, asse por 15 minutos.', 'Confeiteira Laura'),
  ('Espalhe chocolate, adicione banana, canela em pó, asse por 18 minutos.', 'Chef Pedro'),
  ('Cubra com chocolate, adicione granulado de chocolate, asse por 15 minutos.', 'Confeiteiro Thiago'),
  ('Espalhe molho de tomate, adicione abacaxi, bacon, asse por 20 minutos.', 'Pizzaiolo Ricardo'),
  ('Espalhe molho de tomate, adicione palmito, tomate, cebola, asse por 18 minutos.', 'Chef Fernanda'),
  ('Cubra com molho de tomate, adicione alho poró, bacon, asse por 22 minutos.', 'Pizzaiola Luana'),
  ('Espalhe molho de tomate, adicione cogumelos, cebola, asse por 18 minutos.', 'Chef Marcelo'),
  ('Misture molho de tomate, mussarela, salmão, alcaparras, cebola roxa, asse por 20 minutos.', 'Chef Leonardo'),
  ('Cubra com molho de tomate, adicione carne moída, tomate, pimentão, asse por 25 minutos.', 'Pizzaiolo Tiago'),
  ('Cubra com chocolate branco, adicione morangos, amoras, framboesas, asse por 15 minutos.', 'Confeiteira Vanessa'),
  ('Espalhe molho pesto, adicione mussarela, tomate cereja, manjericão fresco, asse por 18 minutos.', 'Chef Bruna'),
  ('Cubra com queijo brie, damascos, mel, asse por 20 minutos.', 'Chef Gustavo'),
  ('Cubra com molho de tomate, adicione carne de sol, cebola roxa, manteiga de garrafa, asse por 22 minutos.', 'Pizzaiolo Igor'),
  ('Espalhe molho de tomate, adicione mussarela, camarão, catupiry, cebola e asse por 15 minutos.', 'Chef Roberto'),
  ('Cubra com molho de tomate, adicione lombo defumado, requeijão, asse por 20 minutos.', 'Chef Daniela'),
  ('Espalhe chocolate, adicione banana, asse por 15 minutos.', 'Confeiteiro Bruno');
  
  SELECT Pizza.SABOR, Pizzaiolo.NOME FROM Pizza INNER JOIN Pizzaiolo ON Pizzaiolo.ID_PIZZAIOLO = Pizza.ID_PIZZAIOLO;
  SELECT SABOR AS Pizza, INGREDIENTES AS Ingredientes FROM Pizza;
  SELECT Pizza.SABOR, Pizzaiolo.NOME, Receita.INSTRUCOES FROM Pizza INNER JOIN Pizzaiolo ON Pizzaiolo.ID_PIZZAIOLO = Pizza.ID_PIZZAIOLO INNER JOIN Receita ON Receita.ID_RECEITA = Pizza.ID_RECEITA;
  