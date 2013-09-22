require File.dirname(__FILE__) + '/../spec_helper'

describe ProductsController do
  fixtures :all
  render_views

  xit "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  xit "show action should render show template" do
    get :show, :id => Product.first
    response.should render_template(:show)
  end

  xit "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  xit "create action should render new template when model is invalid" do
    Product.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  xit "create action should redirect when model is valid" do
    Product.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(item_url(assigns[:product]))
  end

  xit "show action should render show template" do
    get :show, :id => Product.first
    response.should render_template(:show)
  end

  xit "update action should render show template when model is invalid" do
    Product.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Product.first
    response.should render_template(:show)
  end

  xit "update action should redirect when model is valid" do
    Product.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Product.first
    response.should redirect_to(item_url(assigns[:product]))
  end

  xit "destroy action should destroy model and redirect to new action" do
    item = Product.first
    delete :destroy, :id => item
    response.should redirect_to(items_url)
    Product.exists?(item.id).should be_false
  end
end
