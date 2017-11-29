Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/locations'
  root 'welcome#index'

  resources :boats, except: [:edit, :update, :destroy]
  resources :jobs, except: [:edit, :update, :destroy]
  resources :shipments, except: [:edit, :update, :destroy]

end
