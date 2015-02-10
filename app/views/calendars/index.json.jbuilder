json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :house_id, :arrival, :departure
  json.url calendar_url(calendar, format: :json)
end
