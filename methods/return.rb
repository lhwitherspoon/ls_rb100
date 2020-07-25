def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

# Now look at an explicit return
def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value