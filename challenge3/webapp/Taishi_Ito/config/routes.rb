Rails.application.routes.draw do
  get 'show/index'
  get 'toppages/index'
  root to: 'toppages#index'
end
