Rails.application.routes.draw do
  devise_for :users
  #devise_for :customers
  root to: 'homes#top'
  
  resources :customers, only: [:index, :show, :edit, :update]
  resources :items, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :posts, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :genres, only: [:index, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
