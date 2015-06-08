puts "Welcome to Alex's mini quiz"
puts "Where am I from?"
answer = gets.strip
if (answer == "Cincinnati" || answer == "cincinnati" || answer == "Ohio")
	points = 1
	puts "Right! You have #{points} point."
else
	puts "Wrong...I'm from Cincinnati"
	points = 0
end
puts "What school do I go to?"
answer = gets.strip
if (answer == "UVA" || answer == "Virginia" || answer == "University of Virginia")
	points += 1
	if(points == 1)
		puts "Right! You have #{points} point."
	else
		puts "Right! You have #{points} points."
	end
else
	puts "Wrong...I go to UVA"
end
puts "What is my last name?"
answer = gets.strip
if answer == "Bailey"
	points += 1
	if(points == 1)
		puts "Right! You have #{points} point."
	else
		puts "Right! You have #{points} points."
	end
else
	puts "Wrong...my last name is Bailey"
end
puts "Thanks for playing!"