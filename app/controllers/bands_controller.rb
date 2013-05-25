class BandsController < ApplicationController
  def new
    @band = Band.new
  end

  def create
    @band = Band.new(params[:band])
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
end
