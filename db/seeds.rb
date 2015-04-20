# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


movies = Movie.create([{name: 'The Wickerman', date: '2006', synopsis: 'A sheriff investigating the disappearance of a young girl from a small island discovers there\'s a larger mystery to solve among the island\'s secretive, neo-pagan community.'},
   {name: 'The Rock', date: '1996', synopsis: ' A mild-mannered chemist and an ex-con must lead the counterstrike when a rogue group of military men, led by a renegade general, threaten a nerve gas attack from Alcatraz against San Francisco.'}])


user = User.create([{username: 'admin', password: 'password'}])
