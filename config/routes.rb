Rails.application.routes.draw do

  scope "/:locale" do
    resources :clients do
      resources :payments
    end
  end
  
  get "/:locale" => 'clients#index', :as => :home
  root 'clients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
