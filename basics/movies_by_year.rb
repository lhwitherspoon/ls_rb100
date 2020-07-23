# RB100 Basics, 2020-07-23, Les Witherspoon 
# List taken from Rotten Tomatoe's "150 Essential Comedy Movies to Watch Now" list as of 2020-07-23 https://editorial.rottentomatoes.com/guide/essential-comedy-movies/
# Goal: set up a hash that stores movie titles together with the year they came out. Then use the puts command to print out the year each movie was released.

movies = {
  :"Hot Rod" => 2007,
  :"The First Wives Club" => 1996,
  :"Scary Movie" => 2000,
  :"The Bank Dick" => 1940, 
  :"Shaolin Soccer" => 2004,
  :"Mrs. Doubtfire" => 1993
}

# The easy way

movies.each_value {|value | puts value }

# Additional ways to  be added - e.g. see how many different ways I can do this - 


