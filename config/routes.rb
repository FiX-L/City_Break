Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/components', to: "pages#components"  #a retirer

  resources :user_game do
    resources :games
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
