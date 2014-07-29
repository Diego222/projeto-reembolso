json.array!(@travels) do |travel|
  json.extract! travel, :id, :destino, :data, :user_id
  json.url travel_url(travel, format: :json)
end
