json.array!(@store_caves) do |store_cafe|
  json.extract! store_cafe, :id
  json.url store_cafe_url(store_cafe, format: :json)
end
