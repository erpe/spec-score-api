json.array!(@teammates) do |teammate|
  json.extract! teammate, :id, :nick, :email
  json.url spec_score_api.user_url(teammate.user, format: :json)
end
