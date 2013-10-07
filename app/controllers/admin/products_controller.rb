class Admin::ProductsController < Admin::BaseController

  def index
    if params[:category_id].present?
      @items = Product.find_all_by_category_id(params[:category_id])
    else
      @items = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to edit_admin_product_path(@product), :notice => t('product.notice.created')
    else
      render :action => 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to edit_admin_product_path(@product), :notice => t('product.notice.edited')
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path, :notice => t('product.notice.deleted')
  end
end
