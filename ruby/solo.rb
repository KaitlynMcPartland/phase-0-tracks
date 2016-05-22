##Violin class
#attributes
	#price - integer
	#wood color - string
	#is in tune - boolean
#methods
	#tune violin - change 'in tune' attribute
	#practice violin - if greater than 30 mins say something nice
	#pluck string

class Violin
	def initialize(price, color)
		@price = price
		@color = color
		@in_tune = false
	end

	attr_reader :color, :in_tune
	attr_accessor :price

	def tune
		@in_tune = true
		puts "Violin is in tune."
	end

	def practice(mins)
		if mins > 30
			puts "Practiced violin for #{mins} mins! You'll be a master in no time"
		else
			puts "Practiced violin for #{mins}, you still have a long way to go."
		end
	end

	def pluck_string(string)
		puts "Plucked the #{string} string."
	end
end

##Driver Code
# violin = Violin.new(800, "light wood")
# violin.practice(28)
# violin.practice(60)
# p violin.in_tune
# violin.tune
# p violin.in_tune
# violin.pluck_string("D")
# p violin.price
# violin.price = 600
# p violin.price


def violin_maker
	make_violins = true
	violin_array = []

	while make_violins
		puts "Would you like to make a violin?"
		continue_making_violins = gets.chomp

		if continue_making_violins == "no"
			make_violins = false
		else
			puts "What color is the violin?"
			violin_color = gets.chomp

			puts "How much does the violin cost?"
			violin_cost = gets.chomp.to_i

			violin_array << Violin.new(violin_cost, violin_color)
		end
	end

	violin_array.each do |violin|
		puts "This is violin number #{violin_array.index(violin) + 1}."
		puts "This violin costs #{violin.price} dollars."
		puts "This violin is #{violin.color} in color."
		if violin.in_tune
			puts "This violin is in tune."
		else
			puts "This violin is not in tune."
		end
	end

end

violin_maker

