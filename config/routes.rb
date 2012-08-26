Paciorky::Application.routes.draw do
  resources :categories, :only => [:index, :show]
  resources :items, :only => [:index, :show]

  root :to => "home#index"
  devise_for :users

  get "/admin" => redirect("/admin/items")
  namespace :admin do
    resources :items, :except => :show
    resources :categories, :except => :show
  end

end
