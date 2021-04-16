Use Departamento
go

Select
 CONVERT(varchar(10),IdEmpregado) + ' - ' +   NomeEmpregado + ' tem um Salário de R$ '+ CONVERT(varchar(20),Salario) 
From
 Empregado
 -- CONVERTER PARA VARCHAR UM DADO INT OU FLOAT