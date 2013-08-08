class VenuesController < ApplicationController
  def new
    @venue = Venue.new
    @address = @venue.build_address(params[:address])
  end

  def create
    @venue = Venue.new(params[:venue])
    @address = @venue.build_address(params[:address])
    if @venue.save
      flash[:success] = "Congratulations! Your venue has been added!"
      redirect_to @venue
    else
      flash[:error] = "Please fill out all fields."
      render 'new'
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end
end
