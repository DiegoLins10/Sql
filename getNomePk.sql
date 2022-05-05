


SELECT schema_name(tab.schema_id) as [nome_schema], 
pk.[name] as pk_nome,
SUBSTRING(column_names, 1, len(column_names)-1) as [colunas],
tab.[name] as nome_tabela
FROM sys.tables tab
INNER JOIN sys.indexes pk
ON tab.object_id = pk.object_id 
AND pk.is_primary_key = 1 and pk.name like '%[0-9]%'
CROSS APPLY (select col.[name] + ', '
FROM sys.index_columns ic
INNER JOIN sys.columns col
ON ic.object_id = col.object_id 
AND ic.column_id = col.column_id
WHERE ic.object_id = tab.object_id
AND ic.index_id = pk.index_id
ORDER by col.column_id
FOR XML PATH ('') ) D (column_names)
ORDER BY schema_name(tab.schema_id), pk.[name]


