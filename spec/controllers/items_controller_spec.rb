require File.dirname(__FILE__) + '/../spec_helper'

describe ItemsController do
  fixtures :all
  render_views

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "show action should render show template" do
    get :show, :id => Item.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Item.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Item.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(item_url(assigns[:item]))
  end

  it "show action should render show template" do
    get :show, :id => Item.first
    response.should render_template(:show)
  end

  it "update action should render show template when model is invalid" do
    Item.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Item.first
    response.should render_template(:show)
  end

  it "update action should redirect when model is valid" do
    Item.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Item.first
    response.should redirect_to(item_url(assigns[:item]))
  end

  it "destroy action should destroy model and redirect to new action" do
    item = Item.first
    delete :destroy, :id => item
    response.should redirect_to(items_url)
    Item.exists?(item.id).should be_false
  end
end
