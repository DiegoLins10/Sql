CREATE FUNCTION campos(@IdFilial int) -- nome da variavel vem antes do int
RETURNS @Campos table(cpf varchar(20),Matricula varchar(50),Nome varchar(50),Filial varchar(50), cargo varchar(50))
as
begin 
  insert into @Campos
  select s.CPF, c.Matricula, s.Nome, cf.Nome, cc.Nome 
  from cadastro.Funcionario c
  inner join seguranca.Usuario s on (c.IdFuncionario = s.IdUsuario)
  inner join cadastro.Cargo cc on (c.IdCargo = cc.IdCargo)
  inner join cadastro.Filial cf on (c.IdFilial = cf.IdFilial)
  where c.idFilial = @idFilial
return
end

SELECT * FROM campos(22)