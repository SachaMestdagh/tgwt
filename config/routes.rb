Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  root to: 'pages#home'
    get '/error', to: 'pages#error'
  get 'destination', to: 'pages#destination', as: :destination
  get 'profile', to: 'pages#profile', as: :profile
  get 'blog', to: 'pages#blog', as: :blog
  get 'about', to: 'pages#about', as: :about
  get 'account', to: 'pages#account', as: :account


  resources :continents do
    resources :countries, only: [ :new, :create, :destroy, :show ]
  end

  resources :countries do
    resources :cities, only: [ :new, :create, :destroy, :show ]
  end

  resources :cities do
    resources :visits, only: [ :new, :create, :destroy, :show ]
    resources :eats, only: [ :new, :create, :destroy, :show ]
    resources :sleeps, only: [ :new, :create, :destroy, :show ]
  end

    resources :articles, only: [:update, :create, :edit, :show, :destroy]

end
