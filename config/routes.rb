Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  get "static_pages/help"
  # delete "/logout", to: "sessions#destroy"
  # resources :microposts, only: %i(create destroy)
  # resources :relationships, only: %i(create destroy)
end
