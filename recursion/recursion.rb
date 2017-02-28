
def factoral number
  # puts "#{@count}: #{number}"
  # @count += 1
  if number <= 1
    number
  else
    number * factoral(number - 1)
  end
end

def factoral_loop n
  total = 1
    (1..n).each do |n|
      total *= n
    end
  total
end

# Comparing to Loop
# 10000 Stack Level Too Deep for recurize method


puts "NUMBER: #{ARGV[0]}"

# RECURSIVE
beginning_time = Time.now
factoral ARGV[0].to_i
end_time = Time.now
rec_time = (end_time - beginning_time)*1000
puts "RECURSIVE: Time elapsed #{rec_time} milliseconds"

# LOOP
beginning_time = Time.now
factoral_loop ARGV[0].to_i
end_time = Time.now
loop_time = (end_time - beginning_time)*1000
puts "LOOP: Time elapsed #{loop_time} milliseconds"

puts "Is rec_time greater then loop_time? #{rec_time > loop_time}"
