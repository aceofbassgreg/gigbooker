class BandsController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]
  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      flash[:success] = "Congratulations! Your band has been added!"
      redirect_to @band
    else
      flash[:error] = "Please fill out all fields."
      render 'new'
    end
  end

  def show
    @band = Band.find(params[:id])
  end

  private

  def band_params
    params.require(:band).permit(:name, :travel_radius, :location)
  end
end
