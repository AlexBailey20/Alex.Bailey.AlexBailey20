class Square
	def initialize(letter)
		@letter = letter
	end

	def get_letter
		@letter
	end

	def put_X
		if (@letter != "X") && (@letter != "O")
			@letter = "X"
			return true
		else
			puts "Invalid input"
			return false
		end
	end
	def put_O
		if (@letter != "X") && (@letter != "O")
			@letter = "O"
			return true
		else
			puts "Invalid input"
			return false
		end
	end
	def put_O_comp
		if (@letter != "X") && (@letter != "O")
			@letter = "O"
			return true
		else
			return false
		end
	end
	def empty?
		if (@letter != "X") && (@letter != "O")
			return true
		end
		false
	end
end

class Board
	def initialize(square_array)
		@square_array = square_array
	end
	def full?
		@square_array.each do |squares|
			if squares.empty?
				return false
			end
		end
		true
	end
	def print_board
		letter_array = []
		@square_array.each_with_index do |square, index|
			if (square.get_letter != "X") && (square.get_letter !="O")
				letter_array[index] = "   "
			else
				letter_array[index] = " #{square.get_letter} "
			end
		end
		puts "#{letter_array[0]}|#{letter_array[1]}|#{letter_array[2]}"
		puts "---+---+---"
		puts "#{letter_array[3]}|#{letter_array[4]}|#{letter_array[5]}"
		puts "---+---+---"
		puts "#{letter_array[6]}|#{letter_array[7]}|#{letter_array[8]}"
	end
	def over?
		if (@square_array[0].get_letter == @square_array[1].get_letter) && (@square_array[1].get_letter == @square_array[2].get_letter)
			return true
		elsif (@square_array[3].get_letter == @square_array[4].get_letter) && (@square_array[4].get_letter == @square_array[5].get_letter)
			return true
		elsif (@square_array[6].get_letter == @square_array[7].get_letter) && (@square_array[7].get_letter == @square_array[8].get_letter)
			return true
		elsif (@square_array[0].get_letter == @square_array[3].get_letter) && (@square_array[3].get_letter == @square_array[6].get_letter)
			return true
		elsif (@square_array[4].get_letter == @square_array[1].get_letter) && (@square_array[4].get_letter == @square_array[7].get_letter)
			return true
		elsif (@square_array[2].get_letter == @square_array[5].get_letter) && (@square_array[5].get_letter == @square_array[8].get_letter)
			return true
		elsif (@square_array[0].get_letter == @square_array[4].get_letter) && (@square_array[4].get_letter == @square_array[8].get_letter)
			return true
		elsif (@square_array[2].get_letter == @square_array[4].get_letter) && (@square_array[4].get_letter == @square_array[6].get_letter)
			return true
		elsif full?
			return false
		end
	end
	def about_to_win?
		if ((@square_array[1].get_letter == @square_array[2].get_letter) || (@square_array[3].get_letter==@square_array[6].get_letter) || (@square_array[4].get_letter)==(@square_array[8].get_letter))&&@square_array[0].empty?
			return 0
		elsif ((@square_array[0].get_letter == @square_array[2].get_letter) || (@square_array[4].get_letter==@square_array[7].get_letter))&&@square_array[1].empty?
			return 1
		elsif ((@square_array[6].get_letter == @square_array[4].get_letter) || (@square_array[0].get_letter==@square_array[1].get_letter) || (@square_array[5].get_letter)==(@square_array[8].get_letter))&&@square_array[2].empty?
			return 2
		elsif ((@square_array[5].get_letter == @square_array[4].get_letter) || (@square_array[0].get_letter==@square_array[6].get_letter))&&@square_array[3].empty?
			return 3
		elsif ((@square_array[0].get_letter == @square_array[8].get_letter) || (@square_array[1].get_letter==@square_array[7].get_letter) || (@square_array[2].get_letter==@square_array[6].get_letter) || (@square_array[3].get_letter == @square_array[5].get_letter))&&@square_array[4].empty?
			return 4
		elsif ((@square_array[2].get_letter == @square_array[8].get_letter) || (@square_array[3].get_letter==@square_array[4].get_letter))&&@square_array[5].empty?
			return 5
		elsif ((@square_array[2].get_letter == @square_array[4].get_letter) || (@square_array[0].get_letter==@square_array[3].get_letter) || (@square_array[7].get_letter)==(@square_array[8].get_letter))&&@square_array[6].empty?
			return 6
		elsif ((@square_array[1].get_letter == @square_array[4].get_letter) || (@square_array[6].get_letter==@square_array[8].get_letter))&&@square_array[7].empty?
			return 7
		elsif ((@square_array[2].get_letter == @square_array[5].get_letter) || (@square_array[0].get_letter==@square_array[4].get_letter) || (@square_array[6].get_letter)==(@square_array[7].get_letter))&&@square_array[8].empty?
			return 8
		else
			return 9
		end
	end
