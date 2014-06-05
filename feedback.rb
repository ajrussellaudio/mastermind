def feedback(guess)
	result = {
		black: 0,
		white: 0
	}

	for i in (0..@secret_code.length-1)
		if guess[i] == @secret_code[i]
			result[:black] += 1
		elsif @secret_code.include?(guess[i])
			result[:white] += 1
		end
	end

	return result

end

def feedback_msgs(input)
	result = feedback(input)

	puts "#{result[:black]} black pegs,"
	puts "#{result[:white]} white pegs."
	puts "turns remaining: #{12 - @turns.count}\n\n"
end
