class MasterMind

	require_relative 'init'
	require_relative 'input'
	require_relative 'feedback'
	require_relative 'victory'

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

end

game = MasterMind.new