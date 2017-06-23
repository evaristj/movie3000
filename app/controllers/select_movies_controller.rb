class SelectMoviesController < ApplicationController
	before_action :authenticate_user!
  def index
		@user = current_user
		@peliculas = Pelicula.all
 		
		if params[:search]
			@peliculas = Pelicula.search(params[:search]).order("created_at DESC")			
		elsif params[:search_name]
			@peliculas = Pelicula.search_name(params[:search_name]).order("created_at DESC")
			
		elsif params[:search_year]
			@peliculas = Pelicula.search_year(params[:search_year]).order("created_at DESC")
		end
  end
end
