Rails.application.routes.draw do
  resources :mini_types
  get 'welcome/index'
  resources :coins
  root to: 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
