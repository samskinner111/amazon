Rails.application.routes.draw do
  root 'storefront#all_items'

  devise_for :users
  resources :line_items
  resources :orders
  resources :products  

  get 'by_category', to: 'storefront#items_by_category'
  get 'by_brand',    to: 'storefront#items_by_brand' 

  get 'cart/add_to_cart'
  get 'cart/view_order'
  get 'cart/checkout'

  get 'view_order' => 'cart#view_order'
  get 'checkout' => 'cart#checkout'
  post 'add_to_cart' => 'cart#add_to_cart'

end