def reverse_roman
  puts "Enter a year in roman numerals to convert:"
  roman = gets.chomp
  arabic = 0
  valid = true

  digits = { "M" => 1000,
             "D" => 500,
             "C" => 100,
             "L" => 50,
             "X" => 10,
             "V" => 5,
             "I" => 1 }

  roman_array = roman.upcase.split("")

  # this loop checks that a valid roman numeral was entered.
  # if not, it return a message and restarts the method.
  roman_array.each do |letter|
    if digits[letter] == nil
      valid = false
    end
  end

  if valid == true
    # add the first value separately to avoid comparing it to the last,
    # since i-1 for the first value would point to the last value.
    arabic += digits[roman_array[0]]
    (1..roman_array.length - 1).each do |i|
      # if a letter's value is greater than the previous letter,
      # it is added to arabic, but the previous letter's value is
      # subtracted, such as IV adding 5 and then substracting 4.
      # the reason double the previous value is subtracted is to
      # account for that previous value being added separately in the else.
      if digits[roman_array[i]] > digits[roman_array[i - 1]]
        arabic += (digits[roman_array[i]] - (digits[roman_array[i - 1]] * 2))
      else
        arabic += digits[roman_array[i]]
      end
    end
    puts arabic
  else
    puts "Please enter a valid roman numeral."
    reverse_roman
  end
end

reverse_roman
