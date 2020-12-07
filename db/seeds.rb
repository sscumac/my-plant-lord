require "open-uri"

puts "Destroying seeds"

Review.destroy_all
Booking.destroy_all
Plant.destroy_all
User.destroy_all


puts "Creating seeds"

user_1 = User.create!(email: "bob@gmail.com", password: "password")
user_2 = User.create!(email: "laura@gmail.com", password: "password")
user_3 = User.create!(email: "malik@gmail.com", password: "password")
user_4 = User.create!(email: "kennedy@gmail.com", password: "password")
user_5 = User.create!(email: "gus@gmail.com", password: "password")
user_6 = User.create!(email: "nico@gmail.com", password: "password")


plant_1 = Plant.create!(
  name: "Jade",
  description: "Commonly known as lucky plant. Succulent plant with small pink or white flowers that is native to the KwaZulu-Natal and Eastern Cape provinces of South Africa, and Mozambique.",
  address: "Carrer de Jorge Manrique, s/n, 08035 Barcelona",
  price: 7,
  user: user_1
  )
  file_1 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/1.jpg')
  plant_1.photo.attach(io: file_1, filename: '1.jpg', content_type: 'image/jpg')

plant_2 = Plant.create!(
  name: "Pothos",
  description: "Also called Devil's Ivy. Considered one of the most effective indoor air purifiers for removing common toxins.",
  address: "Carrer de Vallirana, 29, 08006 Barcelona",
  price: 9,
  user: user_4
  )
  file_2 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/2.jpg')
  plant_2.photo.attach(io: file_2, filename: '2.jpg', content_type: 'image/jpg')

plant_3 = Plant.create!(
  name: "Monstera deliciosa",
  description: "Mexican indoor plant from the Araceae family. Its name comes from the Latin meaning “abnormal” because of its odd-looking, perforated leaves that are often punched through with holes.",
  address: "Carrer de Jaume Martí, 31, 08042 Barcelona",
  price: 7,
  user: user_1,
  )
  file_3 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/3.jpg')
  plant_3.photo.attach(io: file_3, filename: '3.jpg', content_type: 'image/jpg')

plant_4 = Plant.create!(
  name: "Mass cane",
  description: "Also known as 'corn plant'. It has stalky stems and long, indoor green leaves with light-yellow/light-green stripes running through them.",
  address: "Av. del Tibidabo, 31, 08022 Barcelona",
  price: 9,
  user: user_5
  )
  file_4 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/4.jpg')
  plant_4.photo.attach(io: file_4, filename: '4.jpg', content_type: 'image/jpg')

plant_5 = Plant.create!(
  name: "Peace lily",
  description: "Peace lilies are tropical, outdoor evergreen plants that thrive on the forest floor, where they receive dappled sunlight and consistent moisture.",
  address: "Carrer de Vilardell, 18, 08014 Barcelona",
  price: 7,
  user: user_6
  )
  file_5 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/5.jpg')
  plant_5.photo.attach(io: file_5, filename: '5.jpg', content_type: 'image/jpg')

plant_6 = Plant.create!(
  name: "Spider plant",
  description: "Also known as airplane plant",
  address: "Carrer de Vila i Vilà, 48, 08004 Barcelona",
  price: 9,
  user: user_4
  )
  file_6 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/6.jpg')
  plant_6.photo.attach(io: file_6, filename: '6.jpg', content_type: 'image/jpg')

 puts " 6 plats created....."

plant_7 = Plant.create!(
  name: "Rubber plant",
  description: "Rubber indoor trees, formally ficus elastica, can be enjoyed as either medium-sized house plants or grown to become focal point, beautiful indoor trees.",
  address: "Carrer de Guifré, 664, 08918 Badalona, Barcelona",
  price: 7,
  user: user_5
  )
  file_7 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/7.jpg')
  plant_7.photo.attach(io: file_7, filename: '7.jpg', content_type: 'image/jpg')

plant_8 = Plant.create!(
  name: "Zanzibar gem",
  description: "Has been hailed as being ‘almost indestructible’. Native to Africa, it has deep, green glossy leaves and is able to survive a long period without water.",
  address: "Carrer de la Infanta Isabel, 4, 08022 Barcelona",
  price: 9,
  user: user_6
  )
  file_8 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/8.jpg')
  plant_8.photo.attach(io: file_8, filename: '8.jpg', content_type: 'image/jpg')

plant_9 = Plant.create!(
  name: "Maidenhair Fern",
  description: "Feathery indoor, light green leaves with soft shiny stems and they make a great hanging plant.",
  address: "Passatge de la Concepció, 5, 08008 Barcelona",
  price: 7,
  user: user_4
  )
  file_9 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/9.jpg')
  plant_9.photo.attach(io: file_9, filename: '9.jpg', content_type: 'image/jpg')

plant_10 = Plant.create!(
  name: "Anthurium Andraeanum",
  description: "Originally from Columbia and feature long, dark-green leathery leaves and produce beautiful, red, pink and white heart-shaped ‘flowers’ that can last for weeks.",
  address: "Carrer del Milanesat, 19, 08017 Barcelona",
  price: 9,
  user: user_5
  )
  file_10 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606907915/PlantLord/10.jpg')
  plant_10.photo.attach(io: file_10, filename: '10.jpg', content_type: 'image/jpg')

