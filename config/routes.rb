Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "sessions#new"
  post "/sessions", to: "sessions#create"
  post "/sessions/logout", to: "sessions#destroy"
  get "/secrets", to: "secrets#show"
end
