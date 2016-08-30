# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# new_categories = [
#    {name: "Rental"},
#    {name: "Sale"}
# ]
# new_categories.each do |category|
#   Category.create category
# end

# new_subcategories = [
#   {name: "Apartments", category_id: 1},
#   {name: "Condominium", category_id: 1},
#   {name: "House", category_id: 1},
#   {name: "Room", category_id: 1},
#   {name: "Townhouse", category_id: 1},
#   {name: "Apartments", category_id: 2},
#   {name: "Condominium", category_id: 2},
#   {name: "House", category_id: 2},
#   {name: "Townhouse", category_id: 2}
# ]
# new_subcategories.each do |subcategory|
#   Subcategory.create subcategory
# end

# new_listings = [
#   {title: "House for rent 1", description: "House for rent 1", city: "San Jose", state: "CA", zipcode: 95111, category_id: 1, subcategory_id: 3},
#   {title: "House for rent 2", description: "House for rent 2", city: "San Francisco", state: "CA", zipcode: 94111, category_id: 1, subcategory_id: 3},
#   {title: "House for sale 1", description: "House for sale 1", city: "San Jose", state: "CA", zipcode: 95110, category_id: 2, subcategory_id: 8},
#   {title: "House for sale 2", description: "House for sale 2", city: "San Francisco", state: "CA", zipcode: 94114, category_id: 2, subcategory_id: 8}
# ]

# new_listings.each do |listing|
#   Listing.create listing
# end

rental_category = Category.create(name: 'Rental')
sale_category = Category.create(name: 'Sale')

Subcategory.create(name: 'Apartment', category_id: rental_category.id)
Subcategory.create(name: 'Condominium', category_id: rental_category.id)
Subcategory.create(name: 'House', category_id: rental_category.id)
Subcategory.create(name: 'Room', category_id: rental_category.id)
Subcategory.create(name: 'Townhouse', category_id: rental_category.id)
Subcategory.create(name: 'Apartment', category_id: sale_category.id)
Subcategory.create(name: 'Condominium', category_id: sale_category.id)
Subcategory.create(name: 'House', category_id: sale_category.id)
Subcategory.create(name: 'Townhouse', category_id: sale_category.id)