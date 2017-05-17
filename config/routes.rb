Rails.application.routes.draw do
  root 'storefront#all_items'

  devise_for :users
  resources :line_items
  resources :orders
  resources :products  

  get 'by_category', to: 'storefront#items_by_category'
  get 'by_brand',    to: 'storefront#items_by_brand' 

  
end
