puts "Enter a number:"
number = gets.strip.to_i
arr = []
itr = -1
while itr < number
	itr = itr + 1
	if (itr == 0 || itr == 1)
		arr[itr] = 1
	else
		arr[itr] = arr[itr-1] + arr[itr - 2]
	end
end
puts "Fibonacci at #{number}: #{arr[number-1]}"