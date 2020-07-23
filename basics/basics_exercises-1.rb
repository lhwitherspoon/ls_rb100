# Basics Exercises
# 2020-07-23 Les Witherspoon

# Concatenate first & last name. 
puts "Concatenate the first and last name. Space within the quotes provides space between the words." 
puts "Les " + "Witherspoon"

# will return "Les Witherspoon". 

# Given a four-digit number, find the digit in the thousands place, hundreds place, tens place, and ones place.
puts "Let the four-digit number or <num> = 4216"

# <num> `/` 1000 will return the digit in the thousands place.
puts "This is the thousands digit"
puts 4216 / 1000

# <num> % 1000 will give the modulus, which will be the hundreds, tens and ones
4216 % 1000

# (<num> % 1000) / 100 will give the hundreds digit

puts "This is the hundreds digit"
puts (4216 % 1000) / 100

# (<num> % 1000) % 100 will give the modulus, which will be the tens and ones
(4216 % 1000) % 100
# ((<num> % 1000) % 100) /10 will give the tens digit
puts "This is the tens digit"
puts ((4216 % 1000) % 100) / 10

# (((<num> % 1000> % 100) % 10 will give the modulus, which is the ones digit.
puts "This is the ones digit"
puts ((4216 % 1000) % 100) % 10
