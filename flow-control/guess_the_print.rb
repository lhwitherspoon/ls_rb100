# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE") # FALSE

# Snippet 2
x = 2
if ((x * 3) / 2) == (4+4 -x -3) # 6/2  == 6-3 True
  puts "Did you get it right?" # Will put "Did you get it right?"

else
  puts "Did you?"
  
end

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright" # 10 + 1 !<= 9 so defaults to next statement
elsif (x + 1) >= (y) 
  puts "Alright now!" # 10 + 1 >= 9 so puts "Alright now!
elsif (y + 1) == x 
  puts "ALRIGHT NOW!" # even though 9 + 1 == 10, the program will exit before reaching this statement. 
else
  puts "Alrighty!"
end