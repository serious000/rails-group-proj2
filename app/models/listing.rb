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
    # if params[:radius].nil?
    #   d = "20"
    #   puts "AAAAAAA, #{d}"
    # else
    #   d = params[:radius]
    #   puts "BBBBBBB, #{d}"
    # end

    listings = Listing.where(category_id: params[:category].to_i)
    # listings = listings.where("title LIKE ?", "%#{params[:search]}%") if params[:search].present?
    listings = listings.where("title like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    listings = listings.near(params[:location], params[:radius]) if params[:location].present?
    # listings = listings.near(params[:location], 15) if params[:location].present?
    puts "ZZZZZZZZ"
    puts "{d}"
    # puts listings
    listings
  end

end
