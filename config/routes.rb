Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'article#index'
  get '/show', to: 'article#show'
  resources :articles, only: [:show, :index, :new, :create]
  
end
