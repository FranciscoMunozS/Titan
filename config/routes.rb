Rails.application.routes.draw do
  resources :appointments
  resources :playfields
  devise_for :users
  resources :dashboard
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end
  resources :users

  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
