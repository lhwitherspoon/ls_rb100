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

# Add some explanatory text
movies.each_value {|value | puts "this movie was put out in this year", value }

# add in the name of the movie (note: spacing needs work)
movies.each { | key, value | puts key, " was put out in ", value }

# Try:
# movies.each { | key, value | puts key " was put out in " value } results in errors.
 

# The simple but tedious method: 
puts movies = {
  :"Hot Rod" => 2007,
  :"The First Wives Club" => 1996,
  :"Scary Movie" => 2000,
  :"The Bank Dick" => 1940, 
  :"Shaolin Soccer" => 2004,
  :"Mrs. Doubtfire" => 1993
}[:"Hot Rod"]
puts movies = {
  :"Hot Rod" => 2007,
  :"The First Wives Club" => 1996,
  :"Scary Movie" => 2000,
  :"The Bank Dick" => 1940, 
  :"Shaolin Soccer" => 2004,
  :"Mrs. Doubtfire" => 1993
}[:"The First Wives Club"]
puts movies = {
  :"Hot Rod" => 2007,
  :"The First Wives Club" => 1996,
  :"Scary Movie" => 2000,
  :"The Bank Dick" => 1940, 
  :"Shaolin Soccer" => 2004,
  :"Mrs. Doubtfire" => 1993
}[:"Scary Movie"]
puts movies = {
  :"Hot Rod" => 2007,
  :"The First Wives Club" => 1996,
  :"Scary Movie" => 2000,
  :"The Bank Dick" => 1940, 
  :"Shaolin Soccer" => 2004,
  :"Mrs. Doubtfire" => 1993
}[:"The Bank Dick"]
puts movies = {
  :"Hot Rod" => 2007,
  :"The First Wives Club" => 1996,
  :"Scary Movie" => 2000,
  :"The Bank Dick" => 1940, 
  :"Shaolin Soccer" => 2004,
  :"Mrs. Doubtfire" => 1993
}[:"Shaolin Soccer"]
puts movies = {
  :"Hot Rod" => 2007,
  :"The First Wives Club" => 1996,
  :"Scary Movie" => 2000,
  :"The Bank Dick" => 1940, 
  :"Shaolin Soccer" => 2004,
  :"Mrs. Doubtfire" => 1993
}[:"Mrs. Doubtfire"]
