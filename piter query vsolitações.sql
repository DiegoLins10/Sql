DECLARE @IdOpcaoBeneficio VARCHAR

SELECT
       @IdOpcaoBeneficio = rs.Valor
FROM
       requisicao.RespostaSolicitacao rs 
INNER JOIN
       configuracao.Campo ca ON ca.IdCampo = rs.IdCampo
WHERE
       rs.IdSolicitacao = 43352
and ca.Nome = 'IDOPCAOBENEFICIO'


select DISTINCT so.IdSolicitacao  as 'Cód Solicitação'
             , fi.CodigoFolha                  as 'Cód Filial'            
             , solicitante.Nome                as 'Solicitante'
             , ob.Nome                                as 'Beneficio'
             , ts.Nome                                as 'Tipo Solicitacao' 
             , CASE   
                    WHEN respSo.TipoAcao = 1 THEN 'Inclusão'
                    WHEN respSo.TipoAcao = 2 THEN 'Exclusão'   
                    WHEN respSo.TipoAcao = 3 THEN 'Alteração'   
                    WHEN respSo.TipoAcao = 4 THEN 'Bilhete Ida'
                    WHEN respSo.TipoAcao = 5 THEN 'Bilhete Volta'   
                    WHEN respSo.TipoAcao = 6 THEN 'Manter - Atualizar'   
               END                                    as 'Ação'
             , Fu.Matricula                           as 'Matricula'
             , us.Nome                                as 'Funcionário'
             , CAST ((CONVERT(VARCHAR(10), fu.DataAdmissao, 103)) AS VARCHAR(200)) as 'Dt Admissão'
             , st.Nome                                as 'Status'
             , a.AnoMes                               as 'Ano mês '
             , CAST ((CONVERT(VARCHAR(10), so.DataCriacao, 103)) AS VARCHAR(200))      as 'Dt solicitação'
             , CAST ((CONVERT(VARCHAR(10), so.DataAlteracao, 103)) AS VARCHAR(200)) as 'Dt Alteração'
             , usResponsavel.Nome       as 'Responsavel'
             , fo.Nome                                as 'Fornecedor'
FROM seguranca.usuario us
       inner join cadastro.Funcionario fu on us.idUsuario = fu.IdUsuario
       inner join cadastro.Empresa e on fu.idempresa = e.IdEmpresa
       inner join requisicao.solicitacao so on fu.idfuncionario = so.IdFuncionario
       inner join cadastro.Status st on so.idstatus = st.IdStatus
       inner join configuracao.RegraSolicitacao regras on so.IdRegraSolicitacao = regras.IdRegraSolicitacao
       inner join cadastro.TipoSolicitacao ts on regras.IdTipoSolicitacao = ts.IdTipoSolicitacao
       inner join requisicao.RespostaSolicitacao respSo on so.idsolicitacao = respSo.IdSolicitacao
       inner join cadastro.Beneficio b on respSo.idbeneficio = b.idbeneficio
       left join configuracao.OpcaoBeneficio ob on b.IdBeneficio = ob.IdBeneficio-- mexer here
                                                  and ob.IdOpcaoBeneficio = @IdOpcaoBeneficio
       
       inner join configuracao.Ambiente a on 2 = a.IdAmbiente
       inner join seguranca.Usuario solicitante on so.IdUsuarioResponsavel = solicitante.IdUsuario
       inner join seguranca.Usuario usResponsavel on so.IdUsuarioResponsavel = usResponsavel.IdUsuario
       inner join cadastro.Filial fi on fi.IdFilial = fu.IdFilial
       left join cadastro.Fornecedor fo on ob.IdFornecedor = fo.IdFornecedor
WHERE 
       NULLIF(respSo.Id, 0) IS NULL
--AND    so.IdRegraSolicitacao <> 2022
       --@IdAmbiente = US.IdAmbiente 
       --and (fi.IdFilial IN (SELECT * FROM relatorio.ToList(@Filial))
       --and st.IdStatus IN (SELECT * FROM relatorio.ToList(@Status))
       --and ts.IdTipoSolicitacao IN (SELECT * FROM relatorio.ToList(@TipoSolicitacao)))

	    select *
	   from requisicao.RespostaSolicitacao
	   where IdSolicitacao = 43352
