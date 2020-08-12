# Les Witherspoon
# Launch School RB100
# 2020-08-10 - 2020-08-11

# Challenge: Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)
# Print out the original array: 
print "Here is the original array, 'words': "
puts "" 
print words
puts " "
# Sort the array to order words by first letter. Later this will reduce the searching needed: 

words_sorted = words.sort
puts " "
print"Here is the array sorted alphabetically:"
puts ""
print words_sorted
puts " "
# Map the words_sorted array to a new array. Pass in a block that turns each word into an array of characters, then sorts those characters alphabetically, then joins back to strings. 

words_sorted_abc = words_sorted.map { |word_sorted| word_sorted.chars.sort.join }


puts ""
print "Here is the array of words, with the letters in each word sorted alphabetically: "
puts ""
print words_sorted_abc
puts " "

# set up the array to hold the arrays of anagrams
anagram_array = []

 # Iterate over the words_sorted array. for each word, sort the letters by alphabetical order as above and set equal to a variable. 
 words_sorted.each do |word_sorted|
   word1 = word_sorted.chars.sort.join
   # Set up a temporary array to hold the anagrams that we will find.
   temp_array = [ ]
   # Now iterate over the array of alphabetized strings, together with their index.
   words_sorted_abc.each_with_index do |words_abc, idx|
    # for each string in this array, compare to word1
    if words_abc == word1 
      temp_array.push(words_sorted[idx]) # Find the matching, original word by index
    end 
    
  end 
  anagram_array.push(temp_array) # push the array of anagrams to the final array.
end 

# There will be duplicates, so remove them.
anagram_array.uniq!
# Print out the full array, and then each set of anagrams.
puts ""
print "The full array containing all anagrams is: "
puts ""
print anagram_array
puts ""
puts ""
print "Here are the sets of anagrams from the original array: "
puts ""
anagram_array.each {|set| p set }