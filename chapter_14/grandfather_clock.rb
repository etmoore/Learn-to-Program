# Calls a block for each hour of the day that has passed.
def grandfather_clock &block
  current_hour = Time.new.hour
  current_hour.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end