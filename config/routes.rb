Rails.application.routes.draw do
  root to: "top_pages#index"

  resources :articles
end
