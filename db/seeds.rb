puts 'Seed: Deleting existing records...'

Review.delete_all
Like.delete_all
Favorite.delete_all
SpotPhoto.delete_all
Spot.delete_all
User.delete_all
City.delete_all

puts 'Creating city seeds'
city1 = City.create!(
  name: "Frankfurt"
)

city2 = City.create!(
  name: "Berlin"
)
city3 = City.create!(
  name: "Hamburg"
)
city4 = City.create!(
  name: "Munich"
)
city5 = City.create!(
  name: "Cologne"
)
city6 = City.create!(
  name: "Dusseldorf"
)
city7 = City.create!(
  name: "Stuttgart"
)
city8 = City.create!(
  name: "Sylt"
)

puts 'Creating user seeds'
user1 = User.create!(
  email: "malcolm@gmail.com",
  first_name: "Malcolm",
  last_name: "The Rich",
  password: "123456",
  password_confirmation: "123456",
  city: city1,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_malcolm.jpg"
)

user2 = User.create!(
  email: "jan@yahoo.com",
  first_name: "Jan",
  last_name: "chino",
  password: "123456",
  password_confirmation: "123456",
  city: city2,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_Jan.jpg"
)

user3 = User.create!(
  email: "flora@egmail.com",
  first_name: "Flora",
  last_name: "Baby",
  password: "123456",
  password_confirmation: "123456",
  city: city3,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105423/avatars/avatar_flora.jpg"
)

user4 = User.create!(
  email: "Hian@gmail.com",
  first_name: "Hian",
  last_name: "Sjntjs",
  password: "123456",
  password_confirmation: "123456",
  city: city4,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_Hien.jpg"
)

user5 = User.create!(
  email: "otherjan@gmail.com",
  first_name: "Jan",
  last_name: "Theotherone",
  password: "123456",
  password_confirmation: "123456",
  city: city5,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_JanO.jpg"
)

puts 'Creating spot seeds'

spot1 = Spot.create!(
  name: "Buda Strasse",
  description: "Central skatepark for pro",
  address: "Ludwigstraße 34B, 70176 Stuttgart",
  city: city7,
  photos: ["https://res.cloudinary.com/hienn/image/upload/v1535105658/Spots/scott-walsh-656484-unsplash.jpg"]
)

# spot_photo = SpotPhoto.create!(
#   spot: spot1,
#   user: user1,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105658/Spots/scott-walsh-656484-unsplash.jpg"
#   )

spot2 = Spot.create!(
  name: "Harbor Cruising",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Elbchaussee 285, 22605 Hamburg",
  city: city3,
  photos: ["https://res.cloudinary.com/hienn/image/upload/v1535105658/Spots/scott-walsh-656484-unsplash.jpg"]
)

# spot_photo = SpotPhoto.create!(
#   spot: spot2,
#   user: user2,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105734/Spots/amogh-manjunath-772463-unsplash.jpg"
#   )

spot3 = Spot.create!(
  name: "Breezy hole",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Strandstraße 26, 25996 Wenningstedt-Braderup (Sylt)",
  city: city8,
  photos: ["https://res.cloudinary.com/hienn/image/upload/v1535105658/Spots/scott-walsh-656484-unsplash.jpg"]
)
# spot_photo = SpotPhoto.create!(
#   spot: spot3,
#   user: user3,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535107048/Spots/skating_california.jpg"
#   )

# spot4 = Spot.create!(
#   name: "The Nest",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   address: "Baseler Pl. 2, 60329 Frankfurt am Main",
#   city: city1,
# )
# spot_photo = SpotPhoto.create!(
#   spot: spot4,
#   user: user4,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105658/Spots/tyler-nix-569195-unsplash.jpg"
#   )

# spot5 = Spot.create!(
#   name: "Citying",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   address: "Holstenstraße 30, 22767 Hamburg",
#   city: city3,
# )
# spot_photo = SpotPhoto.create!(
#   spot: spot5,
#   user: user5,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105657/Spots/karol-kaczorek-753191-unsplash.jpg"
#   )
# spot6 = Spot.create!(
#   name: "Cruiser",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   address: "Engasserbogen 34, 80639 München",
#   city: city4,
# )
# spot_photo = SpotPhoto.create!(
#   spot: spot6,
#   user: user1,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105656/Spots/city_emily-reider-508296-unsplash.jpg"
#   )

