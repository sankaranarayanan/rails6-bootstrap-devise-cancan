Rails.application.routes.draw do
  devise_for :users
  resources :secret_codes, only: [:index,:create]
  root "welcome#index"
end
