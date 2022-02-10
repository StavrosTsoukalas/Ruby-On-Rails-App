# inside config/routes.rb  
Rails.application.routes.draw do  
  devise_for :users, :controllers => {:registrations => "registrations"}
  get "welcome/index"  
  root to: "welcome#index"
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end  
end
