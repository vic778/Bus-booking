Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'
  devise_for :users
  
  get 'user/auto_login', to: 'users#auto_login'
  resources :agences 
  resources :buses

end
