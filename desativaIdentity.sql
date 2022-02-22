--adicionando o status AGUARDANDO ASSINATURA
SET IDENTITY_INSERT cadastro.Status ON
GO
insert into cadastro.Status(IdStatus, TipoStatus, Nome, IndiceCor, TipoWorkflow, NotificaUsuario, NotificaResponsavel,IdEmail) values(92, 1,'Aguardando Assinatura',0,11,NULL,NULL,NULL)

GO
SET IDENTITY_INSERT cadastro.Status OFF
