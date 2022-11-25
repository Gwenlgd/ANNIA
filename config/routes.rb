Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"
  get '/activites', to: 'pages#activites'
  get '/affaires', to: 'pages#affaires'
  get '/lieu', to: 'pages#lieu'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users do
    resources :voyages
  end


  resources :chambres do
    resources :lits
  end

  resources :voyages
  resources :repas
  resources :cabanes
  resources :chambres
  resources :bookings
  resources :lits
end
