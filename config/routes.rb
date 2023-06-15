Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/home', to: "pages#home"
  get '/components', to: "pages#components"  #a retirer
  get '/rules', to: "pages#rules"
  get '/tutoriel', to: "pages#tutoriel"
  get '/reglages', to: "pages#reglages"
  get '/profil', to: "pages#profil"
  get 'pages/bombe', to: 'pages#bombe', as: 'bombe'
  post 'pages/bombe', to: 'pages#bombe_answer'
  get 'pages/ending_adventure_show', to: 'pages#ending_adventure_show', as: 'ending_adventure_show'
  get 'pages/defeat', to: 'pages#defeat', as: 'defeat'
  get '/final_score', to: 'pages#final_score', as: 'final_score'



  get '/hint', to: "pages#hint"
  get '/user_games/:user_game_id/enigma/:enigma_id', to: "user_games#penalty", as: "penalty"



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
      get '/enigmas/bomb', to: 'enigmas#bomb', as: 'bomb'

  end




resources :point_of_interests, only:[:show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
