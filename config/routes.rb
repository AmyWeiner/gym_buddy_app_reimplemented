Rails.application.routes.draw do
  root to: 'home#index'
  get '/about', to: 'home#about', as: 'about'
  get '/contact', to: 'home#contact', as: 'contact'
  devise_for :admins
  devise_for :users
end
