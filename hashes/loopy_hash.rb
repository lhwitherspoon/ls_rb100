# Les Witherspoon 2020-08-10
# Launch School RB100

# Write a program that loops through a hash and prints all of the keys.

# 'Asiago Hash Brown' Recipe courtesy of Linzi Swanson on AllRecipes.com at https://www.allrecipes.com/recipe/67705/asiago-hash-browns/?internalSource=staff%20pick&referringId=1549&referringContentType=Recipe%20Hub

puts "It's obviously time for lunch. Here is our, er, hash. Credits in comments."
puts " "
asiago_hash_browns = {
  base: '30 oz frozen hash brown potatoes',
  dairy: '1.5 cups Asiago cheese, grated',
  savory: '1 medium onion, chopped',
  more_dairy: '8 oz sour cream',
  add_cream: '8 fl oz heavy cream',
  fat: '0.5 cups butter, melted',
  spice: '1 pinch paprika, to taste',
  seasoning: ' 1 pinch salt and pepper to taste'
}
puts " "
puts "Here are the keys: the type of ingredients we need."
puts " "

asiago_hash_browns.each do |key, value|
  puts "We need this type of ingredient: #{ key }"
end
puts " "
puts "Here are the values: the ingredients themselves."
puts " "
asiago_hash_browns.each do |key, value|
  puts "And we have these ingredients: #{ value }"
end
puts " "
puts "And now, the listing for the recipe."
puts " "
asiago_hash_browns.each do |key, value|
  puts "And for our #{ key } we have #{ value } on hand."
end



