class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  def index
    @items = Item.all
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
    @item_new = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
     redirect_to item_path(@item), notice: "投稿成功しました"
    else
     @items = Item.all
     render 'index'
    end
  end
  
  def edit
    @item = Item.find(params[:id])
    @genres = Genre.all
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end
  
  private
def item_params
  params.permit(:genre_id, :name, :describe, :jan_code, :image_id)
end
  
end
