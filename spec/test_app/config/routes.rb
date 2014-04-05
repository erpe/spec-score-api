Rails.application.routes.draw do

  mount SpecScoreApi::Engine => "/spec_score_api"
end
