Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index,:show, :edit, :update]
  resources :projects, only: [:index,:show,:new,:create,:edit,:update]
  resources :free_traders
end
