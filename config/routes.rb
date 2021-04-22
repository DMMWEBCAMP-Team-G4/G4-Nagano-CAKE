Rails.application.routes.draw do
 
 

  get 'homes/top'

  get 'homes/about'

  devise_for :admins
  
  namespace :admin do
    resources :members
    resources :products
    resources :genres
    resources :orders
    resources :order_products
  end
    
  devise_for :members
  
    resources :members
      root 'public/homes#top'
      get 'public/home/about' => 'public/homes#about'
    resources :shipping_addresses
    resources :orders
    resources :products
    resources :cart_items
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
