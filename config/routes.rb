Rails.application.routes.draw do
  use_doorkeeper
  namespace :admin do
    resources :users

    root to: 'users#index'
  end
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # API Routes
  namespace :api do
    resources :users, only: %i[create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'public#index'
end
