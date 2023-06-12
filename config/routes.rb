Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"


  get '/components', to: "pages#components"  #a retirer
  get '/rules', to: "pages#rules"

  resources :games do
    # resources :user_games, only: [:create]
    # resources :enigmas, only: [:show]
    resources :user_games, only: [:create]

  end

  resources :user_games, only: [:show, :update]
  resources :enigmas, only: [:show]

  resources :enigmas do
    get 'false_answer_popup', on: :member
      get 'hint_popup', on: :member
  end


resources :point_of_interests, only:[:show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
