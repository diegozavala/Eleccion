json.array!(@locals) do |local|
  json.extract! local, :nombre, :circunscripcion_id
  json.url local_url(local, format: :json)
end
