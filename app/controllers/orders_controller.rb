class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update

  end

  def show
    @order = Order.find(params[:id])
  end
end
