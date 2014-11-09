file = File.open("birthdays.txt", "r")
birthdays = Hash.new

# set a Hash with names as keys and birthdays as values
file.each_line do |line|
  line = line.split(" - ")
  birthdays[line[0]] = line[1].chomp
end

puts "Whose birthday would you like to know?"
name = gets.chomp
birthday = birthdays[name]

puts "#{name}'s birthday is on #{birthday}."

months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
          "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

birthday = birthday.split(", ")
year = birthday[1].to_i
birthday = birthday[0].split(" ")
month = months.index(birthday[0]) + 1
day = birthday[1].to_i

birthday = Time.local(year, month, day)

# calculate the age in seconds and then divide to find age in years
age = (Time.now - birthday) / 60 / 60 / 24 / 365
puts "They are #{age.to_i} years old."
