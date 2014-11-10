# keep track of how many indentations to print
$tabs = 0

# should state when starting and ending nested blocks
# with appropriate indentation
def logger(description)
  $tabs.times { print "    " }
  puts "Now running #{description}..."
  $tabs += 1
  puts "    " * ($tabs - 1) + "#{yield}"
  $tabs -= 1
  $tabs.times { print "    " }
  puts "...#{description} has finished."
end

# example set of blocks to run through the logger
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
