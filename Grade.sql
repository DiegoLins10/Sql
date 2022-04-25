use [Beneflex-Sanofi]

-- adiciona a coluna antes da transaction se não vai dar erro
--ALTER TABLE cadastro.funcionario
--ADD IdGrade int null


-- adicionando os IdGrade
BEGIN TRAN

DECLARE @IdFuncionario int, @matricula varchar(50), @idGrade int, @count int, @quantidadeFuncionario int

-- recupera a quantidade de funcionarios que existem
select IdFuncionario from cadastro.Funcionario
set @quantidadeFuncionario = @@ROWCOUNT

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
(select prIn.Matricula, g.IdGrade, f.IdFuncionario from processo.IntegracaoArquivoDadosFuncionario prIn
 inner join cadastro.Funcionario f on TRIM(prIn.Matricula) like TRIM(f.Matricula)
 inner join cadastro.Grade g on TRIM(prIn.NomeGrade) like TRIM(g.Nome))

set @count = 1

WHILE (@count < @quantidadeFuncionario)
BEGIN
	select @matricula = matricula, @idGrade = idGrade, @IdFuncionario = idFuncionario 
	from #Grade where posicao = @count

	-- atualizando o idGrade de todos os funcionarios
	UPDATE cadastro.Funcionario set IdGrade = @idGrade where IdFuncionario = @IdFuncionario

	set @count = @count + 1

END


-- 314
select * from cadastro.Funcionario where idgrade = 72
DROP TABLE #Grade
ROLLBACK;


