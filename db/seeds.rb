# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first: "admin", last: "admin", role: "admin", 
	created_at: "2019-10-13 15:35:39", updated_at: "2019-10-13 15:35:39", 
	email: "admin@admin.com", password: "admin@123")