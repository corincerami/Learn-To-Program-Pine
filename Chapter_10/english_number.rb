@ones = ["one", "two", "three", "four",
         "five", "six", "seven", "eight", "nine"]

@tens = ["ten", "twenty", "thirty", "forty",
         "fifty", "sixty", "seventy", "eighty", "ninety"]

@teens = ["eleven", "twelve", "thirteen", "fourteen",
          "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

# puts "Please enter a number:"
# number = gets.chomp.to_i

def english_number(number)
  result = ""

  if number < 0 || number >= 1000000000
    puts "Number must be between 0 and 1 billion."
  elsif number == 0
    puts "zero"
  else

    one = number % 10
    if one == 0
      ones_place = nil
    else
      ones_place = @ones[(number % 10) - 1]
    end

    ten = (number % 100) / 10
    if ten < 1
      tens_place = nil
    elsif ten == 1 && one >= 1
      tens_place = nil
      ones_place = @teens[one - 1]
    else
      tens_place = @tens[ten.to_i - 1]
    end

    hundred = (number % 1000) / 100
    if hundred < 1
      hundreds_place = nil
    else
      hundreds_place = @ones[hundred.to_i - 1]
    end

    thousand = (number % 1000000) / 1000
    if thousand < 1
      thousands_place = nil
    else
      thousands_place = english_number(thousand)
    end

    million = (number / 1000000).to_i
    if million < 1
      millions_place = nil
    else
      millions_place = english_number(million)
    end

    unless millions_place == nil
      result << "#{millions_place} million "
    end
    unless thousands_place == nil
      result << "#{thousands_place} thousand "
    end
    unless hundreds_place == nil
      result << "#{hundreds_place} hundred "
    end
    unless tens_place == nil
      result << "#{tens_place} "
    end
    unless ones_place == nil
      result << "#{ones_place}"
    end
  end
  result
end

# english_number(number)
