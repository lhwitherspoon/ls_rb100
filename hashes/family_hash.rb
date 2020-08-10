# Les witherspoon
# Launch School RB100
# Selecting family members
family = {  
          uncles: ["bob", "joe", "steve"],
          sisters: ["jane", "jill", "beth"],
          brothers: ["frank", "rob", "david"],
          aunts: ["mary", "sally", "susan"]
  }


# My initial somewhat clunky solution
closest_family = []
family.select do  |k, v|
  if k == :sisters
    closest_family.push(v)
  elsif k == :brothers
    closest_family.push(v)  
  elsehttps://www.livescience.com/50400-quinoa-nutrition-facts.html
    next
  end
end
puts "The immmediate family are: ", closest_family

# from the solution: 

siblings = family.select do | k, v|
  k == :sisters || k == :brothers
end
new_arr = siblings.values.flatten
p siblings
p new_arr

# Tried the following, to select against aunts and uncles: 
my_fam = family.select do |k, v|
  k != :aunts || k != :uncles # however, using OR with a NOT ends up including every value in the hash. This would need to be AND to work with !=
  
end

new_fam = my_fam.values.flatten
p "Two NOTS and an OR return everyone! #{new_fam}", new_fam # Returns everyone. 

# Corrected: 
my_fam2 = family.select do |k, v|
    k != :aunts && k != :uncles
end

new_fam2 = my_fam2.values.flatten
p "Two NOTS and an AND return only siblings #{new_fam2}", new_fam2