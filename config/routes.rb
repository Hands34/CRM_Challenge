Rails.application.routes.draw do
  resources :customers, only: %i[index show alphabetized missing_email]
  root to: "customers#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
