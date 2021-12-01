Rails.application.routes.draw do
  resources :posts
  
  get     '/posts/:post_id/comments',           to: 'comments#index', as: 'post_comments'
  post    '/posts/:post_id/comments',           to: 'comments#create'
  get     '/posts/:post_id/comments/new',       to: 'comments#new',   as: 'new_post_comment'  
  get     '/posts/:post_id/comments/:id',       to: 'comments#show',  as: 'post_comment'
  get     '/posts/:post_id/comments/:id/edit',  to: 'comments#edit',  as: 'edit_post_comment'
  patch   '/posts/:post_id/comments/:id',       to: 'comments#update'
  delete  '/posts/:post_id/comments/:id',       to: 'comments#destroy'

  resources :pages
  # get '/pages', to: 'pages#index'
  # post '/pages', to: 'pages#create'
  # get '/pages/new', to: 'pages#new', as: 'new_page'
  # get '/pages/:id', to: 'pages#show', as: 'page'
  # get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  # patch '/pages/:id', to: 'pages#update'
  # delete '/pages/:id', to: 'pages#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
