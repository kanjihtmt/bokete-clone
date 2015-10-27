Rails.application.routes.draw do
  root 'tops#index'

  resource :accounts, except: %i(new create destroy) do
    get 'photo'
    get 'password'
    patch 'update_password'
    get 'email'
    get 'withdraw'
  end

  resources :themes

  resources :bokes, except: %i(new edit update destroy) do
    get ':theme_id/new' => 'bokes#new', on: :collection
  end

  devise_for :users, controllers: { registrations: 'registrations' }
end
