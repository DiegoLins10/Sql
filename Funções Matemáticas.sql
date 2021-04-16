--ABS(numero)	-- retorna o valor absoluto do numero
Select ABS(-120),ABS(200)

--ACOS(float)	-- retorna o arco-coseno do numero informado
Select ACOS(1), ACOS(-1), ACOS(0)

--ASIN(float)	-- retorna o arco-seno do numero informado
Select ASIN(1), ASIN(-1), ASIN(0)

--ATAN(float)	-- retorna o arco-tangente do numero informado
Select ATAN(1), ATAN(-1), ATAN(0)

--ATN2(Float expressao_1, float expressao_2)	-- Arco-tangente do valor definido pela divisão da primeira expressão pela segunda
Select ATN2(1,5), ATN2(-1,7), ATN2(2,7)

--CEILING(numero)	-- retorna o menor inteiro que seja maior ou igual ao numero informado
Select CEILING($123.45), CEILING($-123.45), CEILING($0.0)

--COS(float)	-- retorna o coseno do numero informado
Select COS(90),COS(0),COS(1)

--COT(float)	-- retorna o cotangente do numero informado
Select COT(90),COT(70),COT(1)

--DEGREES(numero)	-- converte radianos para graus
Select Degrees(1)

--EXP(float)	-- retorna o exponencial de um numero especificado
Select EXP(10)

--FLOOR(numero)	-- retorna o maior inteiro que seja menor ou igual ao numero informado
Select FLOOR($123.45), FLOOR($-123.45), FLOOR($0.0)

--LOG(float)	-- retorna o logaritmo natural do numero informado
Select LOG(10)

--LOG10(float)	-- retorna o logaritmo base 10 do numero informado
Select LOG10(2)

--PI()	-- retorna o valor de PI 3.1415926535897931.
Select PI()

--POWER(numero, potencia)	-- retorna o valor elevado à potencia informada
Select POWER(5,2)

--RADIANS(numero)	-- converte graus para radianos
Select RADIANS(180)

--RAND(expressao)	-- um número aleatório entre 0 e 1. Expressão é opcional e será usada como semente da cadeia pseudo-aleatória
Select RAND()

--ROUND(numero, precisao, arredonda_ou_trancar)	-- arredonda ou tranca o numero fornecido de acordo com a precisao informada. Se o terceiro parametro não for passado para a funçao, o numero é arredondado. Se quiser que o numero seja truncado, deve-se fornecer o valor 1
Select ROUND(124.45, 1),ROUND(124.456, 2),ROUND(124.45, 0)

--SIGN(numero)	-- retorna sinal positivo, negativo ou zero do numero
Select SIGN(-100),SIGN(100),SIGN(0)

--SIN(float)	-- retorna o seno do angulo especificado
Select SIN(1), SIN(90), SIN(0)

--SQRT(float)	-- retorna a raiz quadrada de um numero
Select SQRT(4), SQRT(9), SQRT(81)

--TAN(float)	-- retorna a tangente de um numero informado
Select TAN(5),TAN(90)

--SQUARE(float)	-- retorna o quadrado de um numero
Select SQUARE(5),SQUARE(3)
