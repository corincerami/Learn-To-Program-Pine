puts "Enter a number to convert:"
$num = gets.chomp
$num = $num.to_i
$roman = ""

def roman_num (y, z) 
	x = $num / y
	x = x.to_i
	$roman.concat z * x
	$num -= (x * y)
end

roman_num 1000, "M"
roman_num 500, "D"
roman_num 100, "C"
roman_num 50, "L"
roman_num 10, "X"
roman_num 5, "V"
roman_num 1, "I"

puts $roman