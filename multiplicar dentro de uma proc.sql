CREATE Procedure DepartamentoAumentoSalario
( @IdDepto int
 ,@PercentualAumento decimal(5,2)
 )
As

Set @PercentualAumento = (1+(@PercentualAumento/100))
UPDATE 
 Empregado 
SET 
 Salario = Salario * @PercentualAumento , 
 Comissao = Comissao * @PercentualAumento
Where IdDepto = @IdDepto 

go

Execute DepartamentoAumentoSalario 50, 3


