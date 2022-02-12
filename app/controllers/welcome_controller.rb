# inside app/controllers/welcome_controller.rb  
class WelcomeController < ApplicationController  
  def index
    # @posts = Post.limit(5)
    @hobby_posts = Post.by_branch('hobby').limit(8)
    @study_posts = Post.by_branch('study').limit(8)
    @team_posts = Post.by_branch('team').limit(8)
  end
end
