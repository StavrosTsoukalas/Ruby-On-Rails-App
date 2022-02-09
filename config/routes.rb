# inside config/routes.rb  
Rails.application.routes.draw do  
  get "welcome/index"  
  root to: "welcome#index"  
end
