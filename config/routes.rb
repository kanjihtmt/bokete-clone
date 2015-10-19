Rails.application.routes.draw do
  root 'accounts#my'

  get 'accounts/my'
  get 'accounts/show'
  get 'accounts/photo'
  get 'accounts/password'
  get 'accounts/email'
  get 'accounts/delete'

  resources :themes
  resources :bokes

  devise_for :users
end
