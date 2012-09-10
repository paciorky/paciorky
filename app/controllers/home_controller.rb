class HomeController < ApplicationController
  def index
    @frontpage = Page.find_by_slug(:frontpage)
    @latest_items = Item.all(:limit => 8, :order => :created_at)
  end
end
