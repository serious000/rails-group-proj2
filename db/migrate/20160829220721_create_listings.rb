class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :city
      t.string :state
      t.integer :zipcode
      t.references :user, index: true
      t.references :category, index: true
      t.references :subcategory, index: true

      t.timestamps
    end
  end
end
