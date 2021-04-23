-- OBJETIVO EXPORTAR RELATÓRIO DE "FUNCIONARIOS POR FILIAL"

       -- CPF, MATRICULA, NOME, FILIAL, CARGO

 

 a

----------------------------------------------

 

-- Configurar um processo que exporte um relatório (formato xls).

       select * from processo.ConfiguracaoProcesso where idconfiguracaoprocesso = 13
	   select * from processo.ConfiguracaoProcesso where idconfiguracaoprocesso in (88, 13)
	   --select * from processo.ParametroProcesso where idconfiguracaoprocesso = 13
	   --Set IDENTITY_INSERT processo.ConfiguracaoProcesso ON
	   --SET IDENTITY_INSERT processo.ConfiguracaoProcesso ON
	   insert into processo.ConfiguracaoProcesso(IdConfiguracaoProcesso,IdAmbiente,	Nome, Descricao, Relatorio, IdMensagemProcessamento, TipoArquivo, Separador, Ativo, PrefixoArquivo, DiretorioImportacao,	DiretorioExportacao, DiretorioProcessado, DiretorioErro, TipoConfiguracaoProcesso, ProcedureExecucao, TipoEntidade, ProcessoEntidadeModalidade, PermiteEstorno) 
	   values(88, 2, 'Teste Exportar Func', 'Exportar dados fun', NULL, NULL, 2, ';', 1, NULL, NULL, 'C:\Users\diego.lins\Desktop\Emprego\Layout', null, null, 2, 'processo.funcionarioPorFilialTeste', 6, 7, 1)


--Configurar um parâmetro "Filial" que será listado todas as filiais em tela

--criação linha parametro processo
       select * from processo.ParametroProcesso where idconfiguracaoprocesso in (88,13)
	   insert into processo.ParametroProcesso(IdParametroProcesso,IdConfiguracaoProcesso,Nome, TipoParametro, Interno, ValorInterno, Identificador) values(138, 88, 'Filial', 5, 0, null, null)
	  
-- criação linhas dominio
       select * from processo.DominioParametroProceso where idparametroprocesso = 45

	   SET IDENTITY_INSERT processo.DominioParametroProceso ON
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(762, 138, 'Betim', 5)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(763, 138, 'Escritório Sede', 1)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(764, 138, 'Feira de Santan', 8)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(765, 138, 'Goiana', 9)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(766, 138, 'Itajaí', 6)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(767, 138, 'Jundiaí DI', 3)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(768, 138, 'Manaus', 10)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(769, 138, 'Jundiaí TP', 2)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(770, 138, 'Piracicaba', 4)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(771, 138, 'São Leopoldo', 7)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(772, 138, 'Rio Negro', 11)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(773, 138, 'Horizonte', 12)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(774, 138, 'Monte Alegre', 13)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(775, 138, 'Otacílio Costa', 14)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(776, 138, 'Correia Pinto', 15)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(777, 138, 'Angatuba', 16)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(778, 138, 'Lages I', 17)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(779, 138, 'Lages II', 18)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(780, 138, 'Goiana Sacos', 19)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(781, 138, 'Ortigueira', 20)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(782, 138, 'Curiuva', 21)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(783, 138, 'Rio Branco', 22)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(784, 138, 'Candido Abreu', 23)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(785, 138, 'Florestal M.A', 24)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(786, 138, 'Reserva', 25)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(787, 138, 'Sapopema', 26)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(788, 138, 'Jaguariaíva', 27)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(789, 138, 'Ibaiti', 28)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(790, 138, 'Florestal O.C', 29)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(791, 138, 'Ventania', 30)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(792, 138, 'Guarapuava', 31)
		insert into processo.DominioParametroProceso(IdDominioParametroProceso, IdParametroProcesso, Nome, Valor)  values(793, 138, 'União Vitória', 32)
		SET IDENTITY_INSERT processo.DominioParametroProceso OFF
	


 

 

--Configurar dois layouts (Header e body)

       select * from processo.ConfiguracaoEntidade 'Funcionario Filial' -- criar linha funcionario filial
	  SET IDENTITY_INSERT processo.ConfiguracaoEntidade ON
	  insert into processo.ConfiguracaoEntidade(IdConfiguracaoEntidade, Nome, IdConfiguracaoEntidadeFilha, TabelaSistema)
	  values(30, 'Funcionario Filial', null, null)
	  SET IDENTITY_INSERT processo.ConfiguracaoEntidade OFF

