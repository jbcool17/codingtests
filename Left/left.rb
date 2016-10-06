# Move an array LEFT
# remove puts when ready

def left(arr, i) 

	total = arr.size
	puts "BEGINNING: #{arr.join(' ')}"

    i.times do |a|
    	puts "----------------------"
    	first =  arr[0]
    	puts "FIRST: #{first}"
    	
    	total.times do |j|
    		puts "Interation: #{j}"
    		j = j + 1
    		puts "Item: #{j-1} = Item: #{j}"
    		arr[j - 1] = arr[j]
    		puts "CURRENT: #{arr.join(' ')}"
    	end

    	arr[-1] = first
        
        puts "ROUND #{a}: #{arr.join(' ')}"
    end 
    
    puts "FINAL OUTPUT: #{arr.join(' ')}"
end


left([1,2,3,4,5,6,7,8,9],2)