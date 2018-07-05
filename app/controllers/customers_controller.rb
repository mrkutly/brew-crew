class CustomersController < ApplicationController

  def show
    set_customer
    @brews = @customer.brews
  end


  private
  def set_customer
    @customer = Customer.find(params[:id])
  end

end
