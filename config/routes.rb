Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :instructions
  root 'instructions#index'
  get  "instructions/new"   => "instructions#new"
  post "instructions/new"   => "instructions#create"
end
