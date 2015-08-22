suma = 0
cantidad = 0
$('.precio_boleta').each ->
  suma +=  parseFloat($(this).text())
  cantidad += 1

$('#sumadia').text suma
$('#cantidad').text cantidad
