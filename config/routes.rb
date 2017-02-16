Rails.application.routes.draw do
  devise_for :users
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
