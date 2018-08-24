puts 'Seed: Deleting existing records...'

Review.delete_all
Favorite.delete_all
SpotPhoto.delete_all
Spot.delete_all
User.delete_all
City.delete_all

puts 'Creating city seed...'
city1 = City.create!(
  name: "Budapest"
)

city2 = City.create!(
  name: "Berlin"
)

puts 'Creating user seeds...'
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
  city: city1,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_Jan.jpg"
)

user3 = User.create!(
  email: "flora@egmail.com",
  first_name: "Flora",
  last_name: "Baby",
  password: "123456",
  password_confirmation: "123456",
  city: city2,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105423/avatars/avatar_flora.jpg"
)

user4 = User.create!(
  email: "Hian@gmail.com",
  first_name: "Hian",
  last_name: "Sjntjs",
  password: "123456",
  password_confirmation: "123456",
  city: city2,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_Hien.jpg"
)

user5 = User.create!(
  email: "otherjan@gmail.com",
  first_name: "Jan",
  last_name: "Theotherone",
  password: "123456",
  password_confirmation: "123456",
  city: city2,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_JanO.jpg"
)


puts 'Creating spot seeds...'
spot1 = Spot.create!(
  name: "Buda Strasse",
  description: "Central skatepark for pro",
  address: "Ludwigstraße 34B, 70176 Stuttgart",
  city: city1
)

spot_photo = SpotPhoto.create!(
  spot: spot1,
  user: user1,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105658/Spots/scott-walsh-656484-unsplash.jpg"
  )

spot2 = Spot.create!(
  name: "Harbor Cruising",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Elbchaussee 285, 22605 Hamburg",
  city: city2,
)

spot3 = Spot.create!(
  name: "Berd Dreamer",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "123 Berlin",
  city: city2,
)

spot4 = Spot.create!(
  name: "Berd Dreamer",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "123 Berlin",
  city: city2,
)

spot5 = Spot.create!(
  name: "Berd Dreamer",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "123 Berlin",
  city: city2,
)

spot6 = Spot.create!(
  name: "Berd Dreamer",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "123 Berlin",
  city: city2,
)

spot7 = Spot.create!(
  name: "Berd Dreamer",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "123 Berlin",
  city: city2,
)

spot8 = Spot.create!(
  name: "Berd Dreamer",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "123 Berlin",
  city: city2,
)

spot9 = Spot.create!(
  name: "Berd Dreamer",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "123 Berlin",
  city: city2,
)

spot10 = Spot.create!(
  name: "Berd Dreamer",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "123 Berlin",
  city: city2,
)

spot11 = Spot.create!(
  name: "",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "",
  city: city2,
)

spot12 = Spot.create!(
  name: "",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "",
  city: city2,
)


puts 'Creating review seed....'

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

review8 = Review.create!(
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user3,
  spot: spot4
)

review9 = Review.create!(
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user1,
  spot: spot5
)

review10 = Review.create!(
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user1,
  spot: spot6
)

review11 = Review.create!(
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user2,
  spot: spot7
)

review12 = Review.create!(
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user3,
  spot: spot8
)

review13 = Review.create!(
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user4,
  spot: spot9
)

review14 = Review.create!(
  rating: 3,
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  user: user5,
  spot: spot10
)

puts "Creating favorite seed"
favorite1 = Favorite.create!(
  user: user1,
  spot: spot1
)
favorite2 = Favorite.create!(
  user: user1,
  spot: spot2
)

puts 'Seed: Finished seeding!'
