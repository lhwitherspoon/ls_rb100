# Say something
puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

# let's condense this. 

def say(words)
  puts words + '.' ## Make a change once,  run it many times.
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")