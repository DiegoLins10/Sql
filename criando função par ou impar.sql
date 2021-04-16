CREATE FUNCTION dbo.PAR(@numero int) -- nome da variavel vem antes do int
returns VARCHAR(10) -- fala qual o tipo do return
as
begin
	if(@numero%2 = 0)
		return 'Par'
	return 'Impar'
end;

