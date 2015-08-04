class Band < ActiveRecord::Base
  has_one :user
  
  validates_presence_of :name, :travel_radius, :location

end
