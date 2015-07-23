class Listing < ActiveRecord::Base
  belongs_to :location
  validates :rooms, :presence => true
  validates :price, :presence => true
end
