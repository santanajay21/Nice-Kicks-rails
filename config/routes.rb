Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'sessions#welcome'

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users

  # get '/sneakers' => 'sneakers#index' , as: 'sneakers'
  get 'sneakers/most_expensive' => 'sneakers#most_expensive'
  # get '/sneakers/:id' => 'sneakers#show', as: 'sneaker'
  resources :sneakers, only: [:new, :index, :create] #writes 8 routes for us 


  resources :brands do 
    resources :sneakers, shallow: true
  end 



end
