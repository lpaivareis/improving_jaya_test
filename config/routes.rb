Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :issues, only: %i[index show]

  namespace :webhooks do
    resources :events, only: :create
  end
end
