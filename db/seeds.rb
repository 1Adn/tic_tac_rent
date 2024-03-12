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
User.destroy_all
puts 'Creating Users Seeds...'
user1 = User.create(username: 'Jean', email: 'jean@example.com', password: 'password1')
user2 = User.create(username: 'Lucas', email: 'lucas@example.com', password: 'password2')
user3 = User.create(username: 'Zoé', email: 'zoe@example.com', password: 'password3')
puts 'Users seed Created ! (: '

# Création de quelques montres appartenant à user1
Watch.destroy_all
puts 'Creating Watches Seeds...'
watch1 = Watch.create(name: 'Rolex Submariner', price: 15000, brand: 'Rolex', model: 'Submariner', description: 'Luxury diving watch', movement_type: 'Automatic', gender: 'Men', status: 'Available', user: user1, image_url: "https://timekeeping.fr/cdn/shop/products/image_356e963a-0f3b-4223-a0f0-027c9dee3dc3_300x300.jpg?v=1647356887")
watch2 = Watch.create(name: 'Omega Speedmaster', price: 12000, brand: 'Omega', model: 'Speedmaster', description: 'Iconic chronograph watch', movement_type: 'Manual', gender: 'Woman', status: 'Available', user: user2, image_url: "https://magazine.chrono24.com/cdn-cgi/image/f=auto,metadata=none,fit=cover,q=65,w=1190,h=595,dpr=2.0/2022/08/Omega-Speedmaster-6-Things-Magazin-2-1.jpg")
watch3 = Watch.create(name: 'Hublot Big Bang', price: 46000, brand: 'Hublot', model: 'Big Bang', description: 'Amazing watch', movement_type: 'Manual', gender: 'Kid', status: 'Available', user: user3, image_url: "https://alheuredemilie.com/wp-content/uploads/2023/03/DSC_1447-scaled-e1679494829290.jpg")
puts 'Watches seed Created !(: '

# Création de quelques réservations par user2
Booking.destroy_all
puts 'Creating Bookings Seeds...'
booking1 = Booking.create(starting_date: Date.today, ending_date: Date.today + 7, status: 'Pending', user: user1, watch: watch1)
booking2 = Booking.create(starting_date: Date.today + 8, ending_date: Date.today + 15, status: 'Pending', user: user1, watch: watch2)
booking3 = Booking.create(starting_date: Date.today + 21, ending_date: Date.today + 25, status: 'Pending', user: user2, watch: watch1)
booking4 = Booking.create(starting_date: Date.today + 30, ending_date: Date.today + 40, status: 'Pending', user: user3, watch: watch3)
puts 'Bookings Created ! (: '
