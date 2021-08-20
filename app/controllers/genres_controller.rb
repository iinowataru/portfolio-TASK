class GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres =  Genre.all
  end

  def create
    @genre = Genre.new
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
    @genres = Item.find(params[:id])
    @genres.destroy
    redirect_to genres_path
  end
  
  private
 def post_params
  params.require(:genre).permit(:name, :item_id)
 end
  
end
