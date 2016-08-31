class ChangeBathsTypeInListings < ActiveRecord::Migration
  def change
    change_column :listings, :baths, :float
  end
end
