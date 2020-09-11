def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
puts a

def test2(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

test2(a)
puts(a)
