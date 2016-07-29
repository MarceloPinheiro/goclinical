json.array!(@obras) do |obra|
  json.extract! obra, :id, :obra, :inicio, :fim
  json.url obra_url(obra, format: :json)
end
