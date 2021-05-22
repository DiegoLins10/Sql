CREATE PROCEDURE EmpregadoInsert
(@idEmpregado int, @NomeEmpregado varchar(20), @idDepto int, @Cargo varchar(6), 
@Tempo_Emp int, @Salario decimal(10,2),@Comissao decimal(10,2), @TotalEmpregados int OUTPUT)
As
insert into Empregado
 (IdEmpregado,NomeEmpregado,IdDepto,Cargo, Tempo_Emp, Salario, Comissao )
 values
 (@idEmpregado, @NomeEmpregado, @idDepto, @Cargo, @Tempo_Emp, @Salario, @Comissao )
select @TotalEmpregados = COUNT(*)
from Empregado
go

declare @TotalEmpregados int
exec EmpregadoInsert 203, 'Joey', 10, 'ADM', 2, 1500, 200, @TotalEmpregados OUTPUT
select @TotalEmpregados 'Total de empregados'
