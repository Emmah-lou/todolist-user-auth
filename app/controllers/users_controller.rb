class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user && @user.save
      render json: {
        user: {
          username: @user.username
        }
      }
    else
      render json: {
        error: "Invalid username or password"
      }
    end
  end



  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
