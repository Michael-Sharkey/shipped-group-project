Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :boats, except: [:edit, :update, :destroy]
  resources :jobs, except: [:edit, :update, :destroy]

end
