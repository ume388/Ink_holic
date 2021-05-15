class User::HomesController < ApplicationController

  def  top
  end
  
  def about
    @inks = Ink.all
  end

end
