module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!" + " :)"
	end
end

##Driver Code
p Shout.yell_angrily("Boo, I'm so angry")

p Shout.yelling_happily("Yay, I'm so happy")