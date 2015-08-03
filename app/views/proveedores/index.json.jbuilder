json.array!(@proveedores) do |proveedor|
  json.extract! proveedor, :id, :nombre, :razon_social, :rut, :direccion, :telefono, :email, :url
  json.url proveedor_url(proveedor, format: :json)
end
