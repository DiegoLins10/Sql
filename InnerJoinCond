SELECT d.IdDepto, d.NomeDepto,
COUNT(e.idempregado) as 'Total'
FROM Departamento d
inner join Empregado e on (d.iddepto = e.iddepto)
WHERE e.salario > 4000
GROUP BY d.IdDepto, d.NomeDepto
--inner join usando condições
