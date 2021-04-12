Create view MediaSalDepto as  
Select 
  D.IdDepto, D.NomeDepto, avg(E.salario) As mediaSal
From  
 Empregado E 
Inner Join Departamento D On (D.IdDepto = E.IdDepto)
Group by E.IdDepto,  D.IdDepto, D.NomeDepto