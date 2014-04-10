Rails.application.routes.draw do
  get 'home/index'

  root to: "home#index"
  devise_for :admins
  devise_for :users
  
end
