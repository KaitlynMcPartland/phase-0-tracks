def morning_bev 
  puts "Here we are at the beginning of the method."
  yield("coffee")
  puts "Here we are at the end of the method."
end
morning_bev { |drink| puts "I like #{drink}"}


symptoms = ["sneezing", "fever", "sore knee", "sore throat"]

instruments = {
	cutting_device: "scalpel",
	closure_device: "needle",
	suction_device: "vacuum",
	anesthesia_delivery: "face mask"
}

#each array iteration practice
puts symptoms
symptoms.each do |sympt|
	puts "My symptom is #{sympt}"
end
puts symptoms


#each hash iteration practice
puts instruments
instruments.each do |device, equip|
	puts "The #{device} is a #{equip}"
end
puts instruments


#map array iteration practice

puts symptoms
symptoms.map! do |sympt|
	"intense " + sympt
end

puts symptoms


##Array practice for Release 2
#1
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array.reject! do |num|
	num < 5
end
puts array

#2

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array.select! do |num|
	num < 5
end

puts array

3

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array.keep_if do |num|
	num % 2 == 0
end

puts array

#4
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
new_array = array.take_while do |num|
	num < 4
end

puts new_array


##Hash practice for Release 2
#1
new_hash = {
	"a" => 100,
	"b" => 200,
	"c" => 300,
	"d" => 400,
	"e" => 500,
	"f" => 600
}

new_hash.delete_if do |key, value|
	value > 300
end

puts new_hash

#2
new_hash = {
	"a" => 100,
	"b" => 200,
	"c" => 300,
	"d" => 400,
	"e" => 500,
	"f" => 600
}

new_hash.keep_if do |key, value|
	value > 300
end

puts new_hash

#3
new_hash = {
	"a" => 100,
	"b" => 200,
	"c" => 300,
	"d" => 400,
	"e" => 500,
	"f" => 600
}

new_hash.select! do |key, value|
	value > 300
end

puts new_hash

#4

new_hash = {
	"a" => 100,
	"b" => 200,
	"c" => 300,
	"d" => 400,
	"e" => 500,
	"f" => 600
}

new_hash.each do |key, value|
	if value != 300
		new_hash.delete(key)
	else
		break
	end
end

puts new_hash





















