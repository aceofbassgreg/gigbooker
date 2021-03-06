class VenuesController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]

  def new
    @venue = Venue.new
    @address = @venue.build_address(params[:address])
  end

  def create
    @venue = Venue.new(venue_params)
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

  private

  def venue_params
    params.require(:venue).permit(:name, :address_id, gigs_attributes: [:id, :_destroy, :name],
          address_attributes: [:city, :latitude, :longitude, :postal_code, :state, 
            :street_address]
          )
  end
end
