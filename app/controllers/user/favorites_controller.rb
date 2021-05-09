class User::FavoritesController < ApplicationController
  
  def create
    @ink = Ink.find(params[:ink_id])
    @favorite = current_user.favorites.new(ink_id: @ink.id)
    @favorite.save
  end
  
  def destroy
    @ink = Ink.find(params[:ink_id])
    @favorite = current_user.favorites.find_by(ink_id: @ink.id)
    @favorite.destroy
  end
  
end
