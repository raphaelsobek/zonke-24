# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.where(name: "Plumber").first_or_create(name: "Plumber")
Category.where(name: "Handyman").first_or_create(name: "Handyman")
Category.where(name: "Electrician").first_or_create(name: "Electrician")
Category.where(name: "Tv Repair").first_or_create(name: "Tv Repair")
Category.where(name: "Towing").first_or_create(name: "Towing")
Category.where(name: "Food Delivery").first_or_create(name: "Food Delivery")
Category.where(name: "Painter").first_or_create(name: "Painter")
Category.where(name: "Laundry").first_or_create(name: "Laundry")
Category.where(name: "Garden Servic").first_or_create(name: "Garden Servic")
Category.where(name: "Security Services ").first_or_create(name: "Security Services ")
Category.where(name: "Glass Repairs ").first_or_create(name: "Glass Repairs ")
Category.where(name: "Gate motors and fence ").first_or_create(name: "Gate motors and fence ")
Category.where(name: "Alarm System").first_or_create(name: "Alarm System ")
Category.where(name: "Rentals and House and Sales").first_or_create(name: "Rentals and House and Sales")
Category.where(name: "Locks smith Security ").first_or_create(name: "Locks smith Security ")
Category.where(name: " Cleaning Services ").first_or_create(name: " Cleaning Services ")
Category.where(name: "Bikes and Tuktuk ").first_or_create(name: "Bikes and Tuktuk ")
Category.where(name: "Home movers ").first_or_create(name: "Home movers ")
Category.where(name:  "Long Distance delivery ").first_or_create(name: "A Long Distance delivery ")
Category.where(name: "Appliance delivery ").first_or_create(name: "Appliance delivery ")
Category.where(name: "Howling").first_or_create(name: "Howling")



location= [
"Johannesburg, Gauteng",
"Parys, FreeState",
"limpopo , Venda",
"Capetown, WesternCape",
"Melville, south",
"Centurion, pretoria",
"Kemptonpark, Johannesburg",
"Durban, Kwazulu Natal"
]

# User.where(email:"toni@sobekit.co.za").first_or_create(email: "Armache@gmail.com",name: "Raphael", password: "xxsob12")

# 2.times do
#     User.create(email: Faker::Internet.email, password: "xxsob12", name: Faker::Name.name)
# end	

# 5.times do
# 	sleep 0.25
# 	Gig.create(name: Faker::Name.title,
# 		description: Faker::Lorem.paragraph(2),
# 		budget: rand(200..10000),
# 		location: location.sample,
# 		user_id: rand(1..10),
# 		category_id: rand(1..3))
	
# end
