SELECT schema_name(fk_tab.schema_id) + '.' + fk_tab.name as tabela_estrangeira,
'>-' as rel,
schema_name(pk_tab.schema_id) + '.' + pk_tab.name as tabela_primaria,
SUBSTRING(column_names, 1, len(column_names)-1) as [fk_columns],
fk.name as fk_constraint_name
FROM sys.foreign_keys fk
INNER JOIN sys.tables fk_tab
ON fk_tab.object_id = fk.parent_object_id
INNER JOIN sys.tables pk_tab
ON pk_tab.object_id = fk.referenced_object_id and fk.name like '%[0-9]%'
CROSS APPLY (select col.[name] + ', '
FROM sys.foreign_key_columns fk_c
INNER JOIN sys.columns col
ON fk_c.parent_object_id = col.object_id
AND fk_c.parent_column_id = col.column_id
WHERE fk_c.parent_object_id = fk_tab.object_id
AND fk_c.constraint_object_id = fk.object_id
ORDER BY col.column_id
FOR XML PATH ('') ) D (column_names)
ORDER BY schema_name(fk_tab.schema_id) + '.' + fk_tab.name,
schema_name(pk_tab.schema_id) + '.' + pk_tab.name 