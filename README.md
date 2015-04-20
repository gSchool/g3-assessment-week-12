movies have many reviews
reviews belong to movies
reviews belong to users
users have many reviews

movies: title:string, description:string

reviews: title:string, body:text, date

users: username:string, password:string



movies/1/review/new
reviews/new

# Week 12 Assessment

We all know that when it comes to building a product, finding an underserved niche is key.
While Netflix is great general purpose solution to streaming movies online, what about
those that only want to watch Nic Cage movies?

Introducing Cageflix. It is going to change the world. Netflix + rotten tomatoes.

In this assessment we will start building out our world-changing idea by allowing people
to add movies to our Cageflix database and also review them.

## Stories

"As a user v
When I visit the home page v
Then I should see the site name and tag line v




See mockups for error messages
77493762,"Movies should be sorted by year, most recent first","",1,"Aug 18, 2014","Aug 24, 2014",feature,1,unstarted,"Aug 23, 2014",,,Hunter Gillane,"As a user



## Mockups/Stories




1. As a user
    When I visit the home page v
    I see the homepage mockup. v


2. As a user when I visit /movies v
    Then I should see the site name and tag line v
    <img src="project/images/01-home.png"> v
    Cageflix v
    Netflix for Nic Cage movies v


2. As a user When I click ""Add Movie""
    And I fill in the new movie fields and click submit v
    <img src="project/images/02-new-movie.png">

3. Errors on new movie:
    - name is required v
    - year is required v
    - year must be a number v
    <img src="project/images/03-errors.png"> v

4. When I visit the home page v
Then I should see the movies listed in v chronological order (newer movies first) v 

5. When I hit New Review on homepage I am taken to a form to create a new review with a dropdown containing all the movies.

5. When I visit the reviews page, I should see all of the reviews listed in date by newest first.

6. When I click New Review within a movie I am taken to a nested resource to create a review for that movie and the current user.


<img src="project/images/nicholas_cage.pdf">
