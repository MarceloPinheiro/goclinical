json.array!(@orcamentos) do |orcamento|
  json.extract! orcamento, :id, :obra, :valor, :mes, :ano
  json.url orcamento_url(orcamento, format: :json)
end
