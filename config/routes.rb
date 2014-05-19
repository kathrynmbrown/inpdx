Inpdx::Application.routes.draw do

  get 'tags/:tag', to: 'tags#index', as: :tag
  devise_for :users
  resources :places
  resources :reviews
  resources :events
  resources :organizations do
    resources :events
  end
  resources :profiles
  resources :rsvps
  resources :tags
  root to: 'tags#home'
end
