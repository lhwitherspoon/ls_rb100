family = {  
          uncles: ["bob", "joe", "steve"],
          sisters: ["jane", "jill", "beth"],
          brothers: ["frank", "rob", "david"],
          aunts: ["mary", "sally", "susan"]
  }

closest_family = []
family.select do  |k, v|
  if k == :sisters
    closest_family.push(v)
  elsif k == :brothers
    closest_family.push(v)  
  else
    next
  end
end
puts "The immmediate family are: ", closest_family

