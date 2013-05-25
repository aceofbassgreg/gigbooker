class Band < ActiveRecord::Base

  attr_accessible :contact_email, :name, :travel_radius, :location

  validates_presence_of :name, :contact_email, :travel_radius, :location
end
