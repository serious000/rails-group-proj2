class ListingsController < ApplicationController

  def index
    @listings = Listing.all

  end

  def new
    @categories = Category.all
    @subcategories = Subcategory.all
    @states = State.all
    @beds = [1, 2, 3, 4, 5]
    @baths = [1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0]
  end

  def create
    @listing = User.find(current_user.id).listings.create(listing_params)
    @state_name = State.find(Listing.last.state_id)
    if @listing.valid?

      redirect_to "/listings/#{@listing.id}"
    else
      flash[:errors] = @listing.errors.full_messages
      redirect_to "/listings/new"
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @hash = Gmaps4rails.build_markers(@listing) do |list, marker|
      marker.lat list.latitude
      marker.lng list.longitude
      marker.infowindow list.title
    end
  end

  def edit
    @listing = Listing.find(params[:id])
    @categories = Category.all
    @subcategories = Subcategory.all
    @states = State.all
    @beds = [1, 2, 3, 4, 5]
    @baths = [1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0]
  end

  def update
    @listing = Listing.find(params[:id]).update(listing_params)
    redirect_to "/listings/#{params[:id]}"
  end

  def destroy
    @listing = Listing.find(listing_params[:id]).destroy
    redirect_to "/listings"
  end

  def search
    @categories = Category.all
    @listings = Listing.search(params)
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :street, :city, :state_id, :zipcode, :category_id, :subcategory_id, :baths, :beds, :price, :id)
  end

end
