json.array!(@pagamentos) do |pagamento|
  json.extract! pagamento, :id, :lancamento, :vencimento, :valor
  json.url pagamento_url(pagamento, format: :json)
end
