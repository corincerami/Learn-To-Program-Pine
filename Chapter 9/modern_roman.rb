puts "Enter a number to convert:"
num = gets.chomp.to_i

def roman_num (x)
	thousand = (x / 1000)
	hundred = (x % 1000 / 100)
	ten = (x % 100 / 10)
	one = (x % 10)

	roman = "M" * thousand

	if hundred == 9
		roman += "CM"
	elsif hundred == 4
		roman += "CD"
	else
		roman += "D" * (x % 1000 / 500)
		roman += "C" * (x % 500 / 100)
	end

	if ten == 9
		roman += "XC"
	elsif ten == 4
		roman += "XL"
	else 
		roman += "L" * (x % 100 / 50)
		roman += "X" * (x % 50 / 10)
	end

	if one == 9
		roman += "IX"
	elsif one == 4
		roman += "IV"
	else
		roman += "I" * one
	end

	puts roman
end

roman_num(num)