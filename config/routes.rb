Paciorky::Application.routes.draw do

  resources :pages, :only => [:show]
  resources :categories, :only => [:index, :show]
  resources :products, :only => [:index, :show] do
    resources :orders, :only => [:new, :create]
  end

  match "/contacts" => "contacts#new", :as => 'contacts', :via => :get
  match '/contacts/sent' => 'contacts#create', :as => 'contacts_sent', :via => :post

  root :to => "products#index"
  devise_for :users

  get "/admin" => redirect("/admin/products")
  namespace :admin do
    resources :products, :except => :show
    resources :categories, :except => :show
    resources :pages, :except => [:show]
    resources :orders, :except => [:new, :show, :deliver] do
      member do
        get 'deliver'
      end
    end
  end

end
