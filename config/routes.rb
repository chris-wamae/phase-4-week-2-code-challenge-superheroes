Rails.application.routes.draw do
  resources :hero_powers, only:[:create]
  resources :powers, only:[:index,:create,:show]
  get "heroes", to: "heros#create"
  get "heroes/:id", to: "heros#show"
  post "heroes", to: "heros#post"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
