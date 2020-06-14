Rails.application.routes.draw do
  root to: "articles#index"

  resources :articles

  resources :about_me, only: [:index]

end
