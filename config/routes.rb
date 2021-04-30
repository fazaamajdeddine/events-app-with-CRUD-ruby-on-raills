Rails.application.routes.draw do
  get "events/new"
  root "events#index"
  post "events/new", to: "events#create"
  
  resources :events
end
