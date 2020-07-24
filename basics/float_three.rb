# Launch School RB100 Les Witherspoon 2020-07-23
# Write a program to calculate the squares of three float numbers of my choosing. 
# I assume here that it is to take three separate numbers and produce the result in one operation.


puts "What three numbers do you want to square? Please list them this way: '1, 2, 3'."
num_string = gets.chomp
my_floats = num_string.split(", ")


make_float = Proc.new {| item | item.to_f}
square_float = Proc.new { 
  |item |
  item ** 2}

my_floats.map!(&make_float)
my_floats.map!(&square_float)
puts my_floats

# Maybe I'm overengineering this. Since the answer was along the lines of "puts 6.13 * 6.13"

puts "What does the following error message tell me? \n SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'"

puts "On line 2 of an irb session, a parentheses was typed instead of a curly brace."
