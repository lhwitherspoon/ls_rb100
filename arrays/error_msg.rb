# Upon running the following code
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# You receive the following error message
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# The problem? Elements in arrays are accessed by their index. When given the argument 'Margraret', `names` has no idea where it is. 
# Solution: give the index of the item that you wish to set to a new values.

names[3] = 'jody' # This gives the index of 'margaret' - 3; and sets it equal to 'jody'
puts names # names will return 'bob', 'joe', 'susan', 'jody'.