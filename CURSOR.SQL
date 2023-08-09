begin tran 
	
		--VARIAVEIS DO CURSOR
		DECLARE @IdCobertura int, @IdBilheteValeTransporte int, @ValorBilhete decimal (18,2)

		--CRIANDO CURSOR
		DECLARE cur_Coberturas CURSOR
		FOR select distinct IdCobertura, IdBilheteValeTransporte, ValorBilhete
		from requisicao.CoberturaValeTransporte
		where tipodirecao is not null 
		GROUP BY IDCOBERTURA, IdBilheteValeTransporte, ValorBilhete
		order by IdCobertura, IdBilheteValeTransporte, ValorBilhete

		-- ABRINDO CURSOR
		OPEN cur_Coberturas;

		-- SELECIONAR DADOS
		FETCH NEXT FROM cur_Coberturas
		into @IdCobertura, @IdBilheteValeTransporte, @ValorBilhete;

		--iteração entre os dados retornados pelo cursor
		WHILE @@FETCH_STATUS = 0
		BEGIN
			--PEGAR OS PROXIMOS DADOS
			SELECT @IdCobertura, @IdBilheteValeTransporte, @ValorBilhete
			

			declare @count int, @ultimaCobertura int;

			CREATE TABLE #IdCoberturaValeTransporte (idCoberturaValeTransporte int, id int identity);

			

			SELECT @count = count(*) FROM requisicao.CoberturaValeTransporte 
			WHERE IdCobertura = @IdCobertura and IdBilheteValeTransporte = @IdBilheteValeTransporte and ValorBilhete = @ValorBilhete

			insert #IdCoberturaValeTransporte
			SELECT IdCoberturaValeTransporte FROM requisicao.CoberturaValeTransporte 
			WHERE IdCobertura = @IdCobertura and IdBilheteValeTransporte = @IdBilheteValeTransporte and ValorBilhete = @ValorBilhete

			select * from #IdCoberturaValeTransporte


			IF(@count > 1)
			BEGIN
				delete requisicao.CoberturaValeTransporte where IdCoberturaValeTransporte in (select IdCoberturaValeTransporte from #IdCoberturaValeTransporte where id > 1)
				update requisicao.CoberturaValeTransporte set Quantidade = @count, TipoDirecao = NULL  where IdCoberturaValeTransporte in (select IdCoberturaValeTransporte from #IdCoberturaValeTransporte where id = 1)
			END
			ELSE
			BEGIN
				UPDATE requisicao.CoberturaValeTransporte set Quantidade = @count, TipoDirecao = NULL  where IdCoberturaValeTransporte in (select IdCoberturaValeTransporte from #IdCoberturaValeTransporte where id = 1)
			END

			DROP TABLE  #IdCoberturaValeTransporte


			-- SELECIONAR DADOS NOVOS
			FETCH NEXT FROM cur_Coberturas
			into @IdCobertura, @IdBilheteValeTransporte, @ValorBilhete;


		END

		--FECHANDO E DESALOCANDO O CURSOR
		CLOSE cur_Coberturas;
		DEALLOCATE cur_Coberturas;


		--select idcobertura, IdBilheteValeTransporte, count(*) as soma 
		--from requisicao.CoberturaValeTransporte 
		--where tipodirecao is not null 
		--GROUP BY IdCobertura,IdBilheteValeTransporte 
		--order by  IdCobertura, IdBilheteValeTransporte, soma

		--SELECT * FROM requisicao.CoberturaValeTransporte where IdCobertura = 563475

ROLLBACK


--SELECT * FROM requisicao.CoberturaValeTransporte
