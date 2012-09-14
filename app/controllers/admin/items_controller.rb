class Admin::ItemsController < Admin::BaseController

  def index
    unless params[:category_id].blank?
      @items = Item.find_all_by_category_id(params[:category_id])
    else
      @items = Item.all
    end
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
        redirect_to edit_admin_item_path(@item), :notice => t('item.notice.created')
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
      redirect_to edit_admin_item_path(@item), :notice => t('item.notice.edited')
    else
      render :action => 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_items_url, :notice => t('item.notice.deleted')
  end
end
