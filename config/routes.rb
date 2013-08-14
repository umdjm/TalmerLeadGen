TalmerLeadgen::Application.routes.draw do
  get "sessions/new"

  resources :leads
  resources :users
  resources :sessions
  resources :referrers

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  root to: 'leads#index'
end
