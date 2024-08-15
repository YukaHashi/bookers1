Rails.application.routes.draw do
 
  root to: 'homes#top'
  
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get 'book/:id/show', to: 'books#show', as: 'show_book'
  get 'books/index', to: 'books#index', as: 'index_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
