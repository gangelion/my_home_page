Rails.application.routes.draw do

  root to: "articles#index"

  resources :articles

  resources :about_me, only: %i[index]

  resources :inquiries, only: %i[index new create show]

end
