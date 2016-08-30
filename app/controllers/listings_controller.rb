class ListingsController < ApplicationController
  def new
    @categories = Category.all
    @subcategories = Subcategory.all
    @states = State.all
  end

  def create
    @listing = Listing.create(listing_params)
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
  end

  def index
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :street, :city, :state_id, :zipcode, :category_id, :subcategory_id)
  end
end
