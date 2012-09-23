class Admin::OrdersController < Admin::BaseController
  def index
    @orders = Order.all
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(params[:order])
      redirect_to admin_orders_path, :notice  => "Successfully updated order."
    else
      render :action => 'edit'
    end
  end

  def deliver
    @order = Order.find(params[:id])
    @order.deliver

    respond_to do |format|
      format.js
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to admin_orders_url, :notice => "Successfully destroyed order."
  end
end
