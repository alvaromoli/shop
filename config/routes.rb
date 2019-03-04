Rails.application.routes.draw do
  root to: 'categories#index'

  resources :categories, only: [:index] do
    resources :products, only: [:index, :show]
  end
  resources :products, only: [:show]
end
