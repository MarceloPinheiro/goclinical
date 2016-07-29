json.array!(@lancamentoprodutos) do |lancamentoproduto|
  json.extract! lancamentoproduto, :id, :lancamento, :produto, :quantidade, :valor
  json.url lancamentoproduto_url(lancamentoproduto, format: :json)
end
