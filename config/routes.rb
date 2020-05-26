Rails.application.routes.draw do
  root 'demo#index'
  get 'demo/index'
  get 'demo/contact'
  get 'demo/about'

  match "grand", :to => "grand#index", :via => :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
