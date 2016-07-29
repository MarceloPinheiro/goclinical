json.array!(@produtos) do |produto|
  json.extract! produto, :id, :descricao
  json.url produto_url(produto, format: :json)
end
