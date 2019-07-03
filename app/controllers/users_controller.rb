class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    redirect_to user_path(@user) if @user.update(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    redirect_to users_path if @user.destroy
  end

private
  def user_params
    params.require(:user).permit(:user_name, :email)
  end

end
