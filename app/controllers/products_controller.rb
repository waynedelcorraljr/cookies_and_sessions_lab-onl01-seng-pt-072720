class ProductsController < ApplicationController
  def index
    cart << product_params[:product] unless product_params[:product].blank?
    @cart = cart
    # raise params.inspect 
  end

  private

  def product_params
    params.permit(:product)
  end

end
