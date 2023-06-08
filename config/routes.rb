Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"


  get '/components', to: "pages#components"  #a retirer

  resources :user_game do
    resources :games



  resources :games do
    resources :user_games, only: [:create]

  end

  resources :user_games, only: [:show, :update, :create]



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
