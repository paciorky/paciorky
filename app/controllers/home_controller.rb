class HomeController < ApplicationController
  def index
    @frontpage = Page.find_by_slug(:frontpage)
    @latest_items = Product.all(:limit => 8, :order => :created_at)
  end
end
