def my_string_argues(word)
  if word.length > 10
    word = word.upcase
    puts word
  else
    puts "Word too short"
  end
end

my_string_argues("what")
my_string_argues("No way am I going there")