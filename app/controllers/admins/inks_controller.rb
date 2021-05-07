class Admins::InksController < ApplicationController

  def index
    @inks = Ink.all
  end
  
  def show
    @ink = Ink.find(params[:id])
  end

end
