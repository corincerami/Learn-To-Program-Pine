puts "Please enter a starting year:"
start_year = gets.chomp.to_i

puts "Please enter an end year:"
end_year = gets.chomp.to_i

puts "The leap years in this range are:"

for i in start_year..end_year
	if i % 4 == 0 
		unless i % 100 == 0 && i % 400 != 0
			puts i
		end
	end
end
