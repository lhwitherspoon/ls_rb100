def execute(block) #this is missing the '&' sign, so it believes that 'block' is an argument, rather than a block to pass. 
  block.call
end

execute { puts "Hello from inside the execute method!" }