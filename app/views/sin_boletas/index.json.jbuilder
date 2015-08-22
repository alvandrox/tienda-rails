json.array!(@sin_boletas) do |sin_boleta|
  json.extract! sin_boleta, :id, :venta_id
  json.url sin_boleta_url(sin_boleta, format: :json)
end
