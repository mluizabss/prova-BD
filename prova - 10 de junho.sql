CREATE DATABASE Biblioteca

USE Biblioteca

CREATE TABLE Livro (
    ID_Livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Data_Publicacao DATE,
    Categoria_Genero VARCHAR(100),
);

INSERT INTO Livro (ID_Livro,Titulo, Data_Publicacao, Categoria_Genero) VALUES
(1,'A Revolu��o dos Bichos', '1945-08-17', 'Fic��o Pol�tica'),
(2,'O Apanhador no Campo de Centeio', '1951-07-16', 'Fic��o Psicol�gica'),
(3,'Dom Quixote', '1605-01-16', 'Romance de Cavalaria'),
(4,'Crime e Castigo', '1866-01-01', 'Romance Psicol�gico'),
(5,'O Senhor dos An�is', '1954-07-29', 'Fantasia �pica'),
(6,'1984', '1949-06-08', 'Distopia'),
(7,'O Sol � Para Todos', '1960-07-11', 'Fic��o Legal'),
(8,'Guerra e Paz', '1869-01-01', 'Romance Hist�rico'),
(9,'O Grande Gatsby', '1925-04-10', 'Romance'),
(10,'As Cr�nicas de N�rnia', '1950-10-16', 'Fantasia'),
(11,'Os Miser�veis', '1862-04-03', 'Romance Hist�rico'),
(12,'Dr�cula', '1897-05-26', 'Fic��o G�tica'),
(13,'Orgulho e Preconceito', '1813-01-28', 'Romance de �poca'),
(14,'A Montanha M�gica', '1924-01-01', 'Romance Filos�fico'),
(15,'A Metamorfose', '1915-10-20', 'Fic��o Existencialista'),
(16,'Moby Dick', '1851-11-14', 'Romance Aventura'),
(17,'A Divina Com�dia', '1320-01-01', 'Poesia �pica'),
(18,'Ulisses', '1922-02-02', 'Romance Modernista'),
(19,'Frankenstein', '1818-01-01', 'Fic��o Cient�fica'),
(20,'O Pequeno Pr�ncipe', '1943-04-06', 'Fic��o Infantil'),
(21,'O Hobbit', '1937-09-21', 'Fantasia Aventura'),
(22,'Lolita', '1955-09-15', 'Fic��o Dram�tica'),
(23,'A Odiss�ia', '1800-01-01', '�pico'),
(24,'Cem Anos de Solid�o', '1967-05-30', 'Realismo Fant�stico'),
(25,'O Estrangeiro', '1942-01-01', 'Romance Absurdo');


CREATE TABLE Autor (
    ID_Autor INT PRIMARY KEY,
    Nome_Autor VARCHAR(100),
    Nacionalidade VARCHAR(100)
);
INSERT INTO Autor (ID_Autor, Nome_Autor, Nacionalidade) VALUES
(1,'George Orwell', 'Brit�nico'),
(2,'J.D. Salinger', 'Americano'),
(3,'Miguel de Cervantes', 'Espanhol'),
(4,'Fi�dor Dostoi�vski', 'Russo'),
(5,'J.R.R. Tolkien', 'Brit�nico'),
(6,'George Orwell', 'Brit�nico'),
(7,'Harper Lee', 'Americano'),
(8,'Lev Tolst�i', 'Russo'),
(9,'F. Scott Fitzgerald', 'Americano'),
(10,'C.S. Lewis', 'Brit�nico'),
(11,'Victor Hugo', 'Franc�s'),
(12,'Bram Stoker', 'Irland�s'),
(13,'Jane Austen', 'Brit�nico'),
(14,'Thomas Mann', 'Alem�o'),
(15,'Franz Kafka', 'Tcheco'),
(16,'Herman Melville', 'Americano'),
(17,'Dante Alighieri', 'Italiano'),
(18,'James Joyce', 'Irland�s'),
(19,'Mary Shelley', 'Brit�nico'),
(20,'Antoine de Saint-Exup�ry', 'Franc�s'),
(21,'J.R.R. Tolkien', 'Brit�nico'),
(22,'Vladimir Nabokov', 'Russo'),
(23,'Homero', 'Grego'),
(24,'Gabriel Garc�a M�rquez', 'Colombiano'),
(25,'Albert Camus', 'Franc�s');

