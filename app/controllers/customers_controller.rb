class CustomersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end
  
 private
 def customer_params
  params.require(:customer).permit(:last_name, :first_name, :email, :password)
 end

end
