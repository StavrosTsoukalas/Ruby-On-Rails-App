# inside app/controllers/welcome_controller.rb  
class WelcomeController < ApplicationController  
  def index
    @posts = Post.limit(5)
  end
end
