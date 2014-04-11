Rails.application.routes.draw do
  mount SpecScoreApi::Engine => "/api/v1"
end
