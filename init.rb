def setup_game
	system "clear"
	welcome_messages
	cpu_init if @cpu_player
	@secret_code = @cpu_player ? get_valid_code : make_secret_code
	@max_turns = 12
	@turns = Counter.new
end

def make_secret_code
	@secret_code = Array.new(4) { rand(6) + 1 }
end

def welcome_messages
	print ">>> Welcome to MasterMind! <<<\n\n"
	if @cpu_player
		print "You must enter a 4-digit code, of numbers between 1 and 6.\n"
		print "The computer will then attempt to crack your code within 12 guesses.\n"

	else
		print "The computer has selected a secret code which you must find.\n"
		print "The code is made up of 4 digits between 1 and 6.\n\n"
		print "Every time you make a guess, the computer will give you some feedback.\n"
		print "If you guessed a correct number in its correct position, you will receive a black peg.\n"
		print "If you guessed a correct number, but not in the correct position, you receive a white peg.\n\n"
		print "You have 12 tries to guess the code. Good luck!\n\n"
	end

end

class Counter
	attr_accessor :count

	def initialize
		@count = 0
	end

	def increment
		@count += 1
	end
end