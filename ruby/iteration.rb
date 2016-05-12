def morning_bev 
  puts "Here we are at the beginning of the method."
  yield("coffee")
  puts "Here we are at the end of the method."
end
morning_bev { |drink| puts "I like #{drink}"}
