	
	def even_fib(max)
		sum = 2
		arr = [1,2,3]

		for i in 3..max
			current = arr[i]
			result = 0
			result += arr[i-1]
			result += arr[i-2]
			arr << result
			sum += result if result % 2 == 0
			result = current
		end
		sum
	end
