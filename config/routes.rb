Inpdx::Application.routes.draw do

  get 'tags/:tag', to: 'tags#index', as: :tag
  devise_for :users
  resources :companies do
    resources :reviews
    resources :products
    resources :favorites
  end
  resources :reviews
  resources :events
  resources :profiles
  resources :products do
    resources :reviews
    resources :favorites
  end
  resources :rsvps
  resources :tags
  resources :restaurants do
    resources :favorites
  end  
  root to: 'tags#home'
end
