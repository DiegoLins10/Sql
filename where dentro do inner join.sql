select 
SUM(a.QuantidadeVeiculos) AS TOTAL
,a.Ano
,a.Mes
FROM Arrecadacao a
inner join Categoria c on c.CodigoCategoria = a.CodigoCategoria and c.TipoCategoria in ('2 eixos', '4 eixos','6 eixos')
inner join PracaPedagio p on p.CodigoPracaPedagio = a.CodigoPracaPedagio and p.NomePracaPedagio = 'TERCEIRA PONTE'
Group by a.Ano, a.Mes
order by a.Ano, a.Mes


SELECT * 
FROM ARRECADACAO
SELECT * 
FROM Categoria
where tipoCategoria = '4 eixos'
SELECT * 
FROM PracaPedagio