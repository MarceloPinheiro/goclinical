json.array!(@acessos) do |acesso|
  json.extract! acesso, :id, :user_id, :menu_id, :acao
  json.url acesso_url(acesso, format: :json)
end
