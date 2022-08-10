## Script para remoção de arquivos antigos em pastas

# Pasta
$pasta = "Nome_da_Pasta"

#Limite de Dias, necessita ser negativo, pois é contado a partir de hoje menos dias.
$dias = -99

Get-ChildItem $pasta -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays($dias))}| Remove-Item
