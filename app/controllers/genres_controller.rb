class GenresController < ApplicationController
  def index
  end

  def create
  end

  def edit
  end

  def update
  end
  
  private
 def post_params
  params.require(:genre).permit(:name)
 end
  
end
