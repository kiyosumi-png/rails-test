Rails.application.routes.draw do
  root "books#index"

  get "books/test", to: "books#test"
  get "books/new", to: "books#new", as: "new_book"
  post "/books", to: "books#create"

  get "books/:id", to: "books#show", as: "detail_book"

  get "books/:id/edit", to: "books#edit", as: "edit_book"
  patch "books/:id", to: "books#update", as: "book"

  delete "books/:id/delete", to: "books#destroy", as: "delete_book"
end
