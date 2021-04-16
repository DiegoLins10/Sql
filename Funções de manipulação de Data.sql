--DATEADD (parte, numero, data)	-- adiciona um valor a parte de uma data
Select DATEADD(DD, 5, GETDATE())   -- Adiciona 5 dias da data atual
Select DATEADD(DD, -5, GETDATE())  -- Subtrai 5 dias da data atual
Select DATEADD(MM, 2, GETDATE())   -- Adiciona 2 meses da data atual
Select DATEADD(MM, -2, GETDATE())  -- Subtrai 2 meses da data atual

--DATEDIFF (parte, data inicial, data final)	-- Subtrai a data inicial da data final, indicando o resultado na unidade definida em "parte"
Select DATEDIFF(DD, '20010214', GETDATE())		-- mostra a diferença em dias entre as duas datas

--GETDATE()	-- retorna a data atual do sistema
Select GETDATE()

--DATENAME (parte, data)	-- retorna o nome da parte de uma data
Select DATENAME(YY, GETDATE())  -- Retorna o Ano
Select DATENAME(dd, GETDATE())  -- Retorna o Dia
Select DATENAME(mm, GETDATE())  -- Retorna o mês
Select DATENAME(dw, GETDATE())  -- Retorna o Dia da Semana

--DATEPART(parte, data)	-- retorna a parte de uma data
Select DATEPART(YY, GETDATE())  -- Retorna o Ano
Select DATEPART(dd, GETDATE())  -- Retorna o Dia
Select DATEPART(mm, GETDATE())  -- Retorna o mês
Select DATEPART(dw, GETDATE())  -- Retorna o Dia da Semana
