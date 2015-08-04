json.array!(@productos) do |producto|
  json.extract! producto, :id, :codigo, :descripcion, :marca_id, :categoria_id
  json.url producto_url(producto, format: :json)
end
