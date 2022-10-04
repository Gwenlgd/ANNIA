Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/affaires', to: 'pages#affaires' # nouveau nom url : quoi prendre ?
  get '/programme', to: 'pages#programme'
  get '/transports', to: 'pages#transports' # nouveau nom url : comment s'y rendre?
  get '/repas', to: 'pages#repas' # nouveau nom url : ?
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
