class User::InksController < ApplicationController
  before_action :look_inks_show, except: [:index]
  
  def index
    @inks = Ink.all
    @q = Ink.ransack(params[:q])
    @searched_inks = @q.result(distinct: true)
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
    @ink = Ink.find(params[:id])
    @favorite = @ink.favorites.find_by(user_id: current_user.id)
  end
  
  def edit
    @ink = Ink.find(params[:id])
    if @ink.user == current_user
      render 'edit'
    else
      redirect_to inks_path
    end
  end
  
  def update
    @ink = Ink.find(params[:id])
    if @ink.update(ink_params)
      redirect_to ink_path(@ink)
    else
      render 'edit'
    end
  end
  
  def destroy
    @ink = Ink.find(params[:id])
    @ink.destroy
    redirect_to inks_path
  end
  
  private
  
  def ink_params
    params.require(:ink).permit(:ink_name, :ink_image, :ink_introduction, :price, :milliliter, :evaluation, :color)
  end
  
  def look_inks_show
    unless user_signed_in?
      flash[:notice] = "ログインしてください"
      redirect_to action: :index
    end
  end
  
end
