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

  get 'admin/authors', to: 'authors#index'
  get 'admin/authors/new', to: 'authors#new'
  post 'admin/authors/new', to: 'authors#create'
  get 'admin/authors/:id', to: 'authors#show'
  get 'admin/authors/:id/edit', to: 'authors#edit'
  patch 'admin/authors/:id/update', to: 'authors#update'

  get 'admin/imports/new', to: 'imports#new'
  post 'admin/imports/new', to: 'imports#create'

  get 'overviews', to: 'overviews#index'

  get 'overview_episodes', to: 'overview_episodes#index'
  get 'overview_episodes/:id', to: 'overview_episodes#show'
  get 'overview_episodes/default/rand', to: 'overview_episodes#rand'
  
  get 'rates', to: 'rates#index'
  get 'rates/new', to: 'rates#new'
  post 'rates/new', to: 'rates#create'

  get 'searchs', to: 'searchs#index'

  root to: 'overviews#index'

  resources :seasons
  resources :episodes
  resources :authors
  resources :rates

end
