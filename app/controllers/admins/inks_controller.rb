class Admins::InksController < ApplicationController

  def index
    @inks = Ink.all
  end

end
