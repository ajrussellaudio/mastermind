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