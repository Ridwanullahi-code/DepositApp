# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
      resources :transactions
      resources :users

      root to: "users#index"
    end
  root to: 'home#index'

  devise_for :users, path: '/',
                     path_names: { sign_in: '/home', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
end
