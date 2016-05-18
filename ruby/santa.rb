class Santa

#initialize method
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

#getter methods
	attr_reader :age, :ethnicity, :reindeer_ranking

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def gender
	# 	@gender
	# end

	# def reindeer_ranking
	# 	@reindeer_ranking
	# end

#setter methods
	attr_accessor :gender

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end

	def celebrate_birthday
		@age = @age + 1
	end

#other methods
	def speak
		puts "Ho, ho, ho! Haaaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie_type)
		puts "That was a good #{cookie_type}"
	end

end


#Driver Code

##Release 0
# test_santa = Santa.new
# test_santa.speak
# test_santa.eat_milk_and_cookies("chocolate chip")


##Release 1
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# cookies = ["chocolate chip", "sugar", "oatmeal", "raisin", "peanut butter", "snickerdoodle", "walnut"]

# santas.each_with_index do |cur_santa, i|
# 	cur_santa.speak
# 	cur_santa.eat_milk_and_cookies(cookies[i])
# end


##Release 2
# test_santa = Santa.new("female", "white")
# p test_santa.age
# test_santa.celebrate_birthday
# test_santa.celebrate_birthday
# p test_santa.age
# p test_santa.ethnicity
# p test_santa.gender
# test_santa.gender = "male"
# p test_santa.gender
# p test_santa.reindeer_ranking
# test_santa.get_mad_at("Dancer")
# p test_santa.reindeer_ranking

