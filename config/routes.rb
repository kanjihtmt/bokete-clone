Rails.application.routes.draw do
  root 'tops#index'

  resource :accounts, except: %i(new create) do
    get 'photo'
    get 'password'
    get 'email'
  end

  resources :themes

  resources :bokes, except: %i(new edit update destroy) do
    get ':theme_id/new' => 'bokes#new', on: :collection
  end

  devise_for :users
end
