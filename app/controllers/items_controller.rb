class ItemsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @items = Item.all
    @items = Item.page(params[:page]).per(5)
    @item = Item.new 
    @genres = Genre.all
  end

  def show
    @item = Item.find(params[:id])
    #@customers = Customer.find(params[:id])
    @post = Post.new
    @genres = Genre.all
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
    params.require(:item).permit(:name, :describe, :jan_code, :image, :genre_id)
   end
  
end
