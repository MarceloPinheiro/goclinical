json.array!(@lancamentos) do |lancamento|
  json.extract! lancamento, :id, :obra, :fornecedor, :nota, :valor, :status
  json.url lancamento_url(lancamento, format: :json)
end
