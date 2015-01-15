puts "Hello. would you like to play a game?"
answer = gets.chomp
	if answer == "yes" || answer == "y" || answer == "Y" || answer == "Yes"
		puts "Guess a number between 1 and 100"
	else
		puts "Fine, I don't want to play with you either"
end	

 
goal = rand 1 .. 100
@limit = 0

def pick_number goal
	number = gets.chomp.to_i
	@limit = @limit.next
		if number > goal
			puts "Too High, Try Again"
		elsif number < goal
			puts "Too Low, Try Again"	
		elsif number = goal
			puts "Congrats! you found the secrect number. Game over" 
			exit 	
		end			
	end

while @limit< 5
	pick_number goal
end

puts "Game over"
exit