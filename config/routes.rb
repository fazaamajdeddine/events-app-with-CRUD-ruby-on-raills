Rails.application.routes.draw do
  get "evnts/new"
  root "events#home"
end
