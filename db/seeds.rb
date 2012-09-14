# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Christine Bondar', :email => 'dzjunka@gmail.com', :password => 'kfdrhfan', :password_confirmation => 'kfdrhfan'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Ivan Kovalisko', :email => 'ikovalisko@gmail.com', :password => 'cjytxrj', :password_confirmation => 'cjytxrj'
puts 'New user created: ' << user2.name
