class User::InksController < ApplicationController
  
  def index
  end
  
  def new
    @ink = Ink.new
  end
  
  def create
    @ink = Ink.new(ink_params)
    @ink.user_id = current_user.id
    @ink.save
    redirect_to root_path
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destory
  end
  
  private
  
  def ink_params
    params.require(:ink).permit(:ink_name, :ink_image, :ink_introduction, :price, :milliliter, :evaluation, :color)
  end
  
end
