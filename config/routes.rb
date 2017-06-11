Rails.application.routes.draw do
  get 'comentarios/index'
  resources :comentarios

  devise_for :users
  get 'statics/index'

  get 'statics/about'

  get 'peliculas/index'
  resources :peliculas

  root :to =>"statics#index"
  get '/index' => 'statics#index', :as => :index

  root :to =>"statics#about"
  get '/about' => 'statics#about', :as => :about

  root :to =>"peliculas#index"

  resources :peliculas do
    resources :comentarios
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
