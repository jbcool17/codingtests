# PROBLEM 5
stock_prices_yesterday = [12,11,10,7,5,5,8,1,11]

def get_max_profit(stock_prices_yesterday)
  arr = stock_prices_yesterday
  hold = {}
  arr.each_with_index {|n, i| hold[i] = n}

  lowest = arr.min
  lowest_index = arr.index(arr.min)
  highest = arr.slice(lowest_index, arr.count).max
  highest_index = hold.select { |k,v|  (v == highest) && (k >= lowest_index)}.keys.first

  puts "buy for $#{lowest} and selling for $#{highest}"

end

# PROBLEM 6

arr = [1,7,3,4]

def except_that(arr)
  output = []
  arr.each_with_index {|n,i| arr[i] = 1; output << arr.inject(:*); arr[i] = n; }
  output
end

except_that arr
