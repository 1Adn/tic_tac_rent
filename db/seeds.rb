# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
puts 'Creating Users Seeds...'
user1 = User.create!(username: 'Jean', email: 'jean@example.com', password: 'password1')
user2 = User.create!(username: 'Lucas', email: 'lucas@example.com', password: 'password2')
user3 = User.create!(username: 'Zoé', email: 'zoe@example.com', password: 'password3')
puts 'Users seed Created ! (: '

Watch.destroy_all
puts 'Creating Watches Seeds...'
watch1 = Watch.create!(name: 'Rolex Submariner', price: 1500, brand: 'Rolex', model: 'Submariner', description: 'Luxury diving watch renowned for its impeccable craftsmanship and timeless design. Dive into luxury with the Rolex Submariner.', movement_type: 'Automatic', gender: 'Men', status: 'Available', user: user1, image_url: "https://timekeeping.fr/cdn/shop/products/image_356e963a-0f3b-4223-a0f0-027c9dee3dc3_300x300.jpg?v=1647356887")
watch2 = Watch.create!(name: 'Omega Speedmaster', price: 1200, brand: 'Omega', model: 'Speedmaster', description: 'Iconic chronograph watch revered for its precision and performance. Experience the legacy of space exploration with the Omega Speedmaster.', movement_type: 'Manual', gender: 'Woman', status: 'Available', user: user2, image_url: "https://magazine.chrono24.com/cdn-cgi/image/f=auto,metadata=none,fit=cover,q=65,w=1190,h=595,dpr=2.0/2022/08/Omega-Speedmaster-6-Things-Magazin-2-1.jpg")
watch3 = Watch.create!(name: 'Hublot Big Bang', price: 4600, brand: 'Hublot', model: 'Big Bang', description: 'Experience awe-inspiring luxury with the Hublot Big Bang. This remarkable timepiece combines cutting-edge technology with exquisite design, making it a must-have for watch enthusiasts of all ages.', movement_type: 'Manual', gender: 'Kid', status: 'Available', user: user3, image_url: "https://alheuredemilie.com/wp-content/uploads/2023/03/DSC_1447-scaled-e1679494829290.jpg")
watch4 = Watch.create!(name: 'Rolex 700x', price: 900, brand: 'Rolex', model: '700x', description: 'The epitome of elegance and functionality, the Rolex Submariner is a timeless classic.', movement_type: 'Automatic', gender: 'Men', status: 'Available', user: user1, image_url: "https://www.arabianbusiness.com/cloud/2021/09/14/OIfvTJdI-audemarspiguetcagaulead_1.png")
watch5 = Watch.create!(name: 'Cartier Tank Solo', price: 300, brand: 'Cartier', model: 'Tank Solo', description: 'Exuding sophistication and grace, the Cartier Tank Solo is the perfect companion for every occasion.', movement_type: 'Automatic', gender: 'Woman', status: 'Available', user: user2, image_url: "https://alheuredemilie.com/wp-content/uploads/2023/03/DSC_1447-scaled-e1679494829290.jpg")
watch6 = Watch.create!(name: 'Omega Seamaster', price: 600, brand: 'Omega', model: 'Seamaster', description: 'A symbol of precision and adventure, the Omega Seamaster is built to conquer both land and sea.', movement_type: 'Automatic', gender: 'Men', status: 'Available', user: user3, image_url: "https://www.realmenrealstyle.com/wp-content/uploads/2023/08/Watch-Details.jpg")
watch7 = Watch.create!(name: 'Patek Philippe Nautilus', price: 3500, brand: 'Patek Philippe', model: 'Nautilus', description: 'Crafted for the modern sophisticate, the Patek Philippe Nautilus blends luxury with innovation.', movement_type: 'Automatic', gender: 'Men', status: 'Available', user: user1, image_url: "https://cdn.shopify.com/s/files/1/0278/9723/3501/files/44-MB_F-Brands.jpg?v=1651006810")
watch8 = Watch.create!(name: 'Audemars Piguet Royal Oak', price: 2800, brand: 'Audemars Piguet', model: 'Royal Oak', description: 'A masterpiece of precision engineering, the Audemars Piguet Royal Oak is a symbol of exclusivity and style.', movement_type: 'Automatic', gender: 'Woman', status: 'Available', user: user2, image_url: "https://5.imimg.com/data5/ANDROID/Default/2021/6/XZ/SN/IN/93645587/product-jpeg-500x500.jpg")
watch9 = Watch.create!(name: 'Tag Heuer Monaco', price: 550, brand: 'Tag Heuer', model: 'Monaco', description: 'Inspired by the thrill of racing, the Tag Heuer Monaco is a testament to innovation and performance.', movement_type: 'Automatic', gender: 'Men', status: 'Available', user: user3, image_url: "https://cdn.shopify.com/s/files/1/0278/9723/3501/files/49-Richard-Mille-Brands.jpg?v=1651007465")
watch10 = Watch.create!(name: 'IWC Portugieser', price: 1200, brand: 'IWC', model: 'Portugieser', description: 'Exquisite craftsmanship meets timeless design in the IWC Portugieser, a watch that transcends generations.', movement_type: 'Automatic', gender: 'Men', status: 'Available', user: user1, image_url: "https://images.augustman.com/wp-content/uploads/sites/3/2022/10/11191124/pexels-antony-trivet-9978785.jpg")
watch11 = Watch.create!(name: 'Breguet Classique', price: 3800, brand: 'Breguet', model: 'Classique', description: 'Elegance personified, the Breguet Classique is a testament to the artistry and heritage of Swiss watchmaking.', movement_type: 'Automatic', gender: 'Woman', status: 'Available', user: user2, image_url: "https://cdn4.ethoswatches.com/the-watch-guide/wp-content/uploads/2018/10/Ethos-Watch-Awards-25-Best-Luxury-Mens-Watches-2018-Rolex-Omega-Rado-TAG-Heuer-Breitling-mens-mobile-masthead-lifestyle-optimised.jpg")
watch12 = Watch.create!(name: 'Jaeger-LeCoultre Reverso', price: 850, brand: 'Jaeger-LeCoultre', model: 'Reverso', description: 'An icon of Art Deco design, the Jaeger-LeCoultre Reverso is a timeless masterpiece that captures the spirit of innovation.', movement_type: 'Manual', gender: 'Men', status: 'Available', user: user3, image_url: "https://www.livemint.com/lm-img/img/2023/12/19/1600x900/luxury_watches_for_men_1702968689078_1702968694832.jpg")
puts 'Watches seed Created !(: '

Booking.destroy_all
puts 'Creating Bookings Seeds...'
booking1 = Booking.create!(starting_date: Date.today, ending_date: Date.today + 7, status: 'Pending', user: user1, watch: watch1)
booking2 = Booking.create!(starting_date: Date.today + 8, ending_date: Date.today + 15, status: 'Pending', user: user1, watch: watch2)
booking3 = Booking.create!(starting_date: Date.today + 21, ending_date: Date.today + 25, status: 'Pending', user: user2, watch: watch1)
booking4 = Booking.create!(starting_date: Date.today + 30, ending_date: Date.today + 40, status: 'Pending', user: user3, watch: watch3)
puts 'Bookings Created ! (: '
