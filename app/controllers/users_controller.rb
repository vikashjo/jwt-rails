class UsersController < ApplicationController
  skip_before_action :authenticate, only: [:create]
  
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
