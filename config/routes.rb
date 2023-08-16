Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "/restaurants/:id", to: "restaurants#show"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :new, :create, :show]
  resources :restaurants do
    resources :reviews, :new
  end
end
