json.array!(@store_dbs) do |store_db|
  json.extract! store_db, :id, :store, :location, :smorkingornot, :seats
  json.url store_db_url(store_db, format: :json)
end
