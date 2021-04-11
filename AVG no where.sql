SELECT d.NomeDepto,
COUNT(e.idempregado) as 'Total'
FROM Departamento d
inner join Empregado e on (d.iddepto = e.iddepto)
WHERE e.salario < (SELECT AVG(e.salario)  FROM Empregado e)
GROUP BY d.nomedepto
--usando avg no where 
