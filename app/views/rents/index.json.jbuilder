json.array!(@rents) do |rent|
  json.extract! rent, :id, :country, :state, :city
  json.url rent_url(rent, format: :json)
end
