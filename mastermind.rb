class MasterMind

	require_relative 'init'
	require_relative 'input'
	require_relative 'feedback'
	require_relative 'victory'

	def initialize
		setup_game
		new_turn
	end

	private

	def new_turn
		guess = get_valid_guess
		if victory?(guess)
			game_over
		else
			@turns.increment
			feedback_msgs(guess)
			@turns.count < 12 ? new_turn : game_over(false)
		end
	end

end

game = MasterMind.new