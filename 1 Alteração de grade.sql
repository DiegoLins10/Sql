use [Beneflex-Sanofi]
GO

-- adicione a coluna antes da transaction se não vai dar erro

ALTER TABLE cadastro.funcionario ADD IdGrade int null
GO

-- adicionando os IdGrade
BEGIN TRAN

	DECLARE @IdFuncionario int, @matricula varchar(50), @idGrade int, @count int, @quantidadeFuncionario int

	-- recupera a quantidade de funcionarios que existem
	select @quantidadeFuncionario = count(*) from cadastro.Funcionario

	--cria a tabela que vai recuperar a idGrade
	CREATE TABLE #Grade
		(
		 posicao int primary key identity,
		 matricula varchar(50),
		 idGrade int,
		 idFuncionario int
		)

	-- recupero o nome da grade que veio na integração e vinculo ao funcionario e os IdGrade já cadastrados
	insert into #Grade(matricula, idGrade, idFuncionario)
	( select prIn.Matricula, g.IdGrade, f.IdFuncionario
	 from cadastro.Funcionario f
	 INNER join (
		SELECT MAX (IdIntegracaoArquivoDadosFuncionario) id, Matricula, NomeGrade
		FROM processo.IntegracaoArquivoDadosFuncionario algo
		GROUP BY algo.Matricula, algo.NomeGrade
	 ) AS prIn ON TRIM(prIn.Matricula) like TRIM(f.Matricula)
	 INNER join cadastro.Grade g on TRIM(prIn.NomeGrade) like TRIM(g.Nome))


	set @count = 1

	WHILE (@count < @quantidadeFuncionario)
	BEGIN
	
		select @matricula = matricula, @idGrade = idGrade, @IdFuncionario = idFuncionario 
		from #Grade where posicao = @count

		IF(@idGrade IS NOT NULL)
		BEGIN
			-- atualizando o idGrade de todos os funcionarios
			UPDATE cadastro.Funcionario set IdGrade = @idGrade where IdFuncionario = @IdFuncionario
		END

		set @count = @count + 1

	END

	--select * from cadastro.Funcionario where idgrade = 72
	DROP TABLE #Grade

IF @@ERROR = 0
COMMIT;
ELSE
ROLLBACK;



