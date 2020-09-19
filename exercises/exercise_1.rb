# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

my_arrray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_arrray.each {|number| puts number}

# modify to print out only values > 5

my_arrray.select do |number|
  if number > 5
    puts "#{number} is greater than 5"
  end
end

my_arrray.select {|number| puts number if number.even?}

my_arrray.append(11).prepend(0)
print my_arrray
puts " "

my_arrray.pop
my_arrray.append(3)
print my_arrray
puts " "

new_my_arrray = my_arrray.uniq
print new_my_arrray

# Difference between an Array and a Hash is that Arrays are ordered, whereas Hashes are not ordered. And thus elements of an Array are identified by position. Hashes contain key:value pairs where a unique key identifies the value of a pair.
puts " "
my_hash = {:time => 'bedtime'}
puts my_hash
my_hash_2 = {meal: 'dinner'}
puts my_hash_2

# Given a hash
h = {a:1, b:2, c:3, d:4}
# Get the value of key ':b'
puts h[:b]

# Add the key:value pari '{e:5}' to the hash
h[:e] = 5
puts h
# Remove all key:value pairs whose value is less than 3.5
h.select {|key, val| val < 3.5}
puts h