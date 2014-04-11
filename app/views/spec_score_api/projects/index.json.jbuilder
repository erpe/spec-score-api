json.array!(@projects) do |project|
  json.extract! project, :id, :name
  json.url spec_score_api.project_url(project, format: :json)
end
