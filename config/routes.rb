Rails.application.routes.draw do
  root to: 'schedules#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users, only: [:edit, :show]
  resources :schedules, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
