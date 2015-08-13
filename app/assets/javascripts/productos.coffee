$('#calculos-articulos').hide()

$('#form-articulo').keyup ->
  $('#calculos-articulos').show()

  costo = $('input#precio-costo').val()
  venta = $('input#precio-venta').val()

  iva_costo = costo*19/100
  iva_venta = venta/1.19*19/100
  costo_mas_iva = costo*1.19
  venta_menos_iva = venta/1.19
  venta_sugerido = costo*3

  iva_pagar = iva_venta - iva_costo
  ganancia = venta_menos_iva - costo
  porcentaje_ganancia = ganancia / venta * 100

  $('.iva-pagar').text('Iva a Pagar: $' + iva_pagar.toFixed(2))
  $('.ganancia').text('Ganancia: $' + ganancia.toFixed(2))
  $('input#precio-venta').attr('placeholder', 'Precio sugerido: ' + venta_sugerido)

  # Este ciclo es para cuando el resultado es infinito
  if isFinite(porcentaje_ganancia)
    $('.porcentaje-ganancia').text('Ganancia: %'+ porcentaje_ganancia.toFixed(2))
  else
    $('.porcentaje-ganancia').text('Debe ingresar Precio de Venta')


  switch
    when porcentaje_ganancia < 20 then $('#calculos-articulos').addClass('alert alert-danger')
    when porcentaje_ganancia < 30 then $('#calculos-articulos').removeClass('alert alert-danger') $('#calculos-articulos').addClass('alert alert-warning')
    when porcentaje_ganancia > 30 then $('#calculos-articulos').removeClass('alert alert-danger alert-warning') $('#calculos-articulos').addClass('alert alert-success')

#  if porcentaje_ganancia < 30
#    $('#calculos-articulos').addClass('alert alert-danger')
#  else if porcentaje_ganancia
#    $('#calculos-articulos').removeClass('alert alert-danger')
#    $('#calculos-articulos').addClass('alert alert-success')