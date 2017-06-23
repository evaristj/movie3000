Rails.application.routes.draw do

  get 'select_movies/index'

  devise_for :users

  get '/select_plan' => 'payment_select#select_plan', as: :select_plan
  get '/select_monthly_subscription' => 'payment_select#select_monthly_subscription', as: :select_monthly_subscription


  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get 'settings/index'

  resources :charges

  resources :settings

  resources :select_movies, only: :index

  get 'comentarios/index'

  resources :comentarios

  get 'statics/index'

  # get 'statics/about'

  get 'peliculas/index'

  resources :peliculas

  get '/index' => 'statics#index', :as => :index


  get '/about' => 'statics#about', :as => :about

  get 'select_peliculas/index'


  resources :peliculas do
    
    resources :comentarios
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :select_peliculas, only: :index
  resources :charges
  resources :payments
  
  root :to =>"statics#index"

end
