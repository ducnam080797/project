Rails.application.routes.draw do
  root "static_pages#home"
  get "static_pages/help"
  devise_for :users
  resources :users
  resources :friendships, only: %i(create destroy index update) do
    patch 'friendships/:id', to: 'friendships#update'
  end
  resources :posts, only: %i(create destroy index show)
end
