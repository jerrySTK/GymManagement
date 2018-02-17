Rails.application.routes.draw do
  
  scope "/:locale" do
    resources :clients
  end
  
  get "/:locale" => 'clients#index'
  root 'clients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
