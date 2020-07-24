# LS RB100 2020-07-23 Les Witherspoon
puts "Please type in your name."
name = gets.chomp

puts "Hi there, #{name}!"

10.times { puts name }

puts "\nI'm sorry, what did you say your first name was again?"
first_name = gets.chomp

puts "\nAnd could you tell me your last name one more time?"
last_name = gets.chomp

puts "Thank you, #{first_name} #{last_name}."
puts first_name + ' ' + last_name
puts first_name, last_name