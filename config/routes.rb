Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


get '/sneakers' => 'sneakers#index' , as: 'sneakers'
get 'sneakers/most_expensive' => 'sneakers#most_expensive'
get '/sneakers/:id' => 'sneakers#show', as: 'sneaker'






end
