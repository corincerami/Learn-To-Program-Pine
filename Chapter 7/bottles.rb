n = 99
while n > 0
	puts n.to_s + " bottles of beer on the wall, " + n.to_s + " bottles of beer. You take one down and pass it around, "
	n-=1
	puts n.to_s + " bottles of beer on the wall"
end