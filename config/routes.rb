Rails.application.routes.draw do
  get 'simple_pages/products'
  get 'simple_pages/index'
  root 'simple_pages#index'
  get 'simple_pages/about'
  get 'simple_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
