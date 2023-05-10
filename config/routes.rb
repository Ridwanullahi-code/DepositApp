# frozen_string_literal: true

Rails.application.routes.draw do

  # get '/register/:user_id', to: 'users#new', as: 'new_user_referral'

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

  get 'profile' => 'user#show', :as => 'profile'
  get 'deposit' => 'user#deposit', :as => 'deposit'
  get 'withdraw' => 'user#withdraw', :as => 'withdraw'
  get 'new_user_referral' => 'user#referral', :as => 'new_user_referral'

end
