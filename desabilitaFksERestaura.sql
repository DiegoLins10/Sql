-- Desabilita todas as constraints de uma tabela

ALTER TABLE MinhaTabela NOCHECK CONSTRAINT ALL

-- Habilita todas as constraints de uma tabela

ALTER TABLE MinhaTabela CHECK CONSTRAINT ALL

-- Desabilita uma constraint

ALTER TABLE MinhaTabela NOCHECK CONSTRAINT MinhaConstraintDeFk

-- Habilita uma constraint

ALTER TABLE MinhaTabela CHECK CONSTRAINT MinhaConstraintDeFk
