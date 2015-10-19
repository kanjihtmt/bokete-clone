json.array!(@bokes) do |boke|
  json.extract! boke, :id
  json.url boke_url(boke, format: :json)
end
