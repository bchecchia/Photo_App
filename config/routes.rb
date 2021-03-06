Rails.application.routes.draw do

  resources :users, only: [:create, :show, :edit, :update]
  get "/signup", to: "users#new", as: 'signup'
  get "/login", to: "sessions#new", as: 'login'
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy", as: 'logout'
  get '/users/:id',  to: 'users#edit',  as: 'edit'
  get '/about', to: 'about#index'

  resources :users do
    resources :albums
  end
  resources :sessions

  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
