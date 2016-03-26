json.array!(@caves) do |cafe|
  json.extract! cafe, :id, :name, :location, :smoking, :seat
  json.url cafe_url(cafe, format: :json)
end
