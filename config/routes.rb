# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :adminstrators, path: 'admin',
   path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }

  namespace :admin do
      resources :transactions
      resources :users
      root to: "users#index"
    end

  devise_scope :user do
  root to: "devise/sessions#new"
  end

  devise_for :users

  get 'profile' => 'user#index', :as => 'profile'

end
