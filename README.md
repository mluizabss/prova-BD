# Prova final - Banco de dados

## 1. Cenário
  Banco de dados para uma biblioteca
- Entidades:
  - Livros 
  - Autores 
  - Membros
  - Funcionários 
  - Emprestimos

- Atributos:
- Livros:
     - ID_Livro
     - ID_Autor
     - Titulo
     - Data_Publicacao
     - Categoria_Genero
       
- Autores: 
    - ID_Autor
    - ID_Livro
    - Nome_Autor
    - Nacionalidade
 
- Membros:
   - ID_Membro
   - Nome_Membro
   - ID_Emprestimos
   - Endereco_Rua
   - Endereco_Cidade
   - Endereco_Estado
   - Endereco_CEP
   - Telefone
   - Email

- Emprestimos:
  - ID_Emprestimo
  - ID_Livro
  - ID_Membro
  - ID_Funcionario
  - Data_Emprestimo
  - Data_Devolucao
  - Multa
 
- Funcionarios 
  - ID_Funcionario
  - Nome_Funcionario
  - Cargo
  - Data_Contratacao

- RELACIONAMENTOS
   - Livro tem muitos autores
   - Usuário faz muitos empréstimos
   - Usuário faz muitas reservas
   - Funcionário gerencia muitos empréstimos
   - Livro está em muitos empréstimos
   - Livro está em muitas reservas
   - Usuário pode ter muitos contatos de telefone

## 2. MODELO CONCEITUAL 
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - modelo1.jpeg"/>

## 3. MODELO LOGICO
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - modelo1.jpeg"/>

## 4. MODELO FISICO
    CREATE TABLE Livros (
    ID_Livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Data_Publicacao DATE,
    Categoria_Genero VARCHAR(100),
    );

    CREATE TABLE Autores (
    ID_Autor INT PRIMARY KEY,
    Nome_Autor VARCHAR(100),
    Nacionalidade VARCHAR(100)
    );

    CREATE TABLE Membros (
    ID_Membro INT PRIMARY KEY,
    Nome_Membro VARCHAR(100),
    Endereco_Rua VARCHAR(255),
    Endereco_Cidade VARCHAR(100),
    Endereco_Estado VARCHAR(50),
    Endereco_CEP VARCHAR(20),
    Telefone VARCHAR(20),
    Email VARCHAR(100)
    );

    CREATE TABLE Emprestimos (
    ID_Emprestimo INT PRIMARY KEY,
    ID_Livro INT,
    ID_Membro INT,
    Data_Emprestimo DATE,
    Data_Devolucao DATE,
    Multa DECIMAL(10, 2),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro),
    FOREIGN KEY (ID_Membro) REFERENCES Membro(ID_Membro)
    );

    CREATE TABLE Funcionarios (
    ID_Funcionario INT PRIMARY KEY,
    Nome_Funcionario VARCHAR(100),
    Cargo VARCHAR(100),
    Data_Contratacao DATE,
    );

