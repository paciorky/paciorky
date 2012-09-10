Paciorky::Application.routes.draw do

  resources :pages, :only => [:show]
  resources :categories, :only => [:index, :show]
  resources :items, :only => [:show]
  match "/contacts" => "contacts#index"

  root :to => "home#index"
  devise_for :users

  get "/admin" => redirect("/admin/items")
  namespace :admin do
    resources :items, :except => :show
    resources :categories, :except => :show
    resources :pages, :except => [:show]
  end

end
