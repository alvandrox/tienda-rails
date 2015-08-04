json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :nombre
  json.url categoria_url(categoria, format: :json)
end
