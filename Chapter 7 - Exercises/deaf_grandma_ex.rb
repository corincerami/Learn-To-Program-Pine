puts "HOW'S MY FAVORITE GRANDCHILD?"

count = 0

while true
	answer = gets.chomp

	if answer == "BYE"
		count += 1
	else
		count = 0
	end

	break if count == 3

	unless answer == answer.upcase
		puts "HUH?! SPEAK UP, SONNY!"
	else
		year = 1938 + rand(20)
		puts "NO, NOT SINCE #{year}!"
	end
end


puts "BYE, SONNY!"