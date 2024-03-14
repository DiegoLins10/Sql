DECLARE @Condicao VARCHAR(MAX);
DECLARE @Parametro INT = 1; -- Exemplo de parâmetro que determina a condição

-- Construir a condição WHERE dinamicamente com base no parâmetro
IF @Parametro = 1
    SET @Condicao = 'Campo = Valor1';
ELSE
    SET @Condicao = 'Campo = Valor2';

-- Consulta com a condição WHERE dinâmica
DECLARE @SQLQuery NVARCHAR(MAX);
SET @SQLQuery = 'SELECT * FROM Tabela WHERE ' + @Condicao;

-- Executar a consulta dinâmica
EXEC sp_executesql @SQLQuery;
