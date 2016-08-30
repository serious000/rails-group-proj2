class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory
  has_many :photos
  has_many :states
  # geocoded_by :full_street_address   # can also be an IP address
  # after_validation :geocode          # auto-fetch coordinates
end
