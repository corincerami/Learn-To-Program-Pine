puts "HOW'S MY FAVORITE GRANDCHILD?"

while true
	answer = gets.chomp

	if answer == "BYE"
		puts "BYE, SONNY!"
		break
	end

	unless answer == answer.upcase
		puts "HUH?! SPEAK UP, SONNY!"
	else
		year = 1938 + rand(20)
		puts "NO, NOT SINCE #{year}!"
	end
end
