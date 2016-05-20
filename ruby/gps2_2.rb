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








