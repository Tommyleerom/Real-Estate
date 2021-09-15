Rails.application.routes.draw do
  namespace :api do
    get 'properties/index'
  end
  get 'properties/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    get '/things', to:'things#index'
    get '/properties', to: 'properties#index'
  end 
end
