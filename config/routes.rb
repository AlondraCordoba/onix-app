Rails.application.routes.draw do
  devise_for :users
  resources :evidences
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#landing"
  get "home", to:"pages#landing"

  # Evidences post by a store
  # get "evidences/user/:user_id", to: "evidences#from_store"
end
