--ASCII (string) -- Retorna o valor do código ASCII do caractere
Select ASCII('A')

--CHAR (int) -- Converte um código ASCII int em um caractere
Select CHAR(66)

--CHARINDEX ( string a localizar,  string , posição inicial) --	Pesquisa uma string em outra e retorna a posição inicial
Select CHARINDEX('Couves','Jose das Couves')

--LEFT ( string, int ) 	Retorna a parte da esquerda de uma cadeia de caracteres com o número de caracteres especificado
Select LEFT('Jose das Couves',4)

--LEN ( string )	Retorna o número de caracteres da cadeia de caracteres especificada, excluindo espaços em branco a esquerda
Select LEN('Jose das Couves')

--LOWER ( string )	Converte uma cadeia de caracteres para caracteres minúsculas
Select LOWER('Jose das Couves')

--LTRIM ( string )	Remove espaços em branco a esquerda da string
Select LTRIM('      Jose das Couves')

--PATINDEX ( ‘%padrão%’, string )	Retorna a posição inicial da primeira ocorrência de um padrão em uma expressão específica ou zeros, se o padrão não for encontrado, em todos os tipos de dados de caractere e de texto válidos. 
Select PATINDEX('%das%','Jose das Couves')

--REPLACE (string,  string  a localizar, string substituta ) 	Substitui todas as ocorrências de um valor da cadeia de caracteres especificado por outro valor de cadeia de caracteres.
Select REPLACE('123, 321, 356...', '3', '0')

--REPLICATE ( string, int )	Repete um valor da cadeia de caracteres um número especificado de vezes.
Select REPLICATE('+=', 30)

--REVERSE ( string )	Retorna a ordem inversa de um valor da cadeia de caracteres.
Select REVERSE('0123456789')

--RIGHT ( string, int )	Retorna a parte da direita de uma cadeia de caracteres com o número de caracteres especificado. 
Select RIGHT('Jose das Couves',10)

--SPACE ( int )	Retorna uma cadeia de caracteres de espaços repetidos.
Select '-'+SPACE(50)+'-'

--STUFF ( string, incio, tamanho, string substituta )	A função STUFF insere uma cadeia de caracteres em outra cadeia de caracteres. Ela exclui um comprimento especificado de caracteres da primeira cadeia na posição inicial e, em seguida, insere a segunda cadeia na primeira, na posição inicial. 
Select STUFF('123...789',4,3,'456' )

--SUBSTRING ( string, inicio, tamanho )	Retorna parte de uma expressão de caractere.
Select SUBSTRING('Jose das Couves', 1,4 )

--UPPER	Converte uma cadeia de caracteres para caracteres maiúsculas
Select UPPER('Jose das Couves')
