class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory
end
