class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory
  has_many :photos
  has_many :states
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def full_street_address
    [street, city, @state_name].compact.join(', ')
  end

  def self.search(params)
    listings = Listing.where(category_id: params[:category].to_i)
    listings = listings.where("title like ? or description like ?", "%{params[:search]}%", "%{params[:search]}%") if params[:search].present?
    listings = listings.near(params[:location], 15) if params[:location].present?
    listings
  end

end
