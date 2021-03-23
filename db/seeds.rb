# puts "Destroying All the users"
# User.destroy_all
puts "Destroying all categories"
Category.destroy_all


# =================================================================

# puts "creating User"

# User.create(first_name: "Zoro", last_name: "Roronoa", email: "zoro@gmail.com", password: "123456")
# User.create(first_name: "Chopper", last_name: "Tony", email: "chopper@gmail.com", password: "123456")
# User.create(first_name: "Nico", last_name: "Robin", email: "nicorobin@gmail.com", password: "123456")
# User.create(first_name: "Franky", last_name: "Family", email: "francky@gmail.com", password: "123456")

# User.all.each do |user|
#   puts "#{ user.first_name } is in the DB !!!"
# end

puts "Creating Category"

Category.create(name: "L'enfance")
Category.create(name: "La maison")
Category.create(name: "La personne")

puts "#{Category.all.count} categories created !"
