# An attempt at recursion.


def count_down(x)
  puts x
  if x > 0
    count_down(x -= 1)
  end
end  
  
puts "Type in a number greater than zero"
x = gets.chomp.to_i
puts "Okay, counting down from #{ x }"
count_down(x)    
