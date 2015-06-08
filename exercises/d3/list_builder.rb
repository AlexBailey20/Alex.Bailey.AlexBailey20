puts "Welcome to list bulider!"
lst = []
while true
	puts "What can I add?"
	addition = gets.strip
	lst << addition
	puts "Added! Your list is:"
	p lst
end