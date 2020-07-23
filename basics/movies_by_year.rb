# RB100 Basics, 2020-07-23, Les Witherspoon 
# List taken from Rotten Tomatoe's "150 Essential Comedy Movies to Watch Now" list as of 2020-07-23 https://editorial.rottentomatoes.com/guide/essential-comedy-movies/
# Goal: set up a hash that stores movie titles together with the year they came out. Then use the puts command to print out the year each movie was released.
puts "This is the hash."
movies = {
  :"Hot Rod" => 2007,
  :"The First Wives Club" => 1996,
  :"Scary Movie" => 2000,
  :"The Bank Dick" => 1940, 
  :"Shaolin Soccer" => 2004,
  :"Mrs. Doubtfire" => 1993
}
puts movies

# The easy way
puts "\nList the years using the .each method."
movies.each_value {|value | puts value }

# Using the dates from the previous example, store them in an array, then output the years as above. 
puts "\nStore the years in an array and display as above."
movies_array = []
movies.each_value { | value | movies_array.push(value) }
movies_array.each do |year|
  puts year
end



# Add some explanatory text
puts "\nAdd some explanatory text."
movies.each_value {|value | puts "This movie was put out in", value } #Note: string interpolation would work here as well.

# add in the name of the movie (note: spacing needs work)
puts "\nLet's get fancy."
movies.each { | key, value | puts key, " was put out in ", value }

# Try:
# movies.each { | key, value | puts key " was put out in " value } results in errors.
# Try again using string interpolation
puts "\nLet's try string interpolation and clear up the spacing."
movies.each { | key, value | puts "#{key} was put out in #{value}." }
 

# The simple but tedious method: 
puts "\nUsing no methods, just call each value one by one using \{list the entire hash\}\[key]."

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

