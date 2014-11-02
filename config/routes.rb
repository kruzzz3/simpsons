Simpsons::Application.routes.draw do

  get 'admin', to: 'admins#index'

  get 'admin/seasons', to: 'seasons#index'
  get 'admin/seasons/new', to: 'seasons#new'
  post 'admin/seasons/new', to: 'seasons#create'
  get 'admin/seasons/:id', to: 'seasons#show'
  get 'admin/seasons/:id/edit', to: 'seasons#edit'
  patch 'admin/seasons/:id/update', to: 'seasons#update'

  get 'admin/episodes', to: 'episodes#index'
  get 'admin/episodes/new', to: 'episodes#new'
  post 'admin/episodes/new', to: 'episodes#create'
  get 'admin/episodes/:id', to: 'episodes#show'
  get 'admin/episodes/:id/edit', to: 'episodes#edit'
  patch 'admin/episodes/:id/update', to: 'episodes#update'
  
  root to: 'admins#index'

  resources :seasons
  resources :episodes

end
