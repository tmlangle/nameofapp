Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: { registrations: "user_registrations" }
  resources :products do
    resources :comments
  end
  resources :users
  get 'simple_pages/products'
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  post 'simple_pages/thank_you'
  root 'simple_pages#landing_page'
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :charges, only: [:new, :create]
  mount ActionCable.server => '/cable'
  resources :payments, only: :create
end
