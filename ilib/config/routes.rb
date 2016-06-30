Rails.application.routes.draw do
  get 'welcome/index'

  root 'books#index'
  get 'books/new' => 'books#new', as: :new_book
  get 'books/:id' => 'books#show', as: :book
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  patch 'books/:id' => 'books#update'
delete 'books/:id' => 'books#delete'
end
