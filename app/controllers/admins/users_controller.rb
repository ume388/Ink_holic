class Admins::UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @inks = @user.inks
  end
  
end
