class Admin::ItemsController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to edit_admin_item(@item), :notice => "Successfully created item."
    else
      render :action => 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to @item, :notice  => "Successfully updated item."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_url, :notice => "Successfully destroyed item."
  end
end
