json.array!(@users) do |user|
  json.extract! user, :id, :nick
  json.url spec_score_api.user_url(user, format: :json)
end
