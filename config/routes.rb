Rails.application.routes.draw do
  devise_for :users
  root to: "recruitments#index"
  resources :recruitments, only: :new, :create
end