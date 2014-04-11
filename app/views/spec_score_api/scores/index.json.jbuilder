json.array!(@scores) do |score|
  json.extract! score, :id, :specs, :failed, :succeeded, :pending
  json.url spec_score_api.score_url(score, format: :json)
end
