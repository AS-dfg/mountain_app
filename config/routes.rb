Rails.application.routes.draw do
  root 'static_pages#home'
  get 'users/new'
  get  '/introduction',    to: 'static_pages#introduction'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
end