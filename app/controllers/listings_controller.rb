class ListingsController < ApplicationController
  def new
    @categories = Category.all
    @subcategories = Subcategory.all
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end
end
