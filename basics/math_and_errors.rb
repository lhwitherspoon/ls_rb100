# Set up a program to display the factorial of the numbers 5,6,7,8.
# Reminder: a factorial n is calculated by the following formula: n X (n -1) X (n - 2) ... X 1.
require "pry"

puts "The basic method to calculate a factorial for 5."
puts 5*4*3*2*1
puts 6*5*4*3*2*1
puts 7*6*5*4*3*2*1
puts 8*7*6*5*4*3*2*1

puts "\nLet's try a variable instead"
five_factorial = 5*4*3*2*1
puts five_factorial
puts 6*five_factorial
puts 7*6*five_factorial
puts 8*7*6*five_factorial

# write a method/block/proc
# puts "\nThis calls for something more...reusable."
# n = 5
# i = 1
# result = n

# until i == n - 1
#   result = result * (n - i)
#   i += 1
#   puts "n is: #{n}"
#   puts "i is: #{i}"
#   puts "result is: #{result}"
# end

# turn into something reuseable
# The following is just to work out the general method. 
def factorial(n)
  r = n
  i = 1
  until i == n - 1
    r = n * (n - i)
    # Need to set this to r = r * (n-i)
    i += 1
  end
end
n = 5
# To give n!: 
factorial_this = Proc.new { |n|
  # set r = to n to start
  r = n
  puts "i is #{i}"
  until i == n - 1
    r = r * (n - i)
    # binding.pry
    i += 1
  end
puts "#{n}! is #{r}"
}

factorial_this.(5)
factorial_this.(6)
factorial_this.(7)
factorial_this.(8)



