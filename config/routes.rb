Rails.application.routes.draw do
  resources :exercise_entries
  resources :exercises
  resources :workouts
  resources :users

  resources :users, only: [:show] do
    resources :workouts, only: [:show, :new, :edit, :destroy]
  end

  resources :workouts, only: [:show] do
    resources :exercise_entries, only: [:new, :edit, :destroy]
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/auth/:provider/callback' => 'sessions#create'

  root 'application#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
