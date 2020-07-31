# Which below will return true? Which will return false? 

(32 * 4 ) >= 129 # False because 128 is not > 129

false != !true # false. true is true. !true is false. false == false, so false != false is false. 

true == 4 #...most likely false. though true.length would give four.

false ==(847 == '874') # 847 does not equal 874 - that section of the expression is false. Therefore, false == false => true for the whole expression.

(!true || (!(100/5) == 20) || ((328 / 4) == 82)) || false # Order of comparison: equality operators take precedence over || operators. so the sentence is as follows:
# evaluate first:
#  !(100/5) == 20 => !20 == 20 => false
# (328 / 4) == 82 => 82 == 82 => true
# Now evaluate expressions within parentheses:
# !true \\ (!(100/5) == 20) => !true || false => false
# (328 / 4) == 82 => 82 == 82 => true
# then evaluate the entire expression to the left of the third || operator: false || true => true
#  finally evaluate the whole expression: 
# true || false => true

# What is the fix for the error message for the following code? 
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope" #<= missing `end` for if-block
end

equal_to_four(5)

# error message: exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
Needs an extra "end":
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end 
end

equal_to_four(5)