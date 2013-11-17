json.array!(@comunas) do |comuna|
  json.extract! comuna, :nombre
  json.url comuna_url(comuna, format: :json)
end
