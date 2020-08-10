# A program that iterates over an array, increments each value by 2, and then returns a new array with the new values.

array1 = [3, 9, 27, 81] # first array

array2 = array1.map { |num| num + 2 } # creates a block that adds 2 to each member of array1 and maps it to a new array, array2

p array1
p array2