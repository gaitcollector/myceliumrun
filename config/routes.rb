Rails.application.routes.draw do
  resources :agar_recipes
  resources :petri_dishes do
    resources :logs
  end
  resources :logs do
    resources :logs
  end
  resources :mushrooms
  root to: 'dashboard#index'
  get 'dashboard/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
