puts 'Seed: Deleting existing records...'

Review.delete_all
Like.delete_all
Favorite.delete_all
Participant.delete_all
Event.delete_all
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
  last_name: "Torino",
  password: "123456",
  password_confirmation: "123456",
  city: city1,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_malcolm.jpg"
)

user2 = User.create!(
  email: "jan@yahoo.com",
  first_name: "Jan",
  last_name: "Czizikow",
  password: "123456",
  password_confirmation: "123456",
  city: city2,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_Jan.jpg"
)

user3 = User.create!(
  email: "flora@egmail.com",
  first_name: "Flora",
  last_name: "Franke",
  password: "123456",
  password_confirmation: "123456",
  city: city3,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105423/avatars/avatar_flora.jpg"
)

user4 = User.create!(
  email: "Hian@gmail.com",
  first_name: "Hien",
  last_name: "Nguyen",
  password: "123456",
  password_confirmation: "123456",
  city: city4,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_Hien.jpg"
)

user5 = User.create!(
  email: "otherjan@gmail.com",
  first_name: "Jan",
  last_name: "Sporer",
  password: "123456",
  password_confirmation: "123456",
  city: city5,
  remote_photo_url: "https://res.cloudinary.com/hienn/image/upload/v1535105239/avatars/avatar_JanO.jpg"
)

puts 'Creating spot seeds'

spot1 = Spot.create!(
  name: "Mauerpark",
  description: "Central Pro Skatepark",
  address: "Gleimstraße 55, 10437 Berlin",
  city: city2,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/scott-walsh-656484-unsplash.jpg"]
)

spot2 = Spot.create!(
  name: "Harbor Cruising",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Elbchaussee 285, 22605 Hamburg",
  city: city3,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/skating_california.jpg"]
)

spot3 = Spot.create!(
  name: "Breezy Hole",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Strandstraße 26, 25996 Wenningstedt-Braderup (Sylt)",
  city: city8,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/beach_john-verhoestra-295155-unsplash.jpg"]
)

spot4 = Spot.create!(
  name: "The Nest",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Tiergartenstraße 14, 10785 Berlin",
  city: city2,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/tyler-nix-569195-unsplash.jpg"]
)

spot5 = Spot.create!(
  name: "Fly Corner",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Hornstraße 1, 10963 Berlin",
  city: city2,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/karol-kaczorek-753191-unsplash.jpg"]
)

spot6 = Spot.create!(
  name: "Cruiser",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Engasserbogen 34, 80639 München",
  city: city4,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/city_emily-reider-508296-unsplash.jpg"]
)

spot7 = Spot.create!(
  name: "State Park",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Platz der Luftbrücke 5, 12101 Berlin",
  city: city2,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/jennifer-bedoya-599213-unsplash.jpg"]
)


spot8 = Spot.create!(
  name: "My Backyard",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Schönstedtstraße 6, 12043 Berlin",
  city: city2,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/emily-reider-513130-unsplash.jpg"]
)


spot9 = Spot.create!(
  name: "Bone Yard",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Rheinkniebrücke, 40219 Düsseldorf",
  city: city6,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/zac-ong-630584-unsplash.jpg"]
)

