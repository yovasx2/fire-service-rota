Rails.application.routes.draw do
  resources :user_schedules
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#index'
end
