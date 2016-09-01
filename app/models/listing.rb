class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory
  has_many :photos
  belongs_to :state
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def full_street_address
    [street, city, @state_name].compact.join(', ')
  end

  def self.search(params)
    if params[:radius].blank?
      d = 20
    else
      d = params[:radius]
    end

    listings = Listing.where(category_id: params[:category].to_i)
    listings = listings.where("title like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    listings = listings.near(params[:location], "#{d}") if params[:location].present?
    # puts "ZZZZZZZZ, #{d}"
    listings
  end

end
