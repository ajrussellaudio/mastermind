def get_valid_code
	puts @cpu_player ? "Please enter your code:" : "Please enter your guess:"
	print "> "
	guess = parse(gets.chomp)
	guess = validate(guess)
	return guess
end

def parse(input)
	guess = input.split("").map { |n| n.to_i }
end

def validate(input)
	if input.length > 4
		puts "Too many digits!"
		input = get_valid_code
	elsif input.length < 4
		puts "Not enough digits!"
		input = get_valid_code
	end

	unless input.all? { |d| d >= 1 && d <= 6 }
		puts "All digits must be between 1 and 6!"
		input = get_valid_code
	end
	input
end