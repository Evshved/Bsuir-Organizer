Rails.application.routes.draw do
  resources :records
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :instructions, :schedules
  root 'instructions#index'
  get  "instructions/new"   => "instructions#new"
  post "instructions/new"   => "instructions#create"
end
