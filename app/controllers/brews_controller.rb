class BrewsController < ApplicationController

  def index
    @brews = Brew.all
  end

  def show
    set_brew
  end

  def new
    @brew = Brew.new
  end

  def create
    @brew = Brew.new(brew_params)

    if @brew.save
      redirect_to brew_path(@brew)
    else
      render :new
    end
  end


  private
  def brew_params
    params.require(:brew).permit(:blend_name, :origin, :notes, :strength)
  end

  def set_brew
    @brew = Brew.find(params[:id])
  end
end