end
square_0 = Square.new("0")
square_1 = Square.new("1")
square_2 = Square.new("2")
square_3 = Square.new("3")
square_4 = Square.new("4")
square_5 = Square.new("5")
square_6 = Square.new("6")
square_7 = Square.new("7")
square_8 = Square.new("8")
square_array = [square_0 , square_1 , square_2, square_3, square_4 , square_5 , square_6 , square_7 , square_8]
tic_board = Board.new(square_array)
turn = 0
puts "Enter 'comp' if you would like to play against a computer, 'rand_comp' if you would like to play against random moves, or anything else if you would like to play against a human: "
response = gets.strip
if response == "comp"
	while !tic_board.over?
	puts "Player #{(turn % 2)+1}:"
	if turn%2 == 0
		move = gets.strip.to_i
	while (move <0) || (move >8)
		puts "Invalid input"
		move = gets.strip.to_i
	end
		while !square_array[move].put_X
			move = gets.strip.to_i
			while (move <0) || (move >8)
				puts "Invalid input"
				move = gets.strip.to_i
			end
		end
	else
		while !square_array[move].put_O_comp
			move = tic_board.about_to_win?
			move = rand(9) if move==9
			while (move <0) || (move >8)
				move = gets.strip.to_i
			end
		end
	end
	tic_board.print_board
	(turn % 2) == 0 ? winner = "Congrats, you win!" : winner= "Sorry, the computer won..."
	puts winner if tic_board.over?
	if (tic_board.full?) && (!tic_board.over?)
		puts "Tie game!"
		break
	end
	turn += 1
	end
elsif response == "rand_comp"
	while !tic_board.over?
	puts "Player #{(turn % 2)+1}:"
	if turn%2 == 0
			move = gets.strip.to_i
	while (move <0) || (move >8)
		puts "Invalid input"
		move = gets.strip.to_i
	end
		while !square_array[move].put_X
			move = gets.strip.to_i
			while (move <0) || (move >8)
				puts "Invalid input"
				move = gets.strip.to_i
			end
		end
	else
		while !square_array[move].put_O_comp
			move = rand(9)
			while (move <0) || (move >8)
				move = gets.strip.to_i
			end
		end
	end
	tic_board.print_board
	(turn % 2) == 0 ? winner = "Congrats, you win!" : winner= "Sorry, the computer won..."
	puts winner if tic_board.over?
	if (tic_board.full?) && (!tic_board.over?)
		puts "Tie game!"
		break
	end
	turn += 1
	end
else
	while !tic_board.over?
	puts "Player #{(turn % 2)+1}:"
	move = gets.strip.to_i
	while (move <0) || (move >8)
		puts "Invalid input"
		move = gets.strip.to_i
	end
	if turn%2 == 0
		while !square_array[move].put_X
			move = gets.strip.to_i
			while (move <0) || (move >8)
				puts "Invalid input"
				move = gets.strip.to_i
			end
		end
	else
		while !square_array[move].put_O
			move = gets.strip.to_i
			while (move <0) || (move >8)
				puts "Invalid input"
				move = gets.strip.to_i
			end
		end
	end

	tic_board.print_board
	puts "Congrats, Player #{(turn%2+1)} wins!" if tic_board.over?
	if (tic_board.full?) && (!tic_board.over?)
		puts "Tie game!"
		break
	end
	turn += 1
end
end
