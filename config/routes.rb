Rails.application.routes.draw do
  resources :line_items
  resources :orders
  resources :products  

  get 'by_category', to: 'storefront#items_by_category'
  get 'by_brand',    to: 'storefront#items_by_brand' 

  root 'storefront#all_items'
end
