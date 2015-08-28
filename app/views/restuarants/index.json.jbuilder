json.array!(@restuarants) do |restuarant|
  json.extract! restuarant, :id, :name, :address, :phone, :website
  json.url restuarant_url(restuarant, format: :json)
end
