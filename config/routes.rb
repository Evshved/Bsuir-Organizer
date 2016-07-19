Rails.application.routes.draw do
  resources :instructions
  root 'instructions#index'
end
