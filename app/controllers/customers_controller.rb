class CustomersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @customers = Customer.all
    @customer = Customer.new
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)
   if @customer.save
     redirect_to customers_path(@customer), notice: "投稿成功しました"
   else
     @customers = Customer.all
     render 'index'
   end
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customer_path(@customer.id)
  end
  
 private
 def customer_params
  params.require(:customer).permit(:last_name, :first_name, :image)
 end

end
