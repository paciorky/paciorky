require File.dirname(__FILE__) + '/../spec_helper'

describe CategoriesController do
  render_views

  xit "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  xit "show action should render show template" do
    get :show, :id => Category.first
    response.should render_template(:show)

  end

  xit "update action should render show template when model is invalid" do
    Category.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Category.first
    response.should render_template(:show)
  end

  xit "update action should redirect when model is valid" do
    Category.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Category.first
    response.should redirect_to(categories_url)
  end
end
