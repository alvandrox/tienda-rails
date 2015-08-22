json.array!(@facturas) do |factura|
  json.extract! factura, :id, :venta_id
  json.url factura_url(factura, format: :json)
end
