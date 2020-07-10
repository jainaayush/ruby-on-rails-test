Rails.application.routes.draw do
  root 'products#index'

  resources :option_value_variations
  resources :variations
  resources :option_values
  resources :options
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
