CREATE FUNCTION dbo.F_MesExtenso4(@mes int) -- criando função declarando variaveis
returns varchar(20)
as
begin
--declarando table
	Declare @table  Table (id int identity, Mes varchar(5)) -- declara as colunas
	insert into @table (Mes) -- seleciona em qual coluna vai adicionar
	values ('JAN'), ('FEV'), ('MAR'), ('ABRIL'), ('MAIO'), ('JUN'), ('JUL'),-- adicionando valores
	('AGO'), ('SET'), ('OUT'), ('NOV'), ('DEZ')
	if (@mes > 0 AND @mes <13) -- verificando o numero de entrada
		Begin
		return (Select Mes From @table Where id=@mes) -- para retornar da table com um select
		End
	return 'Mês Inválido!'
end;

select dbo.F_MesExtenso4(2) -- chamando a função