CREATE TABLE Membro (
    ID_Membro INT PRIMARY KEY,
    Nome_Membro VARCHAR(100),
    Endereco_Rua VARCHAR(255),
    Endereco_Cidade VARCHAR(100),
    Endereco_Estado VARCHAR(50),
    Endereco_CEP VARCHAR(20),
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

INSERT INTO Membro (ID_Membro, Nome_Membro, Endereco_Rua, Endereco_Cidade, Endereco_Estado, Endereco_CEP, Telefone, Email) VALUES
(1, 'Ana Silva', 'Rua das Flores, 123', 'Ribeir�o Preto', 'SP', '14400-000', '(16) 1234-5678', 'ana.silva@example.com'),
(2, 'Bruno Lima', 'Avenida Brasil, 456', 'Franca', 'SP', '14401-000', '(16) 2345-6789', 'bruno.lima@example.com'),
(3, 'Carla Souza', 'Rua S�o Paulo, 789', 'Franca', 'SP', '14402-000', '(16) 3456-7890', 'carla.souza@example.com'),
(4, 'Daniel Oliveira', 'Avenida Rio de Janeiro, 101', 'Franca', 'SP', '14403-000', '(16) 4567-8901', 'daniel.oliveira@example.com'),
(5, 'Elisa Pereira', 'Rua Minas Gerais, 202', 'Franca', 'SP', '14404-000', '(16) 5678-9012', 'elisa.pereira@example.com'),
(6, 'Fabio Santos', 'Avenida Bahia, 303', 'Franca', 'SP', '14405-000', '(16) 6789-0123', 'fabio.santos@example.com'),
(7, 'Gabriela Costa', 'Rua Cear�, 404', 'Franca', 'SP', '14406-000', '(16) 7890-1234', 'gabriela.costa@example.com'),
(8, 'Henrique Martins', 'Avenida Pernambuco, 505', 'Franca', 'SP', '14407-000', '(16) 8901-2345', 'henrique.martins@example.com'),
(9, 'Isabela Almeida', 'Rua Para�ba, 606', 'Franca', 'SP', '14408-000', '(16) 9012-3456', 'isabela.almeida@example.com'),
(10, 'Jo�o Pedro', 'Avenida Paran�, 707', 'Franca', 'SP', '14409-000', '(16) 0123-4567', 'joao.pedro@example.com'),
(11, 'Karina Fernandes', 'Rua Goi�s, 808', 'Franca', 'SP', '14410-000', '(16) 1234-5678', 'karina.fernandes@example.com'),
(12, 'Lucas Rodrigues', 'Avenida Mato Grosso, 909', 'Franca', 'SP', '14411-000', '(16) 2345-6789', 'lucas.rodrigues@example.com'),
(13, 'Mariana Rocha', 'Rua Esp�rito Santo, 1010', 'Franca', 'SP', '14412-000', '(16) 3456-7890', 'mariana.rocha@example.com'),
(14, 'Nelson Gomes', 'Avenida Sergipe, 1111', 'Franca', 'SP', '14413-000', '(16) 4567-8901', 'nelson.gomes@example.com'),
(15, 'Olivia Teixeira', 'Rua Maranh�o, 1212', 'Franca', 'SP', '14414-000', '(16) 5678-9012', 'olivia.teixeira@example.com'),
(16, 'Paulo Cardoso', 'Avenida Rond�nia, 1313', 'Franca', 'SP', '14415-000', '(16) 6789-0123', 'paulo.cardoso@example.com'),
(17, 'Qu�nia Freitas', 'Rua Amap�, 1414', 'Franca', 'SP', '14416-000', '(16) 7890-1234', 'kenia.freitas@example.com'),
(18, 'Renato Barros', 'Avenida Amazonas, 1515', 'Franca', 'SP', '14417-000', '(16) 8901-2345', 'renato.barros@example.com'),
(19, 'Sofia Reis', 'Rua Acre, 1616', 'Franca', 'SP', '14418-000', '(16) 9012-3456', 'sofia.reis@example.com'),
(20, 'Tiago Ribeiro', 'Avenida Alagoas, 1717', 'Franca', 'SP', '14419-000', '(16) 0123-4567', 'tiago.ribeiro@example.com'),
(21, 'Ursula Lopes', 'Rua Tocantins, 1818', 'Franca', 'SP', '14420-000', '(16) 1234-5678', 'ursula.lopes@example.com'),
(22, 'Vinicius Batista', 'Avenida Piau�, 1919', 'Franca', 'SP', '14421-000', '(16) 2345-6789', 'vinicius.batista@example.com'),
(23, 'Wagner Souza', 'Rua Amazonas, 2020', 'Franca', 'SP', '14422-000', '(16) 3456-7890', 'wagner.souza@example.com'),
(24, 'Xavier Mendes', 'Avenida Para�ba, 2121', 'Franca', 'SP', '14423-000', '(16) 4567-8901', 'xavier.mendes@example.com'),
(25, 'Yasmin Oliveira', 'Rua Mato Grosso, 2222', 'Franca', 'SP', '14424-000', '(16) 5678-9012', 'yasmin.oliveira@example.com'),
(26, 'Z�lia Martins', 'Avenida Maranh�o, 2323', 'Franca', 'SP', '14425-000', '(16) 6789-0123', 'zelia.martins@example.com'),
(27, 'Arthur Silva', 'Rua Pernambuco, 2424', 'Franca', 'SP', '14426-000', '(16) 7890-1234', 'arthur.silva@example.com'),
(28, 'Beatriz Costa', 'Avenida Rio de Janeiro, 2525', 'Franca', 'SP', '14427-000', '(16) 8901-2345', 'beatriz.costa@example.com'),
(29, 'Cesar Gomes', 'Rua S�o Paulo, 2626', 'Franca', 'SP', '14428-000', '(16) 9012-3456', 'cesar.gomes@example.com'),
(30, 'Diana Ferreira', 'Avenida Bahia, 2727', 'Franca', 'SP', '14429-000', '(16) 0123-4567', 'diana.ferreira@example.com'),
(31, 'Eduardo Almeida', 'Rua Minas Gerais, 2828', 'Franca', 'SP', '14430-000', '(16) 1234-5678', 'eduardo.almeida@example.com'),
(32, 'Fernanda Ara�jo', 'Avenida Esp�rito Santo, 2929', 'Franca', 'SP', '14431-000', '(16) 2345-6789', 'fernanda.araujo@example.com'),
(33, 'Guilherme Duarte', 'Rua Goi�s, 3030', 'Franca', 'SP', '14432-000', '(16) 3456-7890', 'guilherme.duarte@example.com'),
(34, 'Helena Nascimento', 'Avenida Mato Grosso, 3131', 'Franca', 'SP', '14433-000', '(16) 4567-8901', 'helena.nascimento@example.com'),
(35, 'Igor Carvalho', 'Rua Amap�, 3232', 'Franca', 'SP', '14434-000', '(16) 5678-9012', 'igor.carvalho@example.com'),
(36, 'Julia Pinto', 'Avenida Rond�nia, 3333', 'Franca', 'SP', '14435-000', '(16) 6789-0123', 'julia.pinto@example.com'),
(37, 'Leandro Silva', 'Rua Tocantins, 3434', 'Franca', 'SP', '14436-000', '(16) 7890-1234', 'leandro.silva@example.com'),
(38, 'Marcela Souza', 'Avenida Alagoas, 3535', 'Franca', 'SP', '14437-000', '(16) 8901-2345', 'marcela.souza@example.com'),
(39, 'Nathalia Rodrigues', 'Rua Paran�, 3636', 'Franca', 'SP', '14438-000', '(16) 9012-3456', 'nathalia.rodrigues@example.com'),
(40, 'Ot�vio Almeida', 'Avenida Amazonas, 3737', 'Franca', 'SP', '14439-000', '(16) 0123-4567', 'otavio.almeida@example.com');

CREATE TABLE Emprestimo (
    ID_Emprestimo INT PRIMARY KEY,
    ID_Livro INT,
    ID_Membro INT,
    Data_Emprestimo DATE,
    Data_Devolucao DATE,
    Multa DECIMAL(10, 2),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro),
    FOREIGN KEY (ID_Membro) REFERENCES Membro(ID_Membro)
);

INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Membro, Data_Emprestimo, Data_Devolucao, Multa) VALUES
(1, 5, 23, '2023-01-15', '2023-02-01', 0.00),
(2, 10, 18, '2023-02-01', '2023-02-15', 1.50),
(3, 8, 25, '2023-03-05', '2023-03-20', 0.00),
(4, 15, 30, '2023-03-10', '2023-03-25', 2.00),
(5, 12, 14, '2023-04-01', '2023-04-16', 0.00),
(6, 20, 7, '2023-04-15', '2023-05-01', 0.50),
(7, 3, 33, '2023-05-05', '2023-05-20', 0.00),
(8, 18, 12, '2023-05-10', '2023-05-25', 0.00),
(9, 9, 28, '2023-06-01', '2023-06-15', 1.00),
(10, 2, 40, '2023-06-15', '2023-06-30', 0.00),
(11, 6, 11, '2023-07-01', '2023-07-16', 0.00),
(12, 13, 35, '2023-07-05', '2023-07-20', 0.00),
(13, 25, 22, '2023-08-01', '2023-08-15', 0.00),
(14, 7, 17, '2023-08-10', '2023-08-25', 1.50),
(15, 16, 3, '2023-09-01', '2023-09-16', 0.00),
(16, 1, 8, '2023-09-05', '2023-09-20', 0.00),
(17, 11, 26, '2023-10-01', '2023-10-16', 0.00),
(18, 19, 31, '2023-10-10', '2023-10-25', 2.00),
(19, 4, 20, '2023-11-01', '2023-11-16', 0.50),
(20, 14, 9, '2023-11-05', '2023-11-20', 0.00);

