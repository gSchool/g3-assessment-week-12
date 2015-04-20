# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:username => 'Jake', :password => 'a')
Movie.create(:name => 'The Wickerman', :year => 2006, :synopsis => "Funny stuff")
Movie.create(:name => 'The Rock', :year => 1996, :synopsis => "Crazy stuff")
Movie.create(:name => 'The Weatherman', :year => 2003, :synopsis => "Ridiculous stuff")
