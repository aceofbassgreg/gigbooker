class Gig < ActiveRecord::Base
  has_and_belongs_to_many :bands
  belongs_to :venue
  attr_accessible :name

end
