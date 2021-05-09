class Admins::UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @inks = @user.inks
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admins_user_path(@user)
    else
      edit_admins_user_path(@user)
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:user_name, :email, :is_deleted, :user_image)
  end

end
