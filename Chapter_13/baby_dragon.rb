class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # full stomach
    @stuff_in_intestines = 0 # doesn't need the bathroom
    interact
  end

  def feed
    puts "You feed #{@name}, and it is now full."
    sleep(1)
    @stuff_in_belly = 10
    passage_of_time
    interact
  end

  def walk
    puts "You take #{@name} for a walk so it can go to the bathroom."
    sleep(1)
    @stuff_in_intestines = 0
    passage_of_time
    interact
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    sleep(1)
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
        sleep(1)
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly..."
      sleep(1)
    end
    interact
  end

  def toss
    puts "You toss #{@name} into the air."
    sleep(1)
    puts "He giggles, which singes your eyebrows."
    sleep(1)
    passage_of_time
    interact
  end

  def rock
    puts "You rock #{@name} gently."
    sleep(1)
    @asleep = true
    puts "He briefly dozes off..."
    sleep(1)
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
      sleep(1)
    end
    interact
  end

  def interact
    puts "What will you do with your dragon?"
    puts "Please enter 'feed', 'walk', (put to) 'bed', 'toss', or 'rock'."
    action = gets.chomp

    case action
    when "feed"
      self.feed
    when "walk"
      self.walk
    when "bed"
      self.put_to_bed
    when "toss"
      self.toss
    when "rock"
      self.rock
    else
      "Please enter either 'feed', 'walk', 'bed', 'toss', or 'rock'."
      interact
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestines >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestines += 1
    else
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly from hunger!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end
    if @stuff_in_intestines >= 10
      @stuff_in_intestines = 0
      puts "Whoops! #{@name} had an accident..."
      sleep(1)
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly from hunger!"
        sleep(1)
      end
      puts "#{@name}'s stomach grumbles."
      sleep(1)
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
        sleep(1)
      end
      puts "#{@name} does the potty dance."
      sleep(1)
    end
  end
end

puts "You have a new baby dragon! What will you name it?"
name = gets.chomp
Dragon.new(name)

puts "Congratulations on your new dragon, #{name}!"
