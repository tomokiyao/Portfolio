Rails.application.routes.draw do
  root to: 'tops#index'
  # get 'tops/index'
  get 'tops/show'
  devise_for :users
  get 'projects/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index,:show, :edit, :update]
  resources :projects, only: [:index,:show,:new,:create,:edit,:update]
  resources :free_traders, only: [:index,:show,:new,:create,:edit,:update]
end
