def grandfather_clock
  hours = Time.new.hour
  hours -= 12 if hours > 12
  hours.times do
    yield
  end
end

grandfather_clock { puts "DONG!" }
