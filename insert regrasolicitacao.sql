BEGIN TRANSACTION;

DECLARE @count INT, @length INT, @idGrupo INT, @linhaGrupo int, @lastId int

select * from cadastro.Grupo
set @length =  @@ROWCOUNT;

set @count = 1;

WHILE(@count <= @length)--1584 linhas
BEGIN

SELECT @idGrupo = IdGrupo from cadastro.grupo where IdGrupo = @count
SELECT @lastId = IdRegraSolicitacao from configuracao.RegraSolicitacao
set @lastId = @lastId + 1
	INSERT INTO [configuracao].[RegraSolicitacao]
           ([IdRegraSolicitacao]
           ,[IdCategoriaBeneficio]
           ,[IdGrupo]
           ,[Nome]
           ,[Relatorio]
           ,[AprovaAutomatico]
           ,[ConfirmaLocal]
           ,[RevisaDependentes]
           ,[IdTipoSolicitacao]
           ,[TipoDistribuicao]
           ,[ValorDistribuicao]
           ,[IntervaloDia]
           ,[IdTipoReembolso]
           ,[PermiteExclusaoDependente]
           ,[PermiteNaoOptar]
           ,[PermiteInclusaoDependente]
           ,[RelatorioOperadora]
           ,[IntervaloParaSolicitar]
           ,[IntervaloEntreSolicitacao]
           ,[PontoLimite]
           ,[GuidRegraSolicitacao]
           ,[LimiteDowGrade]
           ,[LimiteUpGrade]
           ,[PermanenciaUpGrade]
           ,[PermiteAlterarFornecedor]
           ,[PermanenciaDowGrade]
           ,[IdPacoteBeneflex]
           ,[ConversaoEmReal]
           ,[IdBeneficio]
           ,[PontoExtra]
           ,[TipoContributario]
           ,[PermiteSolicitacaoSemSelecionarPlano])
     VALUES
           (@lastId
           ,null
           ,@idGrupo
           ,'Alteração Dependente'
           ,'Alteracao 1'
           ,0
           ,0
           ,0
           ,8
           ,null
           ,null
           ,null
           ,null
           ,1
           ,1
           ,1
           ,null
           ,null
           ,null
           ,null
           ,NEWID()
           ,null
           ,null
           ,null
           ,null
           ,null
           ,null
           ,null
           ,null
           ,null
           ,0
           ,null)
	print @count;
	print @idgrupo;
	print @lastId;

	set @count = @count + 1
END
IF @@ERROR = 0
COMMIT;
ELSE
ROLLBACK;




--select *
--from configuracao.RegraSolicitacao r 
--where IdTipoSolicitacao = 34 -- 8 alteração





