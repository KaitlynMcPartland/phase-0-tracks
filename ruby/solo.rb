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
		@in_tune? = false
	end

	attr_reader :color
	attr_accessor :price, :in_tune?

	def tune
		@in_tune? = true
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
