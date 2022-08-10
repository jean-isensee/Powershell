## Script para remoção de arquivos antigos em pastas

# Pasta
$pasta = "Nome_da_Pasta"

#Limite de Dias
$dias = 99

forFiles /S /P $pasta /D $dias /C “cmd /c if @isdir==TRUE rd /s /q @file” & forFiles /S /P
