class UserProfileController < ApplicationController
  respond_to :html,:json
  def edit
    @user = current_user
  end
  def index
    @user_id = current_user.id
    @user= User.find(current_user.id)
  end
  def update
    @user = User.find(current_user.id)
    if @user.update_attributes(user_params)
      redirect_to @user, notice: "successfully updated user."
    else
    end
  end
  def show
    @user=User.find(params[:id])
    @user_posts = @user.posts
  end
  private
  def user_params
    params.require(:user).permit(:user_id, :username,:email,:gender,:about,:avatar)
  end
end

