# Les H. Witherspoon for LS RB100 Exercises in Introduction to Programming with Ruby
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
# 1
my_arrray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_arrray.each {|number| puts number}

# modify to print out only values > 5
# 2
my_arrray.select do |number|
  if number > 5
    puts "#{number} is greater than 5"
  end
end

# 3
my_arrray.select {|number| puts number if number.even?}

# 4
my_arrray.append(11).prepend(0)
print my_arrray
puts " "

# 5
my_arrray.pop
my_arrray.append(3)
print my_arrray
puts " "

# 6
new_my_arrray = my_arrray.uniq
print new_my_arrray

#7
# Difference between an Array and a Hash is that Arrays are ordered, whereas Hashes are not ordered. And thus elements of an Array are identified by position. Hashes contain key:value pairs where a unique key identifies the value of a pair.

# 8
puts " "
my_hash = {:time => 'bedtime'}
puts my_hash
my_hash_2 = {meal: 'dinner'}
puts my_hash_2

# 9
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

# 10: Yes, hash values can be arrays: 

meals = {
  :"breakfast" => ['oatmeal', 'yogurt', 'eggs', 'cereal', 'fruit'],
  :"lunch" => ['sandwich', 'burrito', 'soup', 'salad'],
  :"dinner" => ['stir fry', 'pizza', 'pho', 'roast beef and potatoes', 'chili']
}
puts meals

# Can you have an array of hashes? Yes.

pets = [
  cats = {
    "Furry": "calico",
    "Midnight": "Persian",
    "Yowler": "Siamese"
    },
  dogs = {
    "Spot": "Boston Terrier",
    "Fido": "Beloved Mutt",
    "Digger": "Jack Russell"
  }
]

puts pets
puts pets[0][:"Furry"]

puts "**********************"
puts " "

# 11
# Given the following: 
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# Create code that copies the contents of the contact_data array to the contacts hash to produce the following: 
# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# After some hours, I looked at the oslution. I had been attempting to loop over the hash and assign the appropriate contact data to the nested hash in contacts. I realize the result is supposed to be much more straightforwards, and be an exercise in accessing elements in nested structures.  However, in the spirit of writing too much code, I present the following: 

contact_data_joe = contact_data[0]
contact_data_sally = contact_data[1]
contacts_keys = contacts.keys
info_keys = [:email, :address, :phone]

joe_hash = info_keys.zip(contact_data_joe).to_h
sally_hash = info_keys.zip(contact_data_sally).to_h

contacts["Joe Smith"] = joe_hash
contacts["Sally Johnson"] = sally_hash

print contacts
puts " "

puts "*******************"

# finally
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
puts "This is the solution you are probably looking for:", contacts

# 12 show how to access Joe's email and Sally's phone number in the new contacts hash
puts "This is how to access values in a hash:"
puts contacts["Joe Smith"][:email]

puts contacts["Sally Johnson"][:phone]
puts " "

#13 Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

print arr.delete_if { |word| word.start_with?("s") }
puts " "

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
print arr.delete_if { |word| word.start_with?("s", "w") } 

# 14 Turn the following array into a new array consisting of one-word strings. 
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
new_array = a.map {|term| term.split(" ")}
print new_array.flatten
puts " "
puts "********************"
puts " "

# What will the following program output? 
# hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
# hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

# if hash1 == hash2
#   puts "These hashes are the same!"
# else
#   puts "These hashes are not the same!"
# end
# The answer is likely "These hashes are the same! Both are equivalent methods of creating hashes. And order does not matter. That being said, there may be unusual things about addresses in registers, etc..... 

# 16 So.... now try to attain the result for #11 by looping over the contacts hash and populating the data from the contact_data array. Note this is only one contact and one set of data
contact_data_solo = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts_solo = {"Joe Smith" => {}}
contact_info = [:email, :address, :phone]
contact_info.zip(contact_data_solo)

# method 1 using zip to join the contact_info array and the contact_data array, then to_h to turn it into a hash. 
contacts_solo.each do |name, info_hash |
  info_hash = contact_info.zip(contact_data_solo).to_h
  print info_hash
  puts " "
  contacts_solo[name] = info_hash
end

print "Hi, here is one contact! "
puts contacts_solo
puts " "
puts "++++++++++++++++++++++"
puts " "

# method 2 using nested loops and the shift method for arrays.
contacts.each do |name|
  contact_info.each do |item|
    contact_data.shift do |data|
      contacts[name][item] = data
    end
  end
end

puts "Here it is again: ", contacts

puts ""
puts "**************************"
puts " "
# Try with multiple entries. Rename a bit to avoid any conflicts from earlier operations. 
contact_data_1 = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts_1 = {"Joe Smith" => {}, "Sally Johnson" => {}}
contact_info = [:email, :address, :phone]
# contacts_1.each {|name, info | puts name}
# contacts_1.shift {|name, info| puts name }
# contact_info.shift {|item| print item}
# contact_data_1.each_index do |index|
#   print contact_info.zip(contact_data_1[index]).to_h
# end


# contacts_1.each do |contact, info|
#   puts "Contacts: ",  contacts_1       
#   puts "The contact: ", contacts_1[contact]
#   puts contacts_1[contact] = contact_data_1.shift{|data_1| contact_info.zip(contact_data_1[data_1])}
# end
# puts "Try this now, contacts: ", contacts_1
# puts "********************"
# After much experimenting: 
contacts_1.each do |name, info|
  # For each contact, take the first array from the contact_data_1 array and then shift the remaining. Set this to a variable.
  data_info = contact_data_1.shift
  # Use zip and to_h to join the two arrays and turn them into a hash
  info_hash_1 = contact_info.zip(data_info).to_h
  # assign the hash to the contact 
  contacts_1[name] = info_hash_1
end



puts "_________________"
puts "And once more to the breach: multiple entries in contacts hash: "
contacts_1.each {|contact| puts contact}
# contacts_1.each do |name, info_hash|
#   print name
#   contact_data_1.first do |data_1|
#     print data_1
#     info_hash_1= contact_info.zip(contact_data_1).to_h
#     print "Info hash is:", info_hash_1
#     puts " "
#     contacts_1[name] = info_hash_1
#   end
# end

