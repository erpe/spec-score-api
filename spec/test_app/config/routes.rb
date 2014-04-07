Rails.application.routes.draw do

  mount SpecScoreApi::Engine => "/api-0.1"
end
