json.array!(@cids) do |cid|
  json.extract! cid, :id, :cid, :descricao
  json.url cid_url(cid, format: :json)
end
