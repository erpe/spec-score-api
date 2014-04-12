json.array!(@scores) do |score|
  json.extract! score, 
                :id,
                :user_id,
                :project_id,
                :duration,
                :specs, 
                :failed, 
                :succeeded, 
                :pending
  json.url spec_score_api.score_url(score, format: :json)
end
