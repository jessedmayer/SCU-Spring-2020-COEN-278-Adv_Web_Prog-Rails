# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create!(name: 'Iphone',
                description: %{The Brand new Iphone now faster and larger than ever!},
                image: 'iphone.jpg',
                price:950.00)

Product.create!(name: 'Ipad',
                description: %{The Brand new Ipad now more capable, with a longer battery life},
                image: 'ipad.jpg',
                price:1350.00)

Product.create!(name: 'Earpods',
                description: %{Take your music or calls with you with Earpods},
                image: 'earpods.jpg',
                price:150.00)