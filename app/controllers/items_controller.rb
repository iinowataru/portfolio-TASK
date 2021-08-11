class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def create
  end
  
  def edit
  end

  def update
  end

  def destroy
  end
  
  private
def item_params
  params.require(:item).permit(:genre_id, :name, :describe, :jan_code, :image_id)
end
  
end
