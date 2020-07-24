# LS RB100 Les Witherspoon 2020-07-23
puts "How old are you?"
age = gets.chomp.to_i

# The most basic way.
puts "Today you are #{age} years old."
puts "\n"
puts "In 10 years you will be #{age + 10}"
puts "In 20 years you will be #{age + 20}"
puts "In 30 years you will be #{age + 30}"
puts "in 40 years you will be #{age + 40}"
puts "\n"
# age_array = [age + 10, age + 20, age + 30, age + 40]
# age_array.each { | age | puts "In "}
# Let's automate this. I hate typing stuff over and over. 

decade = 10
for i in 1..4
  age = age + 10  
  puts "In #{decade} years you will be #{age} years old."
  decade = decade + 10
end
  