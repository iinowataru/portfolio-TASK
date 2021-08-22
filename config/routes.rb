Rails.application.routes.draw do
  devise_for :users
  #devise_for :customers
  root to: 'homes#top'
  get '/search', to: 'searchs#search'
  
  resources :customers, only: [:index, :show, :create, :edit, :update]
  resources :items, only: [:index, :show, :create, :edit, :update, :destroy] do
   resource :faborites, only: [:create, :destroy]
   resources :posts, only: [:create, :destroy]
  end
  resources :genres, only: [:index, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
