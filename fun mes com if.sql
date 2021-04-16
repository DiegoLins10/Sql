ALTER Function dbo.f_MesExtenso ( @mes int ) -- FUNÇÃO USANDO IF
Returns varchar(20)
As
Begin
if (@mes > 0 AND @mes <13)
Begin
if (@mes =1)
return 'Jan'
else if (@mes =2)
return 'Fev'
else if (@mes =3)
return 'Mar'
else if (@mes =4)
return 'Abr'
else if (@mes =5)
return 'Mai'
else if (@mes =6)
return 'Jun'
else if (@mes =7)
return 'Jul'
else if (@mes =8)
return 'Ago'
else if (@mes =9)
return 'Set'
else if (@mes =10)
return 'Out'
else if (@mes =11)
return 'Nov'
else if (@mes =12)
return 'Dez'
End
return 'Mês Inválido!'

End