plant_11 = Plant.create!(
  name: "Cactus",
  description: "A cactus is a member of the plant family Cactaceae.",
  address: "Carrer del Torrent de l'Olla, 23, 08012 Barcelona",
  price: 7,
  user: user_5
  )
  file_11 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606907306/PlantLord/11.jpg')
  plant_11.photo.attach(io: file_11, filename: '11.jpg', content_type: 'image/jpg')


plant_12 = Plant.create!(
  name: "Chinese evergreen",
  description: "Chinese indoor evergreens prefer well-drained soil. Provide them with medium to low indirect light, and with a little extra humidity. ",
  address: "Carrer d'Enric Granados, 55, 08008 Barcelona",
  price: 9,
  user: user_2
  )
  file_12 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1606906530/PlantLord/12.jpg')
  plant_12.photo.attach(io: file_12, filename: '12.jpg', content_type: 'image/jpg')


puts " 12 plats created....."

plant_13 = Plant.create!(
  name: "Never Never Plant",
  description: "The Ctenanthe burle marxii Amagris is slow growing with pale grey-green, oval leaves and dramatic dark green curving stripes. The leaves are wonderfully offset by a deep purple stem and leaf underside. ",
  address: "Carrer d'Enric Granados, 240, 08008 Barcelona",
  price: 9,
  user: user_1
  )
  file_13 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1607092207/PlantLord/13.jpg')
  plant_13.photo.attach(io: file_13, filename: '13.jpg', content_type: 'image/jpg')


plant_14 = Plant.create!(
  name: "Dracaena marginata Red Edged",
  description: "Also known as the Madagascar Dragon Tree, Dracaena marginata is an extremely popular plant. It is a rugged and resilient species, easy to care for and looks graceful in any setting. ",
  address: "Carrer Valencia, 440, 08013 Barcelona",
  price: 9,
  user: user_1
  )
  file_14 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1607092207/PlantLord/14.jpg')
  plant_14.photo.attach(io: file_14, filename: '14.jpg', content_type: 'image/jpg')


plant_15 = Plant.create!(
  name: "linda clara",
  description: "Also known as the Bella bella, is an extremely popular plant. It is a rugged and resilient species, easy to care for and looks graceful in any setting. ",
  address: "Carrer de las Navas de Tolosa, 283, 08026 Barcelona",
  price: 10,
  user: user_2
  )
  file_15 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1607092207/PlantLord/15.jpg')
  plant_15.photo.attach(io: file_15, filename: '15.jpg', content_type: 'image/jpg')

plant_16 = Plant.create!(
  name: "Dracaena marginata Red Edged",
  description: "Also known as the Madagascar Dragon Tree, Dracaena marginata is an extremely popular plant. It is a rugged and resilient species, easy to care for and looks graceful in any setting. ",
  address: "Carrer Valencia, 440, 08013 Barcelona",
  price: 9,
  user: user_2
  )
  file_16 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1607092207/PlantLord/16.jpg')
  plant_16.photo.attach(io: file_16, filename: '16.jpg', content_type: 'image/jpg')

plant_17 = Plant.create!(
  name: "Ficus salami",
  description: "Ficus Salami is an extremely popular indoor plant. It is a rugged and resilient species, easy to care for and looks graceful in any setting. ",
  address: "Carrer de l'Amistat, 30, 08005 Barcelona",
  price: 9,
  user: user_1
  )
  file_17 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1607092207/PlantLord/17.jpg')
  plant_17.photo.attach(io: file_17, filename: '17.jpg', content_type: 'image/jpg')

puts " 17 plats created....."


plant_18 = Plant.create!(
  name: "La pelua",
  description: "Also known as Big Pelua, is an beautiful popular plant. It is a rugged and resilient species, easy to care for and looks graceful in any setting. ",
  address: "Plaça Alfonso Rodriguez Castelao, 2, 08031 Barcelona",
  price: 9,
  user: user_1
  )
  file_18 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1607092207/PlantLord/18.jpg')
  plant_18.photo.attach(io: file_18, filename: '18.jpg', content_type: 'image/jpg')

plant_19 = Plant.create!(
  name: "Fragan lemon Lime",
  description: "As its name suggests, Dracaena Lemon Lime is a vibrant, fresh Dracaena with bright green, yellow and white leaves. It is wide spreading, with delightfully long, arching, lance-shaped leaves arranged around a central stem.",
  address: "Passeig de Maragall, 308, 08031 Barcelona",
  price: 9,
  user: user_1
  )
  file_19 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1607092207/PlantLord/19.jpg')
  plant_19.photo.attach(io: file_19, filename: '19.jpg', content_type: 'image/jpg')

plant_20 = Plant.create!(
  name: "Palmera tropical",
  description: "Palmera Tropical is an extremely pichus indoor plant. It is a rugged and resilient species, easy to care for and looks graceful in any setting. ",
  address: "Carrer de la Legalitat, 74, 08024 Barcelona",
  price: 9,
  user: user_1
  )
  file_20 = URI.open('https://res.cloudinary.com/dwl79z56q/image/upload/v1607092207/PlantLord/20.jpg')
  plant_20.photo.attach(io: file_20, filename: '20.jpg', content_type: 'image/jpg')

puts " 20 plats created....."

Plant.all.each do |plant|
  booking = Booking.create!(
              start_date: Date.today,
              end_date: Date.today + 5,
              plant: plant,

              user: [user_4, user_2, user_3].sample
              )
  review = Review.create!(
    booking: booking,
    rating: [3,4,5].sample,
    content: [ "Amazing plant! Brought a lot of light home.", "Higher maintenance than I expected. Still enjoyed it at home."].sample
    )
end

puts "Bookings created"
