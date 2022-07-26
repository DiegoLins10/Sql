BEGIN TRAN

declare @recuperarId table(id int)
declare @id int

-- ADICIONA APLICATIVO;
INSERT INTO [seguranca].[Aplicativo]
( [Nome], [Rota], [IdAmbiente], 
[Admin], [Icone], [IdStatus], [PowerBI],
[NotificacaoSolicitacao] ,[NotificacaoBeneficio])
OUTPUT inserted.IdAplicativo  into @recuperarId --recuperar ultimo id no insert
VALUES
('Histórico', '/historico', 1, 1, 'app-solicitacoes', 33, null, 0,0)

select top 1 @id = id from @recuperarId -- armazena na variavel

insert into seguranca.PerfilAplicativo values (5, @id)

ROLLBACK
