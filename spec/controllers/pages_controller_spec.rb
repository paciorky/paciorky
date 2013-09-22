require File.dirname(__FILE__) + '/../spec_helper'

describe PagesController do
  fixtures :all
  render_views

  xit  "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  xit  "show action should render show template" do
    get :show, :id => Page.first
    response.should render_template(:show)
  end

  xit  "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  xit  "create action should render new template when model is invalid" do
    Page.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  xit  "create action should redirect when model is valid" do
    Page.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(page_url(assigns[:page]))
  end

  xit  "edit action should render edit template" do
    get :edit, :id => Page.first
    response.should render_template(:edit)
  end

  xit  "update action should render edit template when model is invalid" do
    Page.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Page.first
    response.should render_template(:edit)
  end

  xit  "update action should redirect when model is valid" do
    Page.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Page.first
    response.should redirect_to(page_url(assigns[:page]))
  end

  xit  "destroy action should destroy model and redirect to new action" do
    page = Page.first
    delete :destroy, :id => page
    response.should redirect_to(pages_url)
    Page.exists?(page.id).should be_false
  end
end
