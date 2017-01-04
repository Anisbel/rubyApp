class PlaysController < ApplicationController


  def index

  end

  def new
  #create an instance of a play that will be use in the view new.
    @play = Play.new
  end
  #making sure that what is created is added to the database
  def create
    @play = Play.new(plays_params)
  end

  private
  #private methode that
  def plays_params
    params.require(:play).permit(:title, :description, :director)
  end 
end
