Rails.application.routes.draw do
  root 'static_pages#home'
  get 'users/new'
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get  '/introduction',    to: 'static_pages#introduction'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #post "likes/:micropost_id/create", to: "likes#create", constraints: {micropost_id: /\d+/}, as: :likes_create
  #post "likes/:micropost_id/delete", to: "likes#delete", constraints: {micropost_id: /\d+/}, as: :likes_delete
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy, :show] do
    resources :likes,             only: [:create, :destroy]
  end
  resources :relationships,       only: [:create, :destroy]
end