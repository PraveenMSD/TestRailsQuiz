Rails.application.routes.draw do
  devise_for :users
  #devise_for :users, :controllers => { application: 'application' }
  #root 'home#index'
  
  root "attempts#new"
  
  resources :questions do
    resources :answers
  end
  resources :attempts


end
