Paciorky::Application.routes.draw do
  resources :items

  root :to => "home#index"
  devise_for :users

  get "/admin" => redirect("/admin/items")
  namespace :admin do
    resources :items
  end

end
