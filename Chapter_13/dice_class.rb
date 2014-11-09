class Die
  def initialize
    roll
  end

  def roll
    @result = rand(1..6)
  end

  def showing
    @result
  end

  def cheat(x)
    if x.between?(1, 6)
      @result = x
    else
      "Die can only show 1 through 6."
    end
  end
end

# die = Die.new
# puts die.cheat(6)
# puts die.showing
