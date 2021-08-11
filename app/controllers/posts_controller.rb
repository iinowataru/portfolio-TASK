class PostsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
 private
 def post_params
  params.require(:post).permit(:customer_id, :item_id, :title, :body)
 end
 
end
