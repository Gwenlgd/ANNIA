Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/transports', to: 'pages#transports'
  get '/repas', to: 'pages#repas'
  get '/activites', to: 'pages#activites'
  get '/affaires', to: 'pages#affaires'
  get '/lieu', to: 'pages#lieu'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :voyages

end
