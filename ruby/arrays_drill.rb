def array_adder(array, item)

	added_array = array.push(item)
end

p array_adder(["Kaitlyn"], "rocks")

p array_adder(["Andrea"], "does too!")

p array_adder(["Kittens"], "are cuddly")



def build_array(item1, item2, item3)

item_array = [item1, item2, item3]

end

p build_array(1, "two", nil)


	#return array [item1, item2, items3]



















new_array = []
p new_array

new_array.push("pistachio", "painting", "pretty", "prom", "pencil")
p new_array

new_array.delete_at(2)
p new_array

new_array.insert(2, "plastic")
p new_array

new_array.shift
p new_array

puts "What word would you like to check?"
word_to_check = gets.chomp

if new_array.include?(word_to_check)
	puts "The array does include that word"
else
	puts "The array does not include that word"
end

other_array = ["Kaitlyn", "Kara", "Karen", "Karli"]

new_variable = new_array + other_array

p new_variable