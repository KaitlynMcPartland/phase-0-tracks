# def morning_bev 
#   puts "Here we are at the beginning of the method."
#   yield("coffee")
#   puts "Here we are at the end of the method."
# end
# morning_bev { |drink| puts "I like #{drink}"}


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
























