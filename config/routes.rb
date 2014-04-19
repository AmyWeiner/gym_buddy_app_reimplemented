Rails.application.routes.draw do
  # Home routes
  root to: 'home#index'
  get '/about', to: 'home#about', as: 'about'
  get '/contact', to: 'home#contact', as: 'contact'

  # Users routes
  resources :users 
  get '/search', to: 'users#search', as: 'search_users'
  get '/contact/buddy/:id', to: 'users#contact', as: 'contact_user'

  # Contact route
  post '/contact', to: 'contact#create', as: 'contact_buddy'

  # Availabilities routes
  resources :availabilities

  # Gyms routes
  resources :gyms
  get '/search/gyms', to: 'gyms#search', as: 'search_gyms'
  post 'user/joingym', to: 'gyms#join_gym', as: 'joingym'

  # Buddyships routes
  resources :buddyships

  # Devise routes
  devise_for :admins
  devise_for :users, :path => 'accounts'
end
