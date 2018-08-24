puts 'Seed: Deleting existing records...'

Review.delete_all
Spot.delete_all
User.delete_all

puts 'Creating city seeds'
city1 = City.create!(
  name: "Budapest"
)

city2 = City.create!(
  name: "Berlin"
)

puts 'Creating user seeds'
user1 = User.create!(
  email: "malcolm@gmail.com",
  first_name: "Malcolm",
  last_name: "The Rich",
  password: "123456",
  password_confirmation: "123456",
  city: city1
)

user2 = User.create!(
  email: "jan@yahoo.com",
  first_name: "Jan",
  last_name: "chino",
  password: "123456",
  password_confirmation: "123456",
  city: city1
)

user3 = User.create!(
  email: "flora@example.com",
  first_name: "Flora",
  last_name: "Baby",
  password: "123456",
  password_confirmation: "123456",
  city: city2
)

user4 = User.create!(
  email: "jantokyo@gmail.com",
  first_name: "Jan",
  last_name: "Tokyo",
  password: "123456",
  password_confirmation: "123456",
  city: city2
)

puts 'Creating spot seeds'
spot1 = Spot.create!(
  name: "Budapest Skatepark",
  description: "Central skatepark for pro",
  address: "123 Budapest",
  city: city1
)

spot2 = Spot.create!(
  name: "Berlin Dreamer",
  description: "Berliner Skatepark",
  address: "123 Berlin",
  city: city2
)

puts 'Creating review seeds'

review1 = Review.create!(
  rating: 5,
  content: "Wonderful experience!",
  user: user1,
  spot: spot1
)

review2 = Review.create!(
  rating: 5,
  content: "Perfect location in Berlin for all skaters!",
  user: user2,
  spot: spot2
)

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
