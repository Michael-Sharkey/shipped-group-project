Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'devise/sessions#new'

  resources :boats, except: [:edit, :update, :destroy]
  resources :boats, except: [:edit, :update, :destroy]
  get
end
