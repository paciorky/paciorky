module CategoriesHelper
  def active_category_class(category_id = 0)
      'active' if active_category(category_id)
    end

    def active_category(category_id = 0)
      (controller_name == "categories") && (category_id == params[:id].to_i)
    end
end
