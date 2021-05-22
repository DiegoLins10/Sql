CREATE PROCEDURE EmpregadoUpdate
(@idEmpregado int, @NomeEmpregado varchar(20), @idDepto int, @Cargo varchar(6), 
@Tempo_Emp int, @Salario decimal(10,2),@Comissao decimal(10,2))
As
UPDATE Empregado
SET
 NomeEmpregado = @NomeEmpregado,
 idDepto = @idDepto,
 Cargo = @Cargo,
 Tempo_Emp = @Tempo_Emp,
 Salario = @Salario,
 Comissao = @Comissao 
where IdEmpregado = @idEmpregado
go

exec EmpregadoUpdate 203, 'Joey', 10, 'ADM', 2, 10500, 200
