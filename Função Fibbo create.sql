-- FUNÇÃO DE FIBONNACI
CREATE FUNCTION dbo.fibo(@numero int) 
RETURNS int
AS
BEGIN
 if (@numero < 2) 
	return @numero;
 return dbo.fibo(@numero - 1) + dbo.fibo(@numero - 2);
END
go

-- CHAMADA DA FUNC
DECLARE @d int = 0;         --- colocar a maldita virgula sua mula
while(@d<=10)
begin
	print dbo.fibo(@d);
	set @d = @d + 1;
end;
