-- Especifica um conjunto de resultados nomeado temporário, conhecido como uma CTE (expressão de tabela comum).
-- Ela é derivada de uma consulta simples e definida no escopo de execução de uma única instrução 
-- SELECT, INSERT, UPDATE, DELETE ou MERGE. Esta cláusula também pode ser usada em uma instrução 
-- CREATE VIEW como parte da instrução SELECT que a define. Uma expressão de tabela comum pode incluir referências a si mesma. 
-- É o que chamamos de expressão de tabela comum recursiva.


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

-------------------------------------------------------------------------------------------
-- Define the CTE expression name and column list.
WITH Sales_CTE (SalesPersonID, SalesOrderID, SalesYear)
AS
-- Define the CTE query.
(
    SELECT SalesPersonID, SalesOrderID, YEAR(OrderDate) AS SalesYear
    FROM Sales.SalesOrderHeader
    WHERE SalesPersonID IS NOT NULL
)
-- Define the outer query referencing the CTE name.
SELECT SalesPersonID, COUNT(SalesOrderID) AS TotalSales, SalesYear
FROM Sales_CTE
GROUP BY SalesYear, SalesPersonID
ORDER BY SalesPersonID, SalesYear;
