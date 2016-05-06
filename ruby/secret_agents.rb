####Encrpyt Method####

#iterate through the string
	#each iteration I want to advance that strings index forward 
	#set string[current_indext] = string[current_index].next
#increment index counter by 1
#edge case if index of string = "z" then return "a"

def encrypt(password)
	password_var = password
	index_counter = 0

	while index_counter < password_var.length

		if password_var[index_counter] == "z"
			password_var[index_counter] = "a"
		elsif password_var[index_counter] == " "
			password_var[index_counter] = " "
		else
			password_var[index_counter] = password_var[index_counter].next
		end

		index_counter += 1
	end

	p password_var
#	password_var

end


#encrypt("abc abc")


####Decrypt####

#iterate through the password
	#for each letter find letter's index value in alphabet 
	#set that value = to a variable alphabet_index
	#set password[pass_index_counter] = alphabet string[ alphabet_index - 1]
#write if statement for edge case
	#if password[pass_index_counter] equals 'a' set it equal to 'z'
#increment index counter by one


def decrypt(decrypt_password)
	password_var = decrypt_password
	password_index_counter = 0

	alphabet = "abcdefghijklmnopqrstuvwxyz"

	while password_index_counter < password_var.length
		
		if password_var[password_index_counter] == "a"
			password_var[password_index_counter] = "z"
		elsif password_var[password_index_counter] == " "
			password_var[password_index_counter] = " "
		else
			alphabet_index = alphabet.index(password_var[password_index_counter])
			password_var[password_index_counter] = alphabet[alphabet_index - 1]
		end
		password_index_counter += 1
	end
	p password_var
#	password_var

end



#decrypt(encrypt("swordfish"))
#This nested method call works because it respects the order of operation.
#The inner most () run and then the return from that is passed as the parameter for the enclosing function
#The functions need to have an implicit return of the password_var for this to work, not just a puts to the screen


# encrypt("abc") #should return "bcd"
# encrypt("zed") #should return "afe"
# decrypt("bcd") #should return "abc"
# decrypt("afe") #should return "zed"


####Ask_secret_agent####
#Ask user if they want to encrypt or decrypt
#Ask user for password
#If user entered encrypt run encrypt method on password
	#Else user enter decrypt run decrypt method on password

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

#ask_secret_agent()








