Rails.application.routes.draw do

  devise_for :users
  root to: "articles#index"

  resources :articles

  resources :about_me, only: %i[index]

  resources :inquiries, only: %i[index new create show]

end
