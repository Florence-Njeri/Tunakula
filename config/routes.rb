Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "food#index"

  get "food", to: "food#index"
  get "/food/:id", to: "food#show"
end
