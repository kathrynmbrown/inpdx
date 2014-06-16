Inpdx::Application.routes.draw do

  get 'tags/:tag', to: 'tags#index', as: :tag
  devise_for :users
  resources :companies do
    resources :reviews
    resources :products
  end
  resources :reviews
  resources :events
  resources :profiles
  resources :products do
    resources :reviews
  end
  resources :rsvps
  resources :tags
  resources :restaurants
  root to: 'tags#home'
end
