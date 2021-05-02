class User::UsersController < ApplicationController
  
  def show
    @inks = current_user.inks
    @favorite_inks = current_user.favorites
  end
  
end
