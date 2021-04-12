select E.nomeEmpregado
from Empregado e
inner join MediaSalDepto m on (e.IdDepto = m.IdDepto)
where e.salario > m.mediaSal