a = 5
if a
  puts "how can this be true?"
else
  puts "it is not true"
end

a = 0
if a
  puts "how can this be true?"
else
  puts "it is not true"
end

a = " "
if a
  puts "how can this be true?"
else
  puts "it is not true"
end

a = "false"
if a
  puts "how can this be true?"
else
  puts "it is not true"
end

def truth_teller(a)
  if a
    puts "how can this be true?"
  else
    puts "it is not true"
  end
end
truth_teller(5)
truth_teller(0)
truth_teller(" ")
truth_teller(0)
truth_teller(puts "what?")
truth_teller(!(5))