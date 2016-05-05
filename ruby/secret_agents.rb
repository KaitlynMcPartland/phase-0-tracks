#Encrpyt Method
#iterate through the string
#each iteration I want to advance that strings index forward 
#set string[current_indext] = string[current_index].next
#increment index counter by 1
#edge case if index of string = "z" then return "a"

def encrpyt(password)
	password_var = password
	index_counter = 0

	while index_counter < password_var.length

		if password_var[index_counter] == "z"
			password_var[index_counter] = "a"
		else
			password_var[index_counter] = password_var[index_counter].next
		end

		index_counter += 1
	end

	puts password_var
	password_var

end



#Decrypt
# iterate through the string
# for each letter find letter's index value in alphabet set that value = to a variable
# set string[at iteration index] = alphabet string[ next index variable - 1]


def decrypt(decrypt_password)
	password_var = decrypt_password
	password_index_counter = 0

	alphabet = "abcdefghijklmnopqrstuvwxyz"

	while password_index_counter < password_var.length
		
		if password_var[password_index_counter] == "a"
			password_var[password_index_counter] = "z"
		else
			alphabet_index = alphabet.index(password_var[password_index_counter])
			password_var[password_index_counter] = alphabet[alphabet_index - 1]
		end
		password_index_counter += 1
	end
	puts password_var
	password_var

end



#decrypt(encrpyt("swordfish"))


#Ask_secret_agent
#Ask user if they want to encrypt or decrypt
# Ask user for password
#If user entered encrypt run encrypt method on password
#if user enter decrypt run decrypt method on password

def ask_secret_agent()

	puts "Do you want to encrypt or decrypt your password?"
	user_choice = gets.chomp

	puts "What is your password?"
	user_password = gets.chomp

	if user_choice == "encrypt"
		encrypt(user_password)
	else
		decrypt(user_password)
	end

end

ask_secret_agent()








