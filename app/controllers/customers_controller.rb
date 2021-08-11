class CustomersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end
  
 def customer_params
  params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :password)
 end

end
