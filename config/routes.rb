Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root :to => 'sessions#new', :as => '/'
  get '/', to: 'sessions#new', as: 'login'
  get '/show' => 'secrets#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
    # resources :sessions

end
