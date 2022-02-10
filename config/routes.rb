# inside config/routes.rb  
Rails.application.routes.draw do  
  devise_for :users
  get "welcome/index"  
  root to: "welcome#index"
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end  
end
