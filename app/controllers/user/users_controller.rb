class User::UsersController < ApplicationController
  
  def show
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
  
end
