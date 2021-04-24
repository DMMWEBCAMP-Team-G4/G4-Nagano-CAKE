Rails.application.routes.draw do



  get 'homes/top'

  get 'homes/about'

  
  devise_for :admins

  namespace :admin do
    resources :members,only:[:index,:show,:edit,:update]
    resources :genres,only:[:index,:create,:edit,:update]
    resources :products,only: [:index,:new,:create,:show,:edit,:update]
    resources :orders
    resources :order_products
  end

      root 'public/homes#top'
      get 'public/home/about' => 'public/homes#about'

      get 'members/my_page', to:'members#show', as: :members
    resource :members,only: [:update,:edit] do
  		collection do
  	     get 'quit'
  	     patch 'withdraw'
  	  end 
  	end
  
  	devise_for :members
    resources :addresses,only: [:index, :create, :edit, :update, :destroy]
    resources :orders
    resources :products,only: [:index,:show]
    resources :cart_items, only:[:index, :create, :update, :destroy]
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end