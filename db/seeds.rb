# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end




# create seeds for 5 restaurants that has name, address, phone_number, category
restaurants = [
  { name: 'The Golden Curry', address: '123 Main St', phone_number: '123-456-7890', category: 'chinese' },
  { name: 'The Greasy Spoon', address: '456 Elm', phone_number: '987-654-3210', category: 'belgian' },
  { name: 'The Happy Cafe', address: '789 Oak', phone_number: '555-123-4567', category: 'french'},
  { name: 'The Pizza Palace', address: '321 Maple', phone_number: '222-333-4444', category: 'italian' },
  { name: 'Sushi bar', address: '123 Maple', phone_number: '727-727-73737', category: 'japanese' }
]

restaurants.each do |restaurant|
  restaurant = Restaurant.find_or_create_by!(name: restaurant[:name], address: restaurant[:address], phone_number: restaurant[:phone_number], category: restaurant[:category])
end
