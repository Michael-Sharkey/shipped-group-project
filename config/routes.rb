Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/locations'
  root 'welcome#index'

  resources :boats
  resources :jobs, except: [:destroy]

end
