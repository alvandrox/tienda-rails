json.array!(@articulos) do |articuel|
  json.extract! articuel, :id, :ean, :producto_id, :color_id, :talla_id, :precio_costo, :precio_venta, :stock
  json.url articuel_url(articuel, format: :json)
end
