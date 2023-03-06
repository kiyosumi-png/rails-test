Rails.application.routes.draw do
  root "books#index"

  get "books/new", to: "books#new"
  post "/books", to: "books#create"

  get "books/:id/edit", to: "books#edit"
  patch "books/:id", to: "books#update", as: "book"

  delete "books", to: "books#delete"
end
