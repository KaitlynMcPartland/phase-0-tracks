###Make a hash of cars
##Each car value is a hash of passengers
#Each passenger value is an array or clothing

car_hash = {
	car_1: {
		kara: ['hat', 'shirt', 'skirt'],
		john: ['sunglasses', 'sweater', 'jeans']
	},
	car_2: {
		kaitlyn: ['sunglasses', 'snapback', 'shorts', 'tank top'],
		connor: ['snapback', 'tank', 'shorts']
	},
	car_3: {
		heidi: ['glasses', 'blouse', 'pants'],
		kevin: ['glasses', 'polo', 'jeans'],
		sara: ['bonnet', 'diaper', 'dress']
	}
	
}


# print entire car_hash
p car_hash

# print car_ 1 from car_hash
p car_hash[:car_1]

# print kaitlyns clothing from car_2

p car_hash[:car_2][:kaitlyn]

# print the second item in sara's clothing list from car_3

p car_hash[:car_3][:sara][1]