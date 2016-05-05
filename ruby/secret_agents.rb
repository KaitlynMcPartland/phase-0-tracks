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

end

encrpyt("zed")

#Decrypt
# iterate through the string
# for each letter find letter's index value in alphabet set that value = to a variable
# set string[at iteration index] = alphabet string[ next index variable - 1]


def decrypt(decrypt_password)
	