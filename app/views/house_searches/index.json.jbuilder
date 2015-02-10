json.array!(@house_searches) do |house_search|
  json.extract! house_search, :id, :house_id, :arrival, :departure, :total_amounth, :rental, :fee, :insurance
  json.url house_search_url(house_search, format: :json)
end
