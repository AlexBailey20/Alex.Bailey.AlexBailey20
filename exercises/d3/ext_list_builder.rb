puts "Welcome to list builder++!"
input_arr = []
lst = []
while input_arr[0] != "quit"
	puts "What can I do for you?"
	input = gets.strip
	input_arr = input.split
	if input_arr[1]==nil && input_arr[0] != "quit"
		puts "Invalid input"
	elsif input_arr[0] == "add"
		lst << input_arr[1]
		puts "Added! Your list is:"
		p lst
	elsif input_arr[0] == "remove"
		lst.delete(input_arr[1])
		puts "Removed! Your list is:"
		p lst
	elsif input_arr[0] == "quit"
		x = 1
	else
		puts "Invalid input"
	end
end
puts "Bye!"