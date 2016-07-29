json.array!(@menusubs) do |menusub|
  json.extract! menusub, :id, :menu_id, :descricao, :link
  json.url menusub_url(menusub, format: :json)
end
