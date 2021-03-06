Rails.application.routes.draw do

  devise_for :admins

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :wines do
    resources :orders
    collection do
      get 'search'
      post 'search'
    end
  end
  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
