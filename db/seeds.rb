# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Route.create(name: 'Lady Luck', difficulty: '5.7', pitches: '1, 100ft', description: 'Description goes here.', route_type: 'Sport')
Route.create(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport')
Route.create(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch')
