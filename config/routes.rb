Rails.application.routes.draw do
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  get 'customer/index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "customer#index", as: 'customer' #customer_path

  get '/customer', to: "customer#index"
end
