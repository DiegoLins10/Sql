Select d.NomeDepto, SUM(e.salario) as 'Soma dos Salarios', AVG(e.Salario) as 'Media Salarios'
From Departamento d
inner join Empregado e on (d.IdDepto = e.IdDepto)
where e.Salario < 4400
group by d.NomeDepto
order by 'Soma dos Salarios' desc