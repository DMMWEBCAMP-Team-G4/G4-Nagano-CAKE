Rails.application.routes.draw do
 
 

  get 'homes/top'

  get 'homes/about'

  devise_for :admins
  
  namespace :admin do
    resources :members,only:[:index,:show,:edit,:update]
    resources :products
    resources :genres,only:[:index,:create,:edit,:update]
    resources :orders
    resources :order_products
  end
    
  devise_for :members
  
    resources :members
      root 'public/homes#top'
    resources :shipping_addresses
    resources :orders
    resources :products
    resources :cart_items
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
