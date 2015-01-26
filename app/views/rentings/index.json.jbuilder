json.array!(@rentings) do |renting|
  json.extract! renting, :id, :arrival, :departure, :insurance
  json.url renting_url(renting, format: :json)
end
