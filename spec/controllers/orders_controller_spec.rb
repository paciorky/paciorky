require File.dirname(__FILE__) + '/../spec_helper'

describe OrdersController do
  fixtures :all
  render_views

  xit "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  xit  "show action should render show template" do
    get :show, :id => Order.first
    response.should render_template(:show)
  end

  xit  "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  xit  "create action should render new template when model is invalid" do
    Order.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  xit  "create action should redirect when model is valid" do
    Order.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(order_url(assigns[:order]))
  end

  xit  "edit action should render edit template" do
    get :edit, :id => Order.first
    response.should render_template(:edit)
  end

  xit  "update action should render edit template when model is invalid" do
    Order.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Order.first
    response.should render_template(:edit)
  end

  xit  "update action should redirect when model is valid" do
    Order.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Order.first
    response.should redirect_to(order_url(assigns[:order]))
  end

  xit  "destroy action should destroy model and redirect to index action" do
    order = Order.first
    delete :destroy, :id => order
    response.should redirect_to(orders_url)
    Order.exists?(order.id).should be_false
  end
end
