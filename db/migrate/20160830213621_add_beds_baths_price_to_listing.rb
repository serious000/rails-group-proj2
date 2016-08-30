class AddBedsBathsPriceToListing < ActiveRecord::Migration
  def change
    add_column :listings, :beds, :integer
    add_column :listings, :baths, :integer
    add_column :listings, :price, :float
  end
end
