def cpu_guess
	guess = @possibilities.sample
end

def cpu_init
	@possibilities = (1..6).to_a.repeated_permutation(4).to_a
end

def interpret_feedback(guess)
	given_result = feedback(guess)
	@possibilities.reject! {|x| feedback(x) == given_result}
	# puts "#{@possibilities.length} possibilities remaining."
	# puts "#{@secret_code} still a possibility? #{@possibilities.include? @secret_code}"
end