CREATE TABLE Funcionario (
    ID_Funcionario INT PRIMARY KEY,
    Nome_Funcionario VARCHAR(100),
    Cargo VARCHAR(100),
    Data_Contratacao DATE,
);

INSERT INTO Funcionario (ID_Funcionario, Nome_Funcionario, Cargo, Data_Contratacao) VALUES
(1, 'Alice Santos', 'Bibliotec�ria', '2020-01-15'),
(2, 'Bruno Lima', 'Assistente de Biblioteca', '2019-03-22'),
(3, 'Carla Oliveira', 'Gerente de Biblioteca', '2018-06-10'),
(4, 'Daniel Silva', 'T�cnico de Informa��o', '2021-07-05'),
(5, 'Elisa Pereira', 'Bibliotec�ria', '2022-09-18'),
(6, 'Fabio Almeida', 'Assistente de Biblioteca', '2017-11-23'),
(7, 'Gabriela Costa', 'Analista de Sistemas', '2020-05-12'),
(8, 'Henrique Martins', 'Auxiliar de Biblioteca', '2021-08-30'),
(9, 'Isabela Almeida', 'Bibliotec�ria', '2019-04-14'),
(10, 'Jo�o Pedro', 'T�cnico de Informa��o', '2018-12-01'),
(11, 'Karina Fernandes', 'Gerente de Tecnologia', '2017-10-17'),
(12, 'Lucas Rodrigues', 'Bibliotec�rio', '2021-03-25'),
(13, 'Mariana Rocha', 'Assistente de Biblioteca', '2022-01-09'),
(14, 'Nelson Gomes', 'Bibliotec�rio', '2018-02-26'),
(15, 'Olivia Teixeira', 'Assistente de Biblioteca', '2021-05-19'),
(16, 'Paulo Cardoso', 'T�cnico de Informa��o', '2019-09-21'),
(17, 'Qu�nia Freitas', 'Bibliotec�ria', '2020-11-04'),
(18, 'Renato Barros', 'Assistente de Biblioteca', '2021-06-28'),
(19, 'Sofia Reis', 'Analista de Sistemas', '2018-07-15'),
(20, 'Tiago Ribeiro', 'Gerente de Opera��es', '2017-08-12');

