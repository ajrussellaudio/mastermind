def make_secret_code
	@secret_code = Array.new(4) { rand(6) + 1 }
end

def welcome_messages
	print ">>> Welcome to MasterMind! <<<\n\n"
	print "The computer has selected a secret code which you must find.\n"
	print "The code is made up of 4 digits between 1 and 6.\n\n"
end