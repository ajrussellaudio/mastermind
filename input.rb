def get_valid_guess
	puts "Please enter your guess:"
	print "> "
	guess = parse(gets.chomp)
	guess = validate(guess)
	guess
end

def parse(input)
	guess = input.split("").map { |n| n.to_i }
end

def validate(input)
	if input.length > 4
		puts "Too many digits!"
		get_valid_guess
	elsif input.length < 4
		puts "Not enough digits!"
		get_valid_guess
	end

	unless input.all? { |d| d >= 1 && d <= 6 }
		puts "All digits must be between 1 and 6!"
		get_valid_guess
	end
	input
end