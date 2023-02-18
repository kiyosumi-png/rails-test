Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index" 
  get "/articles/add", to: "articles#new"
  post "/articles", to: "articles#create"
end
