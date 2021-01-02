Rails.application.routes.draw do

  get 'create/destroy'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments,only: [:create, :destroy]
  end
  root 'homes#top'
  get 'home/about' => 'homes#about'
end