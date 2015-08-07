json.array!(@tallas) do |talla|
  json.extract! talla, :id, :nombre
  json.url talla_url(talla, format: :json)
end
