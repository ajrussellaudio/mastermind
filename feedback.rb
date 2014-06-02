def feedback(guess)
	white_pegs = guess.find_all { |digit| @secret_code.include?(digit) }

	black_pegs = []	
	guess.each_with_index do |digit, index|
		if digit == @secret_code[index]
			black_pegs << digit
		end
	end

	white_pegs -= black_pegs

	puts "#{white_pegs.length} white pegs, #{black_pegs.length} black pegs."
end