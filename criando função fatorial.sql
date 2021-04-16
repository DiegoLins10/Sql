-- CRIA��O FUN��O FATORIAL SQL SERVER
CREATE FUNCTION dbo.fatorial ( @numero int )
RETURNS int  
AS 
BEGIN 
 If(@numero <= 1)
	return 1
  return @numero * dbo.fatorial(@numero-1) -- usando recursividade
END
go

--Fun��o chamando a fun��o fatorial usando print
Declare @n int = 1;
WHILE (@n <= 10)
begin
print CONVERT(VARCHAR,@n)+'! = '+CONVERT(VARCHAR,dbo.fatorial(@n)); -- USAR O CONVERT PQ O FATORIAL N�O � STRING
SET @n = @n + 1;
END;