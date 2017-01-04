class PlaysController < ApplicationController


  def index
    #display  on the index page( in descendant order)
    @plays= Play.all.order("created_at DESC")
  end

  def show
    @play = Play.find(params[:id])
  end

  def edit
    @play = Play.find(params[:id])
  end

  def update
    @play = Play.find(params[:id])
  end

  def destroy
    @play = Play.find(params[:id])
  end

  def new
  #create an instance of a play that will be use in the view new.
    @play = Play.new
  end
  #making sure that what is created is added to the database
  def create
    @play = Play.new(plays_params)

    if @play.save
      redirect_to root_path
    else
      #render dont refresh the page,wich will let you correct your publication
      render 'new'
    end
  end

  private
  #private methode that
  def plays_params
    params.require(:play).permit(:title, :description, :director)
  end
end
