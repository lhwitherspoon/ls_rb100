a = [1, 2, 3]

# Example of a method definition taht modifies its argument permanently

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
puts "Before mutate method: #{a}"
p mutate(a)
puts "After mutate method: #{a}"
p "After mutate method: #{a}"

# Contrast with this method: 
a = [1, 2, 3]
# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
p no_mutate(a)
p "After no_mutate method: #{a}"