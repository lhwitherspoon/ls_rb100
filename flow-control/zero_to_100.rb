puts "Pick a number. Any number, as long as it greater than 0 and less than 100."
num = gets.chomp.to_i



if (num > 0) && (num < 50)
    puts "This number is between 0 and 50"
elsif (num > 50) &&  (num < 100)
    puts "This number is between 50 and 100"
elsif num  == 50
    puts "This number is exactly 50"
else
    puts "You didn't listen to directions, did you? "
end


case num
when 1...50
  puts "This number is between 0 and 50"
when 51..100
  puts "This number is between 50 and 100"
  
else
  puts "You didn't listen to directions, did you?"
  
end