## 5. INSERÇÃO DE DADOS
    INSERT INTO Livro (ID_Livro,Titulo, Data_Publicacao, Categoria_Genero) VALUES
    (1,'A Revolução dos Bichos', '1945-08-17', 'Ficção Política'),
    (2,'O Apanhador no Campo de Centeio', '1951-07-16', 'Ficção Psicológica'),
    (3,'Dom Quixote', '1605-01-16', 'Romance de Cavalaria'),
    (4,'Crime e Castigo', '1866-01-01', 'Romance Psicológico'),
    (5,'O Senhor dos Anéis', '1954-07-29', 'Fantasia Épica'),
    (6,'1984', '1949-06-08', 'Distopia'),
    (7,'O Sol é Para Todos', '1960-07-11', 'Ficção Legal'),
    (8,'Guerra e Paz', '1869-01-01', 'Romance Histórico'),
    (9,'O Grande Gatsby', '1925-04-10', 'Romance'),
    (10,'As Crônicas de Nárnia', '1950-10-16', 'Fantasia'),
    (11,'Os Miseráveis', '1862-04-03', 'Romance Histórico'),
    (12,'Drácula', '1897-05-26', 'Ficção Gótica'),
    (13,'Orgulho e Preconceito', '1813-01-28', 'Romance de Época'),
    (14,'A Montanha Mágica', '1924-01-01', 'Romance Filosófico'),
    (15,'A Metamorfose', '1915-10-20', 'Ficção Existencialista'),
    (16,'Moby Dick', '1851-11-14', 'Romance Aventura'),
    (17,'A Divina Comédia', '1320-01-01', 'Poesia Épica'),
    (18,'Ulisses', '1922-02-02', 'Romance Modernista'),
    (19,'Frankenstein', '1818-01-01', 'Ficção Científica'),
    (20,'O Pequeno Príncipe', '1943-04-06', 'Ficção Infantil'),
    (21,'O Hobbit', '1937-09-21', 'Fantasia Aventura'),
    (22,'Lolita', '1955-09-15', 'Ficção Dramática'),
    (23,'A Odisséia', '1800-01-01', 'Épico'),
    (24,'Cem Anos de Solidão', '1967-05-30', 'Realismo Fantástico'),
    (25,'O Estrangeiro', '1942-01-01', 'Romance Absurdo');

    INSERT INTO Autor (ID_Autor, Nome_Autor, Nacionalidade) VALUES
    (1,'George Orwell', 'Britânico'),
    (2,'J.D. Salinger', 'Americano'),
    (3,'Miguel de Cervantes', 'Espanhol'),
    (4,'Fiódor Dostoiévski', 'Russo'),
    (5,'J.R.R. Tolkien', 'Britânico'),
    (6,'George Orwell', 'Britânico'),
    (7,'Harper Lee', 'Americano'),
    (8,'Lev Tolstói', 'Russo'),
    (9,'F. Scott Fitzgerald', 'Americano'),
    (10,'C.S. Lewis', 'Britânico'),
    (11,'Victor Hugo', 'Francês'),
    (12,'Bram Stoker', 'Irlandês'),
    (13,'Jane Austen', 'Britânico'),
    (14,'Thomas Mann', 'Alemão'),
    (15,'Franz Kafka', 'Tcheco'),
    (16,'Herman Melville', 'Americano'),
    (17,'Dante Alighieri', 'Italiano'),
    (18,'James Joyce', 'Irlandês'),
    (19,'Mary Shelley', 'Britânico'),
    (20,'Antoine de Saint-Exupéry', 'Francês'),
    (21,'J.R.R. Tolkien', 'Britânico'),
    (22,'Vladimir Nabokov', 'Russo'),
    (23,'Homero', 'Grego'),
    (24,'Gabriel García Márquez', 'Colombiano'),
    (25,'Albert Camus', 'Francês');

    INSERT INTO Membros(ID_Membro, Nome_Membro, Endereco_Rua, Endereco_Cidade, Endereco_Estado, Endereco_CEP, Telefone, Email) VALUES
    (1, 'Ana Silva', 'Rua das Flores, 123', 'Franca', 'SP', '14400-000', '(16) 1234-5678', 'ana.silva@example.com'),
    (2, 'Bruno Lima', 'Avenida Brasil, 456', 'Franca', 'SP', '14401-000', '(16) 2345-6789', 'bruno.lima@example.com'),
    (3, 'Carla Souza', 'Rua São Paulo, 789', 'Franca', 'SP', '14402-000', '(16) 3456-7890', 'carla.souza@example.com'),
    (4, 'Daniel Oliveira', 'Avenida Rio de Janeiro, 101', 'Franca', 'SP', '14403-000', '(16) 4567-8901', 'daniel.oliveira@example.com'),
    (5, 'Elisa Pereira', 'Rua Minas Gerais, 202', 'Franca', 'SP', '14404-000', '(16) 5678-9012', 'elisa.pereira@example.com'),
    (6, 'Fabio Santos', 'Avenida Bahia, 303', 'Franca', 'SP', '14405-000', '(16) 6789-0123', 'fabio.santos@example.com'),
    (7, 'Gabriela Costa', 'Rua Ceará, 404', 'Franca', 'SP', '14406-000', '(16) 7890-1234', 'gabriela.costa@example.com'),
    (8, 'Henrique Martins', 'Avenida Pernambuco, 505', 'Franca', 'SP', '14407-000', '(16) 8901-2345', 'henrique.martins@example.com'),
    (9, 'Isabela Almeida', 'Rua Paraíba, 606', 'Franca', 'SP', '14408-000', '(16) 9012-3456', 'isabela.almeida@example.com'),
    (10, 'João Pedro', 'Avenida Paraná, 707', 'Franca', 'SP', '14409-000', '(16) 0123-4567', 'joao.pedro@example.com'),
    (11, 'Karina Fernandes', 'Rua Goiás, 808', 'Franca', 'SP', '14410-000', '(16) 1234-5678', 'karina.fernandes@example.com'),
    (12, 'Lucas Rodrigues', 'Avenida Mato Grosso, 909', 'Franca', 'SP', '14411-000', '(16) 2345-6789', 'lucas.rodrigues@example.com'),
    (13, 'Mariana Rocha', 'Rua Espírito Santo, 1010', 'Franca', 'SP', '14412-000', '(16) 3456-7890', 'mariana.rocha@example.com'),
    (14, 'Nelson Gomes', 'Avenida Sergipe, 1111', 'Franca', 'SP', '14413-000', '(16) 4567-8901', 'nelson.gomes@example.com'),
    (15, 'Olivia Teixeira', 'Rua Maranhão, 1212', 'Franca', 'SP', '14414-000', '(16) 5678-9012', 'olivia.teixeira@example.com'),
    (16, 'Paulo Cardoso', 'Avenida Rondônia, 1313', 'Franca', 'SP', '14415-000', '(16) 6789-0123', 'paulo.cardoso@example.com'),
    (17, 'Quênia Freitas', 'Rua Amapá, 1414', 'Franca', 'SP', '14416-000', '(16) 7890-1234', 'kenia.freitas@example.com'),
    (18, 'Renato Barros', 'Avenida Amazonas, 1515', 'Franca', 'SP', '14417-000', '(16) 8901-2345', 'renato.barros@example.com'),
    (19, 'Sofia Reis', 'Rua Acre, 1616', 'Franca', 'SP', '14418-000', '(16) 9012-3456', 'sofia.reis@example.com'),
    (20, 'Tiago Ribeiro', 'Avenida Alagoas, 1717', 'Franca', 'SP', '14419-000', '(16) 0123-4567', 'tiago.ribeiro@example.com'),
    (21, 'Ursula Lopes', 'Rua Tocantins, 1818', 'Franca', 'SP', '14420-000', '(16) 1234-5678', 'ursula.lopes@example.com'),
    (22, 'Vinicius Batista', 'Avenida Piauí, 1919', 'Franca', 'SP', '14421-000', '(16) 2345-6789', 'vinicius.batista@example.com'),
    (23, 'Wagner Souza', 'Rua Amazonas, 2020', 'Franca', 'SP', '14422-000', '(16) 3456-7890', 'wagner.souza@example.com'),
    (24, 'Xavier Mendes', 'Avenida Paraíba, 2121', 'Franca', 'SP', '14423-000', '(16) 4567-8901', 'xavier.mendes@example.com'),
    (25, 'Yasmin Oliveira', 'Rua Mato Grosso, 2222', 'Franca', 'SP', '14424-000', '(16) 5678-9012', 'yasmin.oliveira@example.com'),
    (26, 'Zélia Martins', 'Avenida Maranhão, 2323', 'Franca', 'SP', '14425-000', '(16) 6789-0123', 'zelia.martins@example.com'),
    (27, 'Arthur Silva', 'Rua Pernambuco, 2424', 'Franca', 'SP', '14426-000', '(16) 7890-1234', 'arthur.silva@example.com'),
    (28, 'Beatriz Costa', 'Avenida Rio de Janeiro, 2525', 'Franca', 'SP', '14427-000', '(16) 8901-2345', 'beatriz.costa@example.com'),
    (29, 'Cesar Gomes', 'Rua São Paulo, 2626', 'Franca', 'SP', '14428-000', '(16) 9012-3456', 'cesar.gomes@example.com'),
    (30, 'Diana Ferreira', 'Avenida Bahia, 2727', 'Franca', 'SP', '14429-000', '(16) 0123-4567', 'diana.ferreira@example.com'),
    (31, 'Eduardo Almeida', 'Rua Minas Gerais, 2828', 'Franca', 'SP', '14430-000', '(16) 1234-5678', 'eduardo.almeida@example.com'),
    (32, 'Fernanda Araújo', 'Avenida Espírito Santo, 2929', 'Franca', 'SP', '14431-000', '(16) 2345-6789', 'fernanda.araujo@example.com'),
    (33, 'Guilherme Duarte', 'Rua Goiás, 3030', 'Franca', 'SP', '14432-000', '(16) 3456-7890', 'guilherme.duarte@example.com'),
    (34, 'Helena Nascimento', 'Avenida Mato Grosso, 3131', 'Franca', 'SP', '14433-000', '(16) 4567-8901', 'helena.nascimento@example.com'),
    (35, 'Igor Carvalho', 'Rua Amapá, 3232', 'Franca', 'SP', '14434-000', '(16) 5678-9012', 'igor.carvalho@example.com'),
    (36, 'Julia Pinto', 'Avenida Rondônia, 3333', 'Franca', 'SP', '14435-000', '(16) 6789-0123', 'julia.pinto@example.com'),
    (37, 'Leandro Silva', 'Rua Tocantins, 3434', 'Franca', 'SP', '14436-000', '(16) 7890-1234', 'leandro.silva@example.com'),
    (38, 'Marcela Souza', 'Avenida Alagoas, 3535', 'Franca', 'SP', '14437-000', '(16) 8901-2345', 'marcela.souza@example.com'),
    (39, 'Nathalia Rodrigues', 'Rua Paraná, 3636', 'Franca', 'SP', '14438-000', '(16) 9012-3456', 'nathalia.rodrigues@example.com'),
    (40, 'Otávio Almeida', 'Avenida Amazonas, 3737', 'Franca', 'SP', '14439-000', '(16) 0123-4567', 'otavio.almeida@example.com');

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

    INSERT INTO Funcionario (ID_Funcionario, Nome_Funcionario, Cargo, Data_Contratacao) VALUES
    (1, 'Alice Santos', 'Bibliotecária', '2020-01-15'),
    (2, 'Bruno Lima', 'Assistente de Biblioteca', '2019-03-22'),
    (3, 'Carla Oliveira', 'Gerente de Biblioteca', '2018-06-10'),
    (4, 'Daniel Silva', 'Técnico de Informação', '2021-07-05'),
    (5, 'Elisa Pereira', 'Bibliotecária', '2022-09-18'),
    (6, 'Fabio Almeida', 'Assistente de Biblioteca', '2017-11-23'),
    (7, 'Gabriela Costa', 'Analista de Sistemas', '2020-05-12'),
    (8, 'Henrique Martins', 'Auxiliar de Biblioteca', '2021-08-30'),
    (9, 'Isabela Almeida', 'Bibliotecária', '2019-04-14'),
    10, 'João Pedro', 'Técnico de Informação', '2018-12-01'),
    (11, 'Karina Fernandes', 'Gerente de Tecnologia', '2017-10-17'),
    (12, 'Lucas Rodrigues', 'Bibliotecário', '2021-03-25'),
    (13, 'Mariana Rocha', 'Assistente de Biblioteca', '2022-01-09'),
    (14, 'Nelson Gomes', 'Bibliotecário', '2018-02-26'),
    (15, 'Olivia Teixeira', 'Assistente de Biblioteca', '2021-05-19'),
    (16, 'Paulo Cardoso', 'Técnico de Informação', '2019-09-21'),
    (17, 'Quênia Freitas', 'Bibliotecária', '2020-11-04'),
    (18, 'Renato Barros', 'Assistente de Biblioteca', '2021-06-28'),
    (19, 'Sofia Reis', 'Analista de Sistemas', '2018-07-15'),
    (20, 'Tiago Ribeiro', 'Gerente de Operações', '2017-08-12');



## 6. CRUD
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - create.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - read.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - update.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - delete.png"/>

## 7. RELATÓRIOS
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 1.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 2.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 3.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 4.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 5.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 6.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 7.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 8.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 9.png"/>
<img src="https://raw.githubusercontent.com/mluizabss/prova-BD/main/imgs/prova-BD - 10.png"/>




 
