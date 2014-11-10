$tabs = 0

def logger(description)
  $tabs.times { print "    " }
  puts "Now running #{description}..."
  $tabs += 1
  puts "    " * ($tabs - 1) + "#{yield}"
  $tabs -= 1
  $tabs.times { print "    " }
  puts "...#{description} has finished."
end

logger("First block") do
  logger("Second block") do
    logger("Third block") do
      logger("Fourth block") do
        4
      end
      3
    end
    2
  end
  1
end
