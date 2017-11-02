def countDuplicates(numbers)
  hash = {}
  count = 0
  numbers.each {|n| hash[n] = 0 }

  numbers.each do |n|
    if hash.key?(n)
      hash[n] += 1
    end
  end

  hash.each do |h|
    if h[1] >= 2
      count += 1
    end
  end

  return count
end

puts countDuplicates([1,3,1,4,5,6,3,2])
