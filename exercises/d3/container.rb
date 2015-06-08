puts "Welcome to container builder!"
input_arr = []
hash_list = {}
while input_arr[0] != "quit"
	puts "What can I do for you?"
	input = gets.strip
	input_arr = input.split
	if input_arr[1]==nil && input_arr[0] != "quit"
		puts "Invalid input"
	elsif input_arr[0] == "add"
		if hash_list.has_key?(input_arr[1])
			hash_list[input_arr[1]] += 1
		else
			hash_list[input_arr[1]] = 1
		end
		puts "Added! Your list is:"
		p hash_list
	elsif input_arr[0] == "remove"
		if hash_list[input_arr[1]] > 1
			hash_list[input_arr[1]] -= 1
		else
			hash_list.delete(input_arr[1])
		end
		puts "Removed! Your list is:"
		p hash_list
	elsif input_arr[0] == "quit"
		x = 1
	else
		puts "Invalid input"
	end
end
puts "Bye!"