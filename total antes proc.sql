CREATE Procedure DepartamentoAumentoSalario_v2
( @IdDepto int
 ,@PercentualAumento decimal(5,2)
 ,@TotalAntesAumento decimal(10,2) OUTPUT
 ,@TotalDepoisAumento decimal(10,2) OUTPUT
 )
As

Select @TotalAntesAumento= SUM(Salario) From Empregado Where IdDepto = @IdDepto 

Set @PercentualAumento = (1+(@PercentualAumento/100))
UPDATE 
 Empregado 
SET 
 Salario = Salario * @PercentualAumento , 
 Comissao = Comissao * @PercentualAumento
Where IdDepto = @IdDepto 

Select @TotalDepoisAumento= SUM(Salario) From Empregado Where IdDepto = @IdDepto 

go

Declare @TotalAntesAumento decimal(10,2), @TotalDepoisAumento decimal(10,2)
Execute DepartamentoAumentoSalario_V2 40, 2, @TotalAntesAumento OUTPUT, @TotalDepoisAumento OUTPUT

Select @TotalAntesAumento 'Total Antes Aumento', @TotalDepoisAumento 'Total Depois Aumento'
