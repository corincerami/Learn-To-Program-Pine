width = 50
contents = ["Table of Contents", "Chapter 1: Getting Started",
 "page 1", "Chapter 2: Numbers", "page 9", "Chapter 3: Letters", 
"page 13"]

puts contents[0].center(width)
puts contents[1].ljust(width/2) + contents[2].rjust(width/2)
puts contents[3].ljust(width/2) + contents[4].rjust(width/2)
puts contents[5].ljust(width/2) + contents[6].rjust(width/2)