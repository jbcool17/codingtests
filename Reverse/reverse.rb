def reverse(str)
	# Strings a mutable
	count = str.length
	
	# Different ways to loop
	for i in 0..(count / 2) do
		last_of_set = (count - 1) - i
		l1 = str[i]
		l2 = str[last_of_set]

		str[i] = l2
		str[last_of_set] = l1
	end

	# (count / 2).times do |i|
	# 	last_of_set = (count - 1) - i
	# 	l1 = str[i]
	# 	l2 = str[last_of_set]

	# 	str[i] = l2
	# 	str[last_of_set] = l1
	# end

	str
end