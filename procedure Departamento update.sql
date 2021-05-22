CREATE PROCEDURE DepartamentoUpdate
(@IdDepto int, @NomeDepto varchar(15), @Gerente int, @Divisao varchar(10), @Local varchar(15))
As
UPDATE
Departamento
set
 NomeDepto = @NomeDepto
 ,Gerente = @Gerente
 ,Divisao = @Divisao
 ,Local = @Local

where IdDepto = @IdDepto

go

Execute DepartamentoUpdate 50, 'COMPRAS2', 3, 'SUDOESTE', 'SAO PAULO'