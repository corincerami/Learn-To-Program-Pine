puts "What year were you born? (please enter in YYYY format.)"
year = gets.chomp.to_i
puts "In what month were you born? (please enter in MM format.)"
month = gets.chomp.to_i
puts "On what day were you born? (please enter in DD format.)"
day = gets.chomp.to_i

birthday = Time.local(year, month, day)

# age represents the time in seconds
age = Time.new - birthday

age = age / 60 / 60 / 24 / 365

puts "You are #{age.to_i} years old."
