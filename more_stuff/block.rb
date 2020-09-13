# modify the following so it runs - add the call method to the block.
def execute(&block)
  block.call
end
execute { puts "Hello from inside the execute method!"}