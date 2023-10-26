/*
This query text was retrieved from showplan XML, and may be truncated.
*/


GO  



-- Create a nonclustered index called IX_ProductVendor_VendorID   
-- on the Purchasing.ProductVendor table using the BusinessEntityID column.   
CREATE NONCLUSTERED INDEX IX_ProductVendor_VendorID   
    ON requisicao.movimentacao (IdCoberturaDependente);   

CREATE NONCLUSTERED INDEX AlteracaoFuncionarioCampos  
    ON historico.AlteracaoFuncionario (IdFuncionario) INCLUDE (DataAlteracao, Logradouro, NumeroLogradouro, Bairro, Cep, IdLocal);  

GO

DECLARE @DataLimiteMovimentacoes DATE = CAST('2023-02-27' AS DATE);

							--MOVIMENTACAO DE DADOS CADASTRAIS ABAIXO
							
SELECT 
							f.IdFuncionario, c.IdCobertura, c.InicioVigencia, c.TerminoVigencia, 
							m.DataCriacao, m.TipoMovimentacao AS TipoDaMovimentacao, m.IdMovimentacao, m.IdCoberturaDependente, NULL AS IdDependente,
							u.CPF AS Cpf, u.Nome AS NomeAssociado, u.DataNascimento, u.Sexo, f.IdEstadoCivil, d.DataUniao,
							ob.CodigoOperadora AS CodPlano, u.NomeMae, 'T' AS TipoAssociado,
							3 TipoMovimentacao,
						    m.datacriacao DataMovimentacao,
						    '' NumAssociado,
						    CASE WHEN c.cartao IS NULL THEN '' ELSE c.cartao END AS NumAssociadoTitular,
						    '00' AS CodDependente,
						     CASE 
								WHEN mot.Nome LIKE '%Demissão%' AND f.DataDesligamento IS NOT NULL THEN 1 
								WHEN mot.Nome LIKE '%aposentadoria%' AND f.DataDesligamento IS NOT NULL THEN 31 
								WHEN mot.Nome LIKE '%falecimento%' AND f.DataDesligamento IS NOT NULL THEN 80 
								WHEN mot.IdMotivoDesligamento IS NOT NULL AND f.DataDesligamento IS NOT NULL THEN 99
							END AS CodMotivoExclusao,
						    CASE
		    					WHEN f.DataDesligamento IS NOT NULL THEN FORMAT(f.DataDesligamento, 'ddMMyyyy')
							    ELSE FORMAT(c.TerminoVigencia, 'ddMMyyyy')
						    END AS DataDemissao
							FROM seguranca.Usuario u 
							INNER JOIN cadastro.Funcionario f ON f.IdUsuario = u.IdUsuario
							INNER JOIN requisicao.Cobertura c ON c.IdFuncionario = f.IdFuncionario
							INNER JOIN requisicao.Movimentacao m ON m.IdCobertura = c.IdCobertura 
							INNER JOIN cadastro.Status cs ON cs.IdStatus = c.IdStatus
							INNER JOIN configuracao.OpcaoBeneficio ob ON c.IdOpcaoBeneficio = ob.IdOpcaoBeneficio
							LEFT JOIN cadastro.MotivoDesligamento mot ON mot.IdMotivoDesligamento = f.IdMotivoDesligamento
							LEFT  JOIN cadastro.Dependente d ON d.IdFuncionario = f.IdFuncionario 
								AND d.IdGrauParentesco = 2
							WHERE cs.TipoWorkflow in (2, 1)
								AND ob.IdFornecedor = 24 AND ob.IdBeneficio = 1
								AND m.IdCoberturaDependente IS NULL
								AND u.IdUsuario in (

								--DECLARE @DataLimiteMovimentacoes DATE = CAST('2023-02-27' AS DATE);

								SELECT u.IdUsuario FROM seguranca.Usuario U
								INNER JOIN cadastro.Funcionario F ON U.IdUsuario = F.IdUsuario
								INNER JOIN historico.AlteracaoUsuario had on u.IdUsuario =  had.idUsuario and YEAR(had.DataAlteracao) = YEAR(@DataLimiteMovimentacoes) AND MONTH(had.DataAlteracao) = MONTH(@DataLimiteMovimentacoes)
								INNER JOIN historico.AlteracaoFuncionario alf on f.IdFuncionario = alf.IdFuncionario and YEAR(alf.DataAlteracao) = YEAR(@DataLimiteMovimentacoes) AND MONTH(alf.DataAlteracao) = MONTH(@DataLimiteMovimentacoes)
								WHERE 															
									had.nome != u.Nome
									or had.nomesocial != u.NomeSocial
									or had.cpf != u.CPF
									or had.DataNascimento != u.DataNascimento
									or had.Sexo != u.Sexo
									or alf.logradouro != f.Logradouro
									or alf.NumeroLogradouro != f.NumeroLogradouro
									or alf.Bairro != f.Bairro
									or alf.CEP != f.CEP
									or alf.IdLocal != f.IdLocal	
									GROUP BY u.IdUsuario, had.DataAlteracao, alf.DataAlteracao
								)

GO
			-- Find an existing index named IX_ProductVendor_VendorID and delete it if found.   
IF EXISTS (SELECT name FROM sys.indexes  
            WHERE name = N'IX_ProductVendor_VendorID')   
    DROP INDEX IX_ProductVendor_VendorID ON requisicao.movimentacao;   
GO  

IF EXISTS (SELECT name FROM sys.indexes  
            WHERE name = N'AlteracaoFuncionarioCampos')   
    DROP INDEX AlteracaoFuncionarioCampos ON historico.alteracaoFuncionario;   
GO  					
 





