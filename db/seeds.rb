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
states = State.create([{ name:'Alabama'}, { name:'Alaska'}, { name:'Arizona'}, { name:'Arkansas'}, { name:'California'}, { name:'Colorado'}, { name:'Connecticut'}, { name:'Delaware'}, { name:'District of Columbia'}, { name:'Florida'}, { name:'Georgia'}, { name:'Hawaii'}, { name:'Idaho'}, { name:'Illinois'}, { name:'Indiana'}, { name:'Iowa'}, { name:'Kansas'}, { name:'Kentucky'}, { name:'Louisiana'}, { name:'Maine'}, { name:'Maryland'}, { name:'Massachusetts'}, { name:'Michigan'}, { name:'Minnesota'}, { name:'Mississippi'}, { name:'Missouri'}, { name:'Montana'}, { name:'Nebraska'}, { name:'Nevada'}, { name:'New Hampshire'}, { name:'New Jersey'}, { name:'New Mexico'}, { name:'New York'}, { name:'North Carolina'}, { name:'North Dakota'}, { name:'Ohio'}, { name:'Oklahoma'}, { name:'Oregon'}, { name:'Pennsylvania'}, { name:'Rhode Island'}, { name:'South Carolina'}, { name:'South Dakota'}, { name:'Tennessee'}, { name:'Texas'}, { name:'Utah'}, { name:'Vermont'}, { name:'Virginia'}, { name:'Washington'}, { name:'West Virginia'}, { name:'Wisconsin'}, { name:'Wyoming'}])

rental_category = Category.create(name: 'Rental')
sale_category = Category.create(name: 'Sale')

Subcategory.create(name: 'Apartment')
Subcategory.create(name: 'Condominium')
Subcategory.create(name: 'House')
Subcategory.create(name: 'Room')
Subcategory.create(name: 'Townhouse')
