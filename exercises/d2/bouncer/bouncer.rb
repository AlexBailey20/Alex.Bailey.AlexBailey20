puts "Hello!"
puts "What's your age?"
age = gets.strip.to_i
if age >= 21
	puts "You're old enough! Come on in!"
else
	puts "Sorry. You're too young."
end