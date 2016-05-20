# GPS 2.2 - Grocery List

# Create a new list:

# Input: list of items (example: "carrots apples cereal pizza")
# items=("carrots apples cereal pizza")
# Iterate .each Key-Value pair
# groceries{item => quantity}

def create_new_list(list_items)
	grocery_list = Hash.new
	list_items.split.each do |item|
		grocery_list[item] = 1
	end
	grocery_list
end


# Hash: Key-Value: Carrots => 12
# Default quanity: 1

# Output: key-value ... ie .. print out Carrots: 12, etc .. item:quantity

# Add an item with a quantity to the list
# def add_or_update_item(item,quantity)
def add_or_update_item(grocery_list,item,quantity=1)
# default quanity=1
# groceries[item]=quanity
	grocery_list[item] = quantity
	grocery_list
end

# Remove an item from the list
# def remove_item(item)
def remove_item(grocery_list,item)
# groceries.delete(item)
	grocery_list.delete(item)
	grocery_list
end


# Print the list (Consider how to make it look nice!)
def print_list(grocery_list)
# groceries.each {|item,quantity| puts #{item}: #{quantity}}
	grocery_list.each {|item,quantity| puts "#{item}: #{quantity}"}

end

##Driver code
grocery_list = create_new_list("carrots apples cereal pizza")
add_or_update_item(grocery_list,"lemonade",2)
add_or_update_item(grocery_list,"tomatoes",3)
add_or_update_item(grocery_list,"onions")
add_or_update_item(grocery_list,"ice cream",4)
remove_item(grocery_list,"lemonade")
add_or_update_item(grocery_list,"ice cream",1)

print_list(grocery_list)


##Review and Reflect
# What did you learn about pseudocode from working on this challenge?
# It was interesting to pseudocode as a part of the actual pairing challenge,
# my pair had a different approach to pseudocode than I did and it was good to
# be exposed to that. Good pseudocode can definately make writing the actual code
# a lot easier and it forces you to really break down the things you want to do
# into manageable sections.


# What are the tradeoffs of using arrays and hashes for this challenge?
# For this challenge it made the most sense to use a hash because the 
# list item - quantity relationship lends itself well to the key-value structure
# of hashes. We could have used arrays and either had two seperate arrays or one
# and some sort of work around to access the index pairs we wanted but that seems
# like unnecessary work and added difficulty.

# What does a method return?
# If you explicitly say 'return' in the method, it will return that, otherwise 
# a method returns the last line of executable code as it's implicit return.

# What kind of things can you pass into methods as arguments?
# You can pass almost everything we've worked with so far, strings, integers, arrays
# hashes, variables, etc)

# How can you pass information between methods?
# You can pass information between methods by passing something into the method
# via the methods parameter and you can get information out of the method via the
# return. In this case we set a variable equal to the value/return of a method and 
# then passed that variable in as the argument for other methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I'd have to say the concept of passing information between methods was solidified 
# for me. I've had a little experience with it in the past but this was a good refresher
# on it and I think that continued exposure adn practice with it will help me be 
# really comfortable with it.



