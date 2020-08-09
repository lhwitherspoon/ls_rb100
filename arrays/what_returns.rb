arr = ["b", "a"]
arr = arr.product(Array(1..3))
# This line returns an array consisting of combinations of arr and the numbers 1, 2, 3:
# => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last)
# This perofrms two operations apparaently: it finds the first elemenet in the array, then deletes the last element of the first element in the array. the first element is ["b, 1"]; deleting the last element returns 1

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
# This returns [["b", [1, 2, 3]], ["a", [1,2,3]]]. Enclosing Array(1..3) in brackets produces a nested array.
arr.first.delete(arr.first.last)
# This finds the first element, which is ["b", [1, 2, 3]] and returns the last element of it, which is [1, 2, 3]
