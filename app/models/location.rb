class Location < ActiveRecord::Base
  has_many :listings
  validates :city, :presence => true
end
