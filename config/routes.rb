Rails.application.routes.draw do
  root 'bokes#index'

  resource :accounts, except: %i(new create) do
    get 'photo'
    get 'password'
    get 'email'
  end

  resources :themes
  resources :bokes

  devise_for :users
end
