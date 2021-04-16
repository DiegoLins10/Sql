-- CRIAR UMA FUNÇÃO QUE TRANSFORMA NUMEROS EM NUMERO ROMANO
Create Function dbo.numerosArabicosParaRomanos ( @numero int )
Returns varchar(50)
As
Begin
Declare 	@numeroRomano varchar(5), @i int,  
			@numeroArabico int, @resultado varchar(50) = ''
-- DECLARANDO UMA VARIAVEL COMO TABLE
Declare @numeros Table (id int identity, numeroArabico int, numeroRomano varchar(5))
Insert Into @numeros (numeroArabico, numeroRomano) 
values (1000,'M'), (900, 'CM'), (500, 'D'), (400, 'CD'), (100, 'C'), (90, 'XC'), 
	   (50, 'L'), (40, 'XL'), (10, 'X'), (9, 'IX'), (5, 'V'), (4, 'IV'), (1, 'I')

set @i=0
while (@i < 14)
 begin
  Select @numeroRomano=numeroRomano, @numeroArabico=numeroArabico 
  From @numeros Where id=@i
 while (@numero >= @numeroArabico)
  begin
   set @numero = @numero - @numeroArabico
   set @resultado = @resultado + @numeroRomano
  end
  set @i = @i + 1
 end
 return @resultado
end;

-- chamando função
select dbo.numerosArabicosParaRomanos(10000)

-- mudando o tempo de emprego de um empregado em uma table do banco de dados departamento para numero romano
-- usando uma função par para falar se o id é impar ou par
select *, dbo.numerosArabicosParaRomanos(Tempo_emp), dbo.PAR(IdEmpregado) from Empregado