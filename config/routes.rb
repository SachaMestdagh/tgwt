Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  root to: 'pages#home'
    get '/error', to: 'pages#error'
  get 'destination', to: 'pages#destination', as: :destination
  get 'profile', to: 'pages#profile', as: :profile
  # get 'test', to: 'pages#test', as: :test
  get 'blog', to: 'pages#blog', as: :blog
  get 'about', to: 'pages#about', as: :about
  get 'account', to: 'pages#account', as: :account
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
