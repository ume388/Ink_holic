class Admins::InksController < ApplicationController

  def index
    @inks = Ink.all
  end
  
  def show
    @ink = Ink.find(params[:id])
  end
  
  def edit
    @ink = Ink.find(params[:id])
  end
  
  def update
    @ink = Ink.find(params[:id])
    if @ink.update(ink_params)
      redirect_to admins_inks_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @ink = Ink.find(params[:id])
    if @ink.destroy
      redirect_to admins_inks_path
    else
      render 'edit'
    end
  end
  
  private
  
  def ink_params
     params.require(:ink).permit(:ink_name, :ink_image, :ink_introduction, :price, :milliliter, :evaluation, :color)
  end

end
