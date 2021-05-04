class User::UsersController < ApplicationController
  
  def show
    @user = current_user
    @inks = current_user.inks
    @favorite_inks = current_user.favorites

    gon.grey = current_user.available_inks(0)
    gon.blue = current_user.available_inks(1)
    gon.green = current_user.available_inks(2)
    gon.yellow = current_user.available_inks(3)
    gon.red = current_user.available_inks(4)
    gon.purple = current_user.available_inks(5)
    gon.brown = current_user.available_inks(6)
    gon.other = current_user.available_inks(7)
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:user_name, :email, :user_image, :is_deleted)
  end
  
end