-------------------------------------------------------------------------------------------------------------------------------------------

---CRUD---

---CREATE

-- Inserir novo membro
INSERT INTO Membro (ID_Membro, Nome_Membro, Endereco_Rua, Endereco_Cidade, Endereco_Estado, Endereco_CEP, Telefone, Email) VALUES
(41, 'Victor Menezes', 'Rua das Palmeiras, 456', 'Franca', 'SP', '14440-000', '(16) 9876-5432', 'victor.menezes@example.com');

-- Inserir novo livro
INSERT INTO Livro (ID_Livro, Titulo, Data_Publicacao, Categoria_Genero) VALUES
(26, 'O Mist�rio das Sombras', '2023-12-01', 'Suspense');

-------------------------------------------------------------------------------------------------------------------------------------------

---READ

-- Ler todos os membros
SELECT * FROM Membro;

-- Ler todos os livros
SELECT * FROM Livro;

-------------------------------------------------------------------------------------------------------------------------------------------

---UPDATE

-- Atualizar endere�o do membro com ID_Membro = 41
UPDATE Membro
SET Endereco_Rua = 'Avenida das Palmeiras, 456'
WHERE ID_Membro = 41;

-- Atualizar t�tulo do livro com ID_Livro = 26
UPDATE Livro
SET Titulo = 'O Enigma das Sombras'
WHERE ID_Livro = 26;

-------------------------------------------------------------------------------------------------------------------------------------------

---DELETE

-- Deletar membro com ID_Membro = 41
DELETE FROM Membro
WHERE ID_Membro = 41;

-- Deletar livro com ID_Livro = 26
DELETE FROM Livro
WHERE ID_Livro = 26;

-------------------------------------------------------------------------------------------------------------------------------------------

---SELE��O, FILTRO E ORDENA��O

--1. Lista todos os membros da biblioteca
SELECT * FROM Livro;

--2. Lista todos os livros da biblioteca ordenados por t�tulo
SELECT * FROM Livro ORDER BY Titulo;

--3. Lista todos os empr�stimos em aberto
SELECT * FROM Emprestimo WHERE Data_Devolucao IS NULL;

--4. Lista todos os membros que residem na cidade de Ribeir�o Preto
SELECT * FROM Membro WHERE Endereco_Cidade = 'Ribeir�o Preto';

--5. Lista os empr�stimos realizados por um membro espec�fico
SELECT * FROM Emprestimo WHERE ID_Membro = 15;

--6. Lista os livros emprestados atualmente
SELECT * FROM Livro WHERE ID_Livro IN (SELECT ID_Livro FROM Emprestimo WHERE Data_Devolucao IS NULL);

--7. Lista os membros que possuem multa pendente
SELECT * FROM Membro WHERE ID_Membro IN (SELECT DISTINCT ID_Membro FROM Emprestimo WHERE Multa > 0);

--8. Lista os empr�stimos ordenados por data de devolu��o mais pr�xima
SELECT * FROM Emprestimo WHERE Data_Devolucao IS NOT NULL ORDER BY Data_Devolucao ASC;

--9. Lista os empr�stimos com multa, ordenados pela maior multa
SELECT * FROM Emprestimo WHERE Multa > 0 ORDER BY Multa DESC;

--10. Lista todos os membros da biblioteca em ordem alfab�tica por nome
SELECT * FROM Membro ORDER BY Nome_Membro ASC;

