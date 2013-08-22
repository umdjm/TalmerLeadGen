TalmerLeadgen::Application.routes.draw do
  resources :branches


  resources :subscriptions


  get "sessions/new"
  get "static_pages/index", as:'example'
  get "notifications/index", as:'notifications'
  get 'referrers/index', as: 'permissions'

  resources :leads
  resources :users
  resources :sessions
  resources :referrers
  resources :subscriptions

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  root to: 'leads#index'
end
