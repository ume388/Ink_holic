class User::HomesController < ApplicationController

  def  top
  end
  
  def about
    @inks = Ink.order("RANDOM()").limit(4)
  end

end
