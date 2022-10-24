Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/activites', to: 'pages#activites'
  get '/affaires', to: 'pages#affaires'
  get '/lieu', to: 'pages#lieu'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users do
    resources :voyages do
    end
  end
  resources :voyages
  resources :repas
  resources :cabanes
end
