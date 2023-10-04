With ClientesAtivos AS
    (
            SELECT Id from Client WHERE IsActive = 1
    ),
    ClientesInativos AS
    (
            SELECT Id from Client WHERE IsActive = 0
    )
    SELECT * FROM ClientesAtivos
    UNION ALL
    SELECT * FROM ClientesInativos


-----------------------------------------------------------------
-- Cria tabela base
CREATE TABLE Empregado
(
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    id_supervisor INT NULL 
        CONSTRAINT fk_productSales_pid 
        FOREIGN KEY REFERENCES Empregado(id)    
);

-- Popula a tabela (reparem na sintaxe do insert, 
-- só é permitida no SQL Server 2008 ou superior).
INSERT INTO Empregado VALUES 
(1, 'Thiago Zavaschi', 'Diretor', null),
(2, 'Angelina Jolie', 'Gerente de Vendas', 1),
(3, 'Megan Fox', 'Gerente de Marketing', 1),
(4, 'Uma Thurman', 'Vendedor', 2),
(5, 'Jessica Alba', 'Vendedor', 2),
(6, 'Julia Roberts', 'Estagiário', 3);

;WITH hierarquia(id, nome, cargo, id_supervisor, nivel_hierarquia)
AS
(
    SELECT  id, nome, cargo, id_supervisor, 1 as nivel_hierarquia
    FROM Empregado
    WHERE id_supervisor IS NULL 
    -- Perceba que aqui no âncora temos como retorno somente o diretor.
    UNION ALL -- Ligação para a recursão
    SELECT e.id, e.nome, e.cargo, e.id_supervisor, nivel_hierarquia + 1 
    FROM Empregado e
    INNER JOIN hierarquia h ON h.id= e.id_supervisor 
)
SELECT * FROM hierarquia
