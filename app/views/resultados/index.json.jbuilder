json.array!(@resultados) do |resultado|
  json.extract! resultado, :mesa_id, :candidato_id, :votos
  json.url resultado_url(resultado, format: :json)
end
