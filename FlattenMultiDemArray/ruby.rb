# Method ONE
arr_one = [[1,2,[3]],4]
arr_two = [[1, 2, [322, 39, [3,22,[23,35,1],5,7554,]]], 4]

def flatten_array(arr)
  # Create string from array with ','
  # Split String into array based on ','
  # Convert back to Integers
  arr.join(',').split(',').map(&:to_i)
end

puts "OUTPUT: #{flatten_array arr_one}"
puts "OUTPUT: #{flatten_array arr_two}"

# Method TWO - Recursion - Method that calls itself

def make_array_flat(arr, new_arr=[])

    # Loop continues if Array found
    # Loop will find integers and push them to new array
    arr.each do |a|
     if a.is_a? Array
        make_array_flat(a, new_arr)
     else
        new_arr << a
     end
    end

  new_arr
end

puts  "OUTPUT: #{make_array_flat arr_one}"
puts  "OUTPUT: #{make_array_flat arr_two}"
