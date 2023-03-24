# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding database...."
#Adds data to heros
Hero.create(name:"John Doe",super_name:"SoupaMan")
Hero.create(name:"Tom Harry",super_name:"Tomato")
Hero.create(name:"Billy Jean",super_name:"Best Jeanist")

#Adds data to powers
Power.create(name:"Smokes",description:"Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
Power.create(name:"Jokes",description:"Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
Power.create(name:"Lokes",description:"Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
Power.create(name:"Blokes",description:"Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
Power.create(name:"Frokes",description:"Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
Power.create(name:"Quokes",description:"Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")

#Adds data to hero_powers
HeroPower.create(strength:"Weak",power_id:1,hero_id:1)
HeroPower.create(strength:"Strong",power_id:2,hero_id:1)
HeroPower.create(strength:"Medium",power_id:3,hero_id:1)
HeroPower.create(strength:"Weak",power_id:4,hero_id:2)
HeroPower.create(strength:"Strong",power_id:5,hero_id:3)
HeroPower.create(strength:"Medium",power_id:6,hero_id:2)


puts "Completed seeding!"