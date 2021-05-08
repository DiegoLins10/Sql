select
p.nomePessoa
, p.CidadeReside
, v.Placa
, c.NomeCidade
, c.IdCidade
, v.Marca
, v.ano
, v.cor
FROM Pessoa p 
inner join Veiculo v on v.IdPessoa = p.IdPessoa
inner join Cidade c on v.Cidade = c.IdCidade
where p.CidadeReside <> v.Cidade
