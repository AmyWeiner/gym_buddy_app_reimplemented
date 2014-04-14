Rails.application.routes.draw do
  root to: 'home#index'
  get '/about', to: 'home#about', as: 'about'
  get '/contact', to: 'home#contact', as: 'contact'
  resources :users do
    resources :availabilities
  end
  resources :gyms
  get '/search/gyms', to: 'gyms#search', as: 'search'
  post 'user/joingym', to: 'gyms#join_gym', as: 'joingym'
  devise_for :admins
  devise_for :users, :path => 'accounts'
end
