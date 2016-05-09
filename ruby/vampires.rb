def vampire_detector

puts "How many employees will be processed?"
employees_processed = gets.chomp.to_i
employee_counter = 1

while employee_counter <= employees_processed

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp
	puts "What year were you born?"
	birth_year = gets.chomp

	knows_birthday = correct_birthday(age, birth_year)

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	likes_garlic = gets.chomp

	puts "Would you like to enroll in the company's health insurance?"
	wants_insurance = gets.chomp

	allergies_checked = false

	until allergies_checked
		sunshine_allergy = false
		puts "Please list your allergies one at a time. When finished enter 'done'."
		current_allergy = gets.chomp
		if current_allergy == "sunshine"
			sunshine_allergy = true
			allergies_checked = true
		elsif current_allergy == "done"
			allergies_checked = true
		end
	end


	case 
		when sunshine_allergy == true
			puts "Probably a vampire."
		when knows_birthday && (likes_garlic == "yes" || wants_insurance == "yes")
			puts "Probably not a vampire."
		when !knows_birthday && (likes_garlic != "yes" || wants_insurance != "yes")
			puts "Almost certainly a vampire."
		when name == "Drake Cula" || "Tu Fang"
			puts "Definately a vampire."
		else
			puts "Results inconclusive."
	end

	employee_counter += 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end


def correct_birthday(age_check, birth_year_check)
	current_year = 2016
	if current_year - birth_year_check.to_i == age_check.to_i
		return true
	else
		return false
	end
	
end













vampire_detector