
# what is returned in the following program? 
x = [1, 2, 3, 4,5]
x.each do |a|
  a + 1
end
puts x
# Initial answer: This returns each element of x (represented by a) + 1
# 2
# 3
# 4
# 5
# 6
# ETA: Initial answer is wrong - it returns the array itself, as the .each method returns the array that it is called up. 
