Rails.application.routes.draw do
  get 'users/new'
  get 'users/mew'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',   to: 'users#new'
end