Rails.application.routes.draw do
  root "books#index"

  get "books/new", to: "books#new"
  post "/books", to: "books#create"
end
