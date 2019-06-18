Rails.application.routes.draw do
  resources :workout_exercises
  resources :exercises
  resources :workouts
  resources :users

  resources :users, only: [:show] do
    resources :workouts, only: [:show, :new]
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  root 'application#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
