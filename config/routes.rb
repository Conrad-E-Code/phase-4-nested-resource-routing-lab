Rails.application.routes.draw do
  resources :items, only: [:index] 
  resources :users, only: [:show] do
    resources :items
  end

  # get "/users/:user_id/items", to: "items#items_by_id"

  # get "/users/:user_id/items/:id", to: "items#show"

  # post "/users/:user_id/items/:id", to: "items#create"
end
