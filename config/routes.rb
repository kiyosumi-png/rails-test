Rails.application.routes.draw do
  root "articles#index"

  # get "/articles", to: "articles#index" 
  # get "/articles/add", to: "articles#new"
  # get "/articles/:id", to: "articles#show"
  # post "/articles", to: "articles#create"

  # get "/articles/:id/edit", to: "articles#edit"
  # patch "/articles/:id", to: "articles#update"

  resources :articles
end