----------------------------------------------------------------------------------------------------
       select * from processo.ConfiguracaoPropriedade where IdConfiguracaoEntidade = 15 -- criar as entidades id = 30 CPF, MATRICULA, NOME, FILIAL, CARGO
	   insert into processo.ConfiguracaoPropriedade values (370, 30, 'CPF', 'CPF')
	   insert into processo.ConfiguracaoPropriedade values (371, 30, 'MATRICULA', 'MATRICULA')
	   insert into processo.ConfiguracaoPropriedade values (372, 30, 'NOME', 'NOME')
	   insert into processo.ConfiguracaoPropriedade values (373, 30, 'FILIAL', 'FILIAL')
	   insert into processo.ConfiguracaoPropriedade values (374, 30, 'CARGO', 'CARGO')
	   -----------------------------------------------------------------------------------------------------------
       select * from processo.ConfiguracaoLayout where IdConfiguracaoProcesso = 13 -- configurar layout id config processo = 88, idconfigEntidade = 30, 
	   select * from processo.ConfiguracaoLayout where IdConfiguracaoProcesso = 88
	   SET IDENTITY_INSERT processo.ConfiguracaoLayout ON
	   insert into processo.ConfiguracaoLayout(IdConfiguracaoLayout,IdConfiguracaoProcesso,IdConfiguracaoEntidade,Nome,Ordem,IgnoraPrimeiraLinha,TipoConfiguracaoLayout, AgrupadorRegistro, IdentificadorRegistro)
	   values(99, 88, 30, 'Header Funcionario Filial', 1, 0, 1 , null, null)
	   insert into processo.ConfiguracaoLayout(IdConfiguracaoLayout,IdConfiguracaoProcesso,IdConfiguracaoEntidade,Nome,Ordem,IgnoraPrimeiraLinha,TipoConfiguracaoLayout, AgrupadorRegistro, IdentificadorRegistro)
	   values(100, 88, 30, 'Layout Funcionario Filial', 2, 0, 2 , null, null)
	   SET IDENTITY_INSERT processo.ConfiguracaoLayout OFF

--Configurar as colunas de cada layout (CPF, MATRICULA, NOME, FILIAL, CARGO) id configlayout 99 header / 100 layout
--- HEADERRRRR-------------------------------------------------------------------
       select * from processo.ConfiguracaoColuna where IdConfiguracaoLayout = 25
	   SET IDENTITY_INSERT processo.ConfiguracaoColuna ON
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2565, 99, 370, 'CPF', 0, 0, 0, 1, 14, 1, null, null, null, null, null)
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2566, 99, 371, 'Matricula', 0, 0, 0, 15, 28, 1, null, null, null, null, null)
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2567, 99, 372, 'Nome', 0, 0, 0, 43, 83, 1, null, null, null, null, null)
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2568, 99, 373, 'Filial', 0, 0, 0, 123, 140, 1, null, null, null, null, null)
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2569, 99, 374, 'Cargo', 0, 0, 0, 263, 283, 1, null, null, null, null, null)

	   update processo.ConfiguracaoColuna set ValorFixo = 'CPF' where IdConfiguracaoColuna = 2565
	   update processo.ConfiguracaoColuna set ValorFixo = 'Matricula' where IdConfiguracaoColuna = 2566
	   update processo.ConfiguracaoColuna set ValorFixo = 'Nome' where IdConfiguracaoColuna = 2567
	   update processo.ConfiguracaoColuna set ValorFixo = 'Filial' where IdConfiguracaoColuna = 2568
	   update processo.ConfiguracaoColuna set ValorFixo = 'Cargo' where IdConfiguracaoColuna = 2569
	   select * from processo.ConfiguracaoColuna where IdConfiguracaoLayout in (99, 100) -- update valor fixo com nome
	   select * from processo.ConfiguracaoColuna where IdConfiguracaoLayout = 25
-- LAYOUT ----------------------------------------------------------------------

	   SET IDENTITY_INSERT processo.ConfiguracaoColuna ON
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2570, 100, 370, 'CPF', 0, 0, 0, 1, 14, 1, null, null, null, null, null)
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2571, 100, 371, 'Matricula', 0, 0, 0, 15, 28, 1, null, null, null, null, null)
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2572, 100, 372, 'Nome', 0, 0, 0, 43, 83, 1, null, null, null, null, null)
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2573, 100, 373, 'Filial', 0, 0, 0, 123, 140, 1, null, null, null, null, null)
	   insert into processo.ConfiguracaoColuna(IdConfiguracaoColuna,IdConfiguracaoLayout, IdConfiguracaoPropriedade, Nome, Acao, Formatacao, CampoChave, PosicaoInicial, Tamanho, Obrigatorio, IdMapeamento, Preenchimento, PosicaoPreenchimento, ValorFixo, Celula)
	   values(2574, 100, 374, 'Cargo', 0, 0, 0, 263, 283, 1, null, null, null, null, null)
	  
	   update processo.ConfiguracaoColuna set ValorFixo = 'CPF' where IdConfiguracaoColuna = 2570
	   update processo.ConfiguracaoColuna set ValorFixo = 'Matricula' where IdConfiguracaoColuna = 2571
	   update processo.ConfiguracaoColuna set ValorFixo = 'Nome' where IdConfiguracaoColuna = 2572
	   update processo.ConfiguracaoColuna set ValorFixo = 'Filial' where IdConfiguracaoColuna = 2573
	   update processo.ConfiguracaoColuna set ValorFixo = 'Cargo' where IdConfiguracaoColuna = 2574

--Criar um procedure que receba o IdFilial e popule as tabelas processamentoLayou e ProcessamentoColuna

-- fazer uma query com todos os campos e noems colunas(cpf, matricula, etc) passando como parametro IdFilial

CREATE FUNCTION campos(@idFilial int) -- nome da variavel vem antes do int
returns Table -- fala qual o tipo do return
AS
return(select * from