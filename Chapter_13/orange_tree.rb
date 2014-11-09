class OrangeTree
  def initialize
    @height = 1 # in feet
    @oranges = 0
    @age = 0
    puts "You have a new orange tree growing in your yard."
    interact
  end

  def orange_count
    puts "Your tree has #{@oranges} oranges on it."
    interact
  end

  def pick_orange
    if @oranges > 0
      @oranges -= 1
      puts "You picked a delicious orange. You now have #{@oranges} left."
    else
      puts "Your tree doesn't have any oranges on it."
    end
    interact
  end

  private

  def year_passes
    @oranges = 0
    @age += 1
    @height += 2
    if @age.between?(5, 30)
      @oranges += (@age / 2).to_i
    elsif @age > 30
      puts "Your orange tree has died."
      exit
    end
    puts "#{@age} years has passed and your tree has grown to #{@height} feet."
    interact
  end

  def interact
    puts "Would you like to 'count' your oranges, 'pick' an orange, or "
    puts "'wait' until next season?"
    action = gets.chomp
    case action
    when "count"
      orange_count
    when "pick"
      pick_orange
    when "wait"
      year_passes
    else
      puts "You can either 'count', 'pick', or 'wait' a year."
      interact
    end
  end
end

OrangeTree.new
