class GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres =  Genre.all
  end

  def create
    genre = Genre.new(genre_params)
    genre.save
    redirect_to genre_path
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_path)
     redirect_to genre_path
    else
     render 'edit'
    end
  end
  
  private
 def post_params
  params.require(:genre).permit(:name)
 end
  
end
