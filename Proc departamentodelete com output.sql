CREATE PROCEDURE DepartamentoDelete
(@IdDepto int, @TotalDepartamentos int OUTPUT)
As
Delete from Departamento
where IdDepto = @IdDepto

select
@TotalDepartamentos = COUNT(*)
from
Departamento

go
declare @TotalDepartamentos int
exec DepartamentoDelete 50, @TotalDepartamentos OUTPUT
select @TotalDepartamentos 'Total de departamentos'



