SELECT DISTINCT C.ID, 
       SUBSTRING((
          SELECT ', ' + P.NOME
          FROM dbo.Produtos P
          WHERE P.FK_CATEGORIA = C.ID
          FOR XML PATH ('')
        ), 2, 1000) TODOS_OS_PRODUTOS
FROM dbo.Categorias C
ORDER BY C.ID
