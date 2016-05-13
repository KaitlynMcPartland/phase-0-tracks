###Alias_manager method
#Swap first and last name
	#Turn name into an array
	#call .reverse on array
#change all vowels to next vowel and all consonants to next one
	#iterate through every letter
	#create vowel variable 
	#if vowel variable includes current letter
		#get index of current letter and push the index + 1 to new variable
			#if index = -1 push 'a'
			#else push index+1
	#elsif letter is z push 'a'
	#elsif ' ' push ' '
	#elseif letter is 'd', 'h', 'n' or 't' push the letter.next.next to new variable
	#else push letter.next to new variable


def alias_manager (real_name)
	reversed_name = switch_name(real_name.split(' '))
	alias_name = letter_swap(reversed_name.join(' '))
	puts "Your alias name is #{alias_name}"

end

def switch_name (ordered_name)
	ordered_name.reverse
end

def letter_swap (unswapped_name)
	swapped_name = []
	vowels = "aeiou"
	edge_cases = "dhnt"

	unswapped_name.chars.each do |letter|
		if letter == "z" || letter == "u"
			swapped_name.push("a")
		elsif letter == " "
			swapped_name.push(" ")
		elsif vowels.include?(letter)
			idx = vowels.index(letter)
			swapped_name.push(vowels[idx +1])
		elsif edge_cases.include?(letter)
			swapped_name.push(letter.next.next)
		else
			swapped_name.push(letter.next)
		end
	end
	swapped_name.join

end



alias_manager("abu dez")