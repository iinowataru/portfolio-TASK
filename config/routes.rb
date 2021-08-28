Rails.application.routes.draw do
  devise_for :users
  #devise_for :customers
  root to: 'homes#top'
  get '/search', to: 'searchs#search'
  
  resources :customers, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :items, only: [:index, :show, :create, :edit, :update, :destroy] do
   resources :posts, only: [:create, :destroy] do
     resource :favorites, only: [:create, :destroy]
   end
  end
  resources :genres, only: [:index, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
