json.array!(@boletas) do |boleta|
  json.extract! boleta, :id, :venta_id
  json.url boleta_url(boleta, format: :json)
end
