# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Création de quelques utilisateurs
user1 = User.create(username: 'luxurywatcher1', email: 'test1@example.com', password: 'password1')
user2 = User.create(username: 'luxurywatcher2', email: 'test2@example.com', password: 'password2')

# Création de quelques montres appartenant à user1
watch1 = Watch.create(name: 'Rolex Submariner', price: 15000, brand: 'Rolex', model: 'Submariner', description: 'Luxury diving watch', movement_type: 'Automatic', gender: 'Men', status: 'Available', owner: user1)
watch2 = Watch.create(name: 'Omega Speedmaster', price: 12000, brand: 'Omega', model: 'Speedmaster', description: 'Iconic chronograph watch', movement_type: 'Manual', gender: 'Men', status: 'Available', owner: user1)

# Création de quelques réservations par user2
booking1 = Booking.create(starting_date: Date.today, ending_date: Date.today + 7, status: 'Pending', renter: user2, watch: watch1)
booking2 = Booking.create(starting_date: Date.today + 8, ending_date: Date.today + 15, status: 'Pending', renter: user2, watch: watch2)
