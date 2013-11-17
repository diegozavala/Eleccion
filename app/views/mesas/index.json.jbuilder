json.array!(@mesas) do |mesa|
  json.extract! mesa, :circunscripcion_id, :nombre
  json.url mesa_url(mesa, format: :json)
end
