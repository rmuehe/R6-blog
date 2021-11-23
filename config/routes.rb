Rails.application.routes.draw do
  resources :posts
  get '/pages', to: 'pages#index'
  get '/pages/:id', to: 'pages#show', as: 'page'
  get '/pages/new', to: 'pages#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
