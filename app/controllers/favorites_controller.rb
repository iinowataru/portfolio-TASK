class FavoritesController < ApplicationController
  
  def create
    @item = Item.find(params[:item_id])
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.new(post_id: post.id)
    favorite.save
    redirect_to item_path(@item)
  end
  
  def destroy
    @item = Item.find(params[:item_id])
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find_by(post_id: post.id)
    favorite.destroy
    redirect_to item_path(@item)
  end
  
end
