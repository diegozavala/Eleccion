json.array!(@candidatos) do |candidato|
  json.extract! candidato, :nombre
  json.url candidato_url(candidato, format: :json)
end
