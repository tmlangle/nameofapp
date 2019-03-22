class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def show
  end

  def new
  end

  def create
    @order = Order.create(order_params)
    respond_with @order
  end

  def destroy
  end
  private

  def order_params
    params.require(:order).permit(:product_id, :user_id, :total)
  end
end
