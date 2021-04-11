Use master
GO
DROP Database Plantacao
GO
Create Database Plantacao
GO
Use Plantacao
GO
Create table Funcionario
(
 FuncId int identity primary key,
 Nome varchar(80) not null,
 Idade int not null
)
GO
Create table Plantio (
 PlantioId int identity primary key,
 PlantaId int not null,
 FuncId int not null,
 CanteiroId int not null,
 Data date not null,
 Sementes int not null
)
GO
Create table Planta(
 PlantaId int identity primary key,
 Nome varchar(20),
 LuzDiaria decimal(4,3),
 Agua decimal(4,3),
 Peso decimal(4,3)
)
GO
Create table Colhido(
 ColhidoId int identity primary key,
 PlantaId int not null,
 FuncId int not null,
 CanteiroId int not null,
 Data date,
 Quantidade int not null,
 Peso decimal(4,3)
)
GO
Create table Canteiro(
 CanteiroId int primary key,
 Nome varchar(20) not null,
 LuzDiaria decimal(4,3) not null,
 AguaDiaria decimal(4,3) not null
)
GO
Alter Table Plantio 
	Add Constraint FK_Plantio_Funcionario
	Foreign Key (FuncId) References Funcionario (FuncId)
GO
Alter Table Plantio 
	Add Constraint FK_Plantio_Planta
	Foreign Key (PlantaId) References Planta (PlantaId)
GO
Alter Table Plantio
	Add Constraint FK_Plantio_Canteiro
	Foreign Key (CanteiroId) References Canteiro (CanteiroId)
GO
Alter Table Colhido
	Add Constraint FK_Colhido_Funcionario
	Foreign Key (FuncId) References Funcionario (FuncId)
GO
Alter Table Colhido
	Add Constraint FK_Colhido_Planta
	Foreign Key (PlantaId) References Planta (PlantaId)
GO
Alter Table Colhido
	Add Constraint FK_Colhido_Canteiro
	Foreign Key (CanteiroId) References Canteiro (CanteiroId)
GO


