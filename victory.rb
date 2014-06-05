def victory?(guess)
	if guess == @secret_code
		return true
	else
		return false
	end
end

def game_over(win=true)
	puts win ? "You win. Congratu-fucking-lations." : "You lose, sucker. You were looking for #{@secret_code.join}"
end