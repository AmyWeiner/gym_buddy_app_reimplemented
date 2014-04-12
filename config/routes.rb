Rails.application.routes.draw do
  root to: 'home#index'
  get '/about', to: 'home#about', as: 'about'
  get '/contact', to: 'home#contact', as: 'contact'
  
  devise_for :admins
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  devise_scope :users do
    get '/create_profile', to: 'devise/registrations#after_sign_up_path_for', as: 'create_profile'
  end
end
