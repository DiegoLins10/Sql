USE [Beneflex-Sanofi]


BEGIN TRAN

		DECLARE @idGradeEstagiario int;

		SELECT TOP 1 @idGradeEstagiario = IdGrade FROM CADASTRO.Grade WHERE CodigoFolha LIKE '%Local%'

		
--		SELECT distinct f.Matricula
--		FROM requisicao.Cobertura c
--		INNER JOIN configuracao.OpcaoBeneficio o on c.IdOpcaoBeneficio = o.IdOpcaoBeneficio
--		INNER JOIN cadastro.status s on c.idstatus = s.IdStatus
--		INNER JOIN cadastro.Funcionario F ON c.IdFuncionario = f.IdFuncionario
--		INNER JOIN cadastro.Fornecedor forne on o.IdFornecedor = forne.IdFornecedor
--		where f.IdFuncionario in (
--				SELECT f.IdFuncionario FROM cadastro.Funcionario f
--				INNER JOIN requisicao.Cobertura C ON f.IdFuncionario = c.IdFuncionario
--				WHERE f.IdGrade = @idGradeEstagiario AND f.DataDesligamento is null
--				)
--				and
--		o.IdOpcaoBeneficio not in (
--			SELECT ro.IdOpcaoBeneficio--, o.Nome , ro.Padrao
--			FROM configuracao.RegraOpcaoBeneficio ro 
--			INNER JOIN configuracao.OpcaoBeneficio o on ro.IdOpcaoBeneficio = o.IdOpcaoBeneficio
--			where ro.IdGrupo IN (
--SELECT IdGrupo FROM configuracao.RegraGrupo RG
--inner join cadastro.grade g on rg.IdGrade = g.IdGrade
--WHERE g.Nome like '%Local%' AND IdVinculoEmpregaticio = 3)
--				) 

		
		DECLARE @IdCoberturas TABLE (idCobertura int primary key);

		-- retorna todas as coberturas que serão removidas
		INSERT @IdCoberturas
		SELECT IdCobertura
		FROM requisicao.Cobertura c
		INNER JOIN configuracao.OpcaoBeneficio o on c.IdOpcaoBeneficio = o.IdOpcaoBeneficio
		INNER JOIN cadastro.status s on c.idstatus = s.IdStatus
		INNER JOIN cadastro.Funcionario F ON c.IdFuncionario = f.IdFuncionario
		INNER JOIN cadastro.Fornecedor forne on o.IdFornecedor = forne.IdFornecedor
		where f.IdFuncionario in (
				SELECT f.IdFuncionario FROM cadastro.Funcionario f
				INNER JOIN requisicao.Cobertura C ON f.IdFuncionario = c.IdFuncionario
				WHERE f.IdGrade = @idGradeEstagiario AND f.DataDesligamento is null
				)
				and
		o.IdOpcaoBeneficio not in (
			SELECT ro.IdOpcaoBeneficio--, o.Nome , ro.Padrao
			FROM configuracao.RegraOpcaoBeneficio ro 
			INNER JOIN configuracao.OpcaoBeneficio o on ro.IdOpcaoBeneficio = o.IdOpcaoBeneficio
			where ro.IdGrupo IN (
SELECT IdGrupo FROM configuracao.RegraGrupo RG
inner join cadastro.grade g on rg.IdGrade = g.IdGrade
WHERE g.Nome like '%Local%' AND IdVinculoEmpregaticio = 3)
			--and ro.Padrao = 1
				) 



		declare @count int = 0, @countTemporaryTable int;	
		
		SELECT @countTemporaryTable = COUNT(idCobertura) from @IdCoberturas

		-- while feito para deletar por partes
		WHILE (@count <= @countTemporaryTable)
		BEGIN

		-- separo as 10 coberturas que serão deletadas
		DECLARE @SepateCoberturaTentoTen TABLE (idCobertura int primary key);

		insert @SepateCoberturaTentoTen
		select top 10 idCobertura from @IdCoberturas order by idCobertura

		select * from @SepateCoberturaTentoTen

		print CONVERT(varchar(20), @count)  + ' de ' + CONVERT(varchar(20), @countTemporaryTable)


		--deleta as coberturas
		delete from requisicao.CoberturaValor 
		WHERE IdCobertura in (SELECT TOP 10 IdCobertura	 from @SepateCoberturaTentoTen)
		
		delete from layout.ControleSaida 
		WHERE IdCobertura in (SELECT TOP 10 IdCobertura	 from @SepateCoberturaTentoTen)

		delete from requisicao.LinhaDoTempo 
		WHERE IdCobertura in (SELECT TOP 10 IdCobertura	 from @SepateCoberturaTentoTen)
		
		delete from requisicao.Movimentacao 
		WHERE IdCobertura in (SELECT TOP 10 IdCobertura	 from @SepateCoberturaTentoTen)
		
		DELETE from requisicao.CoberturaDependente 
		WHERE IdCobertura in (SELECT TOP 10 IdCobertura	 from @SepateCoberturaTentoTen)

		DELETE from requisicao.Cobertura 
		WHERE IdCobertura in (SELECT TOP 10 IdCobertura	 from @SepateCoberturaTentoTen)
		
		delete from @IdCoberturas
		where idCobertura in (SELECT TOP 10 IdCobertura	 from @SepateCoberturaTentoTen)

		-- limpa as tables temporarias
		delete d from @IdCoberturas d
		inner join @SepateCoberturaTentoTen s on d.idCobertura = s.idCobertura

		delete @SepateCoberturaTentoTen

		--removendo de 10 em 10
		set @count = @count + 10;
		END
ROLLBACK


