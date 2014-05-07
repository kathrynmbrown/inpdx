Inpdx::Application.routes.draw do
  devise_for :users
  resources :places
  resources :events
  resources :organizations
  resources :profiles
  root to: 'places#home'
end
