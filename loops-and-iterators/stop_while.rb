x = 0 
while x != "STOP"
  puts "Type something"
  x = gets.chomp
  if x != "STOP"
    puts "You said, \' #{ x }\' ? How could you?"
  else puts "Oh, all right. I\'ll stop now. Bye!"
  end
end