# spot7 = Spot.create!(
#   name: "Whaaa",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   address: "Dünenstraße 333C, 25996 Wenningstedt-Braderup (Sylt)",
#   city: city8,
# )
# spot_photo = SpotPhoto.create!(
#   spot: spot7,
#   user: user2,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105655/Spots/jennifer-bedoya-599213-unsplash.jpg"
#   )

# spot8 = Spot.create!(
#   name: "My Backyard",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   address: "Subbelrather Str. 488, 50825 Köln",
#   city: city5,
# )
# spot_photo = SpotPhoto.create!(
#   spot: spot8,
#   user: user3,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105655/Spots/emily-reider-513130-unsplash.jpg"
#   )

# spot9 = Spot.create!(
#   name: "Bone Yard",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   address: "Rheinkniebrücke, 40219 Düsseldorf",
#   city: city6,
# )
# spot_photo = SpotPhoto.create!(
#   spot: spot9,
#   user: user4,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105655/Spots/beach_john-verhoestra-295155-unsplash.jpg"
#   )

# spot10 = Spot.create!(
#   name: "Pigs Corner",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   address: "Metzgerbach,, 70193 Stuttgart",
#   city: city7,
# )
# spot_photo = SpotPhoto.create!(
#   spot: spot10,
#   user: user5,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105654/Spots/lisa-yang-725071-unsplash.jpg"
#   )

# spot11 = Spot.create!(
#   name: "SkateHalle",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   address: "Engasserbogen 34, 80639 München",
#   city: city4,
# )
# spot_photo = SpotPhoto.create!(
#   spot: spot11,
#   user: user3,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105653/Spots/alex-geerts-661144-unsplash.jpg"
#   )

# spot12 = Spot.create!(
#   name: "Rosy Park",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   address: "Kegelenstraße 21, 70372 Stuttgart",
#   city: city7,
# )
# spot_photo = SpotPhoto.create!(
#   spot: spot12,
#   user: user4,
#   remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105653/Spots/beach_ash-edmonds-527424-unsplash_1.jpg"
#   )


puts 'Creating review seeds'

review1 = Review.create!(
  rating: 5,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user1,
  spot: spot1
)

review2 = Review.create!(
  rating: 5,
  content: "Perfect location in Berlin for all skaters!",
  user: user2,
  spot: spot1
)

review3 = Review.create!(
  rating: 4,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user3,
  spot: spot1
)

review4 = Review.create!(
  rating: 5,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user4,
  spot: spot1
)

review5 = Review.create!(
  rating: 4,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user5,
  spot: spot1
)

review6 = Review.create!(
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user5,
  spot: spot2
)

review7 = Review.create!(
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user4,
  spot: spot3
)

# review8 = Review.create!(
#   rating: 3,
#   content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   user: user3,
#   spot: spot4
# )

# review9 = Review.create!(
#   rating: 3,
#   content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   user: user1,
#   spot: spot5
# )

# review10 = Review.create!(
#   rating: 3,
#   content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   user: user1,
#   spot: spot6
# )

# review11 = Review.create!(
#   rating: 3,
#   content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   user: user2,
#   spot: spot7
# )

# review12 = Review.create!(
#   rating: 3,
#   content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   user: user3,
#   spot: spot8
# )

# review13 = Review.create!(
#   rating: 3,
#   content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   user: user4,
#   spot: spot9
# )

# review14 = Review.create!(
#   rating: 3,
#   content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
#   user: user5,
#   spot: spot10
# )


puts "Creating favorite seeds"

favorite1 = Favorite.create!(
  user: user1,
  spot: spot1
)
favorite2 = Favorite.create!(
  user: user1,
  spot: spot2
)

puts "Creating like seeds"
like1 = Like.create!(
  user: user1,
  spot: spot1,
  value: 1
)
like2 = Like.create!(
  user: user1,
  spot: spot2,
  value: -1
)

like3 = Like.create!(
  user: user2,
  spot: spot2,
  value: 0
)

puts 'Seed: Finished seeding!'
