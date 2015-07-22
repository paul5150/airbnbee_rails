class Listing < ActiveRecord::Base
  belongs_to :locations
  validates :rooms, :presence => true
  validates :price, :presence => true
end
