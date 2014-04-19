json.extract! @project, 
              :id, 
              :name, 
              :count_of_scores,
              :count_succeeded,
              :count_failures,
              :count_specs,
              :count_pending,
              :overall_duration,
              :created_at 

json.url project_url(@project)

json.owner do |json|
  json.(@project.owner, :id, :nick)
  json.url user_url(@project.owner)
end

json.teammates @project.users do |json, user|
  json.(user, :id, :nick )
  json.url user_url(user)
end
