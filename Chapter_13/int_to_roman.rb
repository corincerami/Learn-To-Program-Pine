class Integer
  def to_roman
    thousand = (self / 1000)
    hundred = (self % 1000 / 100)
    ten = (self % 100 / 10)
    one = (self % 10)

    roman = "M" * thousand

    if hundred == 9
      roman += "CM"
    elsif hundred == 4
      roman += "CD"
    else
      roman += "D" * (self % 1000 / 500)
      roman += "C" * (self % 500 / 100)
    end

    if ten == 9
      roman += "XC"
    elsif ten == 4
      roman += "XL"
    else
      roman += "L" * (self % 100 / 50)
      roman += "X" * (self % 50 / 10)
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
end

puts 1919.to_roman
