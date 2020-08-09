result = [1, 2, 3].each do |value|
  break value * 2 if value.even?
end
p result

a = 0 
while true do
  p a
  a += 1

  break if a < 10
end 

p a

a = 0
while true do
  p "a is ", a
  a += 1
  p "a is now ", a
  break if a == 5
end

p a

a = 0
while true do
  p "a is #{ a }"
  a += 1
  print "a is now #{ a }"
  break a = (a - 5) if a == 9
end

p "The final value of a is #{ a }"
