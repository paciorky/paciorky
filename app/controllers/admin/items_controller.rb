class Admin::ItemsController < Admin::BaseController

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
      @item.category.cover = @item if @item.category.items.count <= 1
      if @item.category.save
        redirect_to edit_admin_item_path(@item), :notice => "Successfully created item."
      end
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
      redirect_to edit_admin_item_path(@item), :notice => "Successfully updated item."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_items_url, :notice => "Successfully destroyed item."
  end
end
