Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  get 'items/index'
  get 'items/show'
  get 'items/edit'
  get 'items/update'
  get 'items/destroy'
  get 'customers/index'
  get 'customers/show'
  get 'customers/edit'
  get 'customers/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
