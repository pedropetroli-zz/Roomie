json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :house_id, :renting_id, :rating_1, :rating_2
  json.url review_url(review, format: :json)
end
