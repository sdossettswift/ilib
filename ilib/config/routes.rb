Rails.application.routes.draw do
  root 'books#index'
  get 'books/new' => 'books#new', as: :new_book
  get 'books/:id' => 'books#show', as: :book
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  patch 'books/:id' => 'books#update'
delete 'books/:id' => 'books#delete'

get 'authors/new' => 'authors#new', as: :new_author
get 'authors/:id' => 'authors#show', as: :author
post 'authors' => 'authors#create'
get 'authors/:id/edit' => 'authors#edit', as: :edit_author
patch 'authors/:id' => 'authors#update'
delete 'authors/:id' => 'authors#delete'
end
