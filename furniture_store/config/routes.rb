Rails.application.routes.draw do
  get 'inventory/all_products' => "inventory#all_products"

  get 'inventory/one_product'

  get 'inventory/by_category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