spot10 = Spot.create!(
  name: "Der Welt",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "John-Foster-Dulles-Allee 10, 10557 Berlin",
  city: city2,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/lisa-yang-725071-unsplash.jpg"]\
)


spot11 = Spot.create!(
  name: "SkateHalle",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Engasserbogen 34, 80639 München",
  city: city4,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/alex-geerts-661144-unsplash.jpg"]
)



spot12 = Spot.create!(
  name: "Rosy Park",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis nobis quod aperiam ipsa cupiditate aut numquam, nostrum fugit eos officiis sapiente voluptates. Corrupti esse nesciunt officiis, sequi, sint aspernatur doloribus?",
  address: "Kegelenstraße 21, 70372 Stuttgart",
  city: city7,
  remote_photos_urls: ["https://res.cloudinary.com/hienn/image/upload/q_auto:eco/v1535107048/Spots/beach_ash-edmonds-527424-unsplash_1.jpg"]
)



puts 'Creating review seeds'

review1 = Review.create!(
  rating: 5,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
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
  content: "Come on. I'll show you my techniques.",
  user: user3,
  spot: spot1
)

review4 = Review.create!(
  rating: 5,
  content: "It will be an awesome experiences for sure.",
  user: user4,
  spot: spot1
)

review5 = Review.create!(
  rating: 4,
  content: "I come often here. This place is good enough.",
  user: user5,
  spot: spot1
)

review6 = Review.create!(
  rating: 3,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
  user: user5,
  spot: spot2
)

review7 = Review.create!(
  rating: 3,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
  user: user4,
  spot: spot3
)

review8 = Review.create!(
  rating: 3,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
  user: user3,
  spot: spot4
)

review9 = Review.create!(
  rating: 3,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
  user: user1,
  spot: spot5
)

review10 = Review.create!(
  rating: 3,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
  user: user1,
  spot: spot6
)

review11 = Review.create!(
  rating: 3,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
  user: user2,
  spot: spot7
)

review12 = Review.create!(
  rating: 3,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
  user: user3,
  spot: spot8
)

review13 = Review.create!(
  rating: 3,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
  user: user4,
  spot: spot9
)

review14 = Review.create!(
  rating: 3,
  content: "This place is fantastic. If you wanna stake alone, you can still have lonely skating space, but the best part of here is to be able to share with other skaters and exchange some tips for crazy tricks and so on. Come and check it out.",
  user: user5,
  spot: spot10
)


puts 'Creating event seeds'

event1 = Event.create!(
 name:"Berlin Trick",
 description:"Sharp Rail",
 event_date:"2018-9-1",
 start_time:"6pm",
 end_time:"10pm",
 status:"coming soon",
 user: user1,
 spot: spot1
)

event2 = Event.create!(
 name:"20mt Concrete Jump",
 description:"Just come",
 event_date:"2018-9-1",
 start_time:"6pm",
 end_time:"10pm",
 status:"coming soon",
 user: user3,
 spot: spot10
)

event3 = Event.create!(
 name:"Kickflip Over Bench",
 description:"The hottest night in 21st century",
 event_date:"2018-9-2",
 start_time:"6pm",
 end_time:"11pm",
 status:"coming soon",
 user: user1,
 spot: spot10
)

event4 = Event.create!(
 name:"The Longest Grind",
 description:"Skates for Ladies",
 event_date:"2018-9-31",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user4,
 spot: spot10
)
event5 = Event.create!(
 name:"Sigma Flip",
 description:"Skates for Ladies",
 event_date:"2018-9-3",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user2,
 spot: spot5
)
event6 = Event.create!(
 name:"540 Yo Mamma",
 description:"Skates for Ladies",
 event_date:"2018-9-4",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user1,
 spot: spot5
)
event7 = Event.create!(
 name:"The Longest Grind",
 description:"Skates for Ladies",
 event_date:"2018-9-5",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user3,
 spot: spot7
)
event8 = Event.create!(
 name:"The Casper Flip",
 description:"Skates for Ladies",
 event_date:"2018-9-6",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user2,
 spot: spot7
)
event9 = Event.create!(
 name:"Alpha Flip",
 description:"Skates for Ladies",
 event_date:"2018-9-5",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user1,
 spot: spot8
)
event10 = Event.create!(
 name:"Crazy Inward Heelflip",
 description:"Skates for Ladies",
 event_date:"2018-9-7",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user4,
 spot: spot4
)
event11 = Event.create!(
 name:"360 Ollie",
 description:"Skates for Ladies",
 event_date:"2018-9-4",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user1,
 spot: spot4
)
event12 = Event.create!(
 name:"360 Shuvit",
 description:"Skates for Ladies",
 event_date:"2018-9-2",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user2,
 spot: spot4
)
event13 = Event.create!(
 name:"Grape Flip",
 description:"Skates for Ladies",
 event_date:"2018-9-10",
 start_time:"2pm",
 end_time:"3pm",
 status:"coming soon",
 user: user3,
 spot: spot5
)

puts 'Creating participant seeds'

participant1 = Participant.create!(
  event: event1,
  user: user1
)

participant2 = Participant.create!(
  event: event1,
  user: user2
)

participant3 = Participant.create!(
  event: event1,
  user: user3
)

participant4 = Participant.create!(
  event: event2,
  user: user3
)

# puts "Creating favorite seeds"

# favorite1 = Favorite.create!(
#   user: user1,
#   spot: spot1
# )
# favorite2 = Favorite.create!(
#   user: user1,
#   spot: spot2
# )

# puts "Creating like seeds"
# like1 = Like.create!(
#   user: user1,
#   spot: spot1,
#   value: 1
# )
# like2 = Like.create!(
#   user: user1,
#   spot: spot2,
#   value: -1
# )

# like3 = Like.create!(
#   user: user2,
#   spot: spot2,
#   value: 0
# )

puts 'Seed: Finished seeding!'
