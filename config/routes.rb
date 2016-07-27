Rails.application.routes.draw do
  devise_for :users
  resources :instructions
  root 'instructions#index'
end
