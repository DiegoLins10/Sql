BEGIN TRANSACTION
UPDATE FROM TbContas
SET NuSaldo= 10.000
WHERE NuSaldo < 50
IF @@ERROR = 0
COMMIT
ELSE
ROLLBACK
RAISERROR(5001,16,1,’ERRO NA ALTERACAO DO SALDO DA TBL TBCONTA’) END



BEGIN TRANSACTION;  

update cadastro.formularioSolicitacao set idformularioGrupo = 26 where idTipoSolicitacao = 34
IF @@ERROR = 0
COMMIT
ELSE
ROLLBACK;


BEGIN TRAN;  

update cadastro.formularioSolicitacao set idformularioGrupo = 26 where idTipoSolicitacao = 34
IF @@ERROR = 0
COMMIT
ELSE
ROLLBACK;
