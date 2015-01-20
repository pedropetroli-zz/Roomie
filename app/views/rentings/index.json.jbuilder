json.array!(@rentings) do |renting|
  json.extract! renting, :id, :country, :state, :city
  json.url renting_url(renting, format: :json)
end
