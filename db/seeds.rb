# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create(name: 'Con Air', summary: "Just-paroled army ranger Cameron Poe (Nicolas Cage) is headed back to his wife (Monica Potter), but must fly home aboard a prison transport flight.", date: '12/01/1997')
User.create(username: 'mlouie', password: 'password')
Review.create(movie_id: 1, user_id: 1, title: 'Bad Ass Movie', body: 'Awesome Special Effects!')
