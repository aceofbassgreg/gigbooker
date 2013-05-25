class Venue < ActiveRecord::Base
  has_one :address

  attr_accessible :name

  validates_presence_of :name

end
