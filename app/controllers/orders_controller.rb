class OrdersController < ApplicationController
  def new
    @order = Order.new
    @order.item = Item.find_by_id!(params[:item_id])

  end

  def create
    @order = Order.new(params[:order])
    @order.item = Item.find_by_id!(params[:item_id])
    if @order.save
      redirect_to root_path, :notice => "Successfully created order."
    else
      render :action => 'new'
    end
  end

end
