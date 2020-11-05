Rails.application.routes.draw do
  resources :customers, only: %i[index show] do
    collection do
      get "alphabetized"
      get "missing_email"
    end
  end
  root to: "customers#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
