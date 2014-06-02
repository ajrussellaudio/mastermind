def get_valid_guess
	puts "Please enter your guess:"
	print "> "
	guess = parse(gets.chomp)
	validate(guess)
	guess
end

def parse(input)
	guess = input.split("").map { |n| n.to_i }
end

def validate(input)

end