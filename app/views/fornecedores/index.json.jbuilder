json.array!(@fornecedores) do |fornecedore|
  json.extract! fornecedore, :id, :fornecedor, :contato
  json.url fornecedore_url(fornecedore, format: :json)
end
