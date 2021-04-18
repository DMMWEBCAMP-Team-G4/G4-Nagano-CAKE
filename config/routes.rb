Rails.application.routes.draw do
  devise_for :admins
  get 'cart_items/index'

  get 'products/new'

  get 'products/edit'

  get 'products/index'

  get 'products/show'

  get 'orders/new'

  get 'orders/log'

  get 'orders/thanx'

  get 'orders/index'

  get 'orders/show'

  devise_for :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
