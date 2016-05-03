
def hamster_info 
  puts "What's the hamster's name?"
  name = gets.chomp
  puts "what is the volume level from 1 to 10?"
  volume = gets.chomp
  volume = volume.to_i
  puts "What fur color does the hamster have?"
  fur_color = gets.chomp
  puts "The hamster a good candidate for adoption? yes/no"
  adoption_candidate = gets.chomp
    if adoption_candidate == "yes"
      adoption_candidate = "Is a good candidate for adoption"
    else 
      adoption_candidate = "Is not a good candidate for adoption"
    end
  puts "Estimated age of the hamster?"
  age = nil
  age = gets.chomp
  age = age.to_i

  puts "The hamster's name is #{name}. On a loudness scale of 1-10, #{name} is a #{volume}. Its fur color is #{fur_color} and it is #{age} years old. #{adoption_candidate}"

end

hamster_info

#Paired with David Lin