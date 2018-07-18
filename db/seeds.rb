# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Headphone", description: "The Numark HF125 multi-purpose headphones employ large 40mm Mylar speaker drivers, enabling you to hear exactly what's happening with your EQ or effects. ", image_url: "headphones.jpg", colour: "black", price: 50 )

Product.create(name: "Portable PA", description: "The SZPA-P12 is the ultimate all-in-one portable PA system for small venues and close proximity events, that offers a whole host of connectivity options. ", image_url: "portable pa.jpg", colour: "black", price: 100 )

Product.create(name: "Dj Mixer", description: "The Gemini MM1 Two-Channel Compact Mixer provides you with precision mixing capabilities in a compact and portable format.", image_url: "Dj mixer.jpg", colour: "black", price: 150 )

Product.create(name: "Turntable", description: "The modular design allows you to combine other Behringer CMD modules together to further expand your setup.", image_url: "Turntable.jpg", colour: "black", price: 73 )

Product.create(name: "Dj Headphones", description: "The Numark HF125 multi-purpose headphones employ large 40mm Mylar speaker drivers, enabling you to hear exactly what's happening with your EQ or effects. ", image_url: "grayheadphones.jpg", colour: "grey", price: 57)

Product.create(name: "Phono Cable Dual Mono", description: "The Phono to Phono cable is a high performance dual mono three metre male RCA to male RCA cable. Suitable for a range of live, studio and home audio applications.", image_url: "cable.jpg", colour: "black", price: 10)
