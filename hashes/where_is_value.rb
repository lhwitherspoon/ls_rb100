# Les Witherspoon
# Launch School RB100
# To find if a particular value is in a hash, use has_value?
# Data below from https://www.ssa.gov/oact/babynames/decades/names2010s.html

top_names_by_number_2010 = {
  1=> "emma",
  2=> "sophia",
  3=> "olivia",
  4=> "noah",
  5=> "isabella",
  6=> "liam",
  7=> "jacob",
  8=> "mason",
  9=> "william",
  10=> "ava"
}

p "Does this hash contain 'jacob'?", top_names_by_number_2010.has_value?("jacob")
