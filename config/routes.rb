Paciorky::Application.routes.draw do

  resources :pages, :only => [:show]
  resources :categories, :only => [:index, :show]
  resources :items, :only => [:show]

  match "/contacts" => "contacts#new", :as => 'contacts', :via => :get
  match '/contacts/sent' => 'contacts#create', :as => 'contacts_sent', :via => :post

  match "items/:id/order" => "orders#new" , :as => "new_order", :constraints => { :item_id => /\d+/ }, :via => :get
  match "items/:id/buy" => "orders#create", :as => "create_order", :via => :post

  root :to => "home#index"
  devise_for :users

  get "/admin" => redirect("/admin/items")
  namespace :admin do
    resources :items, :except => :show
    resources :categories, :except => :show
    resources :pages, :except => [:show]
    resources :orders, :except => [:new, :show, :deliver] do
      member do
         get 'deliver'
      end
    end
  end

end
