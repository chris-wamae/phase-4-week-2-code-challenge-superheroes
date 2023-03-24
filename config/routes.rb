Rails.application.routes.draw do
  resources :hero_powers, only:[:create]
  resources :powers, only:[:index,:create,:show,:update]
  get "heroes", to: "heros#index"
  get "heroes/:id", to: "heros#show"
  post "heroes", to: "heros#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
