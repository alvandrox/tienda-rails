json.array!(@articulos) do |articulo|
  json.extract! articulo, :id, :ean, :producto_id, :color_id, :talla_id, :precio_costo, :precio_venta, :stock
  json.url articulo_url(articulo, format: :json)
end
