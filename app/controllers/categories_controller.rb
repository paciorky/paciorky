class CategoriesController < ApplicationController
  def index
    @categories = Category.ordered_by_items
  end

  def show
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to categories_url, :notice  => "Successfully updated category."
    else
      render :action => 'show'
    end
  end
end
