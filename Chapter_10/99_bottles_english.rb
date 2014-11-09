require "./english_number.rb"

def bottles(x)
  num = english_number(x)
  print "#{num.capitalize} bottles of beer on the wall, #{num} bottles of beer."
  print "You take one down and pass it around, "
  x -= 1
  puts "#{num} bottles of beer on the wall."
  unless x == 0
    bottles(x)
  end
end

bottles(99)
