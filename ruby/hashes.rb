## Client_Details
#initialize an empty hash
#Ask user for input
#set hash[value] = gets.chomp.(method appropriate value)
#print the hash
#ask user if they want to update a key
#if user answer exists in hash.keys array then ask user for new input
#set response = gets.chomp and print new hash
# else end the program

def client_details

	client_info = Hash.new

	puts "What is the clients name?"
	client_info[:name] = gets.chomp

	puts "What is the clients age?"
	client_info[:age] = gets.chomp.to_i

	puts "Is the client married?"
	client_info[:married] = gets.chomp

	puts "How many children do they have?"
	client_info[:children] = gets.chomp.to_i

	puts "What is their decor theme?"
	client_info[:theme] = gets.chomp

	puts client_info

	puts "What client info do you need to update?"
	info_to_update = gets.chomp.to_sym

	if info_to_update == :none
		puts client_info
	elsif info_to_update == :age || :children
		puts "what should #{info_to_update} be?"
		client_info[info_to_update] = gets.chomp.to_i
		puts client_info
	else
		puts "what should #{info_to_update} be?"
		client_info[info_to_update] = gets.chomp
		puts client_info
	end

end

client_details