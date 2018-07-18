
# login path for login user
# admin: email, password, 
User.destroy_all
admin = User.create!(name: 'Ivy', email: 'email@gmail.com', password: '1234', password_confirmation: '1234', isAdmin: true)

Route.destroy_all
route = Route.create!(name: 'Lady Luck', difficulty: '5.7', pitches: '1, 100ft', description: 'Description goes here.', route_type: 'Sport', user_id: current_user)
route2 = Route.create!(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport', user_id: current_user)
route3 = Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: current_user) 
# Route.create!(name: 'Another One', difficulty: '5.10', pitches: '1, 120ft', description: 'Description goes here.', route_type: 'Sport', user_id: 1)
# Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: 1) 
# Route.create!(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport', user_id: 1)
# Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: 1) 
# Route.create!(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport', user_id: 1)
# Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: 1) 
# Route.create!(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport', user_id: 1)
# Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: 1) 
# Route.create!(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport', user_id: 1)
# Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: 1) 
# Route.create!(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport', user_id: 1)
# Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: 1) 
# Route.create!(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport', user_id: 1)
# Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: 1) 
# Route.create!(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport', user_id: 1)
# Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: 1) 
# Route.create!(name: 'Bad Luck', difficulty: '5.9', pitches: '1, 90ft', description: 'Description goes here.', route_type: 'Sport', user_id: 1)
# Route.create!(name: 'Bad Wolf', difficulty: '5.12a', pitches: '3, 390ft', description: 'Description goes here.', route_type: 'Sport, multipitch', user_id: 1) 

