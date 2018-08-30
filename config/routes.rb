Rails.application.routes.draw do
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions',
  #   password: 'users/passwords',
  #   registrations: 'users/registrations'
  # }
  devise_scope :user do
    post 'users', to: 'users/registrations#create'
  end
  root to: 'tops#index'
  get 'users/history'
  get 'users/favorite'
  get 'tops/show'
  devise_for :users
  get 'projects/search'
  get 'free_traders/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :rooms, only: [:index, :show, :create] do
    resources :messages, only: [:create, :destroy]
  end
  resources :users, only: [:index,:show, :edit, :update]

  resources :projects, only: [:index,:show,:new,:create,:edit,:update,:destroy] do
    resource :project_favorites, only: [:create, :destroy]
  end

  resources :free_traders, only: [:index,:show,:new,:create,:edit,:update,:destroy] do
    resource :trader_favorites, only: [:create, :destroy]
  end
end
