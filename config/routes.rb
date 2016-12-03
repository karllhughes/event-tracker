Rails.application.routes.draw do
  # Events
  resources :events

  ## Home page
  root 'events#index'
end
