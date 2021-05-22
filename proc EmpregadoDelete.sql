CREATE PROCEDURE EmpregadoDelete
(@idEmpregado int, @TotalEmpregados int OUTPUT)
As
delete Empregado
where IdEmpregado = @idEmpregado

select
@TotalEmpregados = COUNT(*)
from
Empregado
go

declare @TotalEmpregados int 
exec EmpregadoDelete 203, @TotalEmpregados OUTPUT
SELECT @TotalEmpregados 'Total de Empregados'
