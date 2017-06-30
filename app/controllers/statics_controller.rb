class StaticsController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@peliculas = Pelicula.all
  	@comentarios = Comentario.all

    if params[:search]
    	@peliculas = Pelicula.search(params[:search])
    elsif	params[:search_name]
      @peliculas = Pelicula.search_name(params[:search_name]).order('created_at DESC')
    elsif params[:search_year]
      @peliculas = Pelicula.search_year(params[:search_year]).order('created_at DESC')
    elsif params[:search_genre]
     	@peliculas = Pelicula.search_genre(params[:search_genre]).order("created_at DESC")
    else
      @peliculas = Pelicula.all.order('created_at DESC')
  end

  def show
  	@pelicula = Pelicula.where(params[:id])
  end

  def about
  end
end
end
