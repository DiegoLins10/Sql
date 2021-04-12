select c.NomeCidade, 
'quantidade de veiculos Cidade' = (SELECT COUNT(v.Placa) from Veiculo v where v.Cidade = c.IdCidade) 
from Cidade c
order by 'quantidade de veiculos Cidade' desc