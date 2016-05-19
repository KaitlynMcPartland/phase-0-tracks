module Shout
	def yelling_angrily(words)
		puts words.upcase + "!" + " :("
	end

	def yelling_happily(words)
		puts words.upcase + "!" + " :)"
	end
end

class Man
	include Shout
end

class Child
	include Shout
end


##Driver Code
man = Man.new
man.yelling_angrily("I dont like you")
man.yelling_happily("I really like you")

child = Child.new
child.yelling_angrily("I want candy")
child.yelling_happily("I love candy")






#Old Code
# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!" + " :)"
# 	end
# end

# ##Driver Code
# p Shout.yell_angrily("Boo, I'm so angry")

# p Shout.yelling_happily("Yay, I'm so happy")