Rails.application.routes.draw do

  devise_for :users, skip: :all
  devise_scope :user do
    get '/users/sign_in' => 'devise/sessions#new', as: :new_user_session
    post '/users/sign_in' => 'devise/sessions#create', as: :user_session
    delete '/users/sign_out' => 'devise/sessions#destroy', as: :destroy_user_session
  end

  root to: "articles#index"

  resources :articles

  resources :about_me, only: %i[index]

  resources :inquiries, only: %i[index new create show]

  get '*path', controller: 'application', action: 'render_404'
end
