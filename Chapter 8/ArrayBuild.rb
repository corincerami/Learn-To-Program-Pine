st_array = []
st = " "

until st == ""
	puts "Please enter a string"
	st = gets.chomp
		st_array.push st
end

#st_array.sort!
puts st_array.sort