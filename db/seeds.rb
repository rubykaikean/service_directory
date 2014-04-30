# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


unless User.where(is_admin: true).first
	admin = User.create!(display_name: "Admin", email: "admin@penang.la", is_admin: true, password: "12345678", password_confirmation: "12345678")
	puts "Admin sucessfully created"
end