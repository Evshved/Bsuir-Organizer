Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :instructions
  root 'instructions#index'
end
