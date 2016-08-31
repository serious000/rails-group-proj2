class ListingsController < ApplicationController

  def index
    @listings = Listing.all
    puts "*********111"
    puts @listings
  end

  def new
    @categories = Category.all
    @subcategories = Subcategory.all
    @states = State.all
    @beds = [1, 2, 3, 4, 5]
    @baths = [0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0]
  end

  def create
    @listing = User.find(current_user.id).listings.create(listing_params)
    if @listing.valid?

      redirect_to "/listings/#{@listing.id}"
    else
      flash[:errors] = @listing.errors.full_messages
      redirect_to "/listings/new"
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @listing = Listing.find(listing_params[:id]).destroy
    redirect_to "/listings"
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :street, :city, :state_id, :zipcode, :category_id, :subcategory_id, :baths, :beds, :price, :id)
  end

end
