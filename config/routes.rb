Rails.application.routes.draw do

  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get 'settings/index'

  resources :settings

  get 'comentarios/index'

  resources :comentarios

  get 'statics/index'

  # get 'statics/about'

  get 'peliculas/index'

  resources :peliculas

  get '/index' => 'statics#index', :as => :index

  #root :to =>"statics#about"

  get '/about' => 'statics#about', :as => :about

  #root :to =>"peliculas#index"

  resources :peliculas do
    
    resources :comentarios
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :charges

  root :to =>"statics#index"

end
