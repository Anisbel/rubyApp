class PlaysController < ApplicationController


  def index
    #display  on the index page( in descendant order)
    if params[:category].blank?
			@plays = Play.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@plays = Play.where(:category_id => @category_id).order("created_at DESC")
		end
	end

  def show
    @play = Play.find(params[:id])
  end

  def edit
    @play = Play.find(params[:id])
    @categories = Category.all.map{|c| [c.name, c.id]}
  end

  def update
    @play = Play.find(params[:id])
    @play.category_id = params[:category_id]
    if @play.update(plays_params)
      redirect_to play_path(@play)
    else
      render 'edit'
    end
  end

  def destroy
    @play = Play.find(params[:id])
    @play.destroy
    redirect_to root_path
  end

  def new
  #create an instance of a play that will be use in the view new.
    @play = current_user.plays.build
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end
  #making sure that what is created is added to the database
  def create
    @play = current_user.plays.build(plays_params)
    @play.category_id = params[:category_id]
    if @play.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  #private methode that
  def plays_params
    params.require(:play).permit(:title, :description, :director, :category_id, :play_img)
  end
end
