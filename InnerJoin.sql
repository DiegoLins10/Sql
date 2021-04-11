SELECT  e.idempregado, e.NomeEmpregado, d.NomeDepto, d.Gerente, n.NomeEmpregado as NomeGerente
FROM Departamento d
inner join Empregado e on (d.IdDepto = e.IdDepto)
inner join Empregado n on (d.gerente = n.idempregado)
-- Inner Join para criar uma nova coluna 
