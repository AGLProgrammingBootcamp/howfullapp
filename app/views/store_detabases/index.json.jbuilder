json.array!(@store_detabases) do |store_detabasis|
  json.extract! store_detabasis, :id, :store, :location, :smorkingornot, :capacity, :filled_seat
  json.url store_detabasis_url(store_detabasis, format: :json)
end
