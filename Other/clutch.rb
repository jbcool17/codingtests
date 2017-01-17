# PROBLEM 5
stock_prices_yesterday = [12,11,10,7,5,5,8,1,11]
stock_prices_yesterday2 = [10,7,5,8,11,9]

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

# PROBLEM 7 - https://www.interviewcake.com/question/python/cake-thief
cake_arrays = [[7,160],[3,90],[2,15]]
capacity = 20

def max_duffel_bag_value(cake_arrays, capacity)
  values = {}
  current_profit = 0
  current_weight = 0
  cake_arrays.each_with_index do |c, i|
    p = capacity / c[0] * c[1]
    w = capacity / c[0] * c[0]
    current_profit = p if (p > current_profit )
    current_weight = w if (w > current_weight && p >= current_profit )


    # values[i] = [capacity / c[0] * c[1], capacity / c[0] * c[0]]
  end

  while current_weight < capacity do

  end

  values.select { |v| if v[0] }

end

total_profit = 0
    rest_capacity = capacity

    while rest_capacity > 0 do
       most_profit = verify_profit cakes
       cakes.delete(most_profit)
       weight = most_profit[0]
       profit = most_profit[1]
       qt_to_carry =  (rest_capacity / weight).to_i
       total_profit += profit * qt_to_carry
       rest_capacity = rest_capacity % weight
    end

    total_profit
