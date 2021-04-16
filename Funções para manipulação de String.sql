--ASCII (string) -- Retorna o valor do c�digo ASCII do caractere
Select ASCII('A')

--CHAR (int) -- Converte um c�digo ASCII int em um caractere
Select CHAR(66)

--CHARINDEX ( string a localizar,  string , posi��o inicial) --	Pesquisa uma string em outra e retorna a posi��o inicial
Select CHARINDEX('Couves','Jose das Couves')

--LEFT ( string, int ) 	Retorna a parte da esquerda de uma cadeia de caracteres com o n�mero de caracteres especificado
Select LEFT('Jose das Couves',4)

--LEN ( string )	Retorna o n�mero de caracteres da cadeia de caracteres especificada, excluindo espa�os em branco a esquerda
Select LEN('Jose das Couves')

--LOWER ( string )	Converte uma cadeia de caracteres para caracteres min�sculas
Select LOWER('Jose das Couves')

--LTRIM ( string )	Remove espa�os em branco a esquerda da string
Select LTRIM('      Jose das Couves')

--PATINDEX ( �%padr�o%�, string )	Retorna a posi��o inicial da primeira ocorr�ncia de um padr�o em uma express�o espec�fica ou zeros, se o padr�o n�o for encontrado, em todos os tipos de dados de caractere e de texto v�lidos. 
Select PATINDEX('%das%','Jose das Couves')

--REPLACE (string,  string  a localizar, string substituta ) 	Substitui todas as ocorr�ncias de um valor da cadeia de caracteres especificado por outro valor de cadeia de caracteres.
Select REPLACE('123, 321, 356...', '3', '0')

--REPLICATE ( string, int )	Repete um valor da cadeia de caracteres um n�mero especificado de vezes.
Select REPLICATE('+=', 30)

--REVERSE ( string )	Retorna a ordem inversa de um valor da cadeia de caracteres.
Select REVERSE('0123456789')

--RIGHT ( string, int )	Retorna a parte da direita de uma cadeia de caracteres com o n�mero de caracteres especificado. 
Select RIGHT('Jose das Couves',10)

--SPACE ( int )	Retorna uma cadeia de caracteres de espa�os repetidos.
Select '-'+SPACE(50)+'-'

--STUFF ( string, incio, tamanho, string substituta )	A fun��o STUFF insere uma cadeia de caracteres em outra cadeia de caracteres. Ela exclui um comprimento especificado de caracteres da primeira cadeia na posi��o inicial e, em seguida, insere a segunda cadeia na primeira, na posi��o inicial. 
Select STUFF('123...789',4,3,'456' )

--SUBSTRING ( string, inicio, tamanho )	Retorna parte de uma express�o de caractere.
Select SUBSTRING('Jose das Couves', 1,4 )

--UPPER	Converte uma cadeia de caracteres para caracteres mai�sculas
Select UPPER('Jose das Couves')
