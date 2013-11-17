json.array!(@circunscripcions) do |circunscripcion|
  json.extract! circunscripcion, :nombre, :comuna_id
  json.url circunscripcion_url(circunscripcion, format: :json)
end
