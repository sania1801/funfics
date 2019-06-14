class UserPostsController < ApplicationController
  def index
    @user_posts= current_user.posts
  end
end
