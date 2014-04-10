SpecScoreApi::Engine.routes.draw do
  
  resources :projects do
    resources :scores
    resources :teammates
  end

  resources :users do
    resources :scores
  end

  resources :scores

end
