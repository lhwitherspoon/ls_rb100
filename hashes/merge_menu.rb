# Les Witherspoon
# Launch School Rb100
# Ruby exercises: merge vs merge!
# merge, without the bang: does not affect the original hash.
# merge! with the bang: does affect the original hash.

# Don't judge me for my taste or lack thereof here.

p "Here's what I am having for dinner:"

menu_1 = {
  grain: "quinoa", #technically quinoa is not a grain, but a seed. see https://www.livescience.com/50400-quinoa-nutrition-facts.html
  legume: "red beans",
  vegetable_1: "kale",
  vegetable_2: "zucchini",
  condiment: "siracha"
}
puts menu_1

p "Here is what you are having for dinner:"
menu_2 = {
  grain1: "macaroni",
  legume2: "fava beans",
  vegetable_11: "peas",
  vegetable_12: "potatoes",
  condiment: "marinara"
}
puts menu_2

p "Let's combine them!"

new_menu = menu_1.merge(menu_2) # this will produce a new hash
p "This is the new_menu: ", new_menu # Contains both menu_1 and menu_2
p "This is  menu_1: ", menu_1 # Still the same as before
p "This is menu 2: ",  menu_2 # unchanged

p "Let's combine them again"
new_menu_2 = menu_1.merge!(menu_2) # This will modify menu_1 to include menu_2.

p "This is the new_menu2: ", new_menu_2 # Contains both menu_1 and menu_2
p "And now this is menu_1 - you changed my menu!: ", menu_1 # Now it contains both menus.
p "And now this is menu_2 - yours is unchanged: ", menu_2 # unchanged

# The question arises: suppose you have two hashes. Each has identical keys, but differing values for each key. What structure would we use for for a new hash that merged  both? Probably a hash that had arrays for values, containing the values of the arrays for the identical keys. So if menu_1 was {grain: "quinoa"} and menu_2 was {grain: "macaroni"} then the merged structure would look like menu_3 = {grain: ["quinoa", "macaroni"]}. How to get there? good question. 