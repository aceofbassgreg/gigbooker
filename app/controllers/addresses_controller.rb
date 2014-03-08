class AddressesController < ApplicationController

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
  end

  private

  def address_params
    params.require(:address).permit(:city, :latitude, :longitude, 
                  :postal_code, :state, :street_address, :venue_id, 
                  :venue_attributes)
  end
end
