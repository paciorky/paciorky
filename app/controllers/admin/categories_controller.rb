class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.all
  end


  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to admin_categories_url, :notice => "Successfully created category."
    else
      render :action => 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to admin_categories_url, :notice => "Successfully updated category."
    else
      render :action => 'show'
    end
  end
end