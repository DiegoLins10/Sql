-- é tipo como uma variavel vc pode criar normalmente 
SELECT 
	e.nomeempregado,
    d.iddepto,
    e.iddepto,
    d.nomedepto
from Empregado e 
left JOIN Departamento d on(d.iddepto = e.iddepto)
-- Left join pega intersecção de uma tabela mas tudo do lado esquerdo(empregado)    