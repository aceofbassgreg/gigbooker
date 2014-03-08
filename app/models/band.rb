class Band < ActiveRecord::Base

  validates_presence_of :name, :contact_email, :travel_radius, :location

end
