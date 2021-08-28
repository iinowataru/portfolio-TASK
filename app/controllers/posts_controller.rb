class PostsController < ApplicationController

  def create
    item = Item.find(params[:item_id])
    comment = current_user.post.new(post_params)
    comment.item_id = item.id
    comment.save
    redirect_to item_path(item)
  end  

  def destroy
    Post.find_by(id: params[:id], item_id: params[:item_id]).destroy
    redirect_to item_path(params[:item_id])
  end
  
 private
 def post_params
  params.require(:post).permit(:body)
 end
 
end
