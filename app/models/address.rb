class Address < ActiveRecord::Base
  belongs_to :venue

  attr_accessible :city, :latitude, :longitude, :postal_code, 
                  :state, :street_address, :venue_id, :venue_attributes
end
