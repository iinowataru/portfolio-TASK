class GenresController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @genres =  Genre.all
    @genres = Genre.page(params[:page]).per(5)
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
    redirect_to genres_path
    else
     render 'index'
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
     redirect_to genres_path
    else
     render 'edit'
    end
  end
  
  def destroy
    @genres = Genre.find(params[:id])
    @genres.destroy
    redirect_to genres_path
  end
  
  private
 def genre_params
  params.require(:genre).permit(:name)
 end
  
end
