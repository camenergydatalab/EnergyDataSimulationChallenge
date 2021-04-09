Rails.application.routes.draw do
  root 'graphs#index'
  resources :graphs, only: [:index, :show]
end
