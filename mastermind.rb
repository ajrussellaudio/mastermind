class MasterMind

	def initialize
		system "clear"
		welcome_messages
		@secret_code = make_secret_code
		turn
	end

	private

	def turn
		guess = get_valid_guess
		if victory?(guess)
			game_over
		else
			feedback(guess)

			puts "Try #{@secret_code.join}..."
			turn
		end
	end

	def get_valid_guess
		puts "Please enter your guess:"
		print "> "
		guess = parse(gets.chomp)
		validate(guess)
		guess
	end

	def parse(input)
		guess = input.split("").map { |n| n.to_i }
	end

	def validate(input)

	end

	def feedback(guess)
		puts "#{guess.join} was a stupid guess."
	end

	def victory?(guess)
		if guess == @secret_code
			return true
		else
			return false
		end
	end

	def game_over
		puts "You win. Congratu-fucking-lations."
	end

	def make_secret_code
		@secret_code = Array.new(4) { rand(6) + 1 }
	end

	def welcome_messages
		print ">>> Welcome to MasterMind! <<<\n\n"
		print "The computer has selected a secret code which you must find.\n"
		print "The code is made up of 4 digits between 1 and 6.\n\n"
	end

end

game = MasterMind.new