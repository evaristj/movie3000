class PeliculasController < ApplicationController
   def index
   	@peliculas = Pelicula.all
   end
   
   def show
   	@pelicula = Pelicula.find(params[:id])
   end
   
   def new
   end
   
   def create
   end
   
   def edit
   end
   
   def update
   end
   
   def destroy
   end

end
