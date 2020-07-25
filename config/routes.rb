Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#main'

  get '/secret', to: 'secrets#show', as: 'secret'
  get '/sessions/new', to: 'sessions#new', as: 'login'
  post '/sessions/create', to: 'sessions#create'
  delete '/sessions/delete', to: 'sessions#destroy'

end